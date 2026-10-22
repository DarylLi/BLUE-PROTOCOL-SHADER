// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

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
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  nointerpolation uint w5 : LIGHTMAP_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r1.zw = cb3[16].xx * v3.xy;
  r0.w = cb3[16].y + cb0[143].y;
  r5.xy = t3.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[16].zzz * r6.xyz + r5.xyz;
  r6.xyz = r4.xyz / cb3[17].yyy;
  r7.xy = t4.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r7.xy;
  r7.xy = t4.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
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
  r8.xy = t4.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
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
  r7.xyz = cb3[17].zzz * r7.xyz + r8.xyz;
  r7.xyz = cb3[18].xxx * r5.xyz + r7.xyz;
  r8.xy = cmp(float2(0,0) >= v2.yz);
  r8.zw = log2(v2.yz);
  r8.zw = cb3[18].yy * r8.zw;
  r8.zw = exp2(r8.zw);
  r8.xy = r8.xy ? float2(0,0) : r8.zw;
  r4.xyz = r4.xyz / cb3[19].xxx;
  r9.xyz = t5.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t5.Sample(s0_s, r4.yz).xyz;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r4.xyz = t5.Sample(s0_s, r4.xy).xyz;
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
  r10.xyz = r9.yyy * r0.zxy;
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
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r7.yzx, r5.xyz);
  r0.x = 1 + r0.x;
  r8.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r8.xyz, r8.xyz);
  r0.z = sqrt(r0.z);
  r8.xyz = r8.xyz / r0.zzz;
  r0.z = saturate(dot(-r8.xyz, r7.xyz));
  r2.w = 1 + -cb1[1].x;
  r0.z = saturate(r2.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r5.zxy, r2.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r2.x = cb1[1].y * r0.z;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb1[0].w;
  r2.x = r2.x * r2.y + cb1[0].w;
  r2.y = cmp(r2.x >= cb1[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.y * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb1[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r0.w + 1;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb1[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb1[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r7.yzx, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r8.xyz, r7.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.y;
  r0.xyw = cb2[9].xyz * r0.xxx;
  r0.xyw = cb2[1].yyy * r0.xyw;
  r0.xyw = r2.xyz * cb2[1].xxx + r0.xyw;
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
  r1.y = t6.SampleBias(s4_s, r1.zw, cb0[143].y).w;
  r2.x = cb3[23].z * cb2[3].y;
  r1.y = r2.x * r1.y;
  r2.xyz = cb3[5].xyz * r1.yyy;
  r2.xyz = r2.xyz * r1.xxx;
  r4.yzw = float3(1,1,1) + -r4.xyz;
  r2.xyz = r4.yzw * r2.xyz;
  r0.xyw = cb1[2].xyz * r0.xyw + r2.xyz;
  r2.xyz = cb3[7].xyz * r0.xyw;
  r0.xyw = -r0.xyw * cb3[7].xyz + cb3[8].xyz;
  r0.xyw = cb3[23].www * r0.xyw + r2.xyz;
  r2.xyz = t7.SampleBias(s5_s, r1.zw, cb0[143].y).xyz;
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
  r7.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r1.x = r7.y ? r7.x : 0;
  r7.xyz = r7.zzz ? float3(1,2,0) : float3(2,0,1);
  r7.xyz = r1.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r7.xyz;
  r1.xy = cmp(abs(r5.zx) < abs(r5.yy));
  r1.x = r1.x ? r7.w : 0;
  r8.xyz = r1.yyy ? float3(2,1,3) : float3(1,3,2);
  r8.xyz = r1.xxx ? float3(3,2,1) : r8.xyz;
  r8.xyz = (int3)-r7.xyz + (int3)r8.xyz;
  r8.xyz = max(int3(0,0,0), (int3)r8.xyz);
  r8.xyz = min(int3(2,2,2), (int3)r8.xyz);
  r1.x = dot(abs(r5.zxy), icb[r7.x+0].xyz);
  r1.y = dot(abs(r5.zxy), icb[r8.x+0].xyz);
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
  r13.xyz = t8.SampleGrad(s0_s, r10.xy, r11.xyx, r12.xyx).xyz;
  r7.x = dot(r6.xyz, icb[r7.z+0].xyz);
  r7.y = dot(r6.xyz, icb[r7.w+0].xyz);
  r6.x = dot(r8.xyz, icb[r7.z+0].xyz);
  r6.y = dot(r8.xyz, icb[r7.w+0].xyz);
  r8.x = dot(r9.xyz, icb[r7.z+0].xyz);
  r8.y = dot(r9.xyz, icb[r7.w+0].xyz);
  r9.xyz = t8.SampleGrad(s0_s, r7.xy, r6.xyx, r8.xyx).xyz;
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
  r6.z = 1 + -r3.w;
  r6.z = r6.z + r6.z;
  r14.xyz = -r6.zzz * cb3[15].xyz + float3(1,1,1);
  r6.z = r3.w + r3.w;
  r15.xyz = cb3[14].xyz * r6.zzz;
  r3.w = cmp(r3.w >= 0.5);
  r14.xyz = r3.www ? r14.xyz : r15.xyz;
  r15.xyz = cb3[14].xyz + -r14.xyz;
  r14.xyz = cb3[25].www * r15.xyz + r14.xyz;
  r15.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r15.xyz, r15.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb3[26].x;
  r6.z = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[26].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r6.z ? 0 : r3.w;
  r9.xyz = -r9.xyz * cb3[12].xyz + r14.xyz;
  r9.xyz = r9.xyz * r3.www;
  r9.xyz = cb3[26].zzz * r9.xyz + r13.xyz;
  r2.xyz = -r2.xyz * cb3[10].xyz + r9.xyz;
  r2.xyz = r4.xxx * r2.xyz + r4.yzw;
  r4.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.zw = t9.SampleBias(s6_s, r1.zw, cb0[143].y).xy;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[26].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r9.y = saturate(cb3[27].x + r1.z);
  r9.x = cb3[27].y + r1.w;
  r1.zw = t10.SampleGrad(s0_s, r10.xy, r11.xx, r12.xx).xy;
  r6.xy = t10.SampleGrad(s0_s, r7.xy, r6.xy, r8.xy).xy;
  r6.xy = r6.xy * r1.yy;
  r1.xy = r1.zw * r1.xx + r6.xy;
  r1.xy = r1.xy / r2.ww;
  r1.yz = cb3[27].zw + r1.xy;
  r1.x = saturate(r1.y);
  r1.xy = r1.zx + -r9.xy;
  r1.xy = saturate(r4.xx * r1.xy + r9.xy);
  r0.z = cb3[28].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[28].y * r0.z;
  r1.z = saturate(cb3[28].w + v1.z);
  r0.z = r1.z * r0.z;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb3[29].x * r0.z);
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
  r4.xyzw = mad((int4)v5.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r4.x].val[4/4];
  r1.y = 0.0799999982 * r0.z;
  r6.xyz = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r6.xyz = r1.xxx * r6.xyz + r1.yyy;
  r7.xyz = -r2.xyz * r1.xxx + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.y = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.yyy ? r8.xyz : r7.xyz;
  r6.xyz = r1.yyy ? float3(0,0,0) : r6.xyz;
  r1.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.yyy * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r1.y = r1.z * r8.x + r8.y;
  r1.y = r1.y * r1.z + r8.z;
  r1.y = r1.y * r1.z;
  r1.y = max(r1.z, r1.y);
  r8.xy = float2(1,0.5) * v4.xy;
  r8.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t2.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t2.Sample(s1_s, r8.zw).xyzw;
  r1.w = r8.w * 0.00392156886 + r9.w;
  r1.w = -0.00196078443 + r1.w;
  r10.x = t1[r4.y].val[0/4];
  r10.y = t1[r4.y].val[0/4+1];
  r10.z = t1[r4.y].val[0/4+2];
  r10.w = t1[r4.y].val[0/4+3];
  r11.x = t1[r4.z].val[0/4];
  r11.y = t1[r4.z].val[0/4+1];
  r11.z = t1[r4.z].val[0/4+2];
  r11.w = t1[r4.z].val[0/4+3];
  r1.w = r1.w * r10.w + r11.w;
  r4.xyz = r9.xyz * r9.xyz;
  r4.xyz = r4.xyz * r10.xyz + r11.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r9.x = t1[r4.w].val[0/4];
  r9.y = t1[r4.w].val[0/4+1];
  r9.z = t1[r4.w].val[0/4+2];
  r9.w = t1[r4.w].val[0/4+3];
  r2.w = mad((int)w5.x, 15, 7);
  r10.x = t1[r2.w].val[0/4];
  r10.y = t1[r2.w].val[0/4+1];
  r10.z = t1[r2.w].val[0/4+2];
  r10.w = t1[r2.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r9.xyzw + r10.xyzw;
  r5.w = 1;
  r2.w = dot(r8.xyzw, r5.xyzw);
  r2.w = max(0, r2.w);
  r1.w = r2.w * r1.w;
  r4.xyz = r1.www * r4.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
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
    r7.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r7.x = t0[r7.x].val[0/4];
    r7.z = t0[r7.x].val[0/4+1];
    r7.w = t0[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t0[r7.y].val[0/4];
    r8.y = t0[r7.y].val[0/4+1];
    r8.z = t0[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r1.z = (int)r7.y | (int)r7.x;
    r1.z = (int)r7.z | (int)r1.z;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r0.xyw = r1.zzz ? r3.xyz : r0.xyw;
  }
  r3.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r0.xyw = r3.xyz + r0.xyw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.z = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.z = frac(r1.z);
  r1.z = -0.5 + r1.z;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r1.w * r1.y;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.z * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xyw;
  o0.w = 0;
  o2.x = r1.x;
  o2.w = 0.75686276;
  o2.y = r0.z;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}