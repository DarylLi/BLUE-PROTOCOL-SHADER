// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t28 : register(t28);

Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture2D<float4> t25 : register(t25);

Texture2D<float4> t24 : register(t24);

Texture2D<float4> t23 : register(t23);

Texture2D<float4> t22 : register(t22);

Texture3D<float4> t21 : register(t21);

TextureCube<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

TextureCubeArray<float4> t18 : register(t18);

TextureCube<float4> t17 : register(t17);

Buffer<uint4> t16 : register(t16);

Buffer<uint4> t15 : register(t15);

Buffer<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s13_s : register(s13);

SamplerState s12_s : register(s12);

SamplerState s11_s : register(s11);

SamplerState s10_s : register(s10);

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb6 : register(b6)
{
  float4 cb6[77];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[8];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2728];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[179];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.zxy * v2.yzx;
  r0.xyz = v3.yzx * v2.zxy + -r0.xyz;
  r0.xyz = v3.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r3.w = v5.x ? 1 : -1;
  r0.w = r3.w * r0.w;
  r3.w = cb6[42].x * v0.y + cb6[42].y;
  r4.x = -cb6[42].z * r3.w + 1;
  r4.y = -cb6[42].w + r2.z;
  r4.y = abs(r4.y) / cb6[43].x;
  r4.y = -r4.y * cb6[43].y + 1;
  r4.y = -r4.x * r4.y + 1;
  r4.x = v0.x;
  r4.zw = r4.xy * cb6[2].xy + float2(0.200000003,0.200000003);
  r5.x = cb4[2].x * cb0[142].z;
  r5.x = cb6[44].x * r5.x;
  r5.xy = cb6[3].xy * r5.xx;
  r4.zw = r5.xy * float2(0.699999988,0.699999988) + r4.zw;
  r6.y = t24.SampleBias(s9_s, r4.zw, cb0[143].y).x;
  r6.xw = float2(0,1);
  r5.zw = cb6[45].xx * r6.xy;
  r6.x = frac(cb0[142].z);
  r7.xy = r5.zw * r6.xx + r4.zw;
  r7.xyz = t24.SampleBias(s9_s, r7.xy, cb0[143].y).xyz;
  r6.y = 0.5 + cb0[142].z;
  r6.y = frac(r6.y);
  r4.zw = r5.zw * r6.yy + r4.zw;
  r8.xyz = t24.SampleBias(s9_s, r4.zw, cb0[143].y).xyz;
  r4.z = r6.y + r6.y;
  r4.w = max(1, r4.z);
  r4.w = -1 + r4.w;
  r4.w = r4.w + r4.w;
  r4.zw = min(float2(1,1), r4.zw);
  r4.w = 1 + -r4.w;
  r4.z = r4.z + r4.z;
  r4.z = min(1, r4.z);
  r4.z = r4.w * r4.z;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r8.xyz = r7.xyz + r7.xyz;
  r7.xzw = -r7.xyz * float3(2,2,2) + float3(0,0,1);
  r9.xyz = cb6[45].yyy * r7.xzw + r8.xyz;
  r4.w = 1 + r9.z;
  r4.xy = r4.xy * cb6[1].xy + r5.xy;
  r5.xy = r5.zw * r6.xx + r4.xy;
  r10.xyz = t24.SampleBias(s9_s, r5.xy, cb0[143].y).xyz;
  r4.xy = r5.zw * r6.yy + r4.xy;
  r5.xyz = t24.SampleBias(s9_s, r4.xy, cb0[143].y).xyz;
  r5.xyz = r5.xyz + -r10.xyz;
  r4.xyz = r4.zzz * r5.xyz + r10.xyz;
  r5.xyz = r4.xyz + r4.xyz;
  r10.xyz = -r4.xyz * float3(2,2,2) + float3(0,0,1);
  r11.xyz = cb6[45].zzz * r10.xyz + r5.xyz;
  r9.w = 1 + r9.z;
  r11.xyz = float3(-1,-1,1) * r11.xyz;
  r4.y = dot(r9.xyw, r11.xyz);
  r11.xyz = r11.xyz * r4.www;
  r4.yzw = r9.xyw * r4.yyy + -r11.xyz;
  r9.xyz = float3(0,0,1) + -r4.yzw;
  r4.yzw = cb6[45].www * r9.xyz + r4.yzw;
  r5.w = cb6[6].y + v0.y;
  r5.w = r5.w * cb6[47].w + -cb6[47].w;
  r5.w = saturate(cb6[48].z + r5.w);
  r6.x = cb6[49].y * r5.w;
  r5.w = -cb6[49].y * r5.w + 1;
  r5.w = cb6[49].w * r5.w + r6.x;
  r4.yzw = float3(-1,-1,-1) + r4.yzw;
  r4.yzw = r5.www * r4.yzw + float3(1,1,1);
  r4.yzw = r4.yzw * cb0[138].www + cb0[138].xyz;
  r6.x = dot(r4.yzw, r4.yzw);
  r6.x = rsqrt(r6.x);
  r4.yzw = r6.xxx * r4.yzw;
  r0.xyz = r4.zzz * r0.xyz;
  r0.xyz = r4.yyy * v2.xyz + r0.xyz;
  r0.xyz = r4.www * v3.xyz + r0.xyz;
  r4.y = dot(r0.xyz, r0.xyz);
  r4.y = rsqrt(r4.y);
  r0.xyz = r4.yyy * r0.xyz;
  r4.yzw = r0.xyz * r0.www;
  r6.x = cb0[142].z * cb6[51].x + v0.x;
  r6.x = cb6[52].y * r6.x;
  r8.w = cb0[142].z * cb6[52].z + v0.y;
  r6.y = cb6[52].w * r8.w;
  r8.w = cb0[142].z * cb6[54].x + v0.x;
  r9.x = cb6[55].y * r8.w;
  r8.w = cb0[142].z * cb6[55].z + v0.y;
  r9.y = cb6[55].w * r8.w;
  r8.w = t25.SampleBias(s10_s, r9.xy, cb0[143].y).z;
  r8.w = -0.5 + r8.w;
  r8.w = r8.w + r8.w;
  r6.xy = r8.ww * cb6[56].yy + r6.xy;
  r6.x = t26.SampleBias(s11_s, r6.xy, cb0[143].y).x;
  r6.y = cmp(0 >= r6.x);
  r6.x = log2(r6.x);
  r6.x = cb6[56].z * r6.x;
  r6.x = exp2(r6.x);
  r9.xyz = cb6[14].xyz * r6.xxx;
  r9.xyz = r6.yyy ? float3(0,0,0) : r9.xyz;
  r11.xyz = cb5[6].xyz * cb6[58].yyy + cb6[18].xyz;
  r6.x = dot(cb5[7].xyz, r4.yzw);
  r6.y = saturate(r6.x);
  r6.y = 1 + -r6.y;
  r9.w = cb0[142].z * cb6[59].z + v0.x;
  r12.x = cb6[60].w * r9.w;
  r9.w = cb0[142].z * cb6[61].x + v0.y;
  r12.y = cb6[61].y * r9.w;
  r9.w = cb0[142].z * cb6[62].z + v0.x;
  r13.x = cb6[63].w * r9.w;
  r9.w = cb0[142].z * cb6[64].x + v0.y;
  r13.y = cb6[64].y * r9.w;
  r12.zw = t25.SampleBias(s10_s, r13.xy, cb0[143].y).xy;
  r12.zw = float2(-0.5,-0.5) + r12.zw;
  r12.zw = cb6[64].ww * r12.zw;
  r12.xy = r12.zw * float2(2,2) + r12.xy;
  r9.w = t27.SampleBias(s12_s, r12.xy, cb0[143].y).x;
  r12.xyz = -cb6[28].xyz + cb6[27].xyz;
  r12.xyz = r9.www * r12.xyz + cb6[28].xyz;
  r13.xyz = cb6[30].xyz * r12.xyz;
  r12.xyz = r12.xyz * cb6[32].xyz + -r13.xyz;
  r12.xyz = r5.www * r12.xyz + r13.xyz;
  r13.xyz = -r12.xyz * cb6[65].xxx + r12.xyz;
  r13.xyz = cb5[6].xyz * r13.xyz;
  r13.xyz = r13.xyz * r6.xxx;
  r14.xyz = cb6[65].yyy * r7.xzw + r8.xyz;
  r6.x = 1 + r14.z;
  r5.xyz = cb6[65].zzz * r10.xyz + r5.xyz;
  r14.w = 1 + r14.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r7.x = dot(r14.xyw, r5.xyz);
  r5.xyz = r6.xxx * r5.xyz;
  r5.xyz = r14.xyw * r7.xxx + -r5.xyz;
  r6.x = dot(r5.xyz, r5.xyz);
  r6.x = sqrt(r6.x);
  r5.xyz = r5.xyz / r6.xxx;
  r6.x = saturate(dot(r5.xyz, cb5[7].xyz));
  r7.xzw = cb0[67].xyz + -r2.xyz;
  r8.x = dot(r7.xzw, r7.xzw);
  r8.x = sqrt(r8.x);
  r7.xzw = r7.xzw / r8.xxx;
  r7.xzw = cb5[7].xyz + r7.xzw;
  r8.x = dot(r7.xzw, r7.xzw);
  r8.x = sqrt(r8.x);
  r7.xzw = r7.xzw / r8.xxx;
  r5.x = saturate(dot(r7.xzw, r5.xyz));
  r5.y = 11 * cb6[66].x;
  r5.y = exp2(r5.y);
  r5.z = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = r5.y * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r6.x * r5.x;
  r5.x = cb6[66].y * r5.x;
  r7.xzw = cb5[5].xyz * r5.xxx;
  r5.xyz = r5.zzz ? float3(0,0,0) : r7.xzw;
  r5.xyz = r13.xyz * float3(0.318309844,0.318309844,0.318309844) + r5.xyz;
  r5.xyz = r11.xyz * r6.yyy + r5.xyz;
  r5.xyz = r9.xyz * r5.xyz;
  r7.xzw = cb6[32].xyz + -cb6[30].xyz;
  r7.xzw = r5.www * r7.xzw + cb6[30].xyz;
  r8.xyz = r7.xzw * r5.xyz;
  r5.xyz = -r5.xyz * r7.xzw + cb6[33].xyz;
  r5.xyz = cb6[66].zzz * r5.xyz + r8.xyz;
  r7.xzw = saturate(cb6[35].xyz * r12.xyz);
  r5.w = saturate(cb6[67].w * r3.w);
  r3.w = 1 + -r3.w;
  r3.w = saturate(cb6[68].z * r3.w);
  r3.w = r5.w * r3.w;
  r4.x = r4.x + -r7.y;
  r4.x = r4.x * cb6[46].y + v0.x;
  r4.x = r4.x * 2 + -1;
  r4.x = 1 + -abs(r4.x);
  r4.x = r4.x * cb6[69].x + -cb6[69].x;
  r4.x = saturate(cb6[69].z + r4.x);
  r4.x = cb6[69].w * r4.x;
  r5.w = cb0[142].z * cb6[71].x + v0.x;
  r6.x = cb6[72].y * r5.w;
  r5.w = cb0[142].z * cb6[72].z + v0.y;
  r6.y = cb6[72].w * r5.w;
  r6.xy = r8.ww * cb6[73].yy + r6.xy;
  r5.w = t28.SampleBias(s13_s, r6.xy, cb0[143].y).x;
  r6.x = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb6[73].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r6.x ? 0 : r5.w;
  r6.x = cb0[142].z * cb6[74].w + v0.x;
  r6.x = cb6[76].x * r6.x;
  r7.y = cb0[142].z * cb6[76].y + v0.y;
  r6.y = cb6[76].z * r7.y;
  r6.xy = r8.ww * cb6[56].yy + r6.xy;
  r6.x = t24.SampleBias(s9_s, r6.xy, cb0[143].y).x;
  r6.y = -0.100000001 + v0.x;
  r7.y = 0.899999976 + -v0.x;
  r6.y = min(r7.y, r6.y);
  r6.x = r6.y * 5 + r6.x;
  r5.w = r6.x * r5.w;
  r5.w = r5.w * cb6[69].x + -cb6[69].x;
  r5.w = saturate(cb6[69].z + r5.w);
  r4.x = r5.w * r4.x;
  r8.w = saturate(r4.x * r3.w);
  r3.w = saturate(cb6[65].x);
  r4.x = saturate(cb6[66].w);
  r5.w = saturate(cb6[67].x);
  r5.w = r5.w * cb0[139].y + cb0[139].x;
  r9.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r9.xyz = max(float3(0,0,0), r9.xyz);
  r9.xyz = min(float3(0.99000001,0.99000001,0.99000001), r9.xyz);
  r9.xyz = cb0[213].xyz * r9.xyz;
  r10.xyz = (int3)r9.xyz;
  r10.w = 0;
  r10.xyzw = t0.Load(r10.xyzw).xyzw;
  r10.xyzw = (uint4)r10.xyzw;
  r6.x = 1 + cb0[213].w;
  r9.xyz = r9.xyz / r10.www;
  r9.xyz = frac(r9.xyz);
  r9.xyz = cb0[213].www * r9.xyz;
  r9.xyz = r10.xyz * r6.xxx + r9.xyz;
  r9.xyz = float3(0.5,0.5,0.5) + r9.xyz;
  r9.xyz = cb0[214].xyz * r9.xyz;
  r6.x = cmp(0 < cb1[20].z);
  if (r6.x != 0) {
    r6.z = t9.SampleLevel(s0_s, r9.xyz, 0).x;
  } else {
    r6.z = 1;
  }
  r6.x = 0.0799999982 * r4.x;
  r10.xyz = -r4.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xzw;
  r10.xyz = r3.www * r10.xyz + r6.xxx;
  r11.xyz = -r7.xzw * r3.www + r7.xzw;
  r11.xyz = r11.xyz * cb0[136].www + cb0[136].xyz;
  r10.xyz = r10.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r12.xyz = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r12.w = 0;
  r11.w = r10.x;
  r11.xyzw = r3.wwww ? r12.xyzw : r11.xyzw;
  r10.yz = r3.ww ? float2(0,0) : r10.yz;
  r12.xyz = t1.SampleLevel(s0_s, r9.xyz, 0).zxy;
  r13.xyzw = t2.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t4.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t6.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r12.yyyy;
  r13.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r13.wxyz;
  r14.xyzw = r14.xyzw * r12.zzzz;
  r14.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r14.wxyz;
  r15.xyzw = r15.xyzw * r12.xxxx;
  r15.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r15.wxyz;
  r16.xyzw = t3.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r17.xyzw = t5.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r17.xyzw = r17.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r18.xyzw = t7.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r18.xyzw = r18.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = r16.xyzw * r12.yyyy;
  r16.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r16.xyzw;
  r17.xyzw = r17.xyzw * r12.zzzz;
  r17.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r17.xyzw;
  r18.xyzw = r18.xyzw * r12.xxxx;
  r18.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r18.xyzw;
  r19.xyz = r4.zwz * r4.zwy;
  r20.yw = r4.ww * r4.zy;
  r3.w = r4.y * r4.y + -r19.x;
  r21.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
  r20.xz = r19.zy * float2(1,3) + float2(0,-1);
  r19.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r20.xyzw;
  r3.w = 0.429042608 * r3.w;
  r20.x = r12.y;
  r20.yzw = r13.yzw;
  r21.x = 0.886227548;
  r4.x = dot(r20.xyzw, r21.xyzw);
  r13.yzw = r16.xyz;
  r6.x = dot(r13.xyzw, r19.xyzw);
  r4.x = r6.x + r4.x;
  r13.x = r16.w * r3.w + r4.x;
  r16.x = r12.z;
  r16.yzw = r14.yzw;
  r4.x = dot(r16.xyzw, r21.xyzw);
  r14.yzw = r17.xyz;
  r6.x = dot(r14.xyzw, r19.xyzw);
  r4.x = r6.x + r4.x;
  r13.y = r17.w * r3.w + r4.x;
  r12.yzw = r15.yzw;
  r4.x = dot(r12.xyzw, r21.xyzw);
  r15.yzw = r18.xyz;
  r6.x = dot(r15.xyzw, r19.xyzw);
  r4.x = r6.x + r4.x;
  r13.z = r18.w * r3.w + r4.x;
  r12.xyz = max(float3(0,0,0), r13.xyz);
  r12.xyz = cb0[157].xyz * r12.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r9.xyz = t8.SampleLevel(s0_s, r9.xyz, 0).xyz;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r9.xyz, r9.xyz);
    r6.x = sqrt(r3.w);
    r3.w = max(9.99999975e-005, r6.x);
    r9.xyz = r9.xyz / r3.www;
    r3.w = 1 + -r6.x;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r0.www + -r9.xyz;
    r0.xyz = r3.www * r0.xyz + r9.xyz;
    r4.x = saturate(dot(r9.xyz, r4.yzw));
    r7.y = 1 + -r4.x;
    r6.y = r3.w * r7.y + r4.x;
  } else {
    r0.xyz = r4.yzw;
    r6.xy = float2(1,1);
  }
  r9.x = t10[0].val[0/4];
  r9.y = t10[0].val[0/4+1];
  r9.z = t10[0].val[0/4+2];
  r9.w = t10[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r13.x = t10[1].val[0/4];
  r13.y = t10[1].val[0/4+1];
  r13.z = t10[1].val[0/4+2];
  r13.w = t10[1].val[0/4+3];
  r9.y = dot(r13.xyzw, r0.xyzw);
  r13.x = t10[2].val[0/4];
  r13.y = t10[2].val[0/4+1];
  r13.z = t10[2].val[0/4+2];
  r13.w = t10[2].val[0/4+3];
  r9.z = dot(r13.xyzw, r0.xyzw);
  r13.xyzw = r0.xyzz * r0.yzzx;
  r14.x = t10[3].val[0/4];
  r14.y = t10[3].val[0/4+1];
  r14.z = t10[3].val[0/4+2];
  r14.w = t10[3].val[0/4+3];
  r14.x = dot(r14.xyzw, r13.xyzw);
  r15.x = t10[4].val[0/4];
  r15.y = t10[4].val[0/4+1];
  r15.z = t10[4].val[0/4+2];
  r15.w = t10[4].val[0/4+3];
  r14.y = dot(r15.xyzw, r13.xyzw);
  r15.x = t10[5].val[0/4];
  r15.y = t10[5].val[0/4+1];
  r15.z = t10[5].val[0/4+2];
  r15.w = t10[5].val[0/4+3];
  r14.z = dot(r15.xyzw, r13.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r9.xyz = r14.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r6.x * r6.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r12.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r11.xyz;
  r9.xyz = r7.xzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r7.xzw * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r7.xyz = r7.xzw * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xy = -cb0[129].xy + v4.xy;
  r6.xy = cb0[131].zw * r6.xy;
  r6.xy = (uint2)r6.xy;
  r3.w = v4.w * cb2[3].x + cb2[3].y;
  r3.w = log2(r3.w);
  r3.w = cb2[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r4.x = asint(cb2[1].z) + -1;
  r3.w = min((uint)r4.x, (uint)r3.w);
  r6.xy = (uint2)r6.xy >> asuint(cb2[2].xx);
  r3.w = mad((int)r3.w, asint(cb2[1].y), (int)r6.y);
  r3.w = mad((int)r3.w, asint(cb2[1].x), (int)r6.x);
  if (cb2[0].z != 0) {
    r9.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r9.yzw = r9.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r12.xyzw = cb2[51].xyzw * r2.yyyy;
      r12.xyzw = r2.xxxx * cb2[50].xyzw + r12.xyzw;
      r12.xyzw = r2.zzzz * cb2[52].xyzw + r12.xyzw;
      r12.xyzw = cb2[53].xyzw + r12.xyzw;
      r6.xy = r12.xy / r12.ww;
      r12.xy = cmp(r6.xy >= float2(0,0));
      r13.xy = cmp(float2(1,1) >= r6.xy);
      r12.xy = r12.xy ? r13.xy : 0;
      r4.x = r12.y ? r12.x : 0;
      if (r4.x != 0) {
        r4.x = t13.SampleLevel(s3_s, r6.xy, 0).x;
        r6.x = cmp(r12.z < r4.x);
        r4.x = cmp(0.99000001 < r4.x);
        r4.x = (int)r4.x | (int)r6.x;
        r12.x = r4.x ? 1.000000 : 0;
      } else {
        r12.x = 1;
      }
    } else {
      r12.x = 1;
    }
    if (cb2[9].z != 0) {
      r4.x = cb2[9].z;
      r6.x = 0;
      while (true) {
        r6.y = cmp((uint)r6.x >= asuint(cb2[9].z));
        if (r6.y != 0) break;
        r6.y = dot(cb2[10].xyzw, icb[r6.x+0].xyzw);
        r6.y = cmp(v4.w < r6.y);
        if (r6.y != 0) {
          r4.x = r6.x;
          break;
        }
        r6.x = (int)r6.x + 1;
      }
      r6.x = cmp((uint)r4.x < asuint(cb2[9].z));
      if (r6.x != 0) {
        r6.x = (uint)r4.x << 2;
        r13.xyzw = cb2[r6.x+12].xyzw * r2.yyyy;
        r13.xyzw = r2.xxxx * cb2[r6.x+11].xyzw + r13.xyzw;
        r13.xyzw = r2.zzzz * cb2[r6.x+13].xyzw + r13.xyzw;
        r13.xyzw = cb2[r6.x+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r6.xy = cmp(r14.zw >= cb2[r4.x+27].xy);
        r13.xy = cmp(cb2[r4.x+27].zw >= r14.zw);
        r6.xy = r6.xy ? r13.xy : 0;
        r4.x = r6.y ? r6.x : 0;
        if (r4.x != 0) {
          r14.xyzw = r14.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r6.xy = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb2[31].zwzw * r15.xyzw;
          r16.x = t12.SampleLevel(s2_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r16.y = t12.SampleLevel(s2_s, r14.xy, 0).x;
          r16.z = t12.SampleLevel(s2_s, r14.zw, 0).x;
          r16.w = t12.SampleLevel(s2_s, r15.zw, 0).x;
          r4.x = r13.z * 4000 + -1;
          r13.xyzw = saturate(r16.xyzw * float4(4000,4000,4000,4000) + -r4.xxxx);
          r13.yz = r13.zy + -r13.wx;
          r13.xy = r6.xx * r13.yz + r13.wx;
          r4.x = r13.y + -r13.x;
          r4.x = r6.y * r4.x + r13.x;
        } else {
          r4.x = 1;
        }
      } else {
        r4.x = 1;
      }
    } else {
      r4.x = 1;
    }
    r9.x = 1;
    r6.x = dot(float4(1,1,1,1), r9.xyzw);
    r12.yzw = r9.yzw;
    r6.y = dot(r12.xyzw, float4(1,1,1,1));
    r6.y = -1 + r6.y;
    r6.x = r6.x * r6.y + 1;
    r6.y = saturate(v4.w * cb2[9].x + cb2[9].y);
    r6.y = r6.y * r6.y;
    r6.x = r6.x + -r4.x;
    r4.x = r6.y * r6.x + r4.x;
    r6.x = min(1, r4.x);
    r6.x = r6.x + r4.x;
    r6.x = cmp(0 < r6.x);
    if (r6.x != 0) {
      r6.x = dot(cb2[4].xyz, cb2[4].xyz);
      r6.x = rsqrt(r6.x);
      r9.xyz = cb2[4].xyz * r6.xxx;
      r6.x = dot(r4.yzw, r9.xyz);
      r6.y = saturate(r6.x);
      r7.w = max(cb0[226].y, r5.w);
      r9.w = dot(r4.yzw, r3.xyz);
      r9.x = dot(r3.xyz, r9.xyz);
      r9.y = r9.x * 2 + 2;
      r9.y = rsqrt(r9.y);
      r6.x = r9.w + r6.x;
      r6.x = saturate(r6.x * r9.y);
      r9.x = saturate(r9.y * r9.x + r9.y);
      r9.y = 9.99999975e-006 + abs(r9.w);
      r9.y = min(1, r9.y);
      r12.yzw = r11.xyz * r6.yyy;
      r12.yzw = float3(0.318309873,0.318309873,0.318309873) * r12.yzw;
      r9.z = r7.w * r7.w;
      r9.w = r9.z * r9.z;
      r13.x = r6.x * r9.w + -r6.x;
      r6.x = r13.x * r6.x + 1;
      r6.x = r6.x * r6.x;
      r6.x = 3.14159274 * r6.x;
      r6.x = r9.w / r6.x;
      r7.w = -r7.w * r7.w + 1;
      r9.w = r9.y * r7.w + r9.z;
      r7.w = r6.y * r7.w + r9.z;
      r7.w = r9.y * r7.w;
      r7.w = r6.y * r9.w + r7.w;
      r7.w = rcp(r7.w);
      r6.x = r7.w * r6.x;
      r7.w = 1 + -r9.x;
      r9.x = r7.w * r7.w;
      r9.x = r9.x * r9.x;
      r9.y = r9.x * r7.w;
      r9.z = saturate(50 * r10.y);
      r7.w = -r9.x * r7.w + 1;
      r10.x = r11.w;
      r13.xyz = r7.www * r10.xyz;
      r9.xyz = r9.zzz * r9.yyy + r13.xyz;
      r6.x = 0.5 * r6.x;
      r9.xyz = r6.xxx * r9.xyz;
      r9.xyz = r9.xyz * r6.yyy;
      r13.xyz = cb2[5].xyz * r4.xxx;
      r14.xyz = r13.xyz * r12.yzw;
      r9.xyz = r13.yzx * r9.yzx;
      r14.w = r9.z;
    } else {
      r9.xy = float2(0,0);
      r14.xyzw = float4(0,0,0,0);
    }
    r4.x = asuint(cb2[8].z) >> 8;
    r4.x = (int)r4.x & asint(cb1[23].w);
    r13.xyzw = r4.xxxx ? r14.xyzw : float4(0,0,0,0);
    r6.xy = r4.xx ? r9.xy : float2(0,0);
    r6.z = r12.x;
  } else {
    r13.xyzw = float4(0,0,0,0);
    r6.xy = float2(0,0);
  }
  r4.x = (uint)r3.w << 1;
  r4.x = t15.Load(r4.x).x;
  r4.x = min(asuint(cb2[0].x), (uint)r4.x);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r7.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r7.w = t15.Load(r7.w).x;
  r4.x = min(asuint(cb2[0].x), (uint)r4.x);
  r9.x = dot(-r3.xyz, r4.yzw);
  r9.x = r9.x + r9.x;
  r9.xyz = r4.yzw * -r9.xxx + -r3.xyz;
  r9.w = max(cb0[226].y, r5.w);
  r12.x = r9.w * r9.w;
  r9.w = -r9.w * r9.w + 1;
  r12.y = dot(r4.yzw, r3.xyz);
  r12.z = r12.y + r12.y;
  r12.w = r12.z * r12.y + -1;
  r14.x = 9.99999975e-006 + abs(r12.y);
  r14.x = min(1, r14.x);
  r14.yzw = float3(0.318309873,0.318309873,0.318309873) * r11.xyz;
  r15.x = r12.x * r12.x;
  r15.y = saturate(50 * r10.y);
  r16.y = 1;
  r10.w = r11.w;
  r17.xyz = r13.xyz;
  r18.x = r13.w;
  r18.yz = r6.xy;
  r11.w = 0;
  while (true) {
    r15.z = cmp((uint)r11.w >= (uint)r4.x);
    if (r15.z != 0) break;
    r15.z = (int)r7.w + (int)r11.w;
    r15.z = t16.Load(r15.z).x;
    r15.w = (int)r15.z * 6;
    r19.xyzw = t14.Load(r15.w).xyzw;
    r15.w = mad((int)r15.z, 6, 1);
    r20.xyzw = t14.Load(r15.w).xyzw;
    r16.zw = mad((int2)r15.zz, int2(6,6), int2(2,3));
    r21.xyzw = t14.Load(r16.z).xyzw;
    r22.xyzw = t14.Load(r16.w).xyzw;
    r15.w = cmp(r20.w == 0.000000);
    r16.z = cmp(-2 < r22.x);
    r19.xyz = r19.xyz + -r2.xyz;
    r16.w = dot(r19.xyz, r19.xyz);
    r17.w = rsqrt(r16.w);
    r23.xyz = r19.xyz * r17.www;
    r17.w = r19.w * r19.w;
    r16.w = r17.w * r16.w;
    r16.w = -r16.w * r16.w + 1;
    r16.w = max(0, r16.w);
    r16.w = r16.w * r16.w;
    r24.xyz = r19.xyz * r19.www;
    r17.w = dot(r24.xyz, r24.xyz);
    r17.w = min(1, r17.w);
    r17.w = 1 + -r17.w;
    r17.w = log2(r17.w);
    r17.w = r20.w * r17.w;
    r17.w = exp2(r17.w);
    r16.w = r15.w ? r16.w : r17.w;
    r17.w = dot(r23.xyz, r21.xyz);
    r17.w = r17.w + -r22.x;
    r17.w = saturate(r17.w * r22.y);
    r17.w = r17.w * r17.w;
    r17.w = r17.w * r16.w;
    r16.z = r16.z ? r17.w : r16.w;
    r16.w = cmp(0 < r16.z);
    if (r16.w != 0) {
      r16.w = (int)r21.w & 255;
      r16.w = r16.w ? 1 : 0;
      if (r16.w != 0) {
        r23.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r23.xyzw = r23.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r16.w = (uint)r21.w >> 4;
        if (1 == 0) r17.w = 0; else if (1+4 < 32) {         r17.w = (uint)r21.w << (32-(1 + 4)); r17.w = (uint)r17.w >> (32-1);        } else r17.w = (uint)r21.w >> 4;
        r24.x = r17.w ? 1 : 0;
        r21.xyz = (int3)r16.www & int3(2,4,8);
        r24.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r16.w = dot(r24.xyzw, float4(1,1,1,1));
        r17.w = dot(r23.xyzw, float4(1,1,1,1));
        r18.w = dot(r6.zwww, r23.xyzw);
        r18.w = -1 + r18.w;
        r17.w = r17.w * r18.w + 1;
        r21.xy = r17.ww * r16.ww;
      } else {
        r21.xy = float2(1,1);
      }
      r16.w = r21.x + r21.y;
      r16.w = cmp(0 < r16.w);
      if (r16.w != 0) {
        r15.z = mad((int)r15.z, 6, 4);
        r23.xyzw = t14.Load(r15.z).xyzw;
        r15.z = f16tof32(r22.w);
        r16.w = 0.5 * r15.z;
        r22.xyw = -r16.www * r23.xyz + r19.xyz;
        r19.xyz = r16.www * r23.xyz + r19.xyz;
        r16.w = cmp(0 < r15.z);
        if (r16.w != 0) {
          r17.w = dot(r22.xyw, r22.xyw);
          r18.w = dot(r19.xyz, r19.xyz);
          r17.w = rsqrt(r17.w);
          r18.w = rsqrt(r18.w);
          r19.w = r18.w * r17.w;
          r20.w = dot(r22.xyw, r19.xyz);
          r20.w = r20.w * r19.w;
          r21.y = r20.w * 0.5 + r19.w;
          r21.y = 0.5 + r21.y;
          r23.y = r19.w / r21.y;
          r19.w = dot(r4.yzw, r22.xyw);
          r21.y = dot(r4.yzw, r19.xyz);
          r18.w = r21.y * r18.w;
          r17.w = r19.w * r17.w + r18.w;
          r23.x = 0.5 * r17.w;
        } else {
          r17.w = dot(r22.xyw, r22.xyw);
          r18.w = 1 + r17.w;
          r23.y = rcp(r18.w);
          r17.w = rsqrt(r17.w);
          r24.xyz = r22.xyw * r17.www;
          r23.x = dot(r4.yzw, r24.xyz);
          r20.w = 1;
        }
        r17.w = cmp(0 < r22.z);
        r18.w = r22.z * r22.z;
        r18.w = saturate(r18.w * r23.y);
        r18.w = sqrt(r18.w);
        r19.w = cmp(r23.x < r18.w);
        r21.y = max(r23.x, -r18.w);
        r21.y = r21.y + r18.w;
        r21.y = r21.y * r21.y;
        r18.w = 4 * r18.w;
        r18.w = r21.y / r18.w;
        r18.w = r19.w ? r18.w : r23.x;
        r17.w = saturate(r17.w ? r18.w : r23.x);
        r15.w = r15.w ? r23.y : 1;
        r19.xyz = r19.xyz + -r22.xyw;
        r18.w = dot(r9.xyz, r19.xyz);
        r23.xyz = r18.www * r9.xyz + -r19.xyz;
        r19.w = dot(r22.xyw, r23.xyz);
        r18.w = r18.w * r18.w;
        r15.z = r15.z * r15.z + -r18.w;
        r15.z = saturate(r19.w / r15.z);
        r19.xyz = r15.zzz * r19.xyz + r22.xyw;
        r19.xyz = r16.www ? r19.xyz : r22.xyw;
        r15.z = dot(r19.xyz, r19.xyz);
        r15.z = rsqrt(r15.z);
        r19.xyz = r19.xyz * r15.zzz;
        r16.w = r22.z * r15.z;
        r16.w = saturate(r16.w * r9.w);
        r15.z = saturate(r23.w * r15.z);
        r18.w = dot(r4.yzw, r19.xyz);
        r19.x = dot(r3.xyz, r19.xyz);
        r19.y = r19.x * 2 + 2;
        r19.y = rsqrt(r19.y);
        r19.z = r18.w + r12.y;
        r19.z = saturate(r19.z * r19.y);
        r19.y = saturate(r19.y * r19.x + r19.y);
        r19.w = cmp(0 < r16.w);
        if (r19.w != 0) {
          r21.y = -r16.w * r16.w + 1;
          r21.y = sqrt(r21.y);
          r21.z = dot(r12.yy, r18.ww);
          r22.x = r21.z + -r19.x;
          r22.y = cmp(r22.x >= r21.y);
          if (r22.y != 0) {
            r19.z = 1;
            r19.y = abs(r12.y);
          } else {
            r22.y = -r22.x * r22.x + 1;
            r22.y = rsqrt(r22.y);
            r22.y = r22.y * r16.w;
            r22.z = -r22.x * r18.w + r12.y;
            r22.x = -r22.x * r19.x + r12.w;
            r22.xw = r22.yy * r22.xz;
            r23.x = r18.w * r18.w;
            r23.x = -r12.y * r12.y + -r23.x;
            r23.x = 1 + r23.x;
            r23.x = -r19.x * r19.x + r23.x;
            r21.z = saturate(r21.z * r19.x + r23.x);
            r21.z = sqrt(r21.z);
            r21.z = r22.y * r21.z;
            r23.x = r21.z * r12.y;
            r23.y = r23.x + r23.x;
            r23.z = r18.w * r21.y + r12.y;
            r22.y = r22.y * r22.z + r23.z;
            r22.z = r19.x * r21.y + r22.x;
            r22.z = 1 + r22.z;
            r23.w = r22.z * r21.z;
            r24.x = r22.y * r22.z;
            r24.y = r23.y * r22.y;
            r23.x = r22.y * r23.x;
            r23.x = 0.5 * r23.x;
            r23.x = r23.w * -0.5 + r23.x;
            r23.x = r24.x * r23.x;
            r24.z = -r23.w * 2 + r24.y;
            r24.y = r24.y * r24.z;
            r23.w = r23.w * r23.w + r24.y;
            r24.y = r22.z * r22.z;
            r22.z = r19.x * r21.y + r22.z;
            r22.z = r22.z * -0.5 + -0.5;
            r22.z = r24.x * r22.z;
            r22.z = r23.z * r24.y + r22.z;
            r22.y = r22.y * r22.z + r23.w;
            r22.z = r23.x + r23.x;
            r23.z = r23.x * r23.x;
            r23.z = r22.y * r22.y + r23.z;
            r22.z = r22.z / r23.z;
            r22.y = r22.z * r22.y;
            r22.z = -r22.z * r23.x + 1;
            r21.z = r22.y * r21.z;
            r21.z = r22.z * r22.w + r21.z;
            r22.y = r22.y * r23.y;
            r22.x = r22.z * r22.x + r22.y;
            r18.w = r18.w * r21.y + r21.z;
            r19.x = r19.x * r21.y + r22.x;
            r21.y = r19.x * 2 + 2;
            r21.y = rsqrt(r21.y);
            r18.w = r18.w + r12.y;
            r19.z = saturate(r18.w * r21.y);
            r19.y = saturate(r21.y * r19.x + r21.y);
          }
        }
        r15.w = r15.w * r17.w;
        r22.xyz = r15.www * r14.yzw;
        r18.w = cmp(0 < r15.z);
        r15.z = r15.z * r15.z;
        r19.x = r19.y * 3.5999999 + 0.400000006;
        r15.z = r15.z / r19.x;
        r15.z = r12.x * r12.x + r15.z;
        r15.z = min(1, r15.z);
        r16.x = r18.w ? r15.z : r15.x;
        r15.z = 0.25 * r16.w;
        r18.w = (uint)r16.x >> 1;
        r18.w = (int)r18.w + 0x1fbd1df5;
        r16.w = r18.w * 3 + r16.w;
        r15.z = r16.w * r15.z;
        r16.w = 0.00100000005 + r19.y;
        r15.z = r15.z / r16.w;
        r23.x = r16.x + r15.z;
        r23.y = r16.x / r23.x;
        r19.xw = r19.ww ? r23.xy : r16.xy;
        r15.z = cmp(r20.w < 1);
        r18.w = 1.00010002 + -r20.w;
        r20.w = 1 + r20.w;
        r18.w = r18.w / r20.w;
        r18.w = sqrt(r18.w);
        r20.w = 0.25 * r18.w;
        r21.y = (uint)r19.x >> 1;
        r21.y = (int)r21.y + 0x1fbd1df5;
        r18.w = r21.y * 3 + r18.w;
        r18.w = r20.w * r18.w;
        r16.w = r18.w / r16.w;
        r16.w = r19.x + r16.w;
        r16.w = r19.x / r16.w;
        r16.w = sqrt(r16.w);
        r16.w = r19.w * r16.w;
        r15.z = r15.z ? r16.w : r19.w;
        r16.w = r19.z * r16.x + -r19.z;
        r16.w = r16.w * r19.z + 1;
        r16.w = r16.w * r16.w;
        r16.w = 3.14159274 * r16.w;
        r16.w = r16.x / r16.w;
        r15.z = r16.w * r15.z;
        r16.x = sqrt(r16.x);
        r16.w = 1 + -r16.x;
        r18.w = r14.x * r16.w + r16.x;
        r16.x = r17.w * r16.w + r16.x;
        r16.x = r16.x * r14.x;
        r16.x = r17.w * r18.w + r16.x;
        r16.x = rcp(r16.x);
        r15.z = r16.x * r15.z;
        r16.x = 1 + -r19.y;
        r16.w = r16.x * r16.x;
        r16.w = r16.w * r16.w;
        r17.w = r16.w * r16.x;
        r16.x = -r16.w * r16.x + 1;
        r19.xyz = r16.xxx * r10.wyz;
        r19.xyz = r15.yyy * r17.www + r19.xyz;
        r15.z = 0.5 * r15.z;
        r19.xyz = r15.zzz * r19.xyz;
        r19.xyz = r19.xyz * r15.www;
        r16.xzw = r20.xyz * r16.zzz;
        r16.xzw = r16.xzw * r21.xxx;
        r20.xyz = r22.xyz * r16.xzw;
        r16.xzw = r19.xyz * r16.xzw;
      } else {
        r20.xyz = float3(0,0,0);
        r16.xzw = float3(0,0,0);
      }
    } else {
      r20.xyz = float3(0,0,0);
      r16.xzw = float3(0,0,0);
    }
    r15.z = (uint)r21.w >> 8;
    r15.z = (int)r15.z & asint(cb1[23].w);
    r19.xyz = r20.xyz + r17.xyz;
    r16.xzw = r18.xyz + r16.xzw;
    r17.xyz = r15.zzz ? r19.xyz : r17.xyz;
    r18.xyz = r15.zzz ? r16.xzw : r18.xyz;
    r11.w = (int)r11.w + 1;
  }
  r6.xyz = r18.xyz + r17.xyz;
  r9.yzw = r12.zzz * r4.yzw + -r3.xyz;
  r12.y = saturate(r12.y);
  r3.x = (int)r3.w + asint(cb2[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t15.Load(r3.y).x;
  r3.y = min(asuint(cb2[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t15.Load(r3.x).x;
  r3.z = max(0.00100000005, r5.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.w = r3.w + -r3.z;
  r9.x = 0;
  r12.xzw = float3(0,0,0);
  r4.x = 1;
  r6.w = 0;
  r7.w = 1;
  r11.w = 0;
  while (true) {
    r13.x = cmp((uint)r11.w >= (uint)r3.y);
    if (r13.x != 0) break;
    r13.x = cmp(r4.x < 0.00100000005);
    if (r13.x != 0) {
      break;
    }
    r13.x = (int)r3.x + (int)r11.w;
    r13.x = t16.Load(r13.x).x;
    r13.yzw = -cb3[r13.x+0].xyz + r2.xyz;
    r14.x = dot(r13.yzw, r13.yzw);
    r14.y = sqrt(r14.x);
    r14.z = cmp(r14.y < cb3[r13.x+0].w);
    if (r14.z != 0) {
      r14.z = cmp(0 < cb3[r13.x+341].z);
      if (r14.z != 0) {
        r14.z = (uint)r13.x << 2;
        r15.xzw = cb3[r14.z+1024].xyz * r2.yyy;
        r15.xzw = r2.xxx * cb3[r14.z+1023].xyz + r15.xzw;
        r15.xzw = r2.zzz * cb3[r14.z+1025].xyz + r15.xzw;
        r15.xzw = cb3[r14.z+1026].xyz + r15.xzw;
        r16.xyz = cb3[r14.z+1024].xyz * r9.zzz;
        r16.xyz = r9.yyy * cb3[r14.z+1023].xyz + r16.xyz;
        r16.xyz = r9.www * cb3[r14.z+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xzw * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xzw * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r14.z = min(r16.y, r16.z);
        r14.z = min(r16.x, r14.z);
        r16.xyz = r14.zzz * r9.yzw + r2.xyz;
        r17.xyz = cb3[r13.x+682].xyz + cb3[r13.x+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
        r14.z = cb3[r13.x+2387].w * 0.699999988;
        r17.xyz = -cb3[r13.x+2387].www * float3(0.5,0.5,0.5) + cb3[r13.x+2387].xyz;
        r18.xyz = cb3[r13.x+2387].xyz * r15.xzw;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xzw * cb3[r13.x+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xzw = r15.xzw * cb3[r13.x+2387].xyz + -r17.xyz;
        r15.xzw = abs(r15.xzw);
        r15.xzw = r18.xyz ? r15.xzw : 0;
        r14.w = dot(r19.xyz, float3(1,1,1));
        r15.x = dot(r15.xzw, float3(1,1,1));
        r14.w = r15.x + r14.w;
        r14.z = 1 / r14.z;
        r14.z = saturate(r14.w * r14.z);
        r14.w = r14.z * -2 + 3;
        r14.z = r14.z * r14.z;
        r17.x = -r14.w * r14.z + 1;
      } else {
        r14.y = saturate(r14.y / cb3[r13.x+0].w);
        r14.z = dot(r9.yzw, r13.yzw);
        r14.x = -cb3[r13.x+0].w * cb3[r13.x+0].w + r14.x;
        r14.x = r14.z * r14.z + -r14.x;
        r14.w = cmp(r14.x >= 0);
        r14.x = sqrt(r14.x);
        r14.x = r14.x + -r14.z;
        r13.yzw = r14.xxx * r9.yzw + r13.yzw;
        r18.yzw = -cb3[r13.x+682].xyz + r13.yzw;
        r13.y = r14.y * 2.5 + -1.5;
        r13.y = max(0, r13.y);
        r13.z = r13.y * r13.y;
        r13.y = -r13.y * 2 + 3;
        r18.x = -r13.z * r13.y + 1;
        r17.xyzw = r14.wwww ? r18.xyzw : r9.xyzw;
        r16.xyz = r17.yzw;
      }
      r16.w = cb3[r13.x+341].y;
      r14.xyzw = t18.SampleLevel(s5_s, r16.xyzw, r3.w).xyzw;
      r13.yzw = cb3[r13.x+341].xxx * r14.xyz;
      r13.yzw = r13.yzw * r17.xxx;
      r12.xzw = r13.yzw * r4.xxx + r12.xzw;
      r13.y = -r14.w * r17.x + 1;
      r4.x = r13.y * r4.x;
      r13.x = cb3[r13.x+682].w * r17.x;
      r6.w = r13.x * r7.w + r6.w;
      r13.x = 1 + -r17.x;
      r7.w = r13.x * r7.w;
    }
    r11.w = (int)r11.w + 1;
  }
  r13.xyz = cb0[157].xyz * r12.xzw;
  r3.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.w = r6.w * r3.x;
  r3.x = cmp(0 < cb2[116].y);
  if (r3.x != 0) {
    r3.x = cb2[116].x + -r3.z;
    r3.x = -1 + r3.x;
    r3.xyz = t17.SampleLevel(s4_s, r9.yzw, r3.x).xyz;
    r3.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r3.w = cb2[117].x * r3.w;
    r3.xyz = cb0[187].xyz * r3.xyz;
    r6.w = cmp(cb2[116].z < 1);
    r14.xyz = r4.xxx * r3.xyz + r13.xyz;
    r14.w = r3.w * r7.w + r13.w;
    r3.xyz = r6.www ? float3(0,0,0) : r3.xyz;
    r13.xyzw = r6.wwww ? r14.xyzw : r13.xyzw;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r3.w = saturate(r5.w * cb0[197].x + cb0[197].y);
  r6.w = r3.w * -2 + 3;
  r3.w = r3.w * r3.w;
  r3.w = r6.w * r3.w;
  r6.w = max(9.99999975e-005, r13.w);
  r0.w = r0.w / r6.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r3.w * r0.w + 1;
  r3.xyz = r4.xxx * r3.xyz;
  r3.xyz = r13.xyz * r0.www + r3.xyz;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xz = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r12.xz, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r13.xyzw = cb0[1].xyzw * r1.yyyy;
    r13.xyzw = r1.xxxx * cb0[0].xyzw + r13.xyzw;
    r13.xyzw = r1.zzzz * cb0[2].xyzw + r13.xyzw;
    r13.xyzw = cb0[3].xyzw + r13.xyzw;
    r9.xyz = r9.yzw * v4.www + r1.xyz;
    r14.xyzw = cb0[1].xyzw * r9.yyyy;
    r14.xyzw = r9.xxxx * cb0[0].xyzw + r14.xyzw;
    r9.xyzw = r9.zzzz * cb0[2].xyzw + r14.xyzw;
    r9.xyzw = cb0[3].xyzw + r9.xyzw;
    r3.w = rcp(r13.w);
    r12.xzw = r13.xyz * r3.www;
    r3.w = rcp(r9.w);
    r13.xy = v4.ww * cb0[30].zw + r13.zw;
    r4.x = rcp(r13.y);
    r9.xyz = r9.xyz * r3.www + -r12.xzw;
    r3.w = dot(r9.xy, r9.xy);
    r3.w = sqrt(r3.w);
    r6.w = 0.5 * r3.w;
    r13.yz = r12.xz * r6.ww + r9.xy;
    r13.yz = -r3.ww * float2(0.5,0.5) + abs(r13.yz);
    r13.yz = max(float2(0,0), r13.yz);
    r13.yz = r13.yz / abs(r9.xy);
    r13.yz = float2(1,1) + -r13.yz;
    r3.w = min(r13.y, r13.z);
    r3.w = r3.w / r6.w;
    r9.xyz = r9.xyz * r3.www;
    r3.w = -r13.x * r4.x + r12.w;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r9.z), r3.w);
    r13.xy = r12.xz * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xz = cb2[176].xy * r13.xy;
    r9.xy = cb2[176].xy * r9.xy;
    r4.x = 0.0833333358 * r3.w;
    r9.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r9.xyz;
    r12.xzw = r9.xyz * r0.www + r12.xzw;
    r0.w = 1;
    r16.x = 0;
    r13.xyz = float3(0,0,0);
    r6.w = 0;
    r7.w = 0;
    r9.w = 0;
    r11.w = 0;
    r14.xw = float2(0,0);
    while (true) {
      r15.x = cmp((uint)r14.w >= 12);
      if (r15.x != 0) break;
      r15.x = (uint)r14.w;
      r17.xyzw = float4(1,2,3,4) + r15.xxxx;
      r18.xyzw = r17.xxxy * r9.xyzz + r12.xzww;
      r19.xyzw = r17.yyzz * r9.xyxy + r12.xzxz;
      r17.xyzw = r17.wwzw * r9.xyzz + r12.xzww;
      r15.x = r5.w * 0.666666687 + r0.w;
      r15.z = r5.w * 0.666666687 + r15.x;
      r20.x = t22.SampleLevel(s7_s, r18.xy, r0.w).x;
      r20.y = t22.SampleLevel(s7_s, r19.xy, r0.w).x;
      r20.z = t22.SampleLevel(s7_s, r19.zw, r15.x).x;
      r20.w = t22.SampleLevel(s7_s, r17.xy, r15.x).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r4.xxxx);
      r15.xw = (int2)r18.zw | (int2)r18.xy;
      r15.x = (int)r15.w | (int)r15.x;
      if (r15.x != 0) {
        r16.x = r17.x;
        r13.xyz = r17.yzw;
        r6.w = r18.x;
        r7.w = r18.y;
        r9.w = r18.z;
        r11.w = -1;
        break;
      }
      r14.x = r17.w;
      r14.w = (int)r14.w + 4;
      r0.w = r15.z;
      r16.x = r17.x;
      r13.xyz = r17.yzw;
      r6.w = r18.x;
      r7.w = r18.y;
      r9.w = r18.z;
      r11.w = r15.x;
    }
    if (r11.w != 0) {
      r13.w = 2;
      r17.xy = r13.yz;
      r17.z = 3;
      r13.yzw = r9.www ? r13.xyw : r17.xyz;
      r16.y = r13.x;
      r16.z = 1;
      r13.xyz = r7.www ? r16.xyz : r13.yzw;
      r14.y = r16.x;
      r14.z = 0;
      r13.xyz = r6.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r14.w;
      r0.w = r13.z + r0.w;
      r3.w = r13.x + -r13.y;
      r3.w = saturate(r13.x / r3.w);
      r0.w = r3.w + r0.w;
      r9.xyz = r9.xyz * r0.www + r12.xzw;
      r9.xy = cb2[176].zw * r9.xy;
      r9.xy = r9.xy * float2(2,-2) + float2(-1,1);
      r9.xy = cb0[66].xy * r9.xy;
      r9.xy = r9.xy / cb0[66].xy;
      r12.xzw = cb0[123].xyw * r9.yyy;
      r12.xzw = r9.xxx * cb0[122].xyw + r12.xzw;
      r12.xzw = r9.zzz * cb0[124].xyw + r12.xzw;
      r12.xzw = cb0[125].xyw + r12.xzw;
      r9.zw = r12.xz / r12.ww;
      r12.xz = r9.zw * cb2[177].xy + cb2[177].zw;
      r9.xy = saturate(abs(r9.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r9.xy, r9.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r9.xy = saturate(abs(r9.zw) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r9.xy, r9.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r0.w = min(r3.w, r0.w);
      r9.xyz = t23.SampleLevel(s8_s, r12.xz, 0).xyz;
      r9.xyz = min(float3(0,0,0), -r9.xyz);
      r3.w = saturate(-r5.w * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r9.xyz = -r9.xyz * r0.www;
      r9.xyz = cb2[178].xxx * r9.xyz;
      r0.w = -r3.w * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r9.xyz;
    }
  }
  r9.xyzw = r5.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r9.x * r9.x;
  r3.w = -9.27999973 * r12.y;
  r3.w = exp2(r3.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r9.x + r9.y;
  r9.xy = r0.ww * float2(-1.03999996,1.03999996) + r9.zw;
  r10.xyz = r10.wyz;
  r0.w = r15.y * r9.y;
  r9.xyz = r10.xyz * r9.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb2[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r12.xyz = -cb2[123].xyz + r2.xyz;
    r2.w = dot(r12.xyz, cb2[124].xyz);
    r2.w = cb2[124].w + -abs(r2.w);
    r2.w = saturate(cb2[129].x * r2.w);
    r3.w = dot(r12.xyz, cb2[125].xyz);
    r3.w = cb2[125].w + -abs(r3.w);
    r3.w = saturate(cb2[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb2[122].xyz, r4.yzw);
    r2.w = saturate(r2.w * cb2[130].x + cb2[130].y);
    r3.w = -0.200000003 + r5.w;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.w;
    r2.w = cmp(0 < r0.w);
    if (r2.w != 0) {
      r12.xyz = -cb0[67].xyz + r2.xyz;
      r2.w = dot(r12.xyz, r12.xyz);
      r2.w = rsqrt(r2.w);
      r12.xyz = r12.xyz * r2.www;
      r2.w = dot(r12.xyz, -cb2[122].xyz);
      r2.w = r2.w + r2.w;
      r12.xyz = cb2[122].xyz * r2.www + r12.xyz;
      r13.xyz = cb2[127].xyz * r4.zzz;
      r4.xyz = r4.yyy * cb2[126].xyz + r13.xyz;
      r4.xyz = r4.www * cb2[128].xyz + r4.xyz;
      r2.w = dot(r12.xyz, r4.xyz);
      r2.w = r2.w + r2.w;
      r4.xyz = r4.xyz * -r2.www + r12.xyz;
      r4.xyz = r4.xyz * cb2[129].zzz + r2.xyz;
      r4.xyz = cb0[70].xyz + r4.xyz;
      r12.xyz = cb0[13].xyz * r4.yyy;
      r4.xyw = r4.xxx * cb0[12].xyz + r12.xyz;
      r4.xyz = r4.zzz * cb0[14].xyz + r4.xyw;
      r4.xyz = cb0[15].xyz + r4.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb2[r2.w+132].xyw * r4.yyy;
      r4.xyw = r4.xxx * cb2[r2.w+131].xyw + r12.xyz;
      r4.xyz = r4.zzz * cb2[r2.w+133].xyw + r4.xyw;
      r4.xyz = cb2[r2.w+134].xyw + r4.xyz;
      r2.w = cb2[141].z ? cb0[197].w : 0;
      r4.xy = r4.xy / r4.zz;
      r4.xy = max(-cb2[141].xy, r4.xy);
      r4.xy = min(cb2[141].xy, r4.xy);
      r4.xy = r4.xy * cb2[r2.w+139].xy + cb2[r2.w+139].zw;
      r4.xyzw = t19.SampleLevel(s5_s, r4.xy, 0).xyzw;
      r0.w = r4.w * r0.w;
    } else {
      r4.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r3.xyz = r0.www * r3.xyz + r4.xyz;
  }
  r3.xyz = r3.xyz * r9.xyz;
  r4.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r3.xyz = r3.xyz * r4.xyz + r6.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r0.w);
  r3.w = dot(r1.xyz, cb0[60].xyz);
  r2.w = r2.w / r3.w;
  r2.w = cb0[210].z * r2.w;
  r2.w = max(0, r2.w);
  r3.w = min(cb2[143].z, cb0[67].z);
  r4.x = cb0[67].z + -r3.w;
  r1.w = r4.x + r1.z;
  r4.x = dot(r1.xyw, r1.xyw);
  r4.y = rsqrt(r4.x);
  r4.x = r4.x * r4.y;
  r2.w = max(cb2[143].w, r2.w);
  r4.z = cmp(0 < r2.w);
  r4.w = r2.w * r4.y;
  r3.w = r4.w * r1.w + r3.w;
  r4.w = -r4.w * r1.w + r1.w;
  r2.w = -r2.w * r4.y + 1;
  r2.w = r2.w * r4.x;
  r5.w = -cb2[146].y + r3.w;
  r5.w = cb2[143].y * r5.w;
  r5.w = max(-127, r5.w);
  r5.w = exp2(-r5.w);
  r5.w = cb2[146].x * r5.w;
  r3.w = -cb2[144].w + r3.w;
  r3.w = cb2[144].y * r3.w;
  r3.w = max(-127, r3.w);
  r3.w = exp2(-r3.w);
  r3.w = cb2[144].z * r3.w;
  r5.w = r4.z ? r5.w : cb2[143].x;
  r3.w = r4.z ? r3.w : cb2[144].x;
  r2.w = r4.z ? r2.w : r4.x;
  r4.z = r4.z ? r4.w : r1.w;
  r4.w = cb2[143].y * r4.z;
  r4.w = max(-127, r4.w);
  r6.x = exp2(-r4.w);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r4.w;
  r6.y = -r4.w * 0.240226507 + 0.693147182;
  r4.w = cmp(0.00999999978 < abs(r4.w));
  r4.w = r4.w ? r6.x : r6.y;
  r4.z = cb2[144].y * r4.z;
  r4.z = max(-127, r4.z);
  r6.x = exp2(-r4.z);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r4.z;
  r6.y = -r4.z * 0.240226507 + 0.693147182;
  r4.z = cmp(0.00999999978 < abs(r4.z));
  r4.z = r4.z ? r6.x : r6.y;
  r3.w = r4.z * r3.w;
  r3.w = r5.w * r4.w + r3.w;
  r4.z = r3.w * r2.w;
  r6.xy = cmp(float2(0,0) < cb2[146].zw);
  if (r6.x != 0) {
    r4.w = saturate(r4.x * cb2[150].x + cb2[150].y);
    r6.xz = float2(1,-1) * cb2[149].yx;
    r9.x = dot(r1.xy, r6.xz);
    r9.y = dot(r1.xy, cb2[149].xy);
    r9.z = r1.w;
    r6.xzw = t20.SampleLevel(s6_s, r9.xyz, 0).xyz;
    r9.xyz = t20.SampleLevel(s6_s, r9.xyz, cb2[150].z).xyz;
    r6.xzw = -r9.xyz + r6.xzw;
    r6.xzw = r4.www * r6.xzw + r9.xyz;
    r6.xzw = cb2[145].xyz * r6.xzw;
  } else {
    r6.xzw = cb2[145].xyz;
  }
  r4.w = cmp(cb2[147].w >= 0);
  r5.w = cmp(cb2[146].z == 0.000000);
  r4.w = r4.w ? r5.w : 0;
  if (r4.w != 0) {
    r9.xyz = r4.yyy * r1.xyw;
    r1.w = saturate(dot(r9.xyz, cb2[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb2[148].w * r1.w;
    r1.w = exp2(r1.w);
    r9.xyz = cb2[148].xyz * r1.www;
    r1.w = -cb2[147].w + r2.w;
    r1.w = max(0, r1.w);
    r1.w = r3.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r9.xyz = r9.xyz * r1.www;
  } else {
    r9.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r4.z);
  r1.w = min(1, r1.w);
  r9.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.x);
  r1.w = r1.w ? r6.y : 0;
  r4.xyzw = r1.wwww ? float4(1,0,0,0) : r9.wxyz;
  r1.w = 1 + -r4.x;
  r4.yzw = r6.xzw * r1.www + r4.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r9.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r6.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r9.z = cb0[208].z * r1.w;
    r6.xyzw = t21.SampleLevel(s0_s, r9.xyz, 0).xyzw;
    r4.yzw = r4.yzw * r6.www + r6.xyz;
    r4.x = r6.w * r4.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r9.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r6.xy = r6.xy / r6.zz;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r9.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r12.z = sqrt(r3.w);
    r3.w = cb0[181].y * r12.z;
    r5.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r5.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r9.xyz = r9.xyz * r2.www;
    r2.w = -r9.z * r9.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r9.z * 0.5 + 0.5;
    r6.zw = r9.xy / r2.ww;
    r2.w = 1 + -abs(r6.z);
    r2.w = sqrt(r2.w);
    r5.w = abs(r6.z) * -0.0187292993 + 0.0742610022;
    r5.w = r5.w * abs(r6.z) + -0.212114394;
    r5.w = r5.w * abs(r6.z) + 1.57072878;
    r7.w = r5.w * r2.w;
    r7.w = r7.w * -2 + 3.14159274;
    r6.z = cmp(r6.z < -r6.z);
    r6.z = r6.z ? r7.w : 0;
    r2.w = r5.w * r2.w + r6.z;
    r5.w = cmp(r6.w < 0);
    r6.z = 6.28318548 + -r2.w;
    r2.w = r5.w ? r6.z : r2.w;
    r13.x = 0.159154937 * r2.w;
    r6.zw = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r9.xy = float2(1,1) + cb0[180].xy;
    r9.xy = cb0[180].xy / r9.xy;
    r6.zw = r9.xy * r6.zw;
    r12.xy = r1.ww ? r6.zw : r6.xy;
    r6.xyzw = t11.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r6.xyz = r6.xyz * r3.www;
    r1.w = 1 + -r6.w;
    r1.w = -r3.w * r1.w + 1;
    r6.xyz = cb0[135].zzz * r6.xyz;
    r4.yzw = r6.xyz * r4.xxx + r4.yzw;
    r4.x = r4.x * r1.w;
  }
  r6.xyz = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r6.xyz = r6.xyz + -r3.xyz;
  r3.xyz = cb0[145].yyy * r6.xyz + r3.xyz;
  r8.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r8.xyzw = r1.wwww ? r2.yzwx : r8.xyzw;
    o0.w = r8.w;
  } else {
    o0.w = r8.w;
  }
  r0.xyz = r0.xyz * r7.xyz + r3.xyz;
  r0.xyz = r0.xyz + r8.xyz;
  r0.xyz = r0.xyz * r4.xxx + r4.yzw;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb2[166].xyz + -cb2[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb2[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}