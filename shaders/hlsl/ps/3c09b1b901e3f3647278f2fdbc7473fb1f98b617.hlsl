// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t22 : register(t22);

Texture2D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

struct t11_t {
  float val[4];
};
StructuredBuffer<t11_t> t11 : register(t11);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[39];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  float3 v6 : TEXCOORD9,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v7.z;
  r1.y = 1;
  r1.xy = v7.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v7.yyyy;
  r2.xyzw = v7.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v7.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v6.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb3[19].xx * v3.xy;
  r0.w = cb3[19].y + cb0[143].y;
  r5.xy = t12.SampleBias(s2_s, r1.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = r4.xyz / cb3[20].xxx;
  r8.xy = t13.SampleBias(s3_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.y = v1.y * r0.w;
  r9.xz = -r8.xy;
  r8.xy = t13.SampleBias(s3_s, r7.yz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r10.x = v1.x * r0.w;
  r10.yz = -r8.xy;
  r8.xy = min(float2(1,1), abs(v1.xz));
  r10.xyz = r10.xyz + -r9.xyz;
  r8.xzw = r8.xxx * r10.xyz + r9.xyz;
  r9.xy = t13.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xzw;
  r8.xyz = r8.yyy * r9.xyz + r8.xzw;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb3[20].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb3[20].www * r5.xyz + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v2.yz);
  r9.zw = log2(v2.yz);
  r9.zw = cb3[21].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r4.xyz = r4.xyz / cb3[21].www;
  r10.xyz = t14.Sample(s0_s, r4.xz).xyz;
  r11.xyz = t14.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r4.zzz * r11.xyz + r10.xyz;
  r4.xyz = t14.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r10.xyz;
  r4.xyz = r4.www * r4.xyz + r10.xyz;
  r10.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb3[22].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r10.xyz = r4.xyz * r9.xxx + r9.xxx;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyz);
  r10.xyz = log2(r10.xyz);
  r10.xyz = cb3[22].yyy * r10.xyz;
  r10.xyz = exp2(r10.xyz);
  r10.xyz = r11.xyz ? float3(0,0,0) : r10.xyz;
  r10.xyz = r10.xyz + -r9.xxx;
  r9.xzw = cb3[22].zzz * r10.xyz + r9.xxx;
  r6.z = r5.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r0.w = dot(r6.xyz, cb3[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb3[24].y * r0.w + r4.x;
  r0.w = saturate(r0.w * cb3[24].z + cb3[25].y);
  r4.xyz = r4.xyz * r9.yyy + r9.yyy;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[22].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r9.yyy;
  r4.xyz = cb3[22].zzz * r4.xyz + r9.yyy;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r9.xzw + r4.xyz);
  r6.xyz = t15.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
  r0.w = r6.z * -2 + 1;
  r0.w = cb3[25].z * r0.w + r6.z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[25].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb3[26].x * r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r4.xyz = max(r4.xyz, r0.www);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r8.xyz + r5.xyz;
  r8.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[26].yyy * r8.xyz + r5.xyz;
  r6.zw = mad((int2)v5.xx, int2(36,36), int2(18,20));
  r8.x = t10[r6.z].val[0/4];
  r8.y = t10[r6.z].val[0/4+1];
  r8.z = t10[r6.z].val[0/4+2];
  r0.w = r8.x + r8.y;
  r0.w = r0.w + r8.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb1[2].x * r0.w;
  r0.w = cb3[26].z * r0.w;
  r8.xy = v4.xy + -v3.xy;
  r8.xy = cb3[27].ww * r8.xy + v3.xy;
  r8.xy = cb3[28].xx * r8.xy;
  r8.xy = r0.ww * cb3[27].yz + r8.xy;
  r8.xy = t16.SampleBias(s5_s, r8.xy, cb0[143].y).xy;
  r9.xy = r8.xy + r8.xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r9.z = sqrt(r0.w);
  r8.xyz = float3(-1,-1,-1) + r9.xyz;
  r8.xyz = v2.xxx * r8.xyz + float3(0,0,1);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb3[28].yyy * r9.xyz + r8.xyz;
  r5.xyz = r8.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r2.w = dot(-cb1[5].xyz, -cb1[5].xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = -cb1[5].xyz / r2.www;
  r2.w = dot(r8.xyz, r5.xyz);
  r2.w = 1 + r2.w;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r9.xyz, r9.xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = r9.xyz / r3.www;
  r3.w = saturate(dot(-r9.xyz, r8.xyz));
  r4.w = 1 + -cb2[1].x;
  r3.w = saturate(r4.w + r3.w);
  r2.w = r3.w * r2.w;
  r2.x = dot(r5.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb2[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb2[0].w;
  r2.y = r2.y * r2.z + cb2[0].w;
  r2.z = cmp(r2.y >= cb2[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.z * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb2[0].z * r2.y;
  r2.z = r2.w * r2.y;
  r8.xyz = cb1[4].xyz * r2.zzz;
  r2.z = dot(-cb1[8].xyz, -cb1[8].xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = -cb1[8].xyz / r2.zzz;
  r2.z = dot(r10.xyz, r5.xyz);
  r2.z = 1 + r2.z;
  r2.w = saturate(dot(-r9.xyz, r10.xyz));
  r2.w = saturate(r2.w + r4.w);
  r2.z = r2.z * r2.w;
  r2.y = r2.z * r2.y;
  r2.yzw = cb1[9].xyz * r2.yyy;
  r2.yzw = cb1[1].yyy * r2.yzw;
  r2.yzw = r8.xyz * cb1[1].xxx + r2.yzw;
  r3.w = cmp(cb0[31].w < 1);
  r4.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.w + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = r1.x / cb3[28].z;
  r3.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[28].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[29].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r3.w ? 1 : r1.y;
  r8.xy = r1.zw / cb3[29].ww;
  r8.xy = cb3[30].xy + r8.xy;
  r8.xyz = t17.SampleBias(s6_s, r8.xy, cb0[143].y).xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb3[29].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = cb3[6].xyz * r8.xyz;
  r3.w = t17.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r9.xy = cb3[30].ww * v3.xy;
  r4.w = t18.SampleBias(s7_s, r9.xy, cb0[143].y).x;
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb3[31].x * r4.w;
  r4.w = exp2(r4.w);
  r4.w = cb3[31].y * r4.w;
  r4.w = r5.w ? 0 : r4.w;
  r4.w = cb0[142].z * cb3[30].z + r4.w;
  r4.w = 6.28318548 * r4.w;
  r4.w = sin(r4.w);
  r4.w = r4.w * 0.5 + 0.5;
  r4.w = r4.w * cb3[31].w + cb3[31].z;
  r4.w = max(cb3[32].y, r4.w);
  r4.w = min(cb3[32].x, r4.w);
  r4.w = cb3[32].z * r4.w;
  r4.w = cb1[3].y * r4.w;
  r3.w = r4.w * r3.w;
  r8.xyz = r8.xyz * r3.www;
  r8.xyz = r8.xyz * r1.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r8.xyz * r4.yzw;
  r2.yzw = cb2[2].xyz * r2.yzw + r4.yzw;
  r4.yzw = cb3[8].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb3[8].xyz + cb3[9].xyz;
  r2.yzw = cb3[32].www * r2.yzw + r4.yzw;
  r8.xyzw = t19.SampleBias(s8_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = r1.yyy + -r8.xyz;
  r1.yzw = cb3[33].zzz * r1.yzw + r8.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r4.yzw = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb3[33].y, r8.x, r9.x);
  r4.yzw = r8.xxx * r4.yzw;
  r1.yzw = r1.yzw * r9.xxx + r4.yzw;
  r1.yzw = r3.www * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r4.yzw = cb3[11].xyz * r1.yzw;
  r9.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r3.w = r9.y ? r9.x : 0;
  r8.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r9.xy = cmp(abs(r5.xy) < abs(r5.zz));
  r3.w = r9.x ? r9.w : 0;
  r9.xyz = r9.yyy ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r3.www ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r8.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r10.x = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r10.y = dot(abs(r5.xyz), icb[r9.x+0].xyz);
  r9.xw = float2(-0.577300012,-0.577300012) + r10.xy;
  r9.xw = saturate(float2(2.36574411,2.36574411) * r9.xw);
  r3.w = cmp((int)r8.z < (int)r8.y);
  r8.xy = r3.ww ? r8.zy : r8.yz;
  r3.w = cmp((int)r9.z < (int)r9.y);
  r9.yz = r3.ww ? r9.zy : r9.yz;
  r10.xyz = ddx_coarse(r7.xyz);
  r11.xyz = ddy_coarse(r7.xyz);
  r12.x = dot(r7.xyz, icb[r8.x+0].xyz);
  r12.y = dot(r7.xyz, icb[r8.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r8.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r8.y+0].xyz);
  r8.xyz = t20.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r15.x = dot(r7.xyz, icb[r9.y+0].xyz);
  r15.y = dot(r7.xyz, icb[r9.z+0].xyz);
  r7.x = dot(r10.xyz, icb[r9.y+0].xyz);
  r7.y = dot(r10.xyz, icb[r9.z+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.y+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.z+0].xyz);
  r11.xyz = t20.SampleGrad(s0_s, r15.xy, r7.xyx, r10.xyx).xyz;
  r11.xyz = r11.xyz * r9.www;
  r8.xyz = r8.xyz * r9.xxx + r11.xyz;
  r3.w = r9.x + r9.w;
  r8.xyz = r8.xyz / r3.www;
  r5.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r5.www + -r8.xyz;
  r8.xyz = cb3[34].yyy * r11.xyz + r8.xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r11.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb3[34].x, r16.x, r17.x);
  r11.xyz = r16.xxx * r11.xyz;
  r8.xyz = r8.xyz * r17.xxx + r11.xyz;
  r8.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r11.xyz = cb3[13].xyz * r8.xyz;
  r5.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = saturate(cb3[34].z * r5.w);
  r6.z = 1 + -r5.w;
  r6.z = r6.z + r6.z;
  r16.xyz = -r6.zzz * cb3[16].xyz + float3(1,1,1);
  r6.z = r5.w + r5.w;
  r17.xyz = cb3[15].xyz * r6.zzz;
  r5.w = cmp(r5.w >= 0.5);
  r16.xyz = r5.www ? r16.xyz : r17.xyz;
  r17.xyz = cb3[15].xyz + -r16.xyz;
  r16.xyz = cb3[34].www * r17.xyz + r16.xyz;
  r17.xyz = -cb0[67].xyz + r3.xyz;
  r5.w = dot(r17.xyz, r17.xyz);
  r5.w = sqrt(r5.w);
  r5.w = r5.w / cb3[35].x;
  r6.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb3[35].y * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.z ? 0 : r5.w;
  r8.xyz = -r8.xyz * cb3[13].xyz + r16.xyz;
  r8.xyz = r8.xyz * r5.www;
  r8.xyz = cb3[35].zzz * r8.xyz + r11.xyz;
  r1.yzw = -r1.yzw * cb3[11].xyz + r8.xyz;
  r1.yzw = r4.xxx * r1.yzw + r4.yzw;
  r4.y = saturate(v2.x + v2.x);
  r8.xyz = cb3[18].xyz * r1.yzw + -r1.yzw;
  r1.yzw = r4.yyy * r8.xyz + r1.yzw;
  r1.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.yzw);
  r4.y = -cb3[35].w * v2.x + r6.x;
  r4.z = cmp(0 >= r4.y);
  r4.y = log2(r4.y);
  r4.y = cb3[36].x * r4.y;
  r4.y = exp2(r4.y);
  r4.y = r4.z ? 0 : r4.y;
  r8.y = saturate(cb3[36].y + r4.y);
  r8.x = cb3[36].z + r6.y;
  r4.yz = t21.SampleGrad(s0_s, r12.xy, r13.yx, r14.yx).xy;
  r6.xy = t21.SampleGrad(s0_s, r15.xy, r7.xy, r10.xy).xy;
  r6.xy = r6.xy * r9.ww;
  r4.yz = r4.yz * r9.xx + r6.xy;
  r4.yz = r4.yz / r3.ww;
  r3.w = -cb3[35].w * v2.x + r4.y;
  r6.y = saturate(cb3[36].w + r3.w);
  r6.x = cb3[37].x + r4.z;
  r4.yz = r6.xy + -r8.xy;
  r4.xy = saturate(r4.xx * r4.yz + r8.xy);
  r2.x = cb3[37].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb3[37].z * r2.x;
  r3.w = saturate(cb3[38].x + v1.z);
  r2.x = r3.w * r2.x;
  r2.xyzw = max(float4(0,0,0,0), r2.xyzw);
  r2.x = min(0.5, r2.x);
  r2.x = saturate(cb3[38].y * r2.x);
  r3.w = cb3[38].z * cb2[1].w;
  r4.z = cb3[38].w + r1.x;
  r6.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r4.w = cb2[1].w * 0.617499948 + -r1.x;
  r4.w = saturate(r4.w / r6.y);
  r5.w = -cb2[1].w * 0.649999976 + 8000;
  r4.w = r4.w * r5.w + r6.x;
  r4.z = r4.z / r4.w;
  r1.x = r1.x / cb3[38].w;
  r4.w = cmp(9.99999975e-006 < abs(r3.w));
  r3.w = cmp(r3.w >= 0);
  r3.w = r3.w ? r4.z : r1.x;
  r1.x = r4.w ? r3.w : r1.x;
  r3.w = cmp(9.99999975e-006 < abs(cb3[38].z));
  r4.z = 1 + cb3[38].z;
  r3.w = r3.w ? r4.z : 1.39999998;
  r6.xyz = -cb0[129].xxy + v7.xxy;
  r4.z = r6.x * cb0[130].z + -0.469999999;
  r4.z = 4.93230057 * r4.z;
  r4.z = cos(r4.z);
  r4.z = 0.899999976 + r4.z;
  r4.z = saturate(0.555555582 * r4.z);
  r3.w = -r4.z + r3.w;
  r4.zw = cb0[152].xx + r6.yz;
  r4.zw = (uint2)r4.zw;
  r4.w = (uint)r4.w << 1;
  r4.z = (int)r4.w + (int)r4.z;
  r4.z = (uint)r4.z % 5;
  r4.z = (uint)r4.z;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r4.w = t22.SampleBias(s9_s, r6.xy, cb0[143].y).x;
  r4.z = r4.z + r4.w;
  r4.z = 0.166666672 * r4.z;
  r1.x = r1.x * r3.w + r4.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r8.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.yzw);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r4.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.yzw = max(float3(0,0,0), r4.yzw);
  r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
  r4.yzw = cb0[213].xyz * r4.yzw;
  r7.xyz = (int3)r4.yzw;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.w = 1 + cb0[213].w;
  r4.yzw = r4.yzw / r7.www;
  r4.yzw = frac(r4.yzw);
  r4.yzw = cb0[213].www * r4.yzw;
  r4.yzw = r7.xyz * r1.www + r4.yzw;
  r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
  r4.yzw = cb0[214].xyz * r4.yzw;
  r6.x = t10[r6.w].val[4/4];
  r6.y = t10[r6.w].val[4/4+1];
  r1.w = cmp(0 < r6.y);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s1_s, r4.yzw, 0).x;
  } else {
    r1.w = 1;
  }
  r3.w = 0.0799999982 * r2.x;
  r6.yzw = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r6.yzw = r4.xxx * r6.yzw + r3.www;
  r7.xyz = -r1.xyz * r4.xxx + r1.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.yzw = r6.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.www ? r8.xyz : r7.xyz;
  r6.yzw = r3.www ? float3(0,0,0) : r6.yzw;
  r3.w = dot(r6.yzw, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r3.w * 2.04040003 + -0.332399994;
  r5.w = r3.w * -4.79510021 + r5.w;
  r3.w = r3.w * 2.75519991 + r5.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r8.xyz = t1.SampleLevel(s1_s, r4.yzw, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r4.yzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r4.yzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r4.yzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r4.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r4.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s1_s, r4.yzw, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyz = r5.yzy * r5.yzx;
  r16.yw = r5.zz * r5.yx;
  r5.w = r5.x * r5.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r5.w = 0.429042608 * r5.w;
  r16.x = r8.y;
  r16.yzw = r9.yzw;
  r17.x = 0.886227548;
  r7.w = dot(r16.xyzw, r17.xyzw);
  r9.yzw = r12.xyz;
  r9.x = dot(r9.xyzw, r15.xyzw);
  r7.w = r9.x + r7.w;
  r9.x = r12.w * r5.w + r7.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r7.w = dot(r12.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r9.w = dot(r10.xyzw, r15.xyzw);
  r7.w = r9.w + r7.w;
  r9.y = r13.w * r5.w + r7.w;
  r8.yzw = r11.yzw;
  r7.w = dot(r8.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r8.x = dot(r11.xyzw, r15.xyzw);
  r7.w = r8.x + r7.w;
  r9.z = r14.w * r5.w + r7.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r5.w = cmp(cb0[186].y != 0.000000);
  if (r5.w != 0) {
    r4.yzw = t8.SampleLevel(s1_s, r4.yzw, 0).xyz;
    r4.yzw = r4.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r5.w = dot(r4.yzw, r4.yzw);
    r9.x = sqrt(r5.w);
    r5.w = max(9.99999975e-005, r9.x);
    r4.yzw = r4.yzw / r5.www;
    r5.w = 1 + -r9.x;
    r5.w = -r5.w * r5.w + 1;
    r0.xyz = r0.xyz * r0.www + -r4.yzw;
    r0.xyz = r5.www * r0.xyz + r4.yzw;
    r4.y = saturate(dot(r4.yzw, r5.xyz));
    r4.z = 1 + -r4.y;
    r9.y = r5.w * r4.z + r4.y;
  } else {
    r0.xyz = r5.xyz;
    r9.xy = float2(1,1);
  }
  r10.x = t11[0].val[0/4];
  r10.y = t11[0].val[0/4+1];
  r10.z = t11[0].val[0/4+2];
  r10.w = t11[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t11[1].val[0/4];
  r11.y = t11[1].val[0/4+1];
  r11.z = t11[1].val[0/4+2];
  r11.w = t11[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t11[2].val[0/4];
  r11.y = t11[2].val[0/4+1];
  r11.z = t11[2].val[0/4+2];
  r11.w = t11[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t11[3].val[0/4];
  r12.y = t11[3].val[0/4+1];
  r12.z = t11[3].val[0/4+2];
  r12.w = t11[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t11[4].val[0/4];
  r13.y = t11[4].val[0/4+1];
  r13.z = t11[4].val[0/4+2];
  r13.w = t11[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t11[5].val[0/4];
  r13.y = t11[5].val[0/4+1];
  r13.z = t11[5].val[0/4+2];
  r13.w = t11[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t11[6].val[0/4];
  r0.z = t11[6].val[0/4+1];
  r0.w = t11[6].val[0/4+2];
  r4.yzw = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r4.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r4.yzw = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.yzw = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.yzw;
  r4.yzw = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.yzw;
  r4.yzw = float3(1.33200002,1.33200002,1.33200002) + r4.yzw;
  r4.yzw = max(float3(1,1,1), r4.yzw);
  r0.xyz = r4.yzw * r0.xyz;
  r4.yzw = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.w = cmp(0 < cb0[140].x);
  if (r5.w != 0) {
    r6.yz = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r7.x = t10[r6.y].val[0/4];
    r7.y = t10[r6.y].val[0/4+1];
    r7.z = t10[r6.y].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r6.y = t10[r6.z].val[0/4];
    r6.z = t10[r6.z].val[0/4+1];
    r6.w = t10[r6.z].val[0/4+2];
    r6.yzw = float3(1,1,1) + r6.yzw;
    r6.yzw = cmp(r6.yzw < abs(r7.xyz));
    r5.w = (int)r6.z | (int)r6.y;
    r5.w = (int)r6.w | (int)r5.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r5.www ? r3.xyz : r2.yzw;
  }
  r0.xyz = cb0[145].yyy * r4.yzw + r0.xyz;
  r0.xyz = r0.xyz + r2.yzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r6.x;
  o2.x = r4.x;
  o2.w = 0.505882382;
  o2.y = r2.x;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}