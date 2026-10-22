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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r1.zw = cb4[20].xx * v2.xy;
  r0.w = cb4[20].y + cb0[143].y;
  r5.xy = t9.SampleBias(s2_s, r1.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = r4.xyz / cb4[21].xxx;
  r8.xy = t10.SampleBias(s3_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.y = v1.y * r0.w;
  r9.xz = -r8.xy;
  r8.xy = t10.SampleBias(s3_s, r7.yz, cb0[143].y).xy;
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
  r9.xy = t10.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
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
  r8.xyz = cb4[21].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb4[21].www * r5.xyz + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v4.yz);
  r9.zw = log2(v4.yz);
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
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r0.w = dot(r6.xyz, cb4[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb4[25].y * r0.w + r4.x;
  r0.w = saturate(r0.w * cb4[25].z + cb4[26].y);
  r4.xyz = r4.xyz * r9.yyy + r9.yyy;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[23].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r9.yyy;
  r4.xyz = cb4[23].zzz * r4.xyz + r9.yyy;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r9.xzw + r4.xyz);
  r6.xyz = t12.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
  r0.w = r6.z * -2 + 1;
  r0.w = cb4[26].z * r0.w + r6.z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[26].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb4[27].x * r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r4.xyz = max(r4.xyz, r0.www);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r8.xyz + r5.xyz;
  r8.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[27].yyy * r8.xyz + r5.xyz;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r2.w = cb4[27].z * r0.w;
  r6.zw = v3.xy + -v2.xy;
  r6.zw = cb4[28].ww * r6.zw + v2.xy;
  r6.zw = cb4[29].xx * r6.zw;
  r6.zw = r2.ww * cb4[28].yz + r6.zw;
  r6.zw = t13.SampleBias(s5_s, r6.zw, cb0[143].y).xy;
  r8.xy = r6.zw + r6.zw;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.zw, r6.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r8.z = sqrt(r2.w);
  r8.xyz = float3(-1,-1,-1) + r8.xyz;
  r8.xyz = v4.xxx * r8.xyz + float3(0,0,1);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb4[29].yyy * r9.xyz + r8.xyz;
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
  r5.xyz = r2.www * r0.xyz;
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
  r2.y = r0.z * r2.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb3[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r2.w + 1;
  r2.y = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb3[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r2.y ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb3[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r8.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r2.w = saturate(dot(-r9.xyz, r8.xyz));
  r2.w = saturate(r2.w + r3.w);
  r0.x = r2.w * r0.x;
  r0.x = r0.x * r0.z;
  r8.xyz = cb2[9].xyz * r0.xxx;
  r8.xyz = cb2[1].yyy * r8.xyz;
  r2.xyz = r2.xyz * cb2[1].xxx + r8.xyz;
  r0.x = cmp(cb0[31].w < 1);
  r0.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.z = r1.x + r0.z;
  r0.x = r0.x ? r1.y : r0.z;
  r0.z = r0.x / cb4[29].z;
  r1.x = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[29].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = cb4[30].x * r0.z;
  r0.z = max(1, r0.z);
  r0.z = r1.x ? 1 : r0.z;
  r1.xy = r1.zw / cb4[30].ww;
  r1.xy = cb4[31].xy + r1.xy;
  r8.xyz = t14.SampleBias(s6_s, r1.xy, cb0[143].y).xyz;
  r1.x = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb4[30].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = cb4[6].xyz * r8.xyz;
  r1.x = t14.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r0.w = cb4[31].w * r0.w;
  r6.zw = v2.wz + -v2.xy;
  r6.zw = cb4[33].xx * r6.zw + v2.xy;
  r6.zw = cb4[33].yy * r6.zw;
  r6.zw = r0.ww * cb4[32].zw + r6.zw;
  r0.w = t15.SampleBias(s7_s, r6.zw, cb0[143].y).x;
  r1.y = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[33].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.y ? 0 : r0.w;
  r1.y = cb4[33].w * r0.w;
  r1.y = cb0[142].z * cb4[31].z + r1.y;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * cb4[34].y + cb4[34].x;
  r1.y = max(cb4[34].w, r1.y);
  r1.y = min(cb4[34].z, r1.y);
  r1.y = cb4[35].x * r1.y;
  r1.y = cb2[3].y * r1.y;
  r0.w = r1.y * r0.w;
  r0.w = r1.x * r0.w;
  r8.xyz = r8.xyz * r0.www;
  r8.xyz = r8.xyz * r0.zzz;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r8.xyz * r4.yzw;
  r2.xyz = cb3[2].xyz * r2.xyz + r4.yzw;
  r4.yzw = cb4[9].xyz * r2.xyz;
  r2.xyz = -r2.xyz * cb4[9].xyz + cb4[10].xyz;
  r2.xyz = cb4[35].yyy * r2.xyz + r4.yzw;
  r1.xyzw = t16.SampleBias(s8_s, r1.zw, cb0[143].y).xyzw;
  r0.z = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.yzw = r0.zzz + -r1.xyz;
  r1.xyz = cb4[36].xxx * r4.yzw + r1.xyz;
  r0.z = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r0.zzz * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r4.yzw = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb4[35].w, r8.x, r9.x);
  r4.yzw = r8.xxx * r4.yzw;
  r1.xyz = r1.xyz * r9.xxx + r4.yzw;
  r1.xyz = r0.zzz * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r4.yzw = cb4[12].xyz * r1.xyz;
  r8.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r0.z = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r0.zzz ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r0.zw = cmp(abs(r5.xy) < abs(r5.zz));
  r0.z = r0.z ? r8.w : 0;
  r9.xyz = r0.www ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r0.zzz ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r8.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r10.x = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r10.y = dot(abs(r5.xyz), icb[r9.x+0].xyz);
  r0.zw = float2(-0.577300012,-0.577300012) + r10.xy;
  r0.zw = saturate(float2(2.36574411,2.36574411) * r0.zw);
  r2.w = cmp((int)r8.z < (int)r8.y);
  r6.zw = r2.ww ? r8.zy : r8.yz;
  r2.w = cmp((int)r9.z < (int)r9.y);
  r8.xy = r2.ww ? r9.zy : r9.yz;
  r9.xyz = ddx_coarse(r7.xyz);
  r10.xyz = ddy_coarse(r7.xyz);
  r11.x = dot(r7.xyz, icb[r6.z+0].xyz);
  r11.y = dot(r7.xyz, icb[r6.w+0].xyz);
  r12.x = dot(r9.xyz, icb[r6.z+0].xyz);
  r12.y = dot(r9.xyz, icb[r6.w+0].xyz);
  r13.x = dot(r10.xyz, icb[r6.z+0].xyz);
  r13.y = dot(r10.xyz, icb[r6.w+0].xyz);
  r14.xyz = t17.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r15.x = dot(r7.xyz, icb[r8.x+0].xyz);
  r15.y = dot(r7.xyz, icb[r8.y+0].xyz);
  r7.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r7.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r8.xyz = t17.SampleGrad(s0_s, r15.xy, r7.xyx, r9.xyx).xyz;
  r8.xyz = r8.xyz * r0.www;
  r8.xyz = r14.xyz * r0.zzz + r8.xyz;
  r2.w = r0.z + r0.w;
  r8.xyz = r8.xyz / r2.www;
  r3.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r3.www + -r8.xyz;
  r8.xyz = cb4[36].www * r10.xyz + r8.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r10.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb4[36].z, r14.x, r16.x);
  r10.xyz = r14.xxx * r10.xyz;
  r8.xyz = r8.xyz * r16.xxx + r10.xyz;
  r8.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r10.xyz = cb4[14].xyz * r8.xyz;
  r3.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb4[37].x * r3.w);
  r5.w = 1 + -r3.w;
  r5.w = r5.w + r5.w;
  r14.xyz = -r5.www * cb4[17].xyz + float3(1,1,1);
  r5.w = r3.w + r3.w;
  r16.xyz = cb4[16].xyz * r5.www;
  r3.w = cmp(r3.w >= 0.5);
  r14.xyz = r3.www ? r14.xyz : r16.xyz;
  r16.xyz = cb4[16].xyz + -r14.xyz;
  r14.xyz = cb4[37].yyy * r16.xyz + r14.xyz;
  r16.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r16.xyz, r16.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb4[37].z;
  r5.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[37].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r5.w ? 0 : r3.w;
  r8.xyz = -r8.xyz * cb4[14].xyz + r14.xyz;
  r8.xyz = r8.xyz * r3.www;
  r8.xyz = cb4[38].xxx * r8.xyz + r10.xyz;
  r1.xyz = -r1.xyz * cb4[12].xyz + r8.xyz;
  r1.xyz = r4.xxx * r1.xyz + r4.yzw;
  r3.w = saturate(v4.x + v4.x);
  r4.yzw = cb4[19].xyz * r1.xyz + -r1.xyz;
  r1.xyz = r3.www * r4.yzw + r1.xyz;
  r1.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.xyz);
  r3.w = -cb4[38].y * v4.x + r6.x;
  r4.y = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[38].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r4.y ? 0 : r3.w;
  r8.y = saturate(cb4[38].w + r3.w);
  r8.x = cb4[39].x + r6.y;
  r4.yz = t18.SampleGrad(s0_s, r11.xy, r12.yx, r13.yx).xy;
  r6.xy = t18.SampleGrad(s0_s, r15.xy, r7.xy, r9.xy).xy;
  r6.xy = r6.xy * r0.ww;
  r0.zw = r4.yz * r0.zz + r6.xy;
  r0.zw = r0.zw / r2.ww;
  r0.z = -cb4[38].y * v4.x + r0.z;
  r6.y = saturate(cb4[39].y + r0.z);
  r6.x = cb4[39].z + r0.w;
  r0.zw = r6.xy + -r8.xy;
  r0.zw = saturate(r4.xx * r0.zw + r8.xy);
  r0.y = cb4[39].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[40].x * r0.y;
  r2.w = saturate(cb4[40].z + v1.z);
  r0.y = r2.w * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb4[40].w * r0.y);
  r2.w = cb4[41].x * cb3[1].w;
  r3.w = cb4[41].y + r0.x;
  r4.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r4.z = cb3[1].w * 0.617499948 + -r0.x;
  r4.y = saturate(r4.z / r4.y);
  r4.z = -cb3[1].w * 0.649999976 + 8000;
  r4.x = r4.y * r4.z + r4.x;
  r3.w = r3.w / r4.x;
  r0.x = r0.x / cb4[41].y;
  r4.x = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r2.w = r2.w ? r3.w : r0.x;
  r0.x = r4.x ? r2.w : r0.x;
  r2.w = cmp(9.99999975e-006 < abs(cb4[41].x));
  r3.w = 1 + cb4[41].x;
  r2.w = r2.w ? r3.w : 1.39999998;
  r4.xyz = -cb0[129].xxy + v6.xxy;
  r3.w = r4.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.w = -r3.w + r2.w;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r3.w = (uint)r4.w << 1;
  r3.w = (int)r3.w + (int)r4.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r4.xy = float2(0.015625,0.015625) * r4.yz;
  r4.x = t19.SampleBias(s9_s, r4.xy, cb0[143].y).x;
  r4.y = r4.x + r3.w;
  r4.y = 0.166666672 * r4.y;
  r0.x = r0.x * r2.w + r4.y;
  r0.x = saturate(-0.5 + r0.x);
  r2.w = r4.x * cb4[41].z + r3.w;
  r2.w = 0.166666672 * r2.w;
  r0.x = r1.w * r0.x + r2.w;
  r0.x = -0.833299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r4.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r6.xyz = (int3)r4.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.x = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r6.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r6.xyz * r0.xxx + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r0.x = cmp(0 < cb1[20].z);
  if (r0.x != 0) {
    r0.x = t8.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r0.x = 1;
  }
  r0.w = 0.0799999982 * r0.y;
  r6.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r6.xyz = r0.zzz * r6.xyz + r0.www;
  r7.xyz = -r1.xyz * r0.zzz + r1.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r0.www ? r8.xyz : r7.xyz;
  r6.xyz = r0.www ? float3(0,0,0) : r6.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.w * 2.04040003 + -0.332399994;
  r1.w = r0.w * -4.79510021 + r1.w;
  r0.w = r0.w * 2.75519991 + r1.w;
  r0.w = 1.33200002 + r0.w;
  r0.w = max(1, r0.w);
  r8.xyz = t1.SampleLevel(s1_s, r4.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r4.xyzw = t7.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r4.xyzw = r4.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r4.xyzw = r4.xyzw * r8.xxxx;
  r4.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r4.xyzw;
  r14.xyz = r5.yzy * r5.yzx;
  r15.yw = r5.zz * r5.yx;
  r1.w = r5.x * r5.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r1.w = 0.429042608 * r1.w;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r2.w = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r3.w = dot(r9.xyzw, r14.xyzw);
  r2.w = r3.w + r2.w;
  r9.x = r12.w * r1.w + r2.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r2.w = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r3.w = dot(r10.xyzw, r14.xyzw);
  r2.w = r3.w + r2.w;
  r9.y = r13.w * r1.w + r2.w;
  r8.yzw = r11.yzw;
  r2.w = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r4.xyz;
  r3.w = dot(r11.xyzw, r14.xyzw);
  r2.w = r3.w + r2.w;
  r9.z = r4.w * r1.w + r2.w;
  r4.xyz = max(float3(0,0,0), r9.xyz);
  r4.xyz = cb0[157].xyz * r4.xyz;
  r4.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r7.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r4.xyz = r8.xyz * r4.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r3.xyz : r2.xyz;
  }
  r3.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.w * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r0.zy;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}