#include <math.h>
#include <string.h>

// 三维向量模长计算函数
static inline float vector_norm(const float v[3]) {
    return sqrtf(v[0]*v[0] + v[1]*v[1] + v[2]*v[2]);
}


// R: [N][3][3] —— M 个水分子，每个含 O, H1, H2, 每个原子 xyz 坐标
// J: [M][3][9] —— 输出 Jacobian
void desc_differentialer(int N, const float R[N][3][3], float J[N][3][9]) {
    //从N个样本中依此提取出O H1 H2原始坐标
    for(int i=0;i<N;i++){
        const float* O  = R[i][0]; //指向O原子坐标(xyz)
        const float* H1 = R[i][1]; //指向H1原子坐标(xyz)
        const float* H2 = R[i][2]; //指向H2原子坐标(xyz)

        //计算OH1和OH2向量模长
        float O_H1[3] = {O[0]-H1[0], O[1]-H1[1], O[2]-H1[2]};
        float O_H2[3] = {O[0]-H2[0], O[1]-H2[1], O[2]-H2[2]};
        float r1 = vector_norm(O_H1);
        float r2 = vector_norm(O_H2); 

        //计算d_mean 和 d_diff
        float d_mean =(r1 + r2) / 2.0f;
        float d_diff = fabsf(r1 - r2);

        //计算cos_theta
        float v1[3] = {H1[0]-O[0], H1[1]-O[1], H1[2]-O[2]};
        float v2[3] = {H2[0]-O[0], H2[1]-O[1], H2[2]-O[2]}; 
        float dot_mul = v1[0]*v2[0] + v1[1]*v2[1] + v1[2]*v2[2];
        float cos_theta = dot_mul / (r1 * r2);

        //单位向量
        float e1[3] = {v1[0]/r1, v1[1]/r1, v1[2]/r1};
        float e2[3] = {v2[0]/r2, v2[1]/r2, v2[2]/r2};

        //d_mean 偏导
        float d_mean_O[3]  = {-0.5f * (e1[0] + e2[0]), -0.5f * (e1[1] + e2[1]), -0.5f * (e1[2] + e2[2])};
        float d_mean_H1[3]  = {0.5f * e1[0], 0.5f * e1[1], 0.5f * e1[2]};
        float d_mean_H2[3]  = {0.5f * e2[0], 0.5f * e2[1], 0.5f * e2[2]};

        //d_diff 偏导
        float sign = 0.0f;
        if  (r1 > r2){ sign = 1.0f; }
        else if (r1 < r2){ sign = -1.0f; }
        else { sign = 0.0f; }

        float d_diff_O[3] = {-sign * (e1[0] - e2[0]), -sign * (e1[1] - e2[1]), -sign * (e1[2] - e2[2])};
        float d_diff_H1[3] = {sign * e1[0], sign * e1[1], sign * e1[2]};
        float d_diff_H2[3] = {-sign * e2[0], -sign * e2[1], -sign * e2[2]};

        //cos_theta 偏导
        // dcos_r1 = e2 / r1 - cos_theta * e1 /r1
        float dcos_r1[3] = {
            (e2[0] - cos_theta * e1[0]) / r1,
            (e2[1] - cos_theta * e1[1]) / r1,
            (e2[2] - cos_theta * e1[2]) / r1
        };
        // dcos_r2 = e1 / r2 - cos_theta * e2 / r2
        float dcos_r2[3] = {
            (e1[0] - cos_theta * e2[0]) / r2,
            (e1[1] - cos_theta * e2[1]) / r2,
            (e1[2] - cos_theta * e2[2]) / r2
        };

        float d_costheta_O[3] = {-(dcos_r1[0] + dcos_r2[0]), -(dcos_r1[1] + dcos_r2[1]), -(dcos_r1[2] + dcos_r2[2])};
        float d_costheta_H1[3] = {dcos_r1[0], dcos_r1[1], dcos_r1[2]};
        float d_costheta_H2[3] = {dcos_r2[0], dcos_r2[1], dcos_r2[2]};


        //output Jacobian         shape:(N,3,9) 3D向量采用memcpy
        memcpy(&J[i][0][0], d_mean_O,   3 * sizeof(float));
        memcpy(&J[i][0][3], d_mean_H1,  3 * sizeof(float));
        memcpy(&J[i][0][6], d_mean_H2,  3 * sizeof(float));

        // Row 1: d_diff
        memcpy(&J[i][1][0], d_diff_O,   3 * sizeof(float));
        memcpy(&J[i][1][3], d_diff_H1,  3 * sizeof(float));
        memcpy(&J[i][1][6], d_diff_H2,  3 * sizeof(float));

        // Row 2: cos_theta
        memcpy(&J[i][2][0], d_costheta_O,   3 * sizeof(float));
        memcpy(&J[i][2][3], d_costheta_H1,  3 * sizeof(float));
        memcpy(&J[i][2][6], d_costheta_H2,  3 * sizeof(float));
    }
}
