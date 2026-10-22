// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t16 : register(t16);

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

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 cb3[37];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = -cb0[70].xyz + v5.xyz;
  r3.xy = t2.SampleBias(s2_s, v4.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[19].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xyz = r2.xyz / cb3[19].www;
  r5.xy = t3.SampleBias(s3_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r6.y = v1.y * r1.w;
  r6.xz = -r5.xy;
  r5.xy = t3.SampleBias(s3_s, r4.yz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.x = v1.x * r1.w;
  r7.yz = -r5.xy;
  r1.w = cb3[20].y + -cb3[20].z;
  r5.xy = saturate(abs(v1.xz) * r1.ww + cb3[20].zz);
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.xxx * r7.xyz + r6.xyz;
  r5.zw = t3.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.xy = -r5.zw;
  r7.z = v1.z * r1.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.yyy * r7.xyz + r6.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.xyz, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = float3(0,0,1) + -r7.xyz;
  r6.xyz = cb3[20].www * r6.xyz + r7.xyz;
  r7.xyz = r2.xyz / cb3[21].zzz;
  r5.zw = t4.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.y = v1.y * r1.w;
  r8.xz = -r5.zw;
  r5.zw = t4.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r9.x = v1.x * r1.w;
  r9.yz = -r5.zw;
  r1.w = cb3[22].x + -cb3[22].y;
  r5.zw = saturate(abs(v1.xz) * r1.ww + cb3[22].yy);
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.zzz * r9.xyz + r8.xyz;
  r9.xy = t4.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r9.xy, r9.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r1.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.www * r9.xyz + r8.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r8.xyz = r8.xyz / r1.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb3[22].zzz * r8.xyz + r9.xyz;
  r9.xy = t5.SampleBias(s5_s, v4.xy, cb0[143].y).xy;
  r1.w = saturate(cb3[22].w * r9.x);
  r2.w = saturate(cb3[23].x * r9.y);
  r8.xyz = r8.xyz + -r6.xyz;
  r6.xyz = r1.www * r8.xyz + r6.xyz;
  r8.xyz = r2.xyz / cb3[23].www;
  r9.xy = t6.SampleBias(s6_s, r8.xz, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r9.xy, r9.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r10.y = v1.y * r4.w;
  r10.xz = -r9.xy;
  r9.xy = t6.SampleBias(s6_s, r8.yz, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r9.xy, r9.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r11.x = v1.x * r4.w;
  r11.yz = -r9.xy;
  r4.w = cb3[24].y + -cb3[24].z;
  r9.xy = saturate(abs(v1.xz) * r4.ww + cb3[24].zz);
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.xxx * r11.xyz + r10.xyz;
  r9.zw = t6.SampleBias(s6_s, r8.xy, cb0[143].y).xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r4.w = dot(r9.zw, r9.zw);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r11.xy = -r9.zw;
  r11.z = v1.z * r4.w;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.yyy * r11.xyz + r10.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r10.xyz = r10.xyz / r4.www;
  r11.x = dot(v0.xyz, r10.xyz);
  r11.y = dot(r0.xyz, r10.xyz);
  r11.z = dot(v1.xyz, r10.xyz);
  r10.xyz = float3(0,0,1) + -r11.xyz;
  r10.xyz = cb3[24].www * r10.xyz + r11.xyz;
  r10.xyz = r10.xyz + -r6.xyz;
  r6.xyz = r2.www * r10.xyz + r6.xyz;
  r3.w = 1 + r3.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r3.z = dot(r3.xyw, r6.xyz);
  r6.xyz = r6.xyz * r0.www;
  r3.xyz = r3.xyw * r3.zzz + -r6.xyz;
  r6.xyz = r2.xyz / cb3[25].zzz;
  r9.zw = t7.SampleBias(s7_s, r6.xz, cb0[143].y).xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.zw, r9.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r10.y = v1.y * r0.w;
  r10.xz = -r9.zw;
  r9.zw = t7.SampleBias(s7_s, r6.yz, cb0[143].y).xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.zw, r9.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r11.x = v1.x * r0.w;
  r11.yz = -r9.zw;
  r9.zw = min(float2(1,1), abs(v1.xz));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.zzz * r11.xyz + r10.xyz;
  r11.xy = t7.SampleBias(s7_s, r6.xy, cb0[143].y).xy;
  r11.xy = r11.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r11.xy, r11.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r11.xy = -r11.xy;
  r11.z = v1.z * r0.w;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.www * r11.xyz + r10.xyz;
  r0.w = dot(r10.xyz, r10.xyz);
  r0.w = sqrt(r0.w);
  r10.xyz = r10.xyz / r0.www;
  r11.x = dot(v0.xyz, r10.xyz);
  r11.y = dot(r0.xyz, r10.xyz);
  r11.z = dot(v1.xyz, r10.xyz);
  r10.xyz = float3(0,0,1) + -r11.xyz;
  r10.xyz = cb3[25].www * r10.xyz + r11.xyz;
  r10.xyz = cb3[26].yyy * r3.xyz + r10.xyz;
  r9.zw = cmp(float2(0,0) >= v2.yz);
  r11.xy = log2(v2.yz);
  r11.xy = cb3[26].zz * r11.xy;
  r11.xy = exp2(r11.xy);
  r9.zw = r9.zw ? float2(0,0) : r11.xy;
  r2.xyz = r2.xyz / cb3[27].yyy;
  r0.w = t8.Sample(s0_s, r2.xz).x;
  r2.z = t8.Sample(s0_s, r2.yz).x;
  r11.xy = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.z = r2.z + -r0.w;
  r0.w = r11.x * r2.z + r0.w;
  r2.x = t8.Sample(s0_s, r2.xy).x;
  r2.x = r2.x + -r0.w;
  r0.w = r11.y * r2.x + r0.w;
  r2.x = cmp(0 >= abs(r0.w));
  r0.w = log2(abs(r0.w));
  r0.w = cb3[27].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.x ? 0 : r0.w;
  r2.xy = r0.ww * r9.zw + r9.zw;
  r11.xy = cmp(float2(0,0) >= r2.xy);
  r2.xy = log2(r2.xy);
  r2.xy = cb3[27].ww * r2.xy;
  r2.xy = exp2(r2.xy);
  r2.xy = r11.xy ? float2(0,0) : r2.xy;
  r2.xy = r2.xy + -r9.zw;
  r11.xyz = float3(0,0,1) + r3.xyz;
  r12.xyz = r11.yyy * r0.xyz;
  r11.xyw = r11.xxx * v0.xyz + r12.xyz;
  r11.xyz = r11.zzz * v1.xyz + r11.xyw;
  r2.z = dot(r11.xyz, r11.xyz);
  r2.z = sqrt(r2.z);
  r11.xyz = r11.xyz / r2.zzz;
  r2.z = dot(r11.xyz, cb3[3].xyz);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = r2.z * r0.w + -r0.w;
  r0.w = cb3[29].w * r2.z + r0.w;
  r0.w = saturate(r0.w * cb3[30].x + cb3[30].w);
  r2.xy = cb3[28].xx * r2.xy + r9.zw;
  r0.w = saturate(-r2.y + r0.w);
  r0.w = saturate(r2.x + r0.w);
  r2.xyz = r10.xyz + -r3.xyz;
  r2.xyz = r0.www * r2.xyz + r3.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = rsqrt(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r2.xyz = cb3[7].xyz + -cb3[6].xyz;
  r2.xyz = cb3[31].xxx * r2.xyz + cb3[6].xyz;
  r3.xyz = t9.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t9.Sample(s0_s, r4.yz).xyz;
  r10.xyz = r10.xyz + -r3.xyz;
  r3.xyz = r5.xxx * r10.xyz + r3.xyz;
  r10.xyz = t9.Sample(s0_s, r4.xy).xyz;
  r10.xyz = r10.xyz + -r3.xyz;
  r3.xyz = r5.yyy * r10.xyz + r3.xyz;
  r3.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r3.www + -r3.xyz;
  r3.xyz = cb3[31].www * r10.xyz + r3.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r10.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[31].z, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r3.xyz = r3.xyz * r12.xxx + r10.xyz;
  r3.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb3[9].xyz * r3.xyz;
  r10.xyz = t10.Sample(s0_s, r7.xz).xyz;
  r11.xyz = t10.Sample(s0_s, r7.yz).xyz;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.zzz * r11.xyz + r10.xyz;
  r11.xyz = t10.Sample(s0_s, r7.xy).xyz;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.www * r11.xyz + r10.xyz;
  r3.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r3.www + -r10.xyz;
  r10.xyz = cb3[32].zzz * r11.xyz + r10.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r11.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb3[32].y, r12.x, r13.x);
  r11.xyz = r12.xxx * r11.xyz;
  r10.xyz = r10.xyz * r13.xxx + r11.xyz;
  r10.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r10.xyz = r10.xyz * cb3[11].xyz + -r3.xyz;
  r3.xyz = r1.www * r10.xyz + r3.xyz;
  r10.xyz = t11.Sample(s0_s, r8.xz).xyz;
  r11.xyz = t11.Sample(s0_s, r8.yz).xyz;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.xxx * r11.xyz + r10.xyz;
  r11.xyz = t11.Sample(s0_s, r8.xy).xyz;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r9.yyy * r11.xyz + r10.xyz;
  r3.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r3.www + -r10.xyz;
  r10.xyz = cb3[33].yyy * r11.xyz + r10.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r11.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb3[33].x, r12.x, r13.x);
  r11.xyz = r12.xxx * r11.xyz;
  r10.xyz = r10.xyz * r13.xxx + r11.xyz;
  r10.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r10.xyz = r10.xyz * cb3[13].xyz + -r3.xyz;
  r3.xyz = r2.www * r10.xyz + r3.xyz;
  r10.xyzw = cmp(abs(r0.yzzx) < abs(r0.xxyy));
  r3.w = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r9.zw = cmp(abs(r0.xy) < abs(r0.zz));
  r3.w = r9.z ? r10.w : 0;
  r11.xyz = r9.www ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r3.www ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r12.x = dot(abs(r0.xyz), icb[r10.x+0].xyz);
  r12.y = dot(abs(r0.xyz), icb[r11.x+0].xyz);
  r9.zw = float2(-0.577300012,-0.577300012) + r12.xy;
  r9.zw = saturate(float2(2.36574411,2.36574411) * r9.zw);
  r3.w = cmp((int)r10.z < (int)r10.y);
  r10.xy = r3.ww ? r10.zy : r10.yz;
  r3.w = cmp((int)r11.z < (int)r11.y);
  r10.zw = r3.ww ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r6.xyz);
  r12.xyz = ddy_coarse(r6.xyz);
  r13.x = dot(r6.xyz, icb[r10.x+0].xyz);
  r13.y = dot(r6.xyz, icb[r10.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r15.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r15.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r16.xyz = t12.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r10.x = dot(r6.xyz, icb[r10.z+0].xyz);
  r10.y = dot(r6.xyz, icb[r10.w+0].xyz);
  r6.x = dot(r11.xyz, icb[r10.z+0].xyz);
  r6.y = dot(r11.xyz, icb[r10.w+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.z+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.w+0].xyz);
  r12.xyz = t12.SampleGrad(s0_s, r10.xy, r6.xyx, r11.xyx).xyz;
  r12.xyz = r12.xyz * r9.www;
  r12.xyz = r16.xyz * r9.zzz + r12.xyz;
  r3.w = r9.z + r9.w;
  r12.xyz = r12.xyz / r3.www;
  r4.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r16.xyz = r4.www + -r12.xyz;
  r12.xyz = cb3[34].xxx * r16.xyz + r12.xyz;
  r4.w = dot(float3(0.577350259,0.577350259,0.577350259), r12.xyz);
  r12.xyz = -r4.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = float3(0.577350259,0.577350259,0.577350259) * r12.zxy;
  r16.xyz = r12.zxy * float3(0.577350259,0.577350259,0.577350259) + -r16.zxy;
  sincos(cb3[33].w, r17.x, r18.x);
  r16.xyz = r17.xxx * r16.xyz;
  r12.xyz = r12.xyz * r18.xxx + r16.xyz;
  r12.xyz = r4.www * float3(0.577350259,0.577350259,0.577350259) + r12.xyz;
  r16.xyz = cb3[15].xyz * r12.xyz;
  r4.w = dot(r16.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = saturate(cb3[34].y * r4.w);
  r6.z = 1 + -r4.w;
  r6.z = r6.z + r6.z;
  r17.xyz = -r6.zzz * cb3[18].xyz + float3(1,1,1);
  r6.z = r4.w + r4.w;
  r18.xyz = cb3[17].xyz * r6.zzz;
  r4.w = cmp(r4.w >= 0.5);
  r17.xyz = r4.www ? r17.xyz : r18.xyz;
  r18.xyz = cb3[17].xyz + -r17.xyz;
  r17.xyz = cb3[34].zzz * r18.xyz + r17.xyz;
  r18.xyz = -cb0[67].xyz + r1.xyz;
  r4.w = dot(r18.xyz, r18.xyz);
  r4.w = sqrt(r4.w);
  r4.w = r4.w / cb3[34].w;
  r6.z = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb3[35].x * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r6.z ? 0 : r4.w;
  r12.xyz = -r12.xyz * cb3[15].xyz + r17.xyz;
  r12.xyz = r12.xyz * r4.www;
  r12.xyz = cb3[35].yyy * r12.xyz + r16.xyz;
  r12.xyz = r12.xyz + -r3.xyz;
  r3.xyz = r0.www * r12.xyz + r3.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r6.zw = t13.Sample(s0_s, r4.xz).xy;
  r4.zw = t13.Sample(s0_s, r4.yz).xy;
  r4.zw = r4.zw + -r6.zw;
  r4.zw = r5.xx * r4.zw + r6.zw;
  r4.xy = t13.Sample(s0_s, r4.xy).xy;
  r4.xy = r4.xy + -r4.zw;
  r4.xy = r5.yy * r4.xy + r4.zw;
  r4.x = saturate(cb3[35].z + r4.x);
  r4.zw = t14.Sample(s0_s, r7.xz).xy;
  r5.xy = t14.Sample(s0_s, r7.yz).xy;
  r5.xy = r5.xy + -r4.zw;
  r4.zw = r5.zz * r5.xy + r4.zw;
  r5.xy = t14.Sample(s0_s, r7.xy).xy;
  r5.xy = r5.xy + -r4.zw;
  r4.zw = r5.ww * r5.xy + r4.zw;
  r4.z = saturate(cb3[35].w + r4.z);
  r4.z = r4.z + -r4.x;
  r4.x = r1.w * r4.z + r4.x;
  r5.xy = t15.Sample(s0_s, r8.xz).xy;
  r5.zw = t15.Sample(s0_s, r8.yz).xy;
  r5.zw = r5.zw + -r5.xy;
  r5.xy = r9.xx * r5.zw + r5.xy;
  r5.zw = t15.Sample(s0_s, r8.xy).xy;
  r5.zw = r5.zw + -r5.xy;
  r5.xy = r9.yy * r5.zw + r5.xy;
  r4.z = saturate(cb3[36].x + r5.x);
  r4.z = r4.z + -r4.x;
  r7.y = r2.w * r4.z + r4.x;
  r4.x = r4.w + -r4.y;
  r1.w = r1.w * r4.x + r4.y;
  r4.x = r5.y + -r1.w;
  r7.x = r2.w * r4.x + r1.w;
  r4.xy = t16.SampleGrad(s0_s, r13.xy, r14.xy, r15.xy).xy;
  r4.zw = t16.SampleGrad(s0_s, r10.xy, r6.xx, r11.xx).xy;
  r4.zw = r4.zw * r9.ww;
  r4.xy = r4.xy * r9.zz + r4.zw;
  r4.xy = r4.xy / r3.ww;
  r4.yz = cb3[36].yz + r4.xy;
  r4.x = saturate(r4.y);
  r4.xy = r4.zx + -r7.xy;
  r4.xy = saturate(r0.ww * r4.xy + r7.xy);
  r0.w = cmp(0.00100000005 < abs(v3.w));
  r4.zw = floor(v6.xy);
  r1.w = dot(r4.zw, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.w = cmp(v3.w < 0);
  r3.w = 1 + v3.w;
  r3.w = cmp(r1.w < r3.w);
  r1.w = cmp(v3.w < r1.w);
  r1.w = r2.w ? r3.w : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.w = r0.w ? r1.w : 0;
  if (r0.w != 0) discard;
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r0.w = saturate(cb3[36].w);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r1.w = cmp(0 < cb0[215].x);
  r2.w = cmp(0 < cb1[20].z);
  if (r2.w != 0) {
    r4.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.yzw = max(float3(0,0,0), r4.yzw);
    r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
    r4.yzw = cb0[213].xyz * r4.yzw;
    r5.xyz = (int3)r4.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r2.w = 1 + cb0[213].w;
    r4.yzw = r4.yzw / r5.www;
    r4.yzw = frac(r4.yzw);
    r4.yzw = cb0[213].www * r4.yzw;
    r4.yzw = r5.xyz * r2.www + r4.yzw;
    r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
    r4.yzw = cb0[214].xyz * r4.yzw;
    r2.w = t1.SampleLevel(s1_s, r4.yzw, 0).x;
  } else {
    r3.w = cmp(0 < cb1[18].w);
    r3.w = r1.w ? r3.w : 0;
    r2.w = r3.w ? cb2[5].x : 1;
  }
  r3.w = 0.0799999982 * r0.w;
  r4.yzw = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r4.yzw = r4.xxx * r4.yzw + r3.www;
  r5.xyz = -r3.xyz * r4.xxx + r3.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r6.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r3.www ? r6.xyz : r5.xyz;
  r4.yzw = r3.www ? float3(0,0,0) : r4.yzw;
  r3.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r3.w * 2.04040003 + -0.332399994;
  r5.w = r3.w * -4.79510021 + r5.w;
  r3.w = r3.w * 2.75519991 + r5.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r6.xyz = r0.yzy * r0.yzx;
  r7.yw = r0.zz * r0.yx;
  r5.w = r0.x * r0.x + -r6.x;
  r8.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r7.xz = r6.zy * float2(1,3) + float2(0,-1);
  r6.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r7.xyzw;
  r5.w = 0.429042608 * r5.w;
  r8.x = 0.886227548;
  r7.x = dot(cb2[6].xyzw, r8.xyzw);
  r7.y = dot(cb2[9].xyzw, r6.xyzw);
  r7.x = r7.x + r7.y;
  r7.x = cb2[12].x * r5.w + r7.x;
  r7.w = dot(cb2[7].xyzw, r8.xyzw);
  r9.x = dot(cb2[10].xyzw, r6.xyzw);
  r7.w = r9.x + r7.w;
  r7.y = cb2[12].y * r5.w + r7.w;
  r7.w = dot(cb2[8].xyzw, r8.xyzw);
  r6.x = dot(cb2[11].xyzw, r6.xyzw);
  r6.x = r7.w + r6.x;
  r7.z = cb2[12].z * r5.w + r6.x;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r6.xyz = r1.www ? r6.xyz : 0;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r5.x = cmp(0 < cb0[140].x);
  if (r5.x != 0) {
    r5.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xyz));
    r5.x = (int)r5.y | (int)r5.x;
    r5.x = (int)r5.z | (int)r5.x;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r5.xxx ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.yzw + r6.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * r3.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r4.x;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}