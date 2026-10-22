// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[30];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  nointerpolation uint v4 : PRIMITIVE_ID0,
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
  r1.zw = cb3[16].xx * v3.xy;
  r0.w = cb3[16].y + cb0[143].y;
  r5.xy = t10.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[16].zzz * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb3[17].yyy;
  r7.xy = t11.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t11.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
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
  r8.xy = t11.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
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
  r7.xyz = cb3[17].zzz * r7.xyz + r8.xyz;
  r7.xyz = cb3[18].xxx * r5.xyz + r7.xyz;
  r8.xy = cmp(float2(0,0) >= v2.yz);
  r8.zw = log2(v2.yz);
  r8.zw = cb3[18].yy * r8.zw;
  r8.zw = exp2(r8.zw);
  r8.xy = r8.xy ? float2(0,0) : r8.zw;
  r4.xyz = r4.xyz / cb3[19].xxx;
  r9.xyz = t12.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t12.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t12.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb3[19].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r8.xxx + r8.xxx;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb3[19].zzz * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r8.xxx;
  r8.xzw = cb3[19].www * r9.xyz + r8.xxx;
  r9.xyz = float3(0,0,1) + r5.xyz;
  r10.xyz = r9.yyy * r0.xyz;
  r9.xyw = r9.xxx * v0.xyz + r10.xyz;
  r9.xyz = r9.zzz * v1.xyz + r9.xyw;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r9.xyz = r9.xyz / r0.www;
  r0.w = dot(r9.xyz, cb3[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb3[21].z * r0.w + r4.x;
  r0.w = saturate(r0.w * cb3[21].w + cb3[22].z);
  r4.xyz = r4.xyz * r8.yyy + r8.yyy;
  r9.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[19].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r8.yyy;
  r4.xyz = cb3[19].www * r4.xyz + r8.yyy;
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
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r8.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = sqrt(r0.y);
  r8.xyz = r8.xyz / r0.yyy;
  r0.y = saturate(dot(-r8.xyz, r7.xyz));
  r2.w = 1 + -cb1[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb1[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb1[0].w;
  r2.x = r2.x * r2.y + cb1[0].w;
  r2.y = cmp(r2.x >= cb1[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb1[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb1[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb1[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r8.xyz, r7.xyz));
  r0.w = saturate(r0.w + r2.w);
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
  r1.x = r1.x / cb3[22].w;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb3[23].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb3[23].y * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r1.y = t13.SampleBias(s4_s, r1.zw, cb0[143].y).w;
  r2.x = cb3[23].z * cb2[3].y;
  r1.y = r2.x * r1.y;
  r2.xyz = cb3[5].xyz * r1.yyy;
  r2.xyz = r2.xyz * r1.xxx;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r2.xyz = r4.yzw * r2.xyz;
  r0.xzw = cb1[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb3[7].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb3[7].xyz + cb3[8].xyz;
  r0.xzw = cb3[23].www * r0.xzw + r2.xyz;
  r2.xyz = t14.SampleBias(s5_s, r1.zw, cb0[143].y).xyz;
  r1.x = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.yzw = r1.xxx + -r2.xyz;
  r2.xyz = cb3[24].zzz * r4.yzw + r2.xyz;
  r1.x = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.yzw = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.yzw = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.wyz;
  sincos(cb3[24].y, r7.x, r8.x);
  r4.yzw = r7.xxx * r4.yzw;
  r2.xyz = r2.xyz * r8.xxx + r4.yzw;
  r2.xyz = r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.yzw = cb3[10].xyz * r2.xyz;
  r7.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r1.x = r7.y ? r7.x : 0;
  r7.xyz = r7.zzz ? float3(1,2,0) : float3(2,0,1);
  r7.xyz = r1.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r7.xyz;
  r1.xy = cmp(abs(r5.xy) < abs(r5.zz));
  r1.x = r1.x ? r7.w : 0;
  r8.xyz = r1.yyy ? float3(2,1,3) : float3(1,3,2);
  r8.xyz = r1.xxx ? float3(3,2,1) : r8.xyz;
  r8.xyz = (int3)-r7.xyz + (int3)r8.xyz;
  r8.xyz = max(int3(0,0,0), (int3)r8.xyz);
  r8.xyz = min(int3(2,2,2), (int3)r8.xyz);
  r1.x = dot(abs(r5.xyz), icb[r7.x+0].xyz);
  r1.y = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r1.xy = float2(-0.577300012,-0.577300012) + r1.xy;
  r1.xy = saturate(float2(2.36574411,2.36574411) * r1.xy);
  r2.w = cmp((int)r7.z < (int)r7.y);
  r7.xy = r2.ww ? r7.zy : r7.yz;
  r2.w = cmp((int)r8.z < (int)r8.y);
  r7.zw = r2.ww ? r8.zy : r8.yz;
  r8.xyz = ddx_coarse(r6.xyz);
  r9.xyz = ddy_coarse(r6.xyz);
  r10.x = dot(r6.xyz, icb[r7.x+0].xyz);
  r10.y = dot(r6.xyz, icb[r7.y+0].xyz);
  r11.x = dot(r8.xyz, icb[r7.x+0].xyz);
  r11.y = dot(r8.xyz, icb[r7.y+0].xyz);
  r12.x = dot(r9.xyz, icb[r7.x+0].xyz);
  r12.y = dot(r9.xyz, icb[r7.y+0].xyz);
  r13.xyz = t15.SampleGrad(s0_s, r10.xy, r11.xyx, r12.xyx).xyz;
  r7.x = dot(r6.xyz, icb[r7.z+0].xyz);
  r7.y = dot(r6.xyz, icb[r7.w+0].xyz);
  r6.x = dot(r8.xyz, icb[r7.z+0].xyz);
  r6.y = dot(r8.xyz, icb[r7.w+0].xyz);
  r8.x = dot(r9.xyz, icb[r7.z+0].xyz);
  r8.y = dot(r9.xyz, icb[r7.w+0].xyz);
  r9.xyz = t15.SampleGrad(s0_s, r7.xy, r6.xyx, r8.xyx).xyz;
  r9.xyz = r9.xyz * r1.yyy;
  r9.xyz = r13.xyz * r1.xxx + r9.xyz;
  r2.w = r1.x + r1.y;
  r9.xyz = r9.xyz / r2.www;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.xyz = r3.www + -r9.xyz;
  r9.xyz = cb3[25].yyy * r13.xyz + r9.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r13.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r13.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r13.zxy;
  sincos(cb3[25].x, r14.x, r15.x);
  r13.xyz = r14.xxx * r13.xyz;
  r9.xyz = r9.xyz * r15.xxx + r13.xyz;
  r9.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r13.xyz = cb3[12].xyz * r9.xyz;
  r3.w = dot(r13.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb3[25].z * r3.w);
  r5.w = 1 + -r3.w;
  r5.w = r5.w + r5.w;
  r14.xyz = -r5.www * cb3[15].xyz + float3(1,1,1);
  r5.w = r3.w + r3.w;
  r15.xyz = cb3[14].xyz * r5.www;
  r3.w = cmp(r3.w >= 0.5);
  r14.xyz = r3.www ? r14.xyz : r15.xyz;
  r15.xyz = cb3[14].xyz + -r14.xyz;
  r14.xyz = cb3[25].www * r15.xyz + r14.xyz;
  r15.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r15.xyz, r15.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb3[26].x;
  r5.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[26].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r5.w ? 0 : r3.w;
  r9.xyz = -r9.xyz * cb3[12].xyz + r14.xyz;
  r9.xyz = r9.xyz * r3.www;
  r9.xyz = cb3[26].zzz * r9.xyz + r13.xyz;
  r2.xyz = -r2.xyz * cb3[10].xyz + r9.xyz;
  r2.xyz = r4.xxx * r2.xyz + r4.yzw;
  r4.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.zw = t16.SampleBias(s6_s, r1.zw, cb0[143].y).xy;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[26].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r9.y = saturate(cb3[27].x + r1.z);
  r9.x = cb3[27].y + r1.w;
  r1.zw = t17.SampleGrad(s0_s, r10.xy, r11.xx, r12.xx).xy;
  r6.xy = t17.SampleGrad(s0_s, r7.xy, r6.xy, r8.xy).xy;
  r6.xy = r6.xy * r1.yy;
  r1.xy = r1.zw * r1.xx + r6.xy;
  r1.xy = r1.xy / r2.ww;
  r1.yz = cb3[27].zw + r1.xy;
  r1.x = saturate(r1.y);
  r1.xy = r1.zx + -r9.xy;
  r1.xy = saturate(r4.xx * r1.xy + r9.xy);
  r0.y = cb3[28].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[28].y * r0.y;
  r1.z = saturate(cb3[28].w + v1.z);
  r0.y = r1.z * r0.y;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb3[29].x * r0.y);
  r1.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.z = cb3[29].y * r1.z;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[29].z * r1.z;
  r1.z = exp2(r1.z);
  r2.xyz = min(float3(1,1,1), r4.yzw);
  r1.z = min(1, r1.z);
  r1.z = r1.w ? 0 : r1.z;
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r4.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r6.xyz = (int3)r4.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r1.y = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r6.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r6.xyz * r1.yyy + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r1.y = mad((int)v4.x, 36, 20);
  r1.y = t9[r1.y].val[4/4];
  r1.w = t9[r1.y].val[4/4+1];
  r1.w = cmp(0 < r1.w);
  if (r1.w != 0) {
    r1.w = t8.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = 0.0799999982 * r0.y;
  r6.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r6.xyz = r1.xxx * r6.xyz + r2.www;
  r7.xyz = -r2.xyz * r1.xxx + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.www ? r8.xyz : r7.xyz;
  r6.xyz = r2.www ? float3(0,0,0) : r6.xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r2.w = r1.z * r8.x + r8.y;
  r2.w = r2.w * r1.z + r8.z;
  r2.w = r2.w * r1.z;
  r2.w = max(r2.w, r1.z);
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
  r3.w = r5.x * r5.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r3.w = 0.429042608 * r3.w;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r5.w = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r6.w = dot(r9.xyzw, r14.xyzw);
  r5.w = r6.w + r5.w;
  r9.x = r12.w * r3.w + r5.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r5.w = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r6.w = dot(r10.xyzw, r14.xyzw);
  r5.w = r6.w + r5.w;
  r9.y = r13.w * r3.w + r5.w;
  r8.yzw = r11.yzw;
  r5.w = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r4.xyz;
  r4.x = dot(r11.xyzw, r14.xyzw);
  r4.x = r5.w + r4.x;
  r9.z = r4.w * r3.w + r4.x;
  r4.xyz = max(float3(0,0,0), r9.xyz);
  r4.xyz = cb0[157].xyz * r4.xyz;
  r4.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  r3.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r7.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r1.zzz * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r1.zzz + r10.xyz;
  r8.xyz = r8.xyz * r1.zzz;
  r8.xyz = max(r8.xyz, r1.zzz);
  r4.xyz = r8.xyz * r4.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.z = cmp(0 < cb0[140].x);
  if (r1.z != 0) {
    r7.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t9[r7.x].val[0/4];
    r7.z = t9[r7.x].val[0/4+1];
    r7.w = t9[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t9[r7.y].val[0/4];
    r8.y = t9[r7.y].val[0/4+1];
    r8.z = t9[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r1.z = (int)r7.y | (int)r7.x;
    r1.z = (int)r7.z | (int)r1.z;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r1.zzz ? r3.xyz : r0.xzw;
  }
  r3.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r0.xzw = r3.xyz + r0.xzw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.z = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.z = frac(r1.z);
  r1.z = -0.5 + r1.z;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.w = r3.w * r2.w;
  r2.w = r2.w * cb0[135].y + 0.00390625;
  r2.w = log2(r2.w);
  r2.w = r2.w * 0.0625 + 0.5;
  o3.w = r1.z * 0.00392156886 + r2.w;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = r1.y;
  o2.x = r1.x;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}