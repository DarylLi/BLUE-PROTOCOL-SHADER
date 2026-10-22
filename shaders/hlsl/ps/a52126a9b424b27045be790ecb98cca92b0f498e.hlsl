// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 cb5[32];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
  r1.zw = cb5[15].xx * v4.xy;
  r2.w = cb5[15].y + cb0[143].y;
  r5.xy = t6.SampleBias(s3_s, r1.zw, r2.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r7.xyz = r4.xyz / cb5[16].xxx;
  r8.xy = t7.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r8.xy;
  r8.xy = t7.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
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
  r9.xy = t7.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
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
  r8.xyz = cb5[16].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb5[16].www * r5.xyz + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v2.yz);
  r9.zw = log2(v2.yz);
  r9.zw = cb5[17].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r4.xyz = r4.xyz / cb5[17].www;
  r2.w = t8.Sample(s0_s, r4.xz).x;
  r3.w = t8.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r3.w = r3.w + -r2.w;
  r2.w = r4.z * r3.w + r2.w;
  r3.w = t8.Sample(s0_s, r4.xy).x;
  r3.w = r3.w + -r2.w;
  r2.w = r4.w * r3.w + r2.w;
  r3.w = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb5[18].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xy = r2.ww * r9.xy + r9.xy;
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb5[18].yy * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r4.xy = r4.xy + -r9.xy;
  r6.z = r5.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = dot(r6.xyz, cb5[3].xyz);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * r2.w + -r2.w;
  r2.w = cb5[20].y * r3.w + r2.w;
  r2.w = saturate(r2.w * cb5[20].z + cb5[21].y);
  r4.xy = cb5[18].zz * r4.xy + r9.xy;
  r2.w = saturate(-r4.y + r2.w);
  r2.w = saturate(r4.x + r2.w);
  r4.xyz = r8.xyz + -r5.xyz;
  r4.xyz = r2.www * r4.xyz + r5.xyz;
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[21].zzz * r5.xyz + r4.xyz;
  r3.w = 1 + r4.z;
  r5.x = cb1[18].x + cb1[18].y;
  r5.x = cb1[18].z + r5.x;
  r5.x = frac(r5.x);
  r5.x = cb0[142].z + r5.x;
  r5.x = v3.x + r5.x;
  r5.x = cb3[2].x * r5.x;
  r5.x = cb5[21].w * r5.x;
  r5.yz = v5.xy + -v4.xy;
  r5.yz = cb5[23].xx * r5.yz + v4.xy;
  r5.yz = cb5[23].yy * r5.yz;
  r5.xy = r5.xx * cb5[22].zw + r5.yz;
  r5.xy = t9.SampleBias(s5_s, r5.xy, cb0[143].y).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r5.x = dot(r5.xy, r5.xy);
  r5.x = 1 + -r5.x;
  r5.x = max(0, r5.x);
  r6.z = sqrt(r5.x);
  r5.xyz = float3(-1,-1,-1) + r6.xyz;
  r5.xyz = v2.xxx * r5.xyz + float3(0,0,1);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[23].zzz * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r4.z = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r3.www;
  r4.xyz = r4.xyw * r4.zzz + -r5.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r0.xyz = r3.www * r0.xyz;
  r4.yzw = r0.xyz * r0.www;
  r5.xyz = cb5[23].www * cb5[5].xyz;
  r6.xyzw = t10.SampleBias(s6_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r3.www + -r6.xyz;
  r6.xyz = cb5[24].zzz * r8.xyz + r6.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r8.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb5[24].y, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r6.xyz = r6.xyz * r10.xxx + r8.xyz;
  r6.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r8.xyz = cb5[7].xyz * r6.xyz;
  r9.xyzw = cmp(abs(r4.zwwy) < abs(r4.yyzz));
  r3.w = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r3.www ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r10.xy = cmp(abs(r4.yz) < abs(r4.ww));
  r3.w = r9.w ? r10.x : 0;
  r10.xyz = r10.yyy ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r3.www ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r4.yzw), icb[r9.x+0].xyz);
  r11.y = dot(abs(r4.yzw), icb[r10.x+0].xyz);
  r9.xw = float2(-0.577300012,-0.577300012) + r11.xy;
  r9.xw = saturate(float2(2.36574411,2.36574411) * r9.xw);
  r3.w = cmp((int)r9.z < (int)r9.y);
  r9.yz = r3.ww ? r9.zy : r9.yz;
  r3.w = cmp((int)r10.z < (int)r10.y);
  r10.xy = r3.ww ? r10.zy : r10.yz;
  r11.xyz = ddx_coarse(r7.xyz);
  r12.xyz = ddy_coarse(r7.xyz);
  r13.x = dot(r7.xyz, icb[r9.y+0].xyz);
  r13.y = dot(r7.xyz, icb[r9.z+0].xyz);
  r14.x = dot(r11.xyz, icb[r9.y+0].xyz);
  r14.y = dot(r11.xyz, icb[r9.z+0].xyz);
  r15.x = dot(r12.xyz, icb[r9.y+0].xyz);
  r15.y = dot(r12.xyz, icb[r9.z+0].xyz);
  r16.xyz = t11.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r17.x = dot(r7.xyz, icb[r10.x+0].xyz);
  r17.y = dot(r7.xyz, icb[r10.y+0].xyz);
  r7.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r7.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r10.xyz = t11.SampleGrad(s0_s, r17.xy, r7.xyx, r11.xyx).xyz;
  r10.xyz = r10.xyz * r9.www;
  r10.xyz = r16.xyz * r9.xxx + r10.xyz;
  r3.w = r9.x + r9.w;
  r10.xyz = r10.xyz / r3.www;
  r5.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.xyz = r5.www + -r10.xyz;
  r10.xyz = cb5[25].yyy * r12.xyz + r10.xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r12.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r12.zxy;
  sincos(cb5[25].x, r16.x, r18.x);
  r12.xyz = r16.xxx * r12.xyz;
  r10.xyz = r10.xyz * r18.xxx + r12.xyz;
  r10.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r12.xyz = cb5[9].xyz * r10.xyz;
  r5.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = saturate(cb5[25].z * r5.w);
  r7.z = 1 + -r5.w;
  r7.z = r7.z + r7.z;
  r16.xyz = -r7.zzz * cb5[12].xyz + float3(1,1,1);
  r7.z = r5.w + r5.w;
  r18.xyz = cb5[11].xyz * r7.zzz;
  r5.w = cmp(r5.w >= 0.5);
  r16.xyz = r5.www ? r16.xyz : r18.xyz;
  r18.xyz = cb5[11].xyz + -r16.xyz;
  r16.xyz = cb5[25].www * r18.xyz + r16.xyz;
  r18.xyz = -cb0[67].xyz + r3.xyz;
  r5.w = dot(r18.xyz, r18.xyz);
  r5.w = sqrt(r5.w);
  r5.w = r5.w / cb5[26].x;
  r7.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb5[26].y * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r7.z ? 0 : r5.w;
  r10.xyz = -r10.xyz * cb5[9].xyz + r16.xyz;
  r10.xyz = r10.xyz * r5.www;
  r10.xyz = cb5[26].zzz * r10.xyz + r12.xyz;
  r6.xyz = -r6.xyz * cb5[7].xyz + r10.xyz;
  r6.xyz = r2.www * r6.xyz + r8.xyz;
  r8.xyz = cb5[26].www * r6.xyz;
  r5.w = saturate(v2.x + v2.x);
  r10.xyz = cb5[14].xyz * r8.xyz + -r8.xyz;
  r8.xyz = r5.www * r10.xyz + r8.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r1.zw = t12.SampleBias(s7_s, r1.zw, cb0[143].y).xy;
  r1.z = -cb5[27].x * v2.x + r1.z;
  r5.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[27].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r5.w ? 0 : r1.z;
  r10.y = saturate(cb5[27].z + r1.z);
  r10.x = cb5[27].w + r1.w;
  r1.zw = t13.SampleGrad(s0_s, r13.xy, r14.xx, r15.xx).xy;
  r7.xy = t13.SampleGrad(s0_s, r17.xy, r7.xy, r11.xy).xy;
  r7.xy = r7.xy * r9.ww;
  r1.zw = r1.zw * r9.xx + r7.xy;
  r1.zw = r1.zw / r3.ww;
  r1.z = -cb5[27].x * v2.x + r1.z;
  r7.y = saturate(cb5[28].x + r1.z);
  r7.x = cb5[28].y + r1.w;
  r1.zw = r7.xy + -r10.xy;
  r1.zw = saturate(r2.ww * r1.zw + r10.xy);
  r2.x = dot(r4.yzw, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.x = cb5[28].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb5[28].w * r2.x;
  r2.y = saturate(cb5[29].y + v1.z);
  r2.x = r2.y * r2.x;
  r2.x = max(0, r2.x);
  r2.x = min(0.5, r2.x);
  r2.x = saturate(cb5[29].z * r2.x);
  r2.y = cb5[30].x * cb4[1].w;
  r2.z = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r2.z ? r1.y : r1.x;
  r1.y = cb5[30].y + r1.x;
  r2.zw = float2(0.649999976,0.487499982) * cb4[1].ww;
  r3.w = cb4[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r3.w / r2.w);
  r3.w = -cb4[1].w * 0.649999976 + 8000;
  r2.z = r2.w * r3.w + r2.z;
  r1.y = r1.y / r2.z;
  r1.x = r1.x / cb5[30].y;
  r2.z = cmp(9.99999975e-006 < abs(r2.y));
  r2.y = cmp(r2.y >= 0);
  r1.y = r2.y ? r1.y : r1.x;
  r1.x = r2.z ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb5[30].x));
  r2.y = 1 + cb5[30].x;
  r1.y = r1.y ? r2.y : 1.39999998;
  r2.yzw = -cb0[129].xxy + v7.xxy;
  r2.y = r2.y * cb0[130].z + -0.469999999;
  r2.y = 4.93230057 * r2.y;
  r2.y = cos(r2.y);
  r2.y = 0.899999976 + r2.y;
  r2.y = saturate(0.555555582 * r2.y);
  r1.y = -r2.y + r1.y;
  r7.xy = cb0[152].xx + r2.zw;
  r7.xy = (uint2)r7.xy;
  r2.y = (uint)r7.y << 1;
  r2.y = (int)r2.y + (int)r7.x;
  r2.y = (uint)r2.y % 5;
  r2.y = (uint)r2.y;
  r2.zw = float2(0.015625,0.015625) * r2.zw;
  r2.z = t14.SampleBias(s8_s, r2.zw, cb0[143].y).x;
  r2.y = r2.y + r2.z;
  r2.y = 0.166666672 * r2.y;
  r1.x = r1.x * r1.y + r2.y;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x;
  r2.yzw = saturate(cb5[31].www * r6.xyz);
  r1.y = cmp(0.00100000005 < abs(v3.w));
  r6.xy = floor(v7.xy);
  r3.w = dot(r6.xy, float2(347.834503,3343.28369));
  r3.w = cos(r3.w);
  r3.w = 1000 * r3.w;
  r3.w = frac(r3.w);
  r5.w = cmp(v3.w < 0);
  r6.x = 1 + v3.w;
  r6.x = cmp(r3.w < r6.x);
  r3.w = cmp(v3.w < r3.w);
  r3.w = r5.w ? r6.x : r3.w;
  r3.w = cmp((int)r3.w == 0);
  r1.y = r1.y ? r3.w : 0;
  if (r1.y != 0) discard;
  r1.x = r1.x * v3.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r6.xyz = min(float3(1,1,1), r8.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb5[29].w);
  r1.xyw = r2.yzw * cb0[136].www + cb0[136].xyz;
  r2.y = cmp(0 < cb0[215].x);
  r2.z = cmp(0 < cb1[20].z);
  if (r2.z != 0) {
    r7.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = min(float3(0.99000001,0.99000001,0.99000001), r7.xyz);
    r7.xyz = cb0[213].xyz * r7.xyz;
    r8.xyz = (int3)r7.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r2.z = 1 + cb0[213].w;
    r7.xyz = r7.xyz / r8.www;
    r7.xyz = frac(r7.xyz);
    r7.xyz = cb0[213].www * r7.xyz;
    r7.xyz = r8.xyz * r2.zzz + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r7.xyz = cb0[214].xyz * r7.xyz;
    r2.z = t1.SampleLevel(s1_s, r7.xyz, 0).x;
  } else {
    r2.w = cmp(0 < cb1[18].w);
    r2.w = r2.y ? r2.w : 0;
    r2.z = r2.w ? cb2[5].x : 1;
  }
  r7.xyz = saturate(r1.xyw);
  o4.xyz = sqrt(r7.xyz);
  r2.w = 0.0799999982 * r2.x;
  r7.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r7.xyz = r1.zzz * r7.xyz + r2.www;
  r8.xyz = -r6.xyz * r1.zzz + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.www ? r9.xyz : r8.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r1.xyw = r8.xyz + r1.xyw;
  if (r2.y != 0) {
    r9.xyz = r3.xyz * cb2[1].xyz + cb2[0].xyz;
    r9.xyz = max(cb2[2].xyz, r9.xyz);
    r9.xyz = min(cb2[3].xyz, r9.xyz);
    r10.xyzw = t3.Sample(s2_s, r9.xyz).xyzw;
    r11.xyzw = t4.Sample(s1_s, r9.xyz).xyzw;
    r9.xyzw = t5.Sample(s1_s, r9.xyz).xyzw;
    r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
    r13.xw = r10.xw;
    r13.y = r11.x;
    r13.z = r9.x;
    r12.x = 0.886227548;
    r13.x = dot(r13.xyzw, r12.xyzw);
    r14.x = r10.y;
    r14.yw = r11.yw;
    r14.z = r9.y;
    r13.y = dot(r14.xyzw, r12.xyzw);
    r9.x = r10.z;
    r9.y = r11.z;
    r13.z = dot(r9.xyzw, r12.xyzw);
    r9.xyz = max(float3(0,0,0), r13.xyz);
    r9.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  } else {
    r9.xyz = float3(0,0,0);
  }
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r4.x = 1;
    r10.xyzw = r2.yyyy ? cb2[4].wxyz : r4.xyzw;
    r2.y = 1 + -r10.x;
    r2.y = -r2.y * r2.y + 1;
    r0.xyz = r0.xyz * r0.www + -r10.yzw;
    r0.xyz = r2.yyy * r0.xyz + r10.yzw;
    r3.w = saturate(dot(r10.yzw, r4.yzw));
    r4.x = 1 + -r3.w;
    r10.y = r2.y * r4.x + r3.w;
  } else {
    r0.xyz = r4.yzw;
    r10.xy = float2(1,1);
  }
  r11.x = t2[0].val[0/4];
  r11.y = t2[0].val[0/4+1];
  r11.z = t2[0].val[0/4+2];
  r11.w = t2[0].val[0/4+3];
  r0.w = 1;
  r11.x = dot(r11.xyzw, r0.xyzw);
  r12.x = t2[1].val[0/4];
  r12.y = t2[1].val[0/4+1];
  r12.z = t2[1].val[0/4+2];
  r12.w = t2[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t2[2].val[0/4];
  r12.y = t2[2].val[0/4+1];
  r12.z = t2[2].val[0/4+2];
  r12.w = t2[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t2[3].val[0/4];
  r13.y = t2[3].val[0/4+1];
  r13.z = t2[3].val[0/4+2];
  r13.w = t2[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t2[4].val[0/4];
  r14.y = t2[4].val[0/4+1];
  r14.z = t2[4].val[0/4+2];
  r14.w = t2[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t2[5].val[0/4];
  r14.y = t2[5].val[0/4+1];
  r14.z = t2[5].val[0/4+2];
  r14.w = t2[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r0.xyz = r0.yzw * r0.xxx + r11.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r1.xyw;
  r1.xyw = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyw = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyw;
  r1.xyw = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyw;
  r1.xyw = float3(1.33200002,1.33200002,1.33200002) + r1.xyw;
  r1.xyw = max(float3(1,1,1), r1.xyw);
  r0.xyz = r1.xyw * r0.xyz;
  r1.xyw = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.y = cmp(0 < cb0[140].x);
  if (r2.y != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.y = (int)r7.y | (int)r7.x;
    r2.y = (int)r7.z | (int)r2.y;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r2.yyy ? r3.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.xyw + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r1.xyw = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r1.xyw = frac(r1.xyw);
  r1.xyw = r1.xyw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyw = r1.xyw * r1.xyy;
  r1.x = dot(r1.xyw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r1.z;
  o2.w = 0.509803951;
  o2.y = r2.x;
  o3.xyz = r6.xyz;
  o5.x = r2.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}