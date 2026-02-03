#include <stdint.h>
#include <string.h>
#include <math.h>

// Model
#include "./Model/include/Model_Inference.h"  // 提供 KAN_Inference()

// Tools
#include "./Tools/include/Uart.h"

// Xilinx headers (for Xil_Out32, etc.)
#include "xparameters.h"
#include "xil_io.h"

// ==================== Config ====================
#define MAX_LINE 256
char input_line[MAX_LINE];

#define PS_PL_REG0_BASE_ADDR 0x43C00000
volatile int led_count = 0;
int led_state = 0;

// Physical constants
#define AMU_TO_EVA2FS2 103.6427f
#define KB 8.6173336333e-5f  // eV/K

// Simulation state
int steps = 0;
float dt = 0.0f;
float masses[3] = {0};
float coords[3][3] = {{0}};
float vel[3][3] = {{0}};

int config_steps = 0;
int config_dt = 0;
int config_mass = 0;
int config_coord = 0;
int config_vel = 0;

// ==================== Helper Functions ====================
void print_usage(void) {
    printf("Commands:\r\n");
    printf("  set_steps <N>\r\n");
    printf("  set_dt <value>\r\n");
    printf("  set_mass <O> <H1> <H2>\r\n");
    printf("  set_coord <O_x O_y O_z H1_x ... H2_z> (9 floats)\r\n");
    printf("  set_vel <same format as coord>\r\n");
    printf("  start\r\n");
}

int all_config_ready(void) {
    return config_steps && config_dt && config_mass && config_coord && config_vel;
}

// Compute O-H bond lengths and angle
void get_geometry(const float coords[3][3], float* r1, float* r2, float* angle_deg) {
    const float* O = coords[0];
    const float* H1 = coords[1];
    const float* H2 = coords[2];

    float v1[3] = {H1[0]-O[0], H1[1]-O[1], H1[2]-O[2]};
    float v2[3] = {H2[0]-O[0], H2[1]-O[1], H2[2]-O[2]};

    float norm1 = sqrtf(v1[0]*v1[0] + v1[1]*v1[1] + v1[2]*v1[2]);
    float norm2 = sqrtf(v2[0]*v2[0] + v2[1]*v2[1] + v2[2]*v2[2]);

    float dot = v1[0]*v2[0] + v1[1]*v2[1] + v1[2]*v2[2];
    float cos_theta = dot / (norm1 * norm2);
    if (cos_theta > 1.0f) cos_theta = 1.0f;
    if (cos_theta < -1.0f) cos_theta = -1.0f;
    float angle_rad = acosf(cos_theta);
    *angle_deg = angle_rad * 180.0f / M_PI;

    *r1 = norm1;
    *r2 = norm2;
}

// Remove center-of-mass velocity
void remove_com_velocity(float vel[3][3]) {
    float total_mass = masses[0] + masses[1] + masses[2];
    float v_com[3] = {0};
    for (int i = 0; i < 3; i++) {
        v_com[0] += masses[i] * vel[i][0];
        v_com[1] += masses[i] * vel[i][1];
        v_com[2] += masses[i] * vel[i][2];
    }
    v_com[0] /= total_mass;
    v_com[1] /= total_mass;
    v_com[2] /= total_mass;

    for (int i = 0; i < 3; i++) {
        vel[i][0] -= v_com[0];
        vel[i][1] -= v_com[1];
        vel[i][2] -= v_com[2];
    }
}

// Scale velocity to target temperature (300K)
void scale_velocity_to_temp(float vel[3][3], float target_temp) {
    float Ek = 0.0f;
    for (int i = 0; i < 3; i++) {
        Ek += 0.5f * masses[i] * (vel[i][0]*vel[i][0] + vel[i][1]*vel[i][1] + vel[i][2]*vel[i][2]);
    }
    Ek *= AMU_TO_EVA2FS2;

    int free_dof = 3*3 - 3;
    float Ek_target = 0.5f * free_dof * KB * target_temp;

    if (Ek <= 0.0f) return;
    float scale = sqrtf(Ek_target / Ek);

    for (int i = 0; i < 3; i++) {
        vel[i][0] *= scale;
        vel[i][1] *= scale;
        vel[i][2] *= scale;
    }
}

// ==================== NVE Simulation ====================
void run_nve_simulation(void) {
    if (!all_config_ready()) {
        printf("ERR: Not all parameters configured!\r\n");
        print_usage();
        return;
    }

    printf("Starting NVE simulation...\r\n");

    double total_infer_us = 0.0;
    double total_model_us = 0.0;
    int inference_count = 0;

    // Initial force
    float input_coords[1][3][3];
    for (int i = 0; i < 3; i++)
        for (int j = 0; j < 3; j++)
            input_coords[0][i][j] = coords[i][j];

    float energy, forces[1][3][3];
    double infer_us, model_us;
    if (KAN_Inference(input_coords, &energy, forces, &infer_us, &model_us) != 0) {
        printf("ERR: Initial KAN inference failed!\r\n");
        return;
    }
    total_infer_us += infer_us;
    total_model_us += model_us;
    inference_count++;

    float acc[3][3];
    for (int i = 0; i < 3; i++) {
        acc[i][0] = forces[0][i][0] / (masses[i] * AMU_TO_EVA2FS2);
        acc[i][1] = forces[0][i][1] / (masses[i] * AMU_TO_EVA2FS2);
        acc[i][2] = forces[0][i][2] / (masses[i] * AMU_TO_EVA2FS2);
    }

    scale_velocity_to_temp(vel, 300.0f);
    remove_com_velocity(vel);

    // Main loop
    for (int step = 0; step < steps; step++) {
        // v_half
        float v_half[3][3];
        for (int i = 0; i < 3; i++) {
            v_half[i][0] = vel[i][0] + 0.5f * acc[i][0] * dt;
            v_half[i][1] = vel[i][1] + 0.5f * acc[i][1] * dt;
            v_half[i][2] = vel[i][2] + 0.5f * acc[i][2] * dt;
        }

        // Update position
        for (int i = 0; i < 3; i++) {
            coords[i][0] += v_half[i][0] * dt;
            coords[i][1] += v_half[i][1] * dt;
            coords[i][2] += v_half[i][2] * dt;
        }

        // Compute new force
        for (int i = 0; i < 3; i++)
            for (int j = 0; j < 3; j++)
                input_coords[0][i][j] = coords[i][j];

        if (KAN_Inference(input_coords, &energy, forces, &infer_us, &model_us) != 0) {
            printf("ERR: KAN inference failed at step %d!\r\n", step);
            return;
        }
        total_infer_us += infer_us;
        total_model_us += model_us;
        inference_count++;

        float acc_new[3][3];
        for (int i = 0; i < 3; i++) {
            acc_new[i][0] = forces[0][i][0] / (masses[i] * AMU_TO_EVA2FS2);
            acc_new[i][1] = forces[0][i][1] / (masses[i] * AMU_TO_EVA2FS2);
            acc_new[i][2] = forces[0][i][2] / (masses[i] * AMU_TO_EVA2FS2);
        }

        // Update velocity
        for (int i = 0; i < 3; i++) {
            vel[i][0] = v_half[i][0] + 0.5f * acc_new[i][0] * dt;
            vel[i][1] = v_half[i][1] + 0.5f * acc_new[i][1] * dt;
            vel[i][2] = v_half[i][2] + 0.5f * acc_new[i][2] * dt;
        }

        // Energies
        float Ek = 0.0f;
        for (int i = 0; i < 3; i++) {
            float v2 = vel[i][0]*vel[i][0] + vel[i][1]*vel[i][1] + vel[i][2]*vel[i][2];
            Ek += 0.5f * masses[i] * v2;
        }
        Ek *= AMU_TO_EVA2FS2;
        float E_total = Ek + energy;

        if (step % 100 == 0) {
            int free_dof = 9 - 3;
            float T_current = (2.0f * Ek) / (free_dof * KB);

            float max_force = 0.0f;
            for (int i = 0; i < 3; i++) {
                float f_norm = fabsf(forces[0][i][0]);
                if (fabsf(forces[0][i][1]) > f_norm) f_norm = fabsf(forces[0][i][1]);
                if (fabsf(forces[0][i][2]) > f_norm) f_norm = fabsf(forces[0][i][2]);
                if (f_norm > max_force) max_force = f_norm;
            }

            float r1, r2, ang;
            get_geometry(coords, &r1, &r2, &ang);

            float total_fx = forces[0][0][0] + forces[0][1][0] + forces[0][2][0];
            float total_fy = forces[0][0][1] + forces[0][1][1] + forces[0][2][1];
            float total_fz = forces[0][0][2] + forces[0][1][2] + forces[0][2][2];
            float total_f = sqrtf(total_fx*total_fx + total_fy*total_fy + total_fz*total_fz);

            printf("Step %d: Ep=%.4f, Ek=%.4f, E=%.4f eV | "
                   "T=%.1fK | Max|F|=%.3f eV/Å | "
                   "O-H: %.3f/%.3f Å, ∠=%.1f° | "
                   "ΣF: %.2e eV/Å\r\n",
                   step, energy, Ek, E_total,
                   T_current, max_force,
                   r1, r2, ang,
                   total_f);
        }

        // Update acceleration
        for (int i = 0; i < 3; i++) {
            acc[i][0] = acc_new[i][0];
            acc[i][1] = acc_new[i][1];
            acc[i][2] = acc_new[i][2];
        }
    }

    // === Summary ===
    printf("\r\n=== NVE Simulation Summary ===\r\n");
    printf("Total steps: %d\r\n", steps);
    printf("Total KAN inferences: %d\r\n", inference_count);
    printf("Total inference time: %.3f us\r\n", total_infer_us);
    printf("Average inference time: %.3f us\r\n", total_infer_us / inference_count);
    printf("Average model_deduction time: %.3f us\r\n", total_model_us / inference_count);
    printf("================================\r\n");
}

// ==================== Command Parser ====================
void handle_command(char* cmd) {
    char* token = strtok(cmd, " \t\r\n");
    if (!token) return;

    if (strcmp(token, "set_steps") == 0) {
        token = strtok(NULL, " \t\r\n");
        if (token) {
            steps = atoi(token);
            config_steps = 1;
            printf("Set steps = %d\r\n", steps);
        }
    }
    else if (strcmp(token, "set_dt") == 0) {
        token = strtok(NULL, " \t\r\n");
        if (token) {
            float val;
            if (sscanf(token, "%f", &val) == 1) {
                dt = val;
                config_dt = 1;
                printf("Set dt = %.3f fs\r\n", dt);
            } else {
                printf("ERR: Invalid dt value '%s'\r\n", token);
            }
        }
    }
    else if (strcmp(token, "set_mass") == 0) {
        for (int i = 0; i < 3; i++) {
            token = strtok(NULL, " \t\r\n");
            if (!token) {
                printf("ERR: Need 3 mass values\r\n");
                return;
            }
            float val;
            if (sscanf(token, "%f", &val) == 1) {
                masses[i] = val;
            } else {
                printf("ERR: Invalid mass[%d] = '%s'\r\n", i, token);
                return;
            }
        }
        config_mass = 1;
        printf("Set masses = [%.3f, %.3f, %.3f]\r\n", masses[0], masses[1], masses[2]);
    }
    else if (strcmp(token, "set_coord") == 0) {
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                token = strtok(NULL, " \t\r\n");
                if (!token) {
                    printf("ERR: Need 9 coordinates\r\n");
                    return;
                }
                float val;
                if (sscanf(token, "%f", &val) == 1) {
                    coords[i][j] = val;
                } else {
                    printf("ERR: Invalid coord[%d][%d] = '%s'\r\n", i, j, token);
                    return;
                }
            }
        }
        config_coord = 1;
        printf("Set coordinates.\r\n");
    }
    else if (strcmp(token, "set_vel") == 0) {
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                token = strtok(NULL, " \t\r\n");
                if (!token) {
                    printf("ERR: Need 9 velocity components\r\n");
                    return;
                }
                float val;
                if (sscanf(token, "%f", &val) == 1) {
                    vel[i][j] = val;
                } else {
                    printf("ERR: Invalid vel[%d][%d] = '%s'\r\n", i, j, token);
                    return;
                }
            }
        }
        config_vel = 1;
        printf("Set velocities.\r\n");
    }
    else if (strcmp(token, "start") == 0) {
        run_nve_simulation();
    }
    else if (strcmp(token, "help") == 0) {
        print_usage();
    }
    else {
        printf("Unknown command: %s\r\n", token);
        print_usage();
    }
}

// ==================== Main ====================
int main() {
    Uart_Init();
    Uart_Intr_Init();

    printf("NVE Simulator Ready. Type 'help' for commands.\r\n");

    while (1) {
        if (ReadLineFromRingBuffer(&uart_rx_buf, input_line, sizeof(input_line)) == 0) {
            char* p = input_line;
            while (*p == ' ' || *p == '\t') p++;
            if (*p != '\0') {
                handle_command(p);
            }
        }

        // LED blink
        if (led_count >= 10000000) {
            led_count = 0;
            led_state = ~led_state;
            Xil_Out32(PS_PL_REG0_BASE_ADDR, led_state);
        }
        led_count++;
    }

    return 0;
}