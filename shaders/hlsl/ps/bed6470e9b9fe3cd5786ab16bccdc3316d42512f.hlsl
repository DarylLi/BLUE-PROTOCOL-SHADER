// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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

cbuffer cb5 : register(b5)
{
  float4 cb5[39];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[216];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : COLOR0,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v5.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v7.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb5[19].xx * v2.xy;
  r2.w = cb5[19].y + cb0[143].y;
  r5.xy = t5.SampleBias(s3_s, r1.zw, r2.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r7.xyz = r4.xyz / cb5[20].xxx;
  r8.xy = t6.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r8.xy;
  r8.xy = t6.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.x = v1.x * r2.w;
  r10.yz = -r8.xy;
  r8.xy = min(float2(1,1), abs(v1.xz));
  r10.xyz = r10.xyz + -r9.xyz;
  r8.xzw = r8.xxx * r10.xyz + r9.xyz;
  r9.xy = t6.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r9.xy, r9.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r2.w;
  r9.xyz = r9.xyz + -r8.xzw;
  r8.xyz = r8.yyy * r9.xyz + r8.xzw;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r2.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb5[20].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb5[20].www * r5.xyz + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v4.yz);
  r9.zw = log2(v4.yz);
  r9.zw = cb5[21].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r4.xyz = r4.xyz / cb5[21].www;
  r10.xyz = t7.Sample(s0_s, r4.xz).xyz;
  r11.xyz = t7.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r4.zzz * r11.xyz + r10.xyz;
  r4.xyz = t7.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r10.xyz;
  r4.xyz = r4.www * r4.xyz + r10.xyz;
  r10.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb5[22].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r10.xyz = r4.xyz * r9.xxx + r9.xxx;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyz);
  r10.xyz = log2(r10.xyz);
  r10.xyz = cb5[22].yyy * r10.xyz;
  r10.xyz = exp2(r10.xyz);
  r10.xyz = r11.xyz ? float3(0,0,0) : r10.xyz;
  r10.xyz = r10.xyz + -r9.xxx;
  r9.xzw = cb5[22].zzz * r10.xyz + r9.xxx;
  r6.z = r5.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r6.xyz = r6.xyz / r2.www;
  r2.w = dot(r6.xyz, cb5[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r4.x + -r4.x;
  r2.w = cb5[24].y * r2.w + r4.x;
  r2.w = saturate(r2.w * cb5[24].z + cb5[25].y);
  r4.xyz = r4.xyz * r9.yyy + r9.yyy;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb5[22].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r9.yyy;
  r4.xyz = cb5[22].zzz * r4.xyz + r9.yyy;
  r4.xyz = saturate(-r4.xyz + r2.www);
  r4.xyz = saturate(r9.xzw + r4.xyz);
  r6.xyz = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xyw;
  r2.w = r6.z * -2 + 1;
  r2.w = cb5[25].z * r2.w + r6.z;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[25].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb5[26].x * r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xyz = max(r4.xyz, r2.www);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r8.xyz + r5.xyz;
  r8.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[26].yyy * r8.xyz + r5.xyz;
  r2.w = cb1[18].x + cb1[18].y;
  r2.w = cb1[18].z + r2.w;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb3[2].x * r2.w;
  r2.w = cb5[26].z * r2.w;
  r6.zw = v3.xy + -v2.xy;
  r6.zw = cb5[27].ww * r6.zw + v2.xy;
  r6.zw = cb5[28].xx * r6.zw;
  r6.zw = r2.ww * cb5[27].yz + r6.zw;
  r6.zw = t9.SampleBias(s6_s, r6.zw, cb0[143].y).xy;
  r8.xy = r6.zw + r6.zw;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.zw, r6.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r8.z = sqrt(r2.w);
  r8.xyz = float3(-1,-1,-1) + r8.xyz;
  r8.xyz = v4.xxx * r8.xyz + float3(0,0,1);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb5[28].yyy * r9.xyz + r8.xyz;
  r5.xyz = r8.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r5.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r8.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r9.xyz, r9.xyz);
  r0.y = sqrt(r0.y);
  r9.xyz = r9.xyz / r0.yyy;
  r0.y = saturate(dot(-r9.xyz, r8.xyz));
  r2.w = 1 + -cb4[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb4[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb4[0].w;
  r2.x = r2.x * r2.y + cb4[0].w;
  r2.y = cmp(r2.x >= cb4[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb4[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb4[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r8.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r9.xyz, r8.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb3[9].xyz * r0.xxx;
  r0.xzw = cb3[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb3[1].xxx + r0.xzw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = r1.x / cb5[28].z;
  r2.x = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb5[28].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb5[29].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.x ? 1 : r1.y;
  r2.xy = r1.zw / cb5[29].ww;
  r2.xy = cb5[30].xy + r2.xy;
  r2.xyz = t10.SampleBias(s7_s, r2.xy, cb0[143].y).xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r8.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb5[29].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r2.xyz = r2.xyz * r10.xxx + r8.xyz;
  r2.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb5[6].xyz * r2.xyz;
  r2.w = t10.SampleBias(s7_s, r1.zw, cb0[143].y).w;
  r6.zw = cb5[30].ww * v2.xy;
  r3.w = t11.SampleBias(s8_s, r6.zw, cb0[143].y).x;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[31].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = cb5[31].y * r3.w;
  r3.w = r4.w ? 0 : r3.w;
  r3.w = cb0[142].z * cb5[30].z + r3.w;
  r3.w = 6.28318548 * r3.w;
  r3.w = sin(r3.w);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * cb5[31].w + cb5[31].z;
  r3.w = max(cb5[32].y, r3.w);
  r3.w = min(cb5[32].x, r3.w);
  r3.w = cb5[32].z * r3.w;
  r3.w = cb3[3].y * r3.w;
  r2.w = r3.w * r2.w;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r2.xyz * r1.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r2.xyz = r4.yzw * r2.xyz;
  r0.xzw = cb4[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb5[8].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb5[8].xyz + cb5[9].xyz;
  r0.xzw = cb5[32].www * r0.xzw + r2.xyz;
  r2.xyzw = t12.SampleBias(s9_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = r1.yyy + -r2.xyz;
  r1.yzw = cb5[33].zzz * r1.yzw + r2.xyz;
  r2.x = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r4.yzw = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb5[33].y, r8.x, r9.x);
  r4.yzw = r8.xxx * r4.yzw;
  r1.yzw = r1.yzw * r9.xxx + r4.yzw;
  r1.yzw = r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r2.xyz = cb5[11].xyz * r1.yzw;
  r8.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r3.w = r8.y ? r8.x : 0;
  r4.yzw = r8.zzz ? float3(1.40129846e-045,2.80259693e-045,0) : float3(2.80259693e-045,0,1.40129846e-045);
  r4.yzw = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r4.yzw;
  r6.zw = cmp(abs(r5.xy) < abs(r5.zz));
  r3.w = r6.z ? r8.w : 0;
  r8.xyz = r6.www ? float3(2,1,3) : float3(1,3,2);
  r8.xyz = r3.www ? float3(3,2,1) : r8.xyz;
  r8.xyz = (int3)-r4.yzw + (int3)r8.xyz;
  r8.xyz = max(int3(0,0,0), (int3)r8.xyz);
  r8.xyz = min(int3(2,2,2), (int3)r8.xyz);
  r9.x = dot(abs(r5.xyz), icb[r4.y+0].xyz);
  r9.y = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r6.zw = float2(-0.577300012,-0.577300012) + r9.xy;
  r6.zw = saturate(float2(2.36574411,2.36574411) * r6.zw);
  r3.w = cmp((int)r4.w < (int)r4.z);
  r4.yz = r3.ww ? r4.wz : r4.zw;
  r3.w = cmp((int)r8.z < (int)r8.y);
  r8.xy = r3.ww ? r8.zy : r8.yz;
  r9.xyz = ddx_coarse(r7.xyz);
  r10.xyz = ddy_coarse(r7.xyz);
  r11.x = dot(r7.xyz, icb[r4.y+0].xyz);
  r11.y = dot(r7.xyz, icb[r4.z+0].xyz);
  r12.x = dot(r9.xyz, icb[r4.y+0].xyz);
  r12.y = dot(r9.xyz, icb[r4.z+0].xyz);
  r13.x = dot(r10.xyz, icb[r4.y+0].xyz);
  r13.y = dot(r10.xyz, icb[r4.z+0].xyz);
  r4.yzw = t13.SampleGrad(s0_s, r11.xy, r12.yxx, r13.yxx).xyz;
  r14.x = dot(r7.xyz, icb[r8.x+0].xyz);
  r14.y = dot(r7.xyz, icb[r8.y+0].xyz);
  r7.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r7.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r8.xyz = t13.SampleGrad(s0_s, r14.xy, r7.xyx, r9.xyx).xyz;
  r8.xyz = r8.xyz * r6.www;
  r4.yzw = r4.yzw * r6.zzz + r8.xyz;
  r3.w = r6.z + r6.w;
  r4.yzw = r4.yzw / r3.www;
  r5.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r5.www + -r4.yzw;
  r4.yzw = cb5[34].yyy * r8.xyz + r4.yzw;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.yzw);
  r4.yzw = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wyz;
  r8.xyz = r4.wyz * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb5[34].x, r10.x, r15.x);
  r8.xyz = r10.xxx * r8.xyz;
  r4.yzw = r4.yzw * r15.xxx + r8.xyz;
  r4.yzw = r5.www * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r8.xyz = cb5[13].xyz * r4.yzw;
  r5.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = saturate(cb5[34].z * r5.w);
  r7.z = 1 + -r5.w;
  r7.z = r7.z + r7.z;
  r10.xyz = -r7.zzz * cb5[16].xyz + float3(1,1,1);
  r7.z = r5.w + r5.w;
  r15.xyz = cb5[15].xyz * r7.zzz;
  r5.w = cmp(r5.w >= 0.5);
  r10.xyz = r5.www ? r10.xyz : r15.xyz;
  r15.xyz = cb5[15].xyz + -r10.xyz;
  r10.xyz = cb5[34].www * r15.xyz + r10.xyz;
  r15.xyz = -cb0[67].xyz + r3.xyz;
  r5.w = dot(r15.xyz, r15.xyz);
  r5.w = sqrt(r5.w);
  r5.w = r5.w / cb5[35].x;
  r7.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb5[35].y * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r7.z ? 0 : r5.w;
  r4.yzw = -r4.yzw * cb5[13].xyz + r10.xyz;
  r4.yzw = r5.www * r4.yzw;
  r4.yzw = cb5[35].zzz * r4.yzw + r8.xyz;
  r1.yzw = -r1.yzw * cb5[11].xyz + r4.yzw;
  r1.yzw = r4.xxx * r1.yzw + r2.xyz;
  r2.x = saturate(v4.x + v4.x);
  r4.yzw = cb5[18].xyz * r1.yzw + -r1.yzw;
  r1.yzw = r2.xxx * r4.yzw + r1.yzw;
  r1.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.yzw);
  r2.x = -cb5[35].w * v4.x + r6.x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb5[36].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.y ? 0 : r2.x;
  r2.y = saturate(cb5[36].y + r2.x);
  r2.x = cb5[36].z + r6.y;
  r4.yz = t14.SampleGrad(s0_s, r11.xy, r12.yx, r13.yx).xy;
  r6.xy = t14.SampleGrad(s0_s, r14.xy, r7.xy, r9.xy).xy;
  r6.xy = r6.xy * r6.ww;
  r4.yz = r4.yz * r6.zz + r6.xy;
  r4.yz = r4.yz / r3.ww;
  r2.z = -cb5[35].w * v4.x + r4.y;
  r6.y = saturate(cb5[36].w + r2.z);
  r6.x = cb5[37].x + r4.z;
  r4.yz = r6.xy + -r2.xy;
  r2.xy = saturate(r4.xx * r4.yz + r2.xy);
  r0.y = cb5[37].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb5[37].z * r0.y;
  r2.z = saturate(cb5[38].x + v1.z);
  r0.y = r2.z * r0.y;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb5[38].y * r0.y);
  r2.z = cb5[38].z * cb4[1].w;
  r3.w = cb5[38].w + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb4[1].ww;
  r4.z = cb4[1].w * 0.617499948 + -r1.x;
  r4.y = saturate(r4.z / r4.y);
  r4.z = -cb4[1].w * 0.649999976 + 8000;
  r4.x = r4.y * r4.z + r4.x;
  r3.w = r3.w / r4.x;
  r1.x = r1.x / cb5[38].w;
  r4.x = cmp(9.99999975e-006 < abs(r2.z));
  r2.z = cmp(r2.z >= 0);
  r2.z = r2.z ? r3.w : r1.x;
  r1.x = r4.x ? r2.z : r1.x;
  r2.z = cmp(9.99999975e-006 < abs(cb5[38].z));
  r3.w = 1 + cb5[38].z;
  r2.z = r2.z ? r3.w : 1.39999998;
  r4.xyz = -cb0[129].xxy + v6.xxy;
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
  r4.x = t15.SampleBias(s10_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.z + r3.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r2.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.yzw);
  o2.z = r2.y * cb0[139].y + cb0[139].x;
  r1.w = cmp(0 < cb0[215].x);
  r2.y = cmp(0 < cb1[20].z);
  if (r2.y != 0) {
    r2.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.yzw = max(float3(0,0,0), r2.yzw);
    r2.yzw = min(float3(0.99000001,0.99000001,0.99000001), r2.yzw);
    r2.yzw = cb0[213].xyz * r2.yzw;
    r4.xyz = (int3)r2.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r3.w = 1 + cb0[213].w;
    r2.yzw = r2.yzw / r4.www;
    r2.yzw = frac(r2.yzw);
    r2.yzw = cb0[213].www * r2.yzw;
    r2.yzw = r4.xyz * r3.www + r2.yzw;
    r2.yzw = float3(0.5,0.5,0.5) + r2.yzw;
    r2.yzw = cb0[214].xyz * r2.yzw;
    r2.y = t1.SampleLevel(s1_s, r2.yzw, 0).x;
  } else {
    r2.z = cmp(0 < cb1[18].w);
    r2.z = r1.w ? r2.z : 0;
    r2.y = r2.z ? cb2[5].x : 1;
  }
  r2.z = 0.0799999982 * r0.y;
  r4.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r4.xyz = r2.xxx * r4.xyz + r2.zzz;
  r6.xyz = -r1.xyz * r2.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r2.z = cmp(0 != cb0[183].w);
  r7.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.zzz ? r7.xyz : r6.xyz;
  r4.xyz = r2.zzz ? float3(0,0,0) : r4.xyz;
  r2.z = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r2.z * 2.04040003 + -0.332399994;
  r2.w = r2.z * -4.79510021 + r2.w;
  r2.z = r2.z * 2.75519991 + r2.w;
  r2.z = 1.33200002 + r2.z;
  r2.z = max(1, r2.z);
  if (r1.w != 0) {
    r7.xyz = r3.xyz * cb2[1].xyz + cb2[0].xyz;
    r7.xyz = max(cb2[2].xyz, r7.xyz);
    r7.xyz = min(cb2[3].xyz, r7.xyz);
    r8.xyzw = t2.Sample(s2_s, r7.xyz).xyzw;
    r9.xyzw = t3.Sample(s1_s, r7.xyz).xyzw;
    r7.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
    r11.xw = r8.xw;
    r11.y = r9.x;
    r11.z = r7.x;
    r10.x = 0.886227548;
    r11.x = dot(r11.xyzw, r10.xyzw);
    r12.x = r8.y;
    r12.yw = r9.yw;
    r12.z = r7.y;
    r11.y = dot(r12.xyzw, r10.xyzw);
    r7.x = r8.z;
    r7.y = r9.z;
    r11.z = dot(r7.xyzw, r10.xyzw);
    r7.xyz = max(float3(0,0,0), r11.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r2.www ? r3.xyz : r0.xzw;
  }
  r3.xyz = cb0[145].yyy * r4.xyz + r7.xyz;
  r0.xzw = r3.xyz + r0.xzw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r1.w * r2.z;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r2.x;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}