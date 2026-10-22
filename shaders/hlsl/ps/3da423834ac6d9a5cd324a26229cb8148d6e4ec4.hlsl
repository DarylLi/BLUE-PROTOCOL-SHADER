// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

Texture2D<float4> t11 : register(t11);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
  r5.xy = t11.SampleBias(s2_s, r1.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = r4.xyz / cb4[21].xxx;
  r8.xy = t12.SampleBias(s3_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.y = v1.y * r0.w;
  r9.xz = -r8.xy;
  r8.xy = t12.SampleBias(s3_s, r7.yz, cb0[143].y).xy;
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
  r9.xy = t12.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
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
  r10.xyz = t13.Sample(s0_s, r4.xz).xyz;
  r11.xyz = t13.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r4.zzz * r11.xyz + r10.xyz;
  r4.xyz = t13.Sample(s0_s, r4.xy).xyz;
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
  r6.xyz = t14.SampleBias(s4_s, r1.zw, cb0[143].y).xyw;
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
  r6.zw = t15.SampleBias(s5_s, r6.zw, cb0[143].y).xy;
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
  r3.w = dot(-cb2[5].xyz, -cb2[5].xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = -cb2[5].xyz / r3.www;
  r3.w = dot(r8.xyz, r5.xyz);
  r3.w = 1 + r3.w;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r9.xyz, r9.xyz);
  r4.w = sqrt(r4.w);
  r9.xyz = r9.xyz / r4.www;
  r4.w = saturate(dot(-r9.xyz, r8.xyz));
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
  r2.z = r0.z * r2.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r2.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb3[0].z * r2.y;
  r2.z = r3.w * r2.y;
  r8.xyz = cb2[4].xyz * r2.zzz;
  r2.z = dot(-cb2[8].xyz, -cb2[8].xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = -cb2[8].xyz / r2.zzz;
  r2.z = dot(r10.xyz, r5.xyz);
  r2.z = 1 + r2.z;
  r3.w = saturate(dot(-r9.xyz, r10.xyz));
  r3.w = saturate(r3.w + r5.w);
  r2.z = r3.w * r2.z;
  r2.y = r2.z * r2.y;
  r9.xyz = cb2[9].xyz * r2.yyy;
  r9.xyz = cb2[1].yyy * r9.xyz;
  r8.xyz = r8.xyz * cb2[1].xxx + r9.xyz;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = r1.x / cb4[29].z;
  r2.y = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[29].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb4[30].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.y ? 1 : r1.y;
  r2.yz = r1.zw / cb4[30].ww;
  r2.yz = cb4[31].xy + r2.yz;
  r9.xyz = t16.SampleBias(s6_s, r2.yz, cb0[143].y).xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb4[30].z, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = cb4[6].xyz * r9.xyz;
  r2.y = t16.SampleBias(s6_s, r1.zw, cb0[143].y).w;
  r0.w = cb4[31].w * r0.w;
  r6.zw = v2.wz + -v2.xy;
  r6.zw = cb4[33].xx * r6.zw + v2.xy;
  r6.zw = cb4[33].yy * r6.zw;
  r6.zw = r0.ww * cb4[32].zw + r6.zw;
  r0.w = t17.SampleBias(s7_s, r6.zw, cb0[143].y).x;
  r2.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[33].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.z ? 0 : r0.w;
  r2.z = cb4[33].w * r0.w;
  r2.z = cb0[142].z * cb4[31].z + r2.z;
  r2.z = 6.28318548 * r2.z;
  r2.z = sin(r2.z);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = r2.z * cb4[34].y + cb4[34].x;
  r2.z = max(cb4[34].w, r2.z);
  r2.z = min(cb4[34].z, r2.z);
  r2.z = cb4[35].x * r2.z;
  r2.z = cb2[3].y * r2.z;
  r0.w = r2.z * r0.w;
  r0.w = r2.y * r0.w;
  r9.xyz = r9.xyz * r0.www;
  r9.xyz = r9.xyz * r1.yyy;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r9.xyz * r4.yzw;
  r4.yzw = cb3[2].xyz * r8.xyz + r4.yzw;
  r8.xyz = cb4[9].xyz * r4.yzw;
  r4.yzw = -r4.yzw * cb4[9].xyz + cb4[10].xyz;
  r4.yzw = cb4[35].yyy * r4.yzw + r8.xyz;
  r8.xyzw = t18.SampleBias(s8_s, r1.zw, cb0[143].y).xyzw;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = r0.www + -r8.xyz;
  r1.yzw = cb4[36].xxx * r1.yzw + r8.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r8.xyz = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[35].w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r1.yzw = r1.yzw * r10.xxx + r8.xyz;
  r1.yzw = r0.www * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r8.xyz = cb4[12].xyz * r1.yzw;
  r9.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r0.w = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r0.www ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r2.yz = cmp(abs(r5.xy) < abs(r5.zz));
  r0.w = r2.y ? r9.w : 0;
  r10.xyz = r2.zzz ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r0.www ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r5.xyz), icb[r9.x+0].xyz);
  r11.y = dot(abs(r5.xyz), icb[r10.x+0].xyz);
  r2.yz = float2(-0.577300012,-0.577300012) + r11.xy;
  r2.yz = saturate(float2(2.36574411,2.36574411) * r2.yz);
  r0.w = cmp((int)r9.z < (int)r9.y);
  r6.zw = r0.ww ? r9.zy : r9.yz;
  r0.w = cmp((int)r10.z < (int)r10.y);
  r9.xy = r0.ww ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r7.xyz);
  r11.xyz = ddy_coarse(r7.xyz);
  r12.x = dot(r7.xyz, icb[r6.z+0].xyz);
  r12.y = dot(r7.xyz, icb[r6.w+0].xyz);
  r13.x = dot(r10.xyz, icb[r6.z+0].xyz);
  r13.y = dot(r10.xyz, icb[r6.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r6.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r6.w+0].xyz);
  r15.xyz = t19.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r16.x = dot(r7.xyz, icb[r9.x+0].xyz);
  r16.y = dot(r7.xyz, icb[r9.y+0].xyz);
  r7.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r7.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r9.xyz = t19.SampleGrad(s0_s, r16.xy, r7.xyx, r10.xyx).xyz;
  r9.xyz = r9.xyz * r2.zzz;
  r9.xyz = r15.xyz * r2.yyy + r9.xyz;
  r0.w = r2.y + r2.z;
  r9.xyz = r9.xyz / r0.www;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r3.www + -r9.xyz;
  r9.xyz = cb4[36].www * r11.xyz + r9.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r11.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb4[36].z, r15.x, r17.x);
  r11.xyz = r15.xxx * r11.xyz;
  r9.xyz = r9.xyz * r17.xxx + r11.xyz;
  r9.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = cb4[14].xyz * r9.xyz;
  r3.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb4[37].x * r3.w);
  r5.w = 1 + -r3.w;
  r5.w = r5.w + r5.w;
  r15.xyz = -r5.www * cb4[17].xyz + float3(1,1,1);
  r5.w = r3.w + r3.w;
  r17.xyz = cb4[16].xyz * r5.www;
  r3.w = cmp(r3.w >= 0.5);
  r15.xyz = r3.www ? r15.xyz : r17.xyz;
  r17.xyz = cb4[16].xyz + -r15.xyz;
  r15.xyz = cb4[37].yyy * r17.xyz + r15.xyz;
  r17.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r17.xyz, r17.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb4[37].z;
  r5.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[37].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r5.w ? 0 : r3.w;
  r9.xyz = -r9.xyz * cb4[14].xyz + r15.xyz;
  r9.xyz = r9.xyz * r3.www;
  r9.xyz = cb4[38].xxx * r9.xyz + r11.xyz;
  r1.yzw = -r1.yzw * cb4[12].xyz + r9.xyz;
  r1.yzw = r4.xxx * r1.yzw + r8.xyz;
  r3.w = saturate(v4.x + v4.x);
  r8.xyz = cb4[19].xyz * r1.yzw + -r1.yzw;
  r1.yzw = r3.www * r8.xyz + r1.yzw;
  r1.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.yzw);
  r3.w = -cb4[38].y * v4.x + r6.x;
  r5.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[38].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r5.w ? 0 : r3.w;
  r8.y = saturate(cb4[38].w + r3.w);
  r8.x = cb4[39].x + r6.y;
  r6.xy = t20.SampleGrad(s0_s, r12.xy, r13.xy, r14.xy).xy;
  r6.zw = t20.SampleGrad(s0_s, r16.xy, r7.xx, r10.xx).xy;
  r6.zw = r6.zw * r2.zz;
  r2.yz = r6.xy * r2.yy + r6.zw;
  r2.yz = r2.yz / r0.ww;
  r0.w = -cb4[38].y * v4.x + r2.y;
  r6.y = saturate(cb4[39].y + r0.w);
  r6.x = cb4[39].z + r2.z;
  r2.yz = r6.xy + -r8.xy;
  r2.yz = saturate(r4.xx * r2.yz + r8.xy);
  r0.w = cb4[39].w * r2.x;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb4[40].x * r0.w;
  r2.x = saturate(cb4[40].z + v1.z);
  r0.w = r2.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb4[40].w * r0.w);
  r1.x = r1.x / cb4[41].x;
  r6.xyz = -cb0[129].xxy + v6.xxy;
  r2.x = r6.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r2.x = cb4[41].z + -r2.x;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r3.w = (uint)r6.w << 1;
  r3.w = (int)r3.w + (int)r6.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r4.x = t21.SampleBias(s9_s, r6.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.x + r3.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r8.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.yzw);
  o2.z = r2.z * cb0[139].y + cb0[139].x;
  r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.w = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r1.www + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s1_s, r6.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.x = 0.0799999982 * r0.w;
  r7.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r7.xyz = r2.yyy * r7.xyz + r2.xxx;
  r8.xyz = -r1.xyz * r2.yyy + r1.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r2.x = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.xxx ? r9.xyz : r8.xyz;
  r7.xyz = r2.xxx ? float3(0,0,0) : r7.xyz;
  r2.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = r2.x * 2.04040003 + -0.332399994;
  r2.z = r2.x * -4.79510021 + r2.z;
  r2.x = r2.x * 2.75519991 + r2.z;
  r2.x = 1.33200002 + r2.x;
  r2.x = max(1, r2.x);
  r9.xyz = t1.SampleLevel(s1_s, r6.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s1_s, r6.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s1_s, r6.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s1_s, r6.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s1_s, r6.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s1_s, r6.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t7.SampleLevel(s1_s, r6.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r9.xxxx;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyz = r5.yzy * r5.yzx;
  r17.yw = r5.zz * r5.yx;
  r2.z = r5.x * r5.x + -r16.x;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r17.xz = r16.zy * float2(1,3) + float2(0,-1);
  r16.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r17.xyzw;
  r2.z = 0.429042608 * r2.z;
  r17.x = r9.y;
  r17.yzw = r10.yzw;
  r18.x = 0.886227548;
  r3.w = dot(r17.xyzw, r18.xyzw);
  r10.yzw = r13.xyz;
  r4.x = dot(r10.xyzw, r16.xyzw);
  r3.w = r4.x + r3.w;
  r10.x = r13.w * r2.z + r3.w;
  r13.x = r9.z;
  r13.yzw = r11.yzw;
  r3.w = dot(r13.xyzw, r18.xyzw);
  r11.yzw = r14.xyz;
  r4.x = dot(r11.xyzw, r16.xyzw);
  r3.w = r4.x + r3.w;
  r10.y = r14.w * r2.z + r3.w;
  r9.yzw = r12.yzw;
  r3.w = dot(r9.xyzw, r18.xyzw);
  r12.yzw = r15.xyz;
  r4.x = dot(r12.xyzw, r16.xyzw);
  r3.w = r4.x + r3.w;
  r10.z = r15.w * r2.z + r3.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = cb0[157].xyz * r9.xyz;
  r2.z = cmp(cb0[186].y != 0.000000);
  if (r2.z != 0) {
    r6.xyz = t8.SampleLevel(s1_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.z = dot(r6.xyz, r6.xyz);
    r10.x = sqrt(r2.z);
    r2.z = max(9.99999975e-005, r10.x);
    r6.xyz = r6.xyz / r2.zzz;
    r2.z = 1 + -r10.x;
    r2.z = -r2.z * r2.z + 1;
    r0.xyz = r0.xyz * r2.www + -r6.xyz;
    r11.xyz = r2.zzz * r0.xyz + r6.xyz;
    r0.x = saturate(dot(r6.xyz, r5.xyz));
    r0.y = 1 + -r0.x;
    r10.y = r2.z * r0.y + r0.x;
  } else {
    r11.xyz = r5.xyz;
    r10.xy = float2(1,1);
  }
  r6.x = t10[0].val[0/4];
  r6.y = t10[0].val[0/4+1];
  r6.z = t10[0].val[0/4+2];
  r6.w = t10[0].val[0/4+3];
  r11.w = 1;
  r0.x = dot(r6.xyzw, r11.xyzw);
  r6.x = t10[1].val[0/4];
  r6.y = t10[1].val[0/4+1];
  r6.z = t10[1].val[0/4+2];
  r6.w = t10[1].val[0/4+3];
  r0.y = dot(r6.xyzw, r11.xyzw);
  r6.x = t10[2].val[0/4];
  r6.y = t10[2].val[0/4+1];
  r6.z = t10[2].val[0/4+2];
  r6.w = t10[2].val[0/4+3];
  r0.z = dot(r6.xyzw, r11.xyzw);
  r6.xyzw = r11.xyzz * r11.yzzx;
  r12.x = t10[3].val[0/4];
  r12.y = t10[3].val[0/4+1];
  r12.z = t10[3].val[0/4+2];
  r12.w = t10[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r6.xyzw);
  r13.x = t10[4].val[0/4];
  r13.y = t10[4].val[0/4+1];
  r13.z = t10[4].val[0/4+2];
  r13.w = t10[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r6.xyzw);
  r13.x = t10[5].val[0/4];
  r13.y = t10[5].val[0/4+1];
  r13.z = t10[5].val[0/4+2];
  r13.w = t10[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r6.xyzw);
  r2.z = r11.y * r11.y;
  r2.z = r11.x * r11.x + -r2.z;
  r6.x = t10[6].val[0/4];
  r6.y = t10[6].val[0/4+1];
  r6.z = t10[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r6.xyz * r2.zzz + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r2.z = r10.x * r10.y;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r9.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r2.z = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r6.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r0.xyz = r6.xyz * r0.xyz;
  r6.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r4.xyz = max(float3(0,0,0), r4.yzw);
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
    r4.xyz = r2.www ? r3.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.x = r2.z * r2.x;
  r2.x = r2.x * cb0[135].y + 0.00390625;
  r2.x = log2(r2.x);
  r2.x = r2.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r2.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r2.y;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}