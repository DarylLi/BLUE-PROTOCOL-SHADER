// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r5.xy = t3.SampleBias(s2_s, r1.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = r4.xyz / cb3[20].xxx;
  r8.xy = t4.SampleBias(s3_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.y = v1.y * r0.w;
  r9.xz = -r8.xy;
  r8.xy = t4.SampleBias(s3_s, r7.yz, cb0[143].y).xy;
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
  r9.xy = t4.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
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
  r10.xyz = t5.Sample(s0_s, r4.xz).xyz;
  r11.xyz = t5.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r4.zzz * r11.xyz + r10.xyz;
  r4.xyz = t5.Sample(s0_s, r4.xy).xyz;
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
  r6.xyz = t6.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
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
  r8.x = t2[r6.z].val[0/4];
  r8.y = t2[r6.z].val[0/4+1];
  r8.z = t2[r6.z].val[0/4+2];
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
  r8.xy = t7.SampleBias(s5_s, r8.xy, cb0[143].y).xy;
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
  r0.x = dot(-cb1[5].xyz, -cb1[5].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb1[5].xyz / r0.xxx;
  r0.x = dot(r8.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r9.xyz, r9.xyz);
  r0.y = sqrt(r0.y);
  r9.xyz = r9.xyz / r0.yyy;
  r0.y = saturate(dot(-r9.xyz, r8.xyz));
  r2.w = 1 + -cb2[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb2[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb2[0].w;
  r2.x = r2.x * r2.y + cb2[0].w;
  r2.y = cmp(r2.x >= cb2[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb1[4].xyz * r0.xxx;
  r0.x = dot(-cb1[8].xyz, -cb1[8].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb1[8].xyz / r0.xxx;
  r0.x = dot(r8.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r9.xyz, r8.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb1[9].xyz * r0.xxx;
  r0.xzw = cb1[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb1[1].xxx + r0.xzw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = r1.x / cb3[28].z;
  r2.x = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[28].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[29].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.x ? 1 : r1.y;
  r2.xy = r1.zw / cb3[29].ww;
  r2.xy = cb3[30].xy + r2.xy;
  r2.xyz = t8.SampleBias(s6_s, r2.xy, cb0[143].y).xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r8.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[29].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r2.xyz = r2.xyz * r10.xxx + r8.xyz;
  r2.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[6].xyz * r2.xyz;
  r2.w = t8.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r8.xy = cb3[30].ww * v3.xy;
  r3.w = t9.SampleBias(s7_s, r8.xy, cb0[143].y).x;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[31].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = cb3[31].y * r3.w;
  r3.w = r4.w ? 0 : r3.w;
  r3.w = cb0[142].z * cb3[30].z + r3.w;
  r3.w = 6.28318548 * r3.w;
  r3.w = sin(r3.w);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * cb3[31].w + cb3[31].z;
  r3.w = max(cb3[32].y, r3.w);
  r3.w = min(cb3[32].x, r3.w);
  r3.w = cb3[32].z * r3.w;
  r3.w = cb1[3].y * r3.w;
  r2.w = r3.w * r2.w;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r2.xyz * r1.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r2.xyz = r4.yzw * r2.xyz;
  r0.xzw = cb2[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb3[8].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb3[8].xyz + cb3[9].xyz;
  r0.xzw = cb3[32].www * r0.xzw + r2.xyz;
  r2.xyzw = t10.SampleBias(s8_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = r1.yyy + -r2.xyz;
  r1.yzw = cb3[33].zzz * r1.yzw + r2.xyz;
  r2.x = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r4.yzw = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb3[33].y, r8.x, r9.x);
  r4.yzw = r8.xxx * r4.yzw;
  r1.yzw = r1.yzw * r9.xxx + r4.yzw;
  r1.yzw = r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r2.xyz = cb3[11].xyz * r1.yzw;
  r8.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r3.w = r8.y ? r8.x : 0;
  r4.yzw = r8.zzz ? float3(1.40129846e-045,2.80259693e-045,0) : float3(2.80259693e-045,0,1.40129846e-045);
  r4.yzw = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r4.yzw;
  r8.xy = cmp(abs(r5.xy) < abs(r5.zz));
  r3.w = r8.x ? r8.w : 0;
  r8.xyz = r8.yyy ? float3(2,1,3) : float3(1,3,2);
  r8.xyz = r3.www ? float3(3,2,1) : r8.xyz;
  r8.xyz = (int3)-r4.yzw + (int3)r8.xyz;
  r8.xyz = max(int3(0,0,0), (int3)r8.xyz);
  r8.xyz = min(int3(2,2,2), (int3)r8.xyz);
  r9.x = dot(abs(r5.xyz), icb[r4.y+0].xyz);
  r9.y = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r8.xw = float2(-0.577300012,-0.577300012) + r9.xy;
  r8.xw = saturate(float2(2.36574411,2.36574411) * r8.xw);
  r3.w = cmp((int)r4.w < (int)r4.z);
  r4.yz = r3.ww ? r4.wz : r4.zw;
  r3.w = cmp((int)r8.z < (int)r8.y);
  r8.yz = r3.ww ? r8.zy : r8.yz;
  r9.xyz = ddx_coarse(r7.xyz);
  r10.xyz = ddy_coarse(r7.xyz);
  r11.x = dot(r7.xyz, icb[r4.y+0].xyz);
  r11.y = dot(r7.xyz, icb[r4.z+0].xyz);
  r12.x = dot(r9.xyz, icb[r4.y+0].xyz);
  r12.y = dot(r9.xyz, icb[r4.z+0].xyz);
  r13.x = dot(r10.xyz, icb[r4.y+0].xyz);
  r13.y = dot(r10.xyz, icb[r4.z+0].xyz);
  r4.yzw = t11.SampleGrad(s0_s, r11.xy, r12.yxx, r13.yxx).xyz;
  r14.x = dot(r7.xyz, icb[r8.y+0].xyz);
  r14.y = dot(r7.xyz, icb[r8.z+0].xyz);
  r7.x = dot(r9.xyz, icb[r8.y+0].xyz);
  r7.y = dot(r9.xyz, icb[r8.z+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.y+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.z+0].xyz);
  r10.xyz = t11.SampleGrad(s0_s, r14.xy, r7.xyx, r9.xyx).xyz;
  r10.xyz = r10.xyz * r8.www;
  r4.yzw = r4.yzw * r8.xxx + r10.xyz;
  r3.w = r8.x + r8.w;
  r4.yzw = r4.yzw / r3.www;
  r5.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r5.www + -r4.yzw;
  r4.yzw = cb3[34].yyy * r10.xyz + r4.yzw;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.yzw);
  r4.yzw = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wyz;
  r10.xyz = r4.wyz * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[34].x, r15.x, r16.x);
  r10.xyz = r15.xxx * r10.xyz;
  r4.yzw = r4.yzw * r16.xxx + r10.xyz;
  r4.yzw = r5.www * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r10.xyz = cb3[13].xyz * r4.yzw;
  r5.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = saturate(cb3[34].z * r5.w);
  r6.z = 1 + -r5.w;
  r6.z = r6.z + r6.z;
  r15.xyz = -r6.zzz * cb3[16].xyz + float3(1,1,1);
  r6.z = r5.w + r5.w;
  r16.xyz = cb3[15].xyz * r6.zzz;
  r5.w = cmp(r5.w >= 0.5);
  r15.xyz = r5.www ? r15.xyz : r16.xyz;
  r16.xyz = cb3[15].xyz + -r15.xyz;
  r15.xyz = cb3[34].www * r16.xyz + r15.xyz;
  r16.xyz = -cb0[67].xyz + r3.xyz;
  r5.w = dot(r16.xyz, r16.xyz);
  r5.w = sqrt(r5.w);
  r5.w = r5.w / cb3[35].x;
  r6.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb3[35].y * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.z ? 0 : r5.w;
  r4.yzw = -r4.yzw * cb3[13].xyz + r15.xyz;
  r4.yzw = r5.www * r4.yzw;
  r4.yzw = cb3[35].zzz * r4.yzw + r10.xyz;
  r1.yzw = -r1.yzw * cb3[11].xyz + r4.yzw;
  r1.yzw = r4.xxx * r1.yzw + r2.xyz;
  r2.x = saturate(v2.x + v2.x);
  r4.yzw = cb3[18].xyz * r1.yzw + -r1.yzw;
  r1.yzw = r2.xxx * r4.yzw + r1.yzw;
  r1.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.yzw);
  r2.x = -cb3[35].w * v2.x + r6.x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb3[36].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.y ? 0 : r2.x;
  r2.y = saturate(cb3[36].y + r2.x);
  r2.x = cb3[36].z + r6.y;
  r4.yz = t12.SampleGrad(s0_s, r11.xy, r12.yx, r13.yx).xy;
  r6.xy = t12.SampleGrad(s0_s, r14.xy, r7.xy, r9.xy).xy;
  r6.xy = r6.xy * r8.ww;
  r4.yz = r4.yz * r8.xx + r6.xy;
  r4.yz = r4.yz / r3.ww;
  r2.z = -cb3[35].w * v2.x + r4.y;
  r6.y = saturate(cb3[36].w + r2.z);
  r6.x = cb3[37].x + r4.z;
  r4.yz = r6.xy + -r2.xy;
  r2.xy = saturate(r4.xx * r4.yz + r2.xy);
  r0.y = cb3[37].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[37].z * r0.y;
  r2.z = saturate(cb3[38].x + v1.z);
  r0.y = r2.z * r0.y;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb3[38].y * r0.y);
  r2.z = cb3[38].z * cb2[1].w;
  r3.w = cb3[38].w + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r4.z = cb2[1].w * 0.617499948 + -r1.x;
  r4.y = saturate(r4.z / r4.y);
  r4.z = -cb2[1].w * 0.649999976 + 8000;
  r4.x = r4.y * r4.z + r4.x;
  r3.w = r3.w / r4.x;
  r1.x = r1.x / cb3[38].w;
  r4.x = cmp(9.99999975e-006 < abs(r2.z));
  r2.z = cmp(r2.z >= 0);
  r2.z = r2.z ? r3.w : r1.x;
  r1.x = r4.x ? r2.z : r1.x;
  r2.z = cmp(9.99999975e-006 < abs(cb3[38].z));
  r3.w = 1 + cb3[38].z;
  r2.z = r2.z ? r3.w : 1.39999998;
  r4.xyz = -cb0[129].xxy + v7.xxy;
  r3.w = r4.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.z = -r3.w + r2.z;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r3.w = (uint)r4.w << 1;
  r3.w = (int)r3.w + (int)r4.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r4.xy = float2(0.015625,0.015625) * r4.yz;
  r4.x = t13.SampleBias(s9_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.z + r3.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r2.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.yzw);
  o2.z = r2.y * cb0[139].y + cb0[139].x;
  r2.y = t2[r6.w].val[4/4];
  r2.z = t2[r6.w].val[4/4+1];
  r1.w = cmp(0 < r2.z);
  if (r1.w != 0) {
    r4.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r6.xyz = (int3)r4.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.w = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r6.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r6.xyz * r1.www + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r1.w = t1.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.z = 0.0799999982 * r0.y;
  r4.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r4.xyz = r2.xxx * r4.xyz + r2.zzz;
  r6.xyz = -r1.xyz * r2.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r2.z = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r4.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.xyz = r2.zzz ? r4.xyz : r6.xyz;
  r6.xyz = r2.zzz ? float3(0,0,0) : r7.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r2.z = cmp(0 < cb0[140].x);
  if (r2.z != 0) {
    r2.zw = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t2[r2.z].val[0/4];
    r6.y = t2[r2.z].val[0/4+1];
    r6.z = t2[r2.z].val[0/4+2];
    r6.xyz = -r6.xyz + r3.xyz;
    r7.x = t2[r2.w].val[0/4];
    r7.y = t2[r2.w].val[0/4+1];
    r7.z = t2[r2.w].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r2.z = (int)r6.y | (int)r6.x;
    r2.z = (int)r6.z | (int)r2.z;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r2.zzz ? r3.xyz : r0.xzw;
  }
  r0.xzw = cb0[145].yyy * r4.xyz + r0.xzw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.z = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.z = frac(r2.z);
  r2.z = -0.5 + r2.z;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r2.z;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = r2.y;
  o2.x = r2.x;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}