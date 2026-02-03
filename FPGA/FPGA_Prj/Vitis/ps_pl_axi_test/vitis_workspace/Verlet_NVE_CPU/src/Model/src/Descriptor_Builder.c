#include <math.h>
#include <string.h>

// 三维向量模长计算函数
static inline float vector_norm(const float v[3]) {
    return sqrtf(v[0]*v[0] + v[1]*v[1] + v[2]*v[2]);
}

void simple_descriptor_builder(int N, const float coords[N][3][3], float descriptor[N][3]) {
    //从N个样本中依此提取出O H1 H2原始坐标
    for(int i=0;i<N;i++){
        const float* O  = coords[i][0]; //指向O原子坐标(xyz)
        const float* H1 = coords[i][1]; //指向H1原子坐标(xyz)
        const float* H2 = coords[i][2]; //指向H2原子坐标(xyz)

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

        //output descriptor         shape:(N,3)
        descriptor[i][0] = d_mean;
        descriptor[i][1] = d_diff;
        descriptor[i][2] = cos_theta;
    }
}