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
  float4 cb4[37];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
  r1.zw = cb4[18].xx * v3.xy;
  r0.w = cb4[18].z + cb0[143].y;
  r5.xy = t11.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[18].www * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb4[19].zzz;
  r7.xy = t12.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t12.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r7.xy;
  r7.xy = min(float2(1,1), abs(v1.xz));
  r9.xyz = r9.xyz + -r8.xyz;
  r7.xzw = r7.xxx * r9.xyz + r8.xyz;
  r8.xy = t12.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
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
  r7.xyz = cb4[19].www * r7.xyz + r8.xyz;
  r7.xyz = cb4[20].yyy * r5.xyz + r7.xyz;
  r8.xy = cmp(float2(0,0) >= v2.yz);
  r8.zw = log2(v2.yz);
  r8.zw = cb4[20].zz * r8.zw;
  r8.zw = exp2(r8.zw);
  r8.xy = r8.xy ? float2(0,0) : r8.zw;
  r4.xyz = r4.xyz / cb4[21].yyy;
  r9.xyz = t13.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t13.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t13.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb4[21].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r8.xxx + r8.xxx;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb4[21].www * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r8.xxx;
  r8.xzw = cb4[22].xxx * r9.xyz + r8.xxx;
  r9.xyz = float3(0,0,1) + r5.xyz;
  r10.xyz = r9.yyy * r0.xyz;
  r9.xyw = r9.xxx * v0.xyz + r10.xyz;
  r9.xyz = r9.zzz * v1.xyz + r9.xyw;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r9.xyz = r9.xyz / r0.www;
  r0.w = dot(r9.xyz, cb4[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb4[23].w * r0.w + r4.x;
  r0.w = saturate(r0.w * cb4[24].x + cb4[24].w);
  r4.xyz = r4.xyz * r8.yyy + r8.yyy;
  r9.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[21].www * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r8.yyy;
  r4.xyz = cb4[22].xxx * r4.xyz + r8.yyy;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r8.xzw + r4.xyz);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r7.xyz + r5.xyz;
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
  r2.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = -cb3[5].xyz / r2.www;
  r2.w = dot(r7.xyz, r5.xyz);
  r2.w = 1 + r2.w;
  r8.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = r8.xyz / r3.www;
  r3.w = saturate(dot(-r8.xyz, r7.xyz));
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
  r7.xyz = cb3[4].xyz * r2.zzz;
  r2.z = dot(-cb3[8].xyz, -cb3[8].xyz);
  r2.z = sqrt(r2.z);
  r9.xyz = -cb3[8].xyz / r2.zzz;
  r2.z = dot(r9.xyz, r5.xyz);
  r2.z = 1 + r2.z;
  r2.w = saturate(dot(-r8.xyz, r9.xyz));
  r2.w = saturate(r2.w + r4.w);
  r2.z = r2.z * r2.w;
  r2.y = r2.z * r2.y;
  r2.yzw = cb3[9].xyz * r2.yyy;
  r2.yzw = cb3[1].yyy * r2.yzw;
  r2.yzw = r7.xyz * cb3[1].xxx + r2.yzw;
  r3.w = cmp(cb0[31].w < 1);
  r4.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.w + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.x = r1.x / cb4[25].x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb4[25].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb4[25].z * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r7.xy = r1.zw / cb4[26].yy;
  r7.xy = cb4[26].zw + r7.xy;
  r7.xyz = t14.SampleBias(s4_s, r7.xy, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[26].x, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb4[5].xyz * r7.xyz;
  r1.y = t14.SampleBias(s4_s, r1.zw, cb0[143].y).w;
  r3.w = t15.SampleBias(s5_s, float2(0,0), cb0[143].y).x;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[27].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r4.w = cb4[27].z * r3.w;
  r4.w = cb0[142].z * cb4[27].x + r4.w;
  r4.w = 6.28318548 * r4.w;
  r4.w = sin(r4.w);
  r4.w = r4.w * 0.5 + 0.5;
  r4.w = r4.w * cb4[28].x + cb4[27].w;
  r4.w = max(cb4[28].z, r4.w);
  r4.w = min(cb4[28].y, r4.w);
  r4.w = cb4[28].w * r4.w;
  r4.w = cb3[3].y * r4.w;
  r3.w = r4.w * r3.w;
  r1.y = r3.w * r1.y;
  r7.xyz = r7.xyz * r1.yyy;
  r7.xyz = r7.xyz * r1.xxx;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r7.xyz * r4.yzw;
  r2.yzw = cb2[2].xyz * r2.yzw + r4.yzw;
  r4.yzw = cb4[7].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb4[7].xyz + cb4[8].xyz;
  r2.yzw = cb4[29].xxx * r2.yzw + r4.yzw;
  r4.yzw = t16.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r1.xyz = t17.SampleBias(s7_s, r1.zw, cb0[143].y).xyz;
  r1.z = -1 + r1.z;
  r1.z = cb4[29].w * r1.z + 1;
  r7.xyz = r4.yzw * r1.zzz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.yzw = -r4.yzw * r1.zzz + r1.www;
  r4.yzw = cb4[30].xxx * r4.yzw + r7.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r4.yzw);
  r4.yzw = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wyz;
  r7.xyz = r4.wyz * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[29].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r4.yzw = r4.yzw * r9.xxx + r7.xyz;
  r4.yzw = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r7.xyz = cb4[10].xyz * r4.yzw;
  r8.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r1.z = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r1.zzz ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r1.zw = cmp(abs(r5.xy) < abs(r5.zz));
  r1.z = r1.z ? r8.w : 0;
  r9.xyz = r1.www ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r1.zzz ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r8.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r10.x = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r10.y = dot(abs(r5.xyz), icb[r9.x+0].xyz);
  r1.zw = float2(-0.577300012,-0.577300012) + r10.xy;
  r1.zw = saturate(float2(2.36574411,2.36574411) * r1.zw);
  r3.w = cmp((int)r8.z < (int)r8.y);
  r8.xy = r3.ww ? r8.zy : r8.yz;
  r3.w = cmp((int)r9.z < (int)r9.y);
  r8.zw = r3.ww ? r9.zy : r9.yz;
  r9.xyz = ddx_coarse(r6.xyz);
  r10.xyz = ddy_coarse(r6.xyz);
  r11.x = dot(r6.xyz, icb[r8.x+0].xyz);
  r11.y = dot(r6.xyz, icb[r8.y+0].xyz);
  r12.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r12.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r14.xyz = t18.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r8.x = dot(r6.xyz, icb[r8.z+0].xyz);
  r8.y = dot(r6.xyz, icb[r8.w+0].xyz);
  r6.x = dot(r9.xyz, icb[r8.z+0].xyz);
  r6.y = dot(r9.xyz, icb[r8.w+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.z+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.w+0].xyz);
  r10.xyz = t18.SampleGrad(s0_s, r8.xy, r6.xyx, r9.xyx).xyz;
  r10.xyz = r10.xyz * r1.www;
  r10.xyz = r14.xyz * r1.zzz + r10.xyz;
  r3.w = r1.z + r1.w;
  r10.xyz = r10.xyz / r3.www;
  r5.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r14.xyz = r5.www + -r10.xyz;
  r10.xyz = cb4[30].www * r14.xyz + r10.xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r14.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r14.zxy;
  sincos(cb4[30].z, r15.x, r16.x);
  r14.xyz = r15.xxx * r14.xyz;
  r10.xyz = r10.xyz * r16.xxx + r14.xyz;
  r10.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = cb4[12].xyz * r10.xyz;
  r5.w = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = saturate(cb4[31].x * r5.w);
  r6.z = 1 + -r5.w;
  r6.z = r6.z + r6.z;
  r15.xyz = -r6.zzz * cb4[15].xyz + float3(1,1,1);
  r6.z = r5.w + r5.w;
  r16.xyz = cb4[14].xyz * r6.zzz;
  r5.w = cmp(r5.w >= 0.5);
  r15.xyz = r5.www ? r15.xyz : r16.xyz;
  r16.xyz = cb4[14].xyz + -r15.xyz;
  r15.xyz = cb4[31].yyy * r16.xyz + r15.xyz;
  r16.xyz = -cb0[67].xyz + r3.xyz;
  r5.w = dot(r16.xyz, r16.xyz);
  r5.w = sqrt(r5.w);
  r5.w = r5.w / cb4[31].z;
  r6.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb4[31].w * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.z ? 0 : r5.w;
  r10.xyz = -r10.xyz * cb4[12].xyz + r15.xyz;
  r10.xyz = r10.xyz * r5.www;
  r10.xyz = cb4[32].xxx * r10.xyz + r14.xyz;
  r4.yzw = -r4.yzw * cb4[10].xyz + r10.xyz;
  r4.yzw = r4.xxx * r4.yzw + r7.xyz;
  r5.w = saturate(v2.x + v2.x);
  r7.xyz = cb4[17].xyz * r4.yzw + -r4.yzw;
  r7.xyz = r5.www * r7.xyz + r4.yzw;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.x = -cb4[33].x * v2.x + r1.x;
  r5.w = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb4[33].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r5.w ? 0 : r1.x;
  r10.y = saturate(cb4[33].z + r1.x);
  r10.x = cb4[33].w + r1.y;
  r1.xy = t19.SampleGrad(s0_s, r11.xy, r12.xy, r13.xy).xy;
  r6.xy = t19.SampleGrad(s0_s, r8.xy, r6.xy, r9.xy).xy;
  r6.xy = r6.xy * r1.ww;
  r1.xy = r1.xy * r1.zz + r6.xy;
  r1.xy = r1.xy / r3.ww;
  r1.x = -cb4[33].x * v2.x + r1.x;
  r6.y = saturate(cb4[34].x + r1.x);
  r6.x = cb4[34].y + r1.y;
  r1.xy = r6.xy + -r10.xy;
  r1.xy = saturate(r4.xx * r1.xy + r10.xy);
  r1.z = cb4[34].z * r2.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb4[34].w * r1.z;
  r1.w = saturate(cb4[35].y + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb4[35].z * r1.z);
  r1.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r1.w = cb4[35].w * r1.w;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[36].x * r1.w;
  r1.w = exp2(r1.w);
  r4.xyz = min(float3(1,1,1), r7.xyz);
  r1.w = min(1, r1.w);
  r1.w = r2.x ? 0 : r1.w;
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.y = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r1.yyy + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  r1.y = cmp(0 < cb1[20].z);
  if (r1.y != 0) {
    r1.y = t9.SampleLevel(s1_s, r6.xyz, 0).x;
  } else {
    r1.y = 1;
  }
  r2.x = 0.0799999982 * r1.z;
  r7.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r7.xyz = r1.xxx * r7.xyz + r2.xxx;
  r8.xyz = -r4.xyz * r1.xxx + r4.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r2.x = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.xxx ? r9.xyz : r8.xyz;
  r7.xyz = r2.xxx ? float3(0,0,0) : r7.xyz;
  r2.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r2.xxx * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r2.x = r1.w * r9.x + r9.y;
  r2.x = r2.x * r1.w + r9.z;
  r2.x = r2.x * r1.w;
  r2.x = max(r2.x, r1.w);
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
  r3.w = r5.x * r5.x + -r16.x;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r17.xz = r16.zy * float2(1,3) + float2(0,-1);
  r16.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r17.xyzw;
  r3.w = 0.429042608 * r3.w;
  r17.x = r9.y;
  r17.yzw = r10.yzw;
  r18.x = 0.886227548;
  r4.w = dot(r17.xyzw, r18.xyzw);
  r10.yzw = r13.xyz;
  r5.w = dot(r10.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.x = r13.w * r3.w + r4.w;
  r13.x = r9.z;
  r13.yzw = r11.yzw;
  r4.w = dot(r13.xyzw, r18.xyzw);
  r11.yzw = r14.xyz;
  r5.w = dot(r11.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.y = r14.w * r3.w + r4.w;
  r9.yzw = r12.yzw;
  r4.w = dot(r9.xyzw, r18.xyzw);
  r12.yzw = r15.xyz;
  r5.w = dot(r12.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.z = r15.w * r3.w + r4.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = cb0[157].xyz * r9.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r6.xyz = t8.SampleLevel(s1_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r6.xyz, r6.xyz);
    r10.x = sqrt(r3.w);
    r3.w = max(9.99999975e-005, r10.x);
    r6.xyz = r6.xyz / r3.www;
    r3.w = 1 + -r10.x;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r0.www + -r6.xyz;
    r0.xyz = r3.www * r0.xyz + r6.xyz;
    r4.w = saturate(dot(r6.xyz, r5.xyz));
    r5.w = 1 + -r4.w;
    r10.y = r3.w * r5.w + r4.w;
  } else {
    r0.xyz = r5.xyz;
    r10.xy = float2(1,1);
  }
  r6.x = t10[0].val[0/4];
  r6.y = t10[0].val[0/4+1];
  r6.z = t10[0].val[0/4+2];
  r6.w = t10[0].val[0/4+3];
  r0.w = 1;
  r6.x = dot(r6.xyzw, r0.xyzw);
  r11.x = t10[1].val[0/4];
  r11.y = t10[1].val[0/4+1];
  r11.z = t10[1].val[0/4+2];
  r11.w = t10[1].val[0/4+3];
  r6.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t10[2].val[0/4];
  r11.y = t10[2].val[0/4+1];
  r11.z = t10[2].val[0/4+2];
  r11.w = t10[2].val[0/4+3];
  r6.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t10[3].val[0/4];
  r12.y = t10[3].val[0/4+1];
  r12.z = t10[3].val[0/4+2];
  r12.w = t10[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t10[4].val[0/4];
  r13.y = t10[4].val[0/4+1];
  r13.z = t10[4].val[0/4+2];
  r13.w = t10[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t10[5].val[0/4];
  r13.y = t10[5].val[0/4+1];
  r13.z = t10[5].val[0/4+2];
  r13.w = t10[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r6.xyz = r12.xyz + r6.xyz;
  r0.xyz = r0.yzw * r0.xxx + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r6.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r6.xyz = r1.www * r6.xyz + r9.xyz;
  r6.xyz = r6.xyz * r1.www + r10.xyz;
  r6.xyz = r6.xyz * r1.www;
  r6.xyz = max(r6.xyz, r1.www);
  r0.xyz = r6.xyz * r0.xyz;
  r6.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.yzw = max(float3(0,0,0), r2.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.w = (int)r7.y | (int)r7.x;
    r1.w = (int)r7.z | (int)r1.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r1.www ? r3.xyz : r2.yzw;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.yzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r1.w = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r1.xz;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}