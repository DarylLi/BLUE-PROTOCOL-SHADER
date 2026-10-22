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

cbuffer cb5 : register(b5)
{
  float4 cb5[42];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float3 v4 : TEXCOORD9,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v4.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb5[19].xx * v3.xy;
  r0.w = cb5[19].y + cb0[143].y;
  r5.xy = t5.SampleBias(s3_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[19].zzz * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb5[20].yyy;
  r7.xy = t6.SampleBias(s4_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t6.SampleBias(s4_s, r6.yz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r7.xy;
  r7.xy = min(float2(1,1), abs(v1.xz));
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r7.xxx * r9.xyz + r8.xyz;
  r7.zw = t6.SampleBias(s4_s, r6.xy, cb0[143].y).xy;
  r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.zw, r7.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r7.zw;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r7.yyy * r9.xyz + r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb5[20].zzz * r8.xyz + r9.xyz;
  r8.xyz = cb5[21].xxx * r5.xyz + r8.xyz;
  r9.xyz = cmp(float3(0,0,0) >= v2.yzw);
  r10.xyz = log2(v2.yzw);
  r7.zw = cb5[21].yy * r10.xy;
  r7.zw = exp2(r7.zw);
  r7.zw = r9.xy ? float2(0,0) : r7.zw;
  r9.xyw = r4.xyz / cb5[22].xxx;
  r10.xyw = t7.Sample(s0_s, r9.xw).xyz;
  r11.xyz = t7.Sample(s0_s, r9.yw).xyz;
  r12.xy = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyw;
  r10.xyw = r12.xxx * r11.xyz + r10.xyw;
  r9.xyw = t7.Sample(s0_s, r9.xy).xyz;
  r9.xyw = r9.xyw + -r10.xyw;
  r9.xyw = r12.yyy * r9.xyw + r10.xyw;
  r10.xyw = cmp(float3(0,0,0) >= abs(r9.xyw));
  r9.xyw = log2(abs(r9.xyw));
  r9.xyw = cb5[22].yyy * r9.xyw;
  r9.xyw = exp2(r9.xyw);
  r9.xyw = r10.xyw ? float3(0,0,0) : r9.xyw;
  r10.xyw = r9.xyw * r7.zzz + r7.zzz;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyw);
  r10.xyw = log2(r10.xyw);
  r10.xyw = cb5[22].zzz * r10.xyw;
  r10.xyw = exp2(r10.xyw);
  r10.xyw = r11.xyz ? float3(0,0,0) : r10.xyw;
  r10.xyw = r10.xyw + -r7.zzz;
  r10.xyw = cb5[22].www * r10.xyw + r7.zzz;
  r11.xyz = float3(0,0,1) + r5.xyz;
  r12.xyz = r11.yyy * r0.xyz;
  r11.xyw = r11.xxx * v0.xyz + r12.xyz;
  r11.xyz = r11.zzz * v1.xyz + r11.xyw;
  r0.w = dot(r11.xyz, r11.xyz);
  r0.w = sqrt(r0.w);
  r11.xyz = r11.xyz / r0.www;
  r0.w = dot(r11.xyz, cb5[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r9.x + -r9.x;
  r0.w = cb5[24].z * r0.w + r9.x;
  r0.w = saturate(r0.w * cb5[24].w + cb5[25].z);
  r11.xyz = r9.xyw * r7.www + r7.www;
  r12.xyz = cmp(float3(0,0,0) >= r11.xyz);
  r11.xyz = log2(r11.xyz);
  r11.xyz = cb5[22].zzz * r11.xyz;
  r11.xyz = exp2(r11.xyz);
  r11.xyz = r12.xyz ? float3(0,0,0) : r11.xyz;
  r11.xyz = r11.xyz + -r7.www;
  r11.xyz = cb5[22].www * r11.xyz + r7.www;
  r11.xyz = saturate(-r11.xyz + r0.www);
  r10.xyw = saturate(r11.xyz + r10.xyw);
  r11.xyz = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xyw;
  r0.w = r11.z * -2 + 1;
  r0.w = cb5[25].w * r0.w + r11.z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[26].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb5[26].y * r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r10.xyw = max(r10.xyw, r0.www);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r10.xxx * r8.xyz + r5.xyz;
  r4.xyz = r4.xyz / cb5[27].xxx;
  r7.zw = t9.SampleBias(s6_s, r4.xz, cb0[143].y).xy;
  r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.zw, r7.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.zw;
  r7.zw = t9.SampleBias(s6_s, r4.yz, cb0[143].y).xy;
  r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.zw, r7.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r12.x = v1.x * r0.w;
  r12.yz = -r7.zw;
  r12.xyz = r12.xyz + -r8.xyz;
  r7.xzw = r7.xxx * r12.xyz + r8.xyz;
  r8.xy = t9.SampleBias(s6_s, r4.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r0.w;
  r8.xyz = r8.xyz + -r7.xzw;
  r7.xyz = r7.yyy * r8.xyz + r7.xzw;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb5[27].yyy * r7.xyz + r8.xyz;
  r7.xyz = cb5[27].www * r5.xyz + r7.xyz;
  r0.w = cb5[28].x * r10.z;
  r0.w = exp2(r0.w);
  r0.w = r9.z ? 0 : r0.w;
  r8.xyz = r9.xyw * r0.www + r0.www;
  r9.xyz = cmp(float3(0,0,0) >= r8.xyz);
  r8.xyz = log2(r8.xyz);
  r8.xyz = cb5[28].yyy * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r8.xyz = r9.xyz ? float3(0,0,0) : r8.xyz;
  r8.xyz = r8.xyz + -r0.www;
  r8.xyz = saturate(cb5[28].zzz * r8.xyz + r0.www);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r8.xyz * r7.xyz + r5.xyz;
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
  r7.xyz = t10.SampleBias(s7_s, r1.zw, cb0[143].y).xyz;
  r0.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r0.xxx + -r7.xyz;
  r7.xyz = cb5[29].yyy * r9.xyz + r7.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r9.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb5[29].x, r12.x, r13.x);
  r9.xyz = r12.xxx * r9.xyz;
  r7.xyz = r7.xyz * r13.xxx + r9.xyz;
  r7.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r9.xyz = cb5[5].xyz * r7.xyz;
  r12.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r0.x = r12.y ? r12.x : 0;
  r12.xyz = r12.zzz ? float3(1,2,0) : float3(2,0,1);
  r12.xyz = r0.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r12.xyz;
  r0.xy = cmp(abs(r5.xy) < abs(r5.zz));
  r0.x = r0.x ? r12.w : 0;
  r13.xyz = r0.yyy ? float3(2,1,3) : float3(1,3,2);
  r13.xyz = r0.xxx ? float3(3,2,1) : r13.xyz;
  r13.xyz = (int3)-r12.xyz + (int3)r13.xyz;
  r13.xyz = max(int3(0,0,0), (int3)r13.xyz);
  r13.xyz = min(int3(2,2,2), (int3)r13.xyz);
  r0.x = dot(abs(r5.xyz), icb[r12.x+0].xyz);
  r0.y = dot(abs(r5.xyz), icb[r13.x+0].xyz);
  r0.xy = float2(-0.577300012,-0.577300012) + r0.xy;
  r0.xy = saturate(float2(2.36574411,2.36574411) * r0.xy);
  r2.w = cmp((int)r12.z < (int)r12.y);
  r11.zw = r2.ww ? r12.zy : r12.yz;
  r2.w = cmp((int)r13.z < (int)r13.y);
  r12.xy = r2.ww ? r13.zy : r13.yz;
  r13.xyz = ddx_coarse(r6.xyz);
  r14.xyz = ddy_coarse(r6.xyz);
  r15.x = dot(r6.xyz, icb[r11.z+0].xyz);
  r15.y = dot(r6.xyz, icb[r11.w+0].xyz);
  r16.x = dot(r13.xyz, icb[r11.z+0].xyz);
  r16.y = dot(r13.xyz, icb[r11.w+0].xyz);
  r17.x = dot(r14.xyz, icb[r11.z+0].xyz);
  r17.y = dot(r14.xyz, icb[r11.w+0].xyz);
  r18.xyz = t11.SampleGrad(s0_s, r15.xy, r16.xyx, r17.xyx).xyz;
  r19.x = dot(r6.xyz, icb[r12.x+0].xyz);
  r19.y = dot(r6.xyz, icb[r12.y+0].xyz);
  r6.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r6.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r14.xyz = t11.SampleGrad(s0_s, r19.xy, r6.xyx, r13.xyx).xyz;
  r14.xyz = r14.xyz * r0.yyy;
  r14.xyz = r18.xyz * r0.xxx + r14.xyz;
  r2.w = r0.x + r0.y;
  r14.xyz = r14.xyz / r2.www;
  r3.w = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r18.xyz = r3.www + -r14.xyz;
  r14.xyz = cb5[30].xxx * r18.xyz + r14.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r14.xyz);
  r14.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r14.xyz;
  r18.xyz = float3(0.577350259,0.577350259,0.577350259) * r14.zxy;
  r18.xyz = r14.zxy * float3(0.577350259,0.577350259,0.577350259) + -r18.zxy;
  sincos(cb5[29].w, r20.x, r21.x);
  r18.xyz = r20.xxx * r18.xyz;
  r14.xyz = r14.xyz * r21.xxx + r18.xyz;
  r14.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r14.xyz;
  r18.xyz = cb5[7].xyz * r14.xyz;
  r3.w = dot(r18.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb5[30].y * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r20.yzw = -r4.www * cb5[10].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r21.yzw = cb5[9].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r20.yzw = r3.www ? r20.yzw : r21.yzw;
  r21.yzw = cb5[9].xyz + -r20.yzw;
  r20.yzw = cb5[30].zzz * r21.yzw + r20.yzw;
  r21.yzw = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r21.yzw, r21.yzw);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb5[30].w;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[31].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r14.xyz = -r14.xyz * cb5[7].xyz + r20.yzw;
  r14.xyz = r14.xyz * r3.www;
  r14.xyz = cb5[31].yyy * r14.xyz + r18.xyz;
  r7.xyz = -r7.xyz * cb5[5].xyz + r14.xyz;
  r7.xyz = r10.xxx * r7.xyz + r9.xyz;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb4[5].xyz / r3.www;
  r3.w = dot(r9.xyz, r5.xyz);
  r3.w = 1 + r3.w;
  r14.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r14.xyz, r14.xyz);
  r4.w = sqrt(r4.w);
  r14.xyz = r14.xyz / r4.www;
  r4.w = saturate(dot(-r14.xyz, r9.xyz));
  r5.w = 1 + -cb3[1].x;
  r4.w = saturate(r5.w + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r5.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb3[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb3[0].w;
  r2.y = r2.y * r2.z + cb3[0].w;
  r2.z = cmp(r2.y >= cb3[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.z * r0.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb3[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.y * r0.z;
  r0.z = cb3[0].z * r0.z;
  r0.w = r3.w * r0.z;
  r9.xyz = cb4[4].xyz * r0.www;
  r0.w = dot(-cb4[8].xyz, -cb4[8].xyz);
  r0.w = sqrt(r0.w);
  r18.xyz = -cb4[8].xyz / r0.www;
  r0.w = dot(r18.xyz, r5.xyz);
  r0.w = 1 + r0.w;
  r2.y = saturate(dot(-r14.xyz, r18.xyz));
  r2.y = saturate(r2.y + r5.w);
  r0.w = r2.y * r0.w;
  r0.z = r0.w * r0.z;
  r14.xyz = cb4[9].xyz * r0.zzz;
  r14.xyz = cb4[1].yyy * r14.xyz;
  r9.xyz = r9.xyz * cb4[1].xxx + r14.xyz;
  r9.xyz = r9.xyz * r7.xyz;
  r0.z = cmp(cb0[31].w < 1);
  r0.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.w = r1.x + r0.w;
  r0.z = r0.z ? r1.y : r0.w;
  r0.z = r0.z / cb5[31].z;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb5[31].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = cb5[32].x * r0.z;
  r0.z = max(1, r0.z);
  r0.z = r0.w ? 1 : r0.z;
  r1.xy = r1.zw / cb5[32].ww;
  r1.xy = cb5[33].xy + r1.xy;
  r14.xyz = t12.SampleBias(s8_s, r1.xy, cb0[143].y).xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r14.xyz);
  r14.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r14.xyz;
  r18.xyz = float3(0.577350259,0.577350259,0.577350259) * r14.zxy;
  r18.xyz = r14.zxy * float3(0.577350259,0.577350259,0.577350259) + -r18.zxy;
  sincos(cb5[32].z, r1.x, r22.x);
  r18.xyz = r18.xyz * r1.xxx;
  r14.xyz = r14.xyz * r22.xxx + r18.xyz;
  r14.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r14.xyz;
  r14.xyz = cb5[12].xyz * r14.xyz;
  r0.w = t12.SampleBias(s8_s, r1.zw, cb0[143].y).w;
  r1.x = cb1[18].x + cb1[18].y;
  r1.x = cb1[18].z + r1.x;
  r1.x = frac(r1.x);
  r1.x = cb0[142].z + r1.x;
  r1.x = cb4[2].x * r1.x;
  r1.x = cb5[33].w * r1.x;
  r1.yz = v3.zw + -v3.xy;
  r1.yz = cb5[35].xx * r1.yz + v3.xy;
  r1.yz = cb5[35].yy * r1.yz;
  r1.xy = r1.xx * cb5[34].zw + r1.yz;
  r1.x = t13.SampleBias(s9_s, r1.xy, cb0[143].y).x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[35].z * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.y ? 0 : r1.x;
  r1.y = cb5[35].w * r1.x;
  r1.y = cb0[142].z * cb5[33].z + r1.y;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * cb5[36].y + cb5[36].x;
  r1.y = max(cb5[36].w, r1.y);
  r1.y = min(cb5[36].z, r1.y);
  r1.y = cb5[37].x * r1.y;
  r1.y = cb4[3].y * r1.y;
  r1.x = r1.y * r1.x;
  r0.w = r1.x * r0.w;
  r1.xyz = r14.xyz * r0.www;
  r1.xyz = r1.xyz * r0.zzz;
  r10.yzw = float3(1,1,1) + -r10.xyw;
  r1.xyz = r10.yzw * r1.xyz;
  r0.z = 1 + -v2.w;
  r1.xyz = r1.xyz * r0.zzz;
  r1.xyz = cb3[2].xyz * r9.xyz + r1.xyz;
  r9.xyz = cb5[15].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb5[15].xyz + cb5[16].xyz;
  r1.xyz = cb5[37].yyy * r1.xyz + r9.xyz;
  r9.xyz = ddx_coarse(r4.xyz);
  r10.yzw = ddy_coarse(r4.xyz);
  r14.x = dot(r4.xyz, icb[r11.z+0].xyz);
  r14.y = dot(r4.xyz, icb[r11.w+0].xyz);
  r18.x = dot(r9.xyz, icb[r11.z+0].xyz);
  r18.y = dot(r9.xyz, icb[r11.w+0].xyz);
  r22.x = dot(r10.yzw, icb[r11.z+0].xyz);
  r22.y = dot(r10.yzw, icb[r11.w+0].xyz);
  r20.yzw = t14.SampleGrad(s0_s, r14.xy, r18.yxx, r22.yxx).xyz;
  r23.x = dot(r4.xyz, icb[r12.x+0].xyz);
  r23.y = dot(r4.xyz, icb[r12.y+0].xyz);
  r4.x = dot(r9.xyz, icb[r12.x+0].xyz);
  r4.y = dot(r9.xyz, icb[r12.y+0].xyz);
  r9.x = dot(r10.yzw, icb[r12.x+0].xyz);
  r9.y = dot(r10.yzw, icb[r12.y+0].xyz);
  r10.yzw = t14.SampleGrad(s0_s, r23.xy, r4.yxx, r9.yxx).xyz;
  r10.yzw = r10.yzw * r0.yyy;
  r10.yzw = r20.yzw * r0.xxx + r10.yzw;
  r10.yzw = r10.yzw / r2.www;
  r0.z = dot(r10.yzw, float3(0.300000012,0.589999974,0.109999999));
  r12.xyz = r0.zzz + -r10.yzw;
  r10.yzw = cb5[30].xxx * r12.xyz + r10.yzw;
  r0.z = dot(float3(0.577350259,0.577350259,0.577350259), r10.yzw);
  r10.yzw = -r0.zzz * float3(0.577350259,0.577350259,0.577350259) + r10.yzw;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.wyz;
  r12.xyz = r10.wyz * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  r12.xyz = r12.xyz * r20.xxx;
  r10.yzw = r10.yzw * r21.xxx + r12.xyz;
  r10.yzw = r0.zzz * float3(0.577350259,0.577350259,0.577350259) + r10.yzw;
  r10.yzw = r10.yzw * cb5[7].xyz + -r7.xyz;
  r10.yzw = r8.xyz * r10.yzw + r7.xyz;
  r0.z = saturate(v2.x + v2.x);
  r12.xyz = cb5[18].xyz * r10.yzw + -r10.yzw;
  r10.yzw = r0.zzz * r12.xyz + r10.yzw;
  r10.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r10.yzw);
  r0.z = -cb5[37].z * v2.x + r11.x;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb5[37].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r12.y = saturate(cb5[38].x + r0.z);
  r12.x = cb5[38].y + r11.y;
  r0.zw = t15.SampleGrad(s0_s, r15.xy, r16.xx, r17.xx).xy;
  r2.yz = t15.SampleGrad(s0_s, r19.xy, r6.yx, r13.yx).xy;
  r2.yz = r2.yz * r0.yy;
  r0.zw = r0.zw * r0.xx + r2.yz;
  r0.zw = r0.zw / r2.ww;
  r0.z = -cb5[37].z * v2.x + r0.z;
  r6.y = saturate(cb5[38].z + r0.z);
  r6.x = cb5[38].w + r0.w;
  r0.zw = r6.xy + -r12.xy;
  r0.zw = r10.xx * r0.zw + r12.xy;
  r2.yz = t16.SampleGrad(s0_s, r14.xy, r18.yx, r22.yx).xy;
  r4.xy = t16.SampleGrad(s0_s, r23.xy, r4.xy, r9.xy).xy;
  r4.xy = r4.xy * r0.yy;
  r0.xy = r2.yz * r0.xx + r4.xy;
  r4.yz = r0.xy / r2.ww;
  r0.x = -v2.x * cb5[39].x + r4.y;
  r4.x = saturate(cb5[39].y + r0.x);
  r0.xy = r4.zx + -r0.zw;
  r0.xy = saturate(r8.yx * r0.xy + r0.zw);
  r0.z = cb5[39].z * r2.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[39].w * r0.z;
  r0.w = saturate(cb5[40].y + v1.z);
  r0.z = r0.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb5[40].z * r0.z);
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = cb5[40].w * r0.w;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[41].x * r0.w;
  r0.w = exp2(r0.w);
  r2.xyz = min(float3(1,1,1), r10.yzw);
  r0.w = min(1, r0.w);
  r0.w = r1.w ? 0 : r0.w;
  o2.z = r0.y * cb0[139].y + cb0[139].x;
  r0.y = cmp(0 < cb0[215].x);
  r1.w = cmp(0 < cb1[20].z);
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
    r2.w = cmp(0 < cb1[18].w);
    r2.w = r0.y ? r2.w : 0;
    r1.w = r2.w ? cb2[5].x : 1;
  }
  r2.w = 0.0799999982 * r0.z;
  r4.xyz = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r4.xyz = r0.xxx * r4.xyz + r2.www;
  r6.xyz = -r2.xyz * r0.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r4.xyz = r2.www ? float3(0,0,0) : r4.xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r2.w = r0.w * r7.x + r7.y;
  r2.w = r2.w * r0.w + r7.z;
  r2.w = r2.w * r0.w;
  r2.w = max(r2.w, r0.w);
  if (r0.y != 0) {
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
  r0.y = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r0.www * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r0.www + r10.xyz;
  r8.xyz = r8.xyz * r0.www;
  r8.xyz = max(r8.xyz, r0.www);
  r7.xyz = r8.xyz * r7.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r0.www ? r3.xyz : r1.xyz;
  }
  r3.xyz = cb0[145].yyy * r4.xyz + r7.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r0.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.y = r0.y * r2.w;
  r0.y = r0.y * cb0[135].y + 0.00390625;
  r0.y = log2(r0.y);
  r0.y = r0.y * 0.0625 + 0.5;
  o3.w = r0.w * 0.00392156886 + r0.y;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r0.xz;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}