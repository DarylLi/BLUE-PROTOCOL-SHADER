// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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

cbuffer cb4 : register(b4)
{
  float4 cb4[42];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD1,
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
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v8.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb4[20].xx * v4.xy;
  r2.w = cb4[20].y + cb0[143].y;
  r5.xy = t9.SampleBias(s2_s, r1.zw, r2.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r7.xyz = r4.xyz / cb4[21].xxx;
  r8.xy = t10.SampleBias(s3_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r8.xy;
  r8.xy = t10.SampleBias(s3_s, r7.yz, cb0[143].y).xy;
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
  r9.xy = t10.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
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
  r8.xyz = cb4[21].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb4[21].www * r5.xyz + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v2.yz);
  r9.zw = log2(v2.yz);
  r9.zw = cb4[22].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r4.xyz = r4.xyz / cb4[22].www;
  r10.xyz = t11.Sample(s0_s, r4.xz).xyz;
  r11.xyz = t11.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r4.zzz * r11.xyz + r10.xyz;
  r4.xyz = t11.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r10.xyz;
  r4.xyz = r4.www * r4.xyz + r10.xyz;
  r10.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb4[23].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r10.xyz ? float3(0,0,0) : r4.xyz;
  r10.xyz = r4.xyz * r9.xxx + r9.xxx;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyz);
  r10.xyz = log2(r10.xyz);
  r10.xyz = cb4[23].yyy * r10.xyz;
  r10.xyz = exp2(r10.xyz);
  r10.xyz = r11.xyz ? float3(0,0,0) : r10.xyz;
  r10.xyz = r10.xyz + -r9.xxx;
  r9.xzw = cb4[23].zzz * r10.xyz + r9.xxx;
  r6.z = r5.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r6.xyz = r6.xyz / r2.www;
  r2.w = dot(r6.xyz, cb4[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r4.x + -r4.x;
  r2.w = cb4[25].y * r2.w + r4.x;
  r2.w = saturate(r2.w * cb4[25].z + cb4[26].y);
  r4.xyz = r4.xyz * r9.yyy + r9.yyy;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[23].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r9.yyy;
  r4.xyz = cb4[23].zzz * r4.xyz + r9.yyy;
  r4.xyz = saturate(-r4.xyz + r2.www);
  r4.xyz = saturate(r9.xzw + r4.xyz);
  r6.xyz = t12.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
  r2.w = r6.z * -2 + 1;
  r2.w = cb4[26].z * r2.w + r6.z;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[26].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb4[27].x * r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xyz = max(r4.xyz, r2.www);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r8.xyz + r5.xyz;
  r8.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[27].yyy * r8.xyz + r5.xyz;
  r2.w = cb1[18].x + cb1[18].y;
  r2.w = cb1[18].z + r2.w;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = v3.x + r2.w;
  r2.w = cb2[2].x * r2.w;
  r3.w = cb4[27].z * r2.w;
  r6.zw = v5.xy + -v4.xy;
  r6.zw = cb4[28].ww * r6.zw + v4.xy;
  r6.zw = cb4[29].xx * r6.zw;
  r6.zw = r3.ww * cb4[28].yz + r6.zw;
  r6.zw = t13.SampleBias(s5_s, r6.zw, cb0[143].y).xy;
  r8.xy = r6.zw + r6.zw;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r3.w = dot(r6.zw, r6.zw);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r8.z = sqrt(r3.w);
  r8.xyz = float3(-1,-1,-1) + r8.xyz;
  r8.xyz = v2.xxx * r8.xyz + float3(0,0,1);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb4[29].yyy * r9.xyz + r8.xyz;
  r5.xyz = r8.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = r5.xyz * r3.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r0.xyz = r3.www * r0.xyz;
  r5.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r8.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r9.xyz, r9.xyz);
  r0.y = sqrt(r0.y);
  r9.xyz = r9.xyz / r0.yyy;
  r0.y = saturate(dot(-r9.xyz, r8.xyz));
  r3.w = 1 + -cb3[1].x;
  r0.y = saturate(r3.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb3[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb3[0].w;
  r2.x = r2.x * r2.y + cb3[0].w;
  r2.y = cmp(r2.x >= cb3[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb3[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb3[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb3[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r8.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r9.xyz, r8.xyz));
  r0.w = saturate(r0.w + r3.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb2[9].xyz * r0.xxx;
  r0.xzw = cb2[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb2[1].xxx + r0.xzw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = r1.x / cb4[29].z;
  r2.x = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[29].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb4[30].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.x ? 1 : r1.y;
  r2.xy = r1.zw / cb4[30].ww;
  r2.xy = cb4[31].xy + r2.xy;
  r2.xyz = t14.SampleBias(s6_s, r2.xy, cb0[143].y).xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r8.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[30].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r2.xyz = r2.xyz * r10.xxx + r8.xyz;
  r2.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb4[6].xyz * r2.xyz;
  r3.w = t14.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r2.w = cb4[31].w * r2.w;
  r6.zw = v4.zw + -v4.xy;
  r6.zw = cb4[33].xx * r6.zw + v4.xy;
  r6.zw = cb4[33].yy * r6.zw;
  r6.zw = r2.ww * cb4[32].zw + r6.zw;
  r2.w = t15.SampleBias(s7_s, r6.zw, cb0[143].y).x;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[33].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r4.w = cb4[33].w * r2.w;
  r4.w = cb0[142].z * cb4[31].z + r4.w;
  r4.w = 6.28318548 * r4.w;
  r4.w = sin(r4.w);
  r4.w = r4.w * 0.5 + 0.5;
  r4.w = r4.w * cb4[34].y + cb4[34].x;
  r4.w = max(cb4[34].w, r4.w);
  r4.w = min(cb4[34].z, r4.w);
  r4.w = cb4[35].x * r4.w;
  r4.w = cb2[3].y * r4.w;
  r2.w = r4.w * r2.w;
  r2.w = r3.w * r2.w;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r2.xyz * r1.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r2.xyz = r4.yzw * r2.xyz;
  r0.xzw = cb3[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb4[9].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb4[9].xyz + cb4[10].xyz;
  r0.xzw = cb4[35].yyy * r0.xzw + r2.xyz;
  r2.xyzw = t16.SampleBias(s8_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = r1.yyy + -r2.xyz;
  r1.yzw = cb4[36].xxx * r1.yzw + r2.xyz;
  r2.x = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r4.yzw = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb4[35].w, r8.x, r9.x);
  r4.yzw = r8.xxx * r4.yzw;
  r1.yzw = r1.yzw * r9.xxx + r4.yzw;
  r1.yzw = r2.xxx * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r2.xyz = cb4[12].xyz * r1.yzw;
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
  r4.yzw = t17.SampleGrad(s0_s, r11.xy, r12.yxx, r13.yxx).xyz;
  r14.x = dot(r7.xyz, icb[r8.x+0].xyz);
  r14.y = dot(r7.xyz, icb[r8.y+0].xyz);
  r7.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r7.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r8.xyz = t17.SampleGrad(s0_s, r14.xy, r7.xyx, r9.xyx).xyz;
  r8.xyz = r8.xyz * r6.www;
  r4.yzw = r4.yzw * r6.zzz + r8.xyz;
  r3.w = r6.z + r6.w;
  r4.yzw = r4.yzw / r3.www;
  r5.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r5.www + -r4.yzw;
  r4.yzw = cb4[36].www * r8.xyz + r4.yzw;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.yzw);
  r4.yzw = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wyz;
  r8.xyz = r4.wyz * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[36].z, r10.x, r15.x);
  r8.xyz = r10.xxx * r8.xyz;
  r4.yzw = r4.yzw * r15.xxx + r8.xyz;
  r4.yzw = r5.www * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r8.xyz = cb4[14].xyz * r4.yzw;
  r5.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = saturate(cb4[37].x * r5.w);
  r7.z = 1 + -r5.w;
  r7.z = r7.z + r7.z;
  r10.xyz = -r7.zzz * cb4[17].xyz + float3(1,1,1);
  r7.z = r5.w + r5.w;
  r15.xyz = cb4[16].xyz * r7.zzz;
  r5.w = cmp(r5.w >= 0.5);
  r10.xyz = r5.www ? r10.xyz : r15.xyz;
  r15.xyz = cb4[16].xyz + -r10.xyz;
  r10.xyz = cb4[37].yyy * r15.xyz + r10.xyz;
  r15.xyz = -cb0[67].xyz + r3.xyz;
  r5.w = dot(r15.xyz, r15.xyz);
  r5.w = sqrt(r5.w);
  r5.w = r5.w / cb4[37].z;
  r7.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb4[37].w * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r7.z ? 0 : r5.w;
  r4.yzw = -r4.yzw * cb4[14].xyz + r10.xyz;
  r4.yzw = r5.www * r4.yzw;
  r4.yzw = cb4[38].xxx * r4.yzw + r8.xyz;
  r1.yzw = -r1.yzw * cb4[12].xyz + r4.yzw;
  r1.yzw = r4.xxx * r1.yzw + r2.xyz;
  r2.x = saturate(v2.x + v2.x);
  r4.yzw = cb4[19].xyz * r1.yzw + -r1.yzw;
  r1.yzw = r2.xxx * r4.yzw + r1.yzw;
  r1.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.yzw);
  r2.x = -cb4[38].y * v2.x + r6.x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb4[38].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.y ? 0 : r2.x;
  r2.y = saturate(cb4[38].w + r2.x);
  r2.x = cb4[39].x + r6.y;
  r4.yz = t18.SampleGrad(s0_s, r11.xy, r12.yx, r13.yx).xy;
  r6.xy = t18.SampleGrad(s0_s, r14.xy, r7.xy, r9.xy).xy;
  r6.xy = r6.xy * r6.ww;
  r4.yz = r4.yz * r6.zz + r6.xy;
  r4.yz = r4.yz / r3.ww;
  r2.z = -cb4[38].y * v2.x + r4.y;
  r6.y = saturate(cb4[39].y + r2.z);
  r6.x = cb4[39].z + r4.z;
  r4.yz = r6.xy + -r2.xy;
  r2.xy = saturate(r4.xx * r4.yz + r2.xy);
  r0.y = cb4[39].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[40].x * r0.y;
  r2.z = saturate(cb4[40].z + v1.z);
  r0.y = r2.z * r0.y;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb4[40].w * r0.y);
  r2.z = cb4[41].x * cb3[1].w;
  r3.w = cb4[41].y + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r4.z = cb3[1].w * 0.617499948 + -r1.x;
  r4.y = saturate(r4.z / r4.y);
  r4.z = -cb3[1].w * 0.649999976 + 8000;
  r4.x = r4.y * r4.z + r4.x;
  r3.w = r3.w / r4.x;
  r1.x = r1.x / cb4[41].y;
  r4.x = cmp(9.99999975e-006 < abs(r2.z));
  r2.z = cmp(r2.z >= 0);
  r2.z = r2.z ? r3.w : r1.x;
  r1.x = r4.x ? r2.z : r1.x;
  r2.z = cmp(9.99999975e-006 < abs(cb4[41].x));
  r3.w = 1 + cb4[41].x;
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
  r4.x = t19.SampleBias(s9_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.z + r3.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r2.w * r1.x;
  r2.z = cmp(0.00100000005 < abs(v3.w));
  r4.xy = floor(v7.xy);
  r2.w = dot(r4.xy, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.w = cmp(v3.w < 0);
  r4.x = 1 + v3.w;
  r4.x = cmp(r2.w < r4.x);
  r2.w = cmp(v3.w < r2.w);
  r2.w = r3.w ? r4.x : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r2.z = r2.z ? r2.w : 0;
  if (r2.z != 0) discard;
  r1.x = r1.x * v3.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.yzw);
  o2.z = r2.y * cb0[139].y + cb0[139].x;
  r2.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r2.yzw = max(float3(0,0,0), r2.yzw);
  r2.yzw = min(float3(0.99000001,0.99000001,0.99000001), r2.yzw);
  r2.yzw = cb0[213].xyz * r2.yzw;
  r4.xyz = (int3)r2.yzw;
  r4.w = 0;
  r4.xyzw = t0.Load(r4.xyzw).xyzw;
  r4.xyzw = (uint4)r4.xyzw;
  r1.w = 1 + cb0[213].w;
  r2.yzw = r2.yzw / r4.www;
  r2.yzw = frac(r2.yzw);
  r2.yzw = cb0[213].www * r2.yzw;
  r2.yzw = r4.xyz * r1.www + r2.yzw;
  r2.yzw = float3(0.5,0.5,0.5) + r2.yzw;
  r2.yzw = cb0[214].xyz * r2.yzw;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r1.w = t8.SampleLevel(s1_s, r2.yzw, 0).x;
  } else {
    r1.w = 1;
  }
  r3.w = 0.0799999982 * r0.y;
  r4.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r4.xyz = r2.xxx * r4.xyz + r3.www;
  r6.xyz = -r1.xyz * r2.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r7.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r3.www ? r7.xyz : r6.xyz;
  r4.xyz = r3.www ? float3(0,0,0) : r4.xyz;
  r3.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r7.xyz = t1.SampleLevel(s1_s, r2.yzw, 0).zxy;
  r8.xyzw = t2.SampleLevel(s1_s, r2.yzw, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t4.SampleLevel(s1_s, r2.yzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t6.SampleLevel(s1_s, r2.yzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = r8.xyzw * r7.yyyy;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r7.zzzz;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r7.xxxx;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = t3.SampleLevel(s1_s, r2.yzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t5.SampleLevel(s1_s, r2.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t7.SampleLevel(s1_s, r2.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r7.xxxx;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r2.yzw = r5.yzy * r5.yzx;
  r14.yw = r5.zz * r5.yx;
  r2.y = r5.x * r5.x + -r2.y;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r14.xz = r2.wz * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r2.y = 0.429042608 * r2.y;
  r16.x = r7.y;
  r16.yzw = r8.yzw;
  r15.x = 0.886227548;
  r2.z = dot(r16.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r2.w = dot(r8.xyzw, r14.xyzw);
  r2.z = r2.z + r2.w;
  r8.x = r11.w * r2.y + r2.z;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r2.z = dot(r11.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r2.w = dot(r9.xyzw, r14.xyzw);
  r2.z = r2.z + r2.w;
  r8.y = r12.w * r2.y + r2.z;
  r7.yzw = r10.yzw;
  r2.z = dot(r7.xyzw, r15.xyzw);
  r10.yzw = r13.xyz;
  r2.w = dot(r10.xyzw, r14.xyzw);
  r2.z = r2.z + r2.w;
  r8.z = r13.w * r2.y + r2.z;
  r2.yzw = max(float3(0,0,0), r8.xyz);
  r2.yzw = cb0[157].xyz * r2.yzw;
  r2.yzw = float3(0.318309873,0.318309873,0.318309873) * r2.yzw;
  r4.w = dot(r2.yzw, float3(0.300000012,0.589999974,0.109999999));
  r2.yzw = r2.yzw * r6.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r2.yzw = r7.xyz * r2.yzw;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.w = cmp(0 < cb0[140].x);
  if (r5.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r5.w = (int)r6.y | (int)r6.x;
    r5.w = (int)r6.z | (int)r5.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r5.www ? r3.xyz : r0.xzw;
  }
  r2.yzw = cb0[145].yyy * r4.xyz + r2.yzw;
  r0.xzw = r2.yzw + r0.xzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.z = r4.w * r3.w;
  r2.z = r2.z * cb0[135].y + 0.00390625;
  r2.z = log2(r2.z);
  r2.z = r2.z * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r2.z;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = cb1[20].y;
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