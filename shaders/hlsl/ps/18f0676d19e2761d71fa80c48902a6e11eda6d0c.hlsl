// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[30];
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
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r1.zw = cb5[16].xx * v3.xy;
  r0.w = cb5[16].y + cb0[143].y;
  r5.xy = t4.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[16].zzz * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb5[17].yyy;
  r7.xy = t5.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t5.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
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
  r8.xy = t5.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
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
  r8.y = dot(r0.zxy, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb5[17].zzz * r7.xyz + r8.xyz;
  r7.xyz = cb5[18].xxx * r5.xyz + r7.xyz;
  r8.xy = cmp(float2(0,0) >= v2.yz);
  r8.zw = log2(v2.yz);
  r8.zw = cb5[18].yy * r8.zw;
  r8.zw = exp2(r8.zw);
  r8.xy = r8.xy ? float2(0,0) : r8.zw;
  r4.xyz = r4.xyz / cb5[19].xxx;
  r9.xyz = t6.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t6.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t6.Sample(s0_s, r4.xy).xyz;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r4.www * r4.xyz + r9.xyz;
  r9.xyz = cmp(float3(0,0,0) >= abs(r4.xyz));
  r4.xyz = log2(abs(r4.xyz));
  r4.xyz = cb5[19].yyy * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r9.xyz = r4.xyz * r8.xxx + r8.xxx;
  r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
  r9.xyz = log2(r9.xyz);
  r9.xyz = cb5[19].zzz * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
  r9.xyz = r9.xyz + -r8.xxx;
  r8.xzw = cb5[19].www * r9.xyz + r8.xxx;
  r9.xyz = float3(0,0,1) + r5.xyz;
  r10.xyz = r9.yyy * r0.zxy;
  r9.xyw = r9.xxx * v0.xyz + r10.xyz;
  r9.xyz = r9.zzz * v1.xyz + r9.xyw;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = sqrt(r0.w);
  r9.xyz = r9.xyz / r0.www;
  r0.w = dot(r9.xyz, cb5[3].xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = r0.w * r4.x + -r4.x;
  r0.w = cb5[21].z * r0.w + r4.x;
  r0.w = saturate(r0.w * cb5[21].w + cb5[22].z);
  r4.xyz = r4.xyz * r8.yyy + r8.yyy;
  r9.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb5[19].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r9.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + -r8.yyy;
  r4.xyz = cb5[19].www * r4.xyz + r8.yyy;
  r4.xyz = saturate(-r4.xyz + r0.www);
  r4.xyz = saturate(r8.xzw + r4.xyz);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r2.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = -cb4[5].xyz / r2.www;
  r2.w = dot(r7.yzx, r5.xyz);
  r2.w = 1 + r2.w;
  r8.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = r8.xyz / r3.www;
  r3.w = saturate(dot(-r8.xyz, r7.xyz));
  r4.w = 1 + -cb3[1].x;
  r3.w = saturate(r4.w + r3.w);
  r2.w = r3.w * r2.w;
  r2.x = dot(r5.zxy, r2.xyz);
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
  r2.z = r0.y * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.y * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb3[0].z * r2.y;
  r2.z = r2.w * r2.y;
  r7.xyz = cb4[4].xyz * r2.zzz;
  r2.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r2.z = sqrt(r2.z);
  r9.xyz = -cb4[8].xyz / r2.zzz;
  r2.z = dot(r9.yzx, r5.xyz);
  r2.z = 1 + r2.z;
  r2.w = saturate(dot(-r8.xyz, r9.xyz));
  r2.w = saturate(r2.w + r4.w);
  r2.z = r2.z * r2.w;
  r2.y = r2.z * r2.y;
  r2.yzw = cb4[9].xyz * r2.yyy;
  r2.yzw = cb4[1].yyy * r2.yzw;
  r2.yzw = r7.xyz * cb4[1].xxx + r2.yzw;
  r3.w = cmp(cb0[31].w < 1);
  r4.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.w + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.x = r1.x / cb5[22].w;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[23].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb5[23].y * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r1.y = t7.SampleBias(s4_s, r1.zw, cb0[143].y).w;
  r3.w = cb5[23].z * cb4[3].y;
  r1.y = r3.w * r1.y;
  r7.xyz = cb5[5].xyz * r1.yyy;
  r7.xyz = r7.xyz * r1.xxx;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r4.yzw = r7.xyz * r4.yzw;
  r2.yzw = cb3[2].xyz * r2.yzw + r4.yzw;
  r4.yzw = cb5[7].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb5[7].xyz + cb5[8].xyz;
  r2.yzw = cb5[23].www * r2.yzw + r4.yzw;
  r4.yzw = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xyz;
  r1.x = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.xxx + -r4.yzw;
  r4.yzw = cb5[24].zzz * r7.xyz + r4.yzw;
  r1.x = dot(float3(0.577350259,0.577350259,0.577350259), r4.yzw);
  r4.yzw = -r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wyz;
  r7.xyz = r4.wyz * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[24].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r4.yzw = r4.yzw * r9.xxx + r7.xyz;
  r4.yzw = r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r4.yzw;
  r7.xyz = cb5[10].xyz * r4.yzw;
  r8.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r1.x = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r1.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r1.xy = cmp(abs(r5.zx) < abs(r5.yy));
  r1.x = r1.x ? r8.w : 0;
  r9.xyz = r1.yyy ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r1.xxx ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r8.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r1.x = dot(abs(r5.zxy), icb[r8.x+0].xyz);
  r1.y = dot(abs(r5.zxy), icb[r9.x+0].xyz);
  r1.xy = float2(-0.577300012,-0.577300012) + r1.xy;
  r1.xy = saturate(float2(2.36574411,2.36574411) * r1.xy);
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
  r14.xyz = t9.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r8.x = dot(r6.xyz, icb[r8.z+0].xyz);
  r8.y = dot(r6.xyz, icb[r8.w+0].xyz);
  r6.x = dot(r9.xyz, icb[r8.z+0].xyz);
  r6.y = dot(r9.xyz, icb[r8.w+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.z+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.w+0].xyz);
  r10.xyz = t9.SampleGrad(s0_s, r8.xy, r6.xyx, r9.xyx).xyz;
  r10.xyz = r10.xyz * r1.yyy;
  r10.xyz = r14.xyz * r1.xxx + r10.xyz;
  r3.w = r1.x + r1.y;
  r10.xyz = r10.xyz / r3.www;
  r6.z = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r14.xyz = r6.zzz + -r10.xyz;
  r10.xyz = cb5[25].yyy * r14.xyz + r10.xyz;
  r6.z = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r6.zzz * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r14.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r14.zxy;
  sincos(cb5[25].x, r15.x, r16.x);
  r14.xyz = r15.xxx * r14.xyz;
  r10.xyz = r10.xyz * r16.xxx + r14.xyz;
  r10.xyz = r6.zzz * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = cb5[12].xyz * r10.xyz;
  r6.z = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.z = saturate(cb5[25].z * r6.z);
  r6.w = 1 + -r6.z;
  r6.w = r6.w + r6.w;
  r15.xyz = -r6.www * cb5[15].xyz + float3(1,1,1);
  r6.w = r6.z + r6.z;
  r16.xyz = cb5[14].xyz * r6.www;
  r6.z = cmp(r6.z >= 0.5);
  r15.xyz = r6.zzz ? r15.xyz : r16.xyz;
  r16.xyz = cb5[14].xyz + -r15.xyz;
  r15.xyz = cb5[25].www * r16.xyz + r15.xyz;
  r16.xyz = -cb0[67].xyz + r3.xyz;
  r6.z = dot(r16.xyz, r16.xyz);
  r6.z = sqrt(r6.z);
  r6.z = r6.z / cb5[26].x;
  r6.w = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r6.z = cb5[26].y * r6.z;
  r6.z = exp2(r6.z);
  r6.z = min(1, r6.z);
  r6.z = r6.w ? 0 : r6.z;
  r10.xyz = -r10.xyz * cb5[12].xyz + r15.xyz;
  r10.xyz = r10.xyz * r6.zzz;
  r10.xyz = cb5[26].zzz * r10.xyz + r14.xyz;
  r4.yzw = -r4.yzw * cb5[10].xyz + r10.xyz;
  r4.yzw = r4.xxx * r4.yzw + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.yzw);
  r1.zw = t10.SampleBias(s6_s, r1.zw, cb0[143].y).xy;
  r6.z = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[26].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r6.z ? 0 : r1.z;
  r10.y = saturate(cb5[27].x + r1.z);
  r10.x = cb5[27].y + r1.w;
  r1.zw = t11.SampleGrad(s0_s, r11.xy, r12.xx, r13.xx).xy;
  r6.xy = t11.SampleGrad(s0_s, r8.xy, r6.xy, r9.xy).xy;
  r6.xy = r6.xy * r1.yy;
  r1.xy = r1.zw * r1.xx + r6.xy;
  r1.xy = r1.xy / r3.ww;
  r1.yz = cb5[27].zw + r1.xy;
  r1.x = saturate(r1.y);
  r1.xy = r1.zx + -r10.xy;
  r1.xy = saturate(r4.xx * r1.xy + r10.xy);
  r1.z = cb5[28].x * r2.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb5[28].y * r1.z;
  r1.w = saturate(cb5[28].w + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb5[29].x * r1.z);
  r1.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r1.w = cb5[29].y * r1.w;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[29].z * r1.w;
  r1.w = exp2(r1.w);
  r4.xyz = min(float3(1,1,1), r7.xyz);
  r1.w = min(1, r1.w);
  r1.w = r2.x ? 0 : r1.w;
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r6.xyzw = t3.Sample(s1_s, v4.zw).xyzw;
  r7.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * cb2[1].xyzw + r7.xyzw);
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = cb2[0].xyzw * r6.xyzw;
  r1.y = 0.0799999982 * r1.z;
  r6.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r6.xyz = r1.xxx * r6.xyz + r1.yyy;
  r7.xyz = -r4.xyz * r1.xxx + r4.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.y = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.yyy ? r8.xyz : r7.xyz;
  r6.xyz = r1.yyy ? float3(0,0,0) : r6.xyz;
  r1.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.yyy * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r1.y = r1.w * r8.x + r8.y;
  r1.y = r1.y * r1.w + r8.z;
  r1.y = r1.y * r1.w;
  r1.y = max(r1.w, r1.y);
  r8.xy = float2(1,0.5) * v4.xy;
  r8.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t1.Sample(s1_s, r8.zw).xyzw;
  r2.x = r8.w * 0.00392156886 + r9.w;
  r2.x = -0.00196078443 + r2.x;
  r2.x = r2.x * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.x = exp2(r2.x);
  r2.x = -0.0185813606 + r2.x;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r5.w = 1;
  r3.w = dot(r8.xyzw, r5.xyzw);
  r3.w = max(0, r3.w);
  r2.x = r3.w * r2.x;
  r8.xyz = r2.xxx * r9.xyz;
  r2.x = cmp(cb0[186].y != 0.000000);
  if (r2.x != 0) {
    r9.xyzw = t2.Sample(s1_s, v4.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.x = dot(r9.xyz, r9.xyz);
    r2.x = rsqrt(r2.x);
    r9.xyz = r9.xyz * r2.xxx;
    r2.x = -r9.w * r9.w + 1;
    r2.x = -r2.x * r2.x + 1;
    r0.xyz = r0.zxy * r0.www + -r9.xyz;
    r0.xyz = r2.xxx * r0.xyz + r9.xyz;
    r3.w = saturate(dot(r9.yzx, r5.xyz));
    r4.w = 1 + -r3.w;
    r10.y = r2.x * r4.w + r3.w;
  } else {
    r0.xyz = r5.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t0[0].val[0/4];
  r9.y = t0[0].val[0/4+1];
  r9.z = t0[0].val[0/4+2];
  r9.w = t0[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r11.x = t0[1].val[0/4];
  r11.y = t0[1].val[0/4+1];
  r11.z = t0[1].val[0/4+2];
  r11.w = t0[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t0[2].val[0/4];
  r11.y = t0[2].val[0/4+1];
  r11.z = t0[2].val[0/4+2];
  r11.w = t0[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r9.xyz = r12.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r1.www * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r1.www + r10.xyz;
  r8.xyz = r8.xyz * r1.www;
  r8.xyz = max(r8.xyz, r1.www);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.w = (int)r7.y | (int)r7.x;
    r1.w = (int)r7.z | (int)r1.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r3.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.y;
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
  o6.xyzw = float4(0,0,0,0);
  return;
}