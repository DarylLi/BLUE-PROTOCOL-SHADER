// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[16];
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
  float4 cb1[13];
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
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float3 v3 : TEXCOORD9,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v3.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r5.xyz = r4.xyz / cb4[8].zzz;
  r1.zw = t3.SampleBias(s2_s, r5.xz, cb0[143].y).xy;
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r1.zw;
  r1.zw = t3.SampleBias(s2_s, r5.yz, cb0[143].y).xy;
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.x = v1.x * r0.w;
  r7.yz = -r1.zw;
  r1.zw = min(float2(1,1), abs(v1.xz));
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r1.zzz * r7.xyz + r6.xyz;
  r7.xy = t3.SampleBias(s2_s, r5.xy, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r7.xy;
  r7.z = v1.z * r0.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r1.www * r7.xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.xyz, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = float3(0,0,1) + -r7.xyz;
  r6.xyz = cb4[8].www * r6.xyz + r7.xyz;
  r1.zw = r4.xy / cb4[9].zz;
  r7.xy = t4.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r7.xy;
  r7.z = v1.z * r0.w;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb4[9].www * r7.xyz + r8.xyz;
  r0.w = v1.z * 0.5 + 0.5;
  r0.w = saturate(r0.w * cb4[10].x + cb4[10].w);
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r0.www * r7.xyz + r6.xyz;
  r7.xyz = r6.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r7.xyz * r0.www;
  r8.xyz = r7.yyy * r0.xyz;
  r7.xyw = r7.xxx * v0.xyz + r8.xyz;
  r7.xyz = r7.zzz * v1.xyz + r7.xyw;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyw = r7.xyz * r0.www;
  r2.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = -cb3[5].xyz / r2.www;
  r2.w = dot(r8.xyz, r7.xyw);
  r2.w = 1 + r2.w;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r9.xyz, r9.xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = r9.xyz / r3.www;
  r3.w = saturate(dot(-r9.xyz, r8.xyz));
  r4.w = 1 + -cb2[1].x;
  r3.w = saturate(r4.w + r3.w);
  r2.w = r3.w * r2.w;
  r3.w = dot(r7.xyw, r2.xyz);
  r3.w = max(0, r3.w);
  r3.w = 1 + -r3.w;
  r3.w = max(9.99999975e-005, abs(r3.w));
  r3.w = log2(r3.w);
  r5.w = cb2[1].y * r3.w;
  r5.w = exp2(r5.w);
  r6.w = 1 + -cb2[0].w;
  r5.w = r5.w * r6.w + cb2[0].w;
  r6.w = cmp(r5.w >= cb2[0].y);
  r6.w = r6.w ? 1.000000 : 0;
  r5.w = r6.w * r5.w;
  r6.w = r7.z * r0.w + 1;
  r8.x = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb2[0].x * r6.w;
  r6.w = exp2(r6.w);
  r6.w = min(1, r6.w);
  r6.w = r8.x ? 0 : r6.w;
  r5.w = r6.w * r5.w;
  r0.w = -r7.z * r0.w + 1;
  r6.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[1].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r6.w ? 0 : r0.w;
  r0.w = r5.w * r0.w;
  r0.w = cb2[0].z * r0.w;
  r2.w = r2.w * r0.w;
  r8.xyz = cb3[4].xyz * r2.www;
  r2.w = dot(-cb3[8].xyz, -cb3[8].xyz);
  r2.w = sqrt(r2.w);
  r10.xyz = -cb3[8].xyz / r2.www;
  r2.w = dot(r10.xyz, r7.xyw);
  r2.w = 1 + r2.w;
  r5.w = saturate(dot(-r9.xyz, r10.xyz));
  r4.w = saturate(r5.w + r4.w);
  r2.w = r4.w * r2.w;
  r0.w = r2.w * r0.w;
  r9.xyz = cb3[9].xyz * r0.www;
  r9.xyz = cb3[1].yyy * r9.xyz;
  r8.xyz = r8.xyz * cb3[1].xxx + r9.xyz;
  r8.xyz = cb2[2].xyz * r8.xyz;
  r9.xyz = cb4[2].xyz * r8.xyz;
  r6.xyz = float3(0,0,1) + r6.xyz;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.z / r0.x;
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = saturate(r0.x * cb4[10].x + cb4[10].w);
  r0.x = r0.x + r0.x;
  r0.x = min(1, r0.x);
  r0.yzw = -r8.xyz * cb4[2].xyz + cb4[3].xyz;
  r0.yzw = cb4[11].xxx * r0.yzw + r9.xyz;
  r6.xyz = r3.xyz / cb4[8].zzz;
  r8.xyzw = cmp(abs(r7.ywwx) < abs(r7.xxyy));
  r2.w = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r2.www ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r9.xy = cmp(abs(r7.xy) < abs(r7.ww));
  r2.w = r8.w ? r9.x : 0;
  r9.xyz = r9.yyy ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r2.www ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r8.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r10.x = dot(abs(r7.xyw), icb[r8.x+0].xyz);
  r10.y = dot(abs(r7.xyw), icb[r9.x+0].xyz);
  r8.xw = float2(-0.577300012,-0.577300012) + r10.xy;
  r8.xw = saturate(float2(2.36574411,2.36574411) * r8.xw);
  r2.w = cmp((int)r8.z < (int)r8.y);
  r8.yz = r2.ww ? r8.zy : r8.yz;
  r2.w = cmp((int)r9.z < (int)r9.y);
  r9.xy = r2.ww ? r9.zy : r9.yz;
  r10.xyz = ddx_coarse(r6.xyz);
  r11.xyz = ddy_coarse(r6.xyz);
  r12.x = dot(r6.xyz, icb[r8.y+0].xyz);
  r12.y = dot(r6.xyz, icb[r8.z+0].xyz);
  r13.x = dot(r10.xyz, icb[r8.y+0].xyz);
  r13.y = dot(r10.xyz, icb[r8.z+0].xyz);
  r14.x = dot(r11.xyz, icb[r8.y+0].xyz);
  r14.y = dot(r11.xyz, icb[r8.z+0].xyz);
  r12.xyz = t5.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r13.x = dot(r6.xyz, icb[r9.x+0].xyz);
  r13.y = dot(r6.xyz, icb[r9.y+0].xyz);
  r6.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r6.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r6.xyz = t5.SampleGrad(s0_s, r13.xy, r6.xyx, r10.xyx).xyz;
  r6.xyz = r6.xyz * r8.www;
  r6.xyz = r12.xyz * r8.xxx + r6.xyz;
  r2.w = r8.x + r8.w;
  r6.xyz = r6.xyz / r2.www;
  r4.xyz = r4.xyz / cb4[11].www;
  r4.w = dot(r3.xy, float2(17,0.100000001));
  r4.w = sin(r4.w);
  r4.w = 10000 * r4.w;
  r5.w = 0.100000001 * r3.z;
  r6.w = r3.y * 13 + r3.x;
  r6.w = sin(r6.w);
  r6.w = 0.100000001 + abs(r6.w);
  r4.w = r6.w * r4.w;
  r4.w = frac(r4.w);
  r5.w = r4.w * 17 + r5.w;
  r5.w = sin(r5.w);
  r5.w = 10000 * r5.w;
  r4.w = r3.z * 13 + r4.w;
  r4.w = sin(r4.w);
  r4.w = 0.100000001 + abs(r4.w);
  r4.w = r5.w * r4.w;
  r4.w = frac(r4.w);
  r10.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r5.w = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r5.www ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r9.zw = cmp(abs(v1.xy) < abs(v1.zz));
  r5.w = r9.z ? r10.w : 0;
  r9.zw = r9.ww ? float2(4.20389539e-045,1.40129846e-045) : float2(2.80259693e-045,4.20389539e-045);
  r9.zw = r5.ww ? float2(1.40129846e-045,2.80259693e-045) : r9.zw;
  r9.zw = (int2)-r10.zy + (int2)r9.zw;
  r9.zw = max(int2(0,0), (int2)r9.zw);
  r9.zw = min(int2(0,0), (int2)r9.zw);
  r5.w = dot(abs(v1.xyz), icb[r10.x+0].xyz);
  r5.w = -0.577300012 + r5.w;
  r5.w = saturate(2.36574411 * r5.w);
  r6.w = cmp((int)r10.z < (int)r10.y);
  r10.xy = r6.ww ? r10.zy : r10.yz;
  r6.w = cmp((int)r9.z < (int)r9.w);
  r9.zw = r6.ww ? r9.zw : r9.wz;
  r4.w = cmp(r4.w < r5.w);
  r9.zw = r4.ww ? r10.xy : r9.zw;
  r10.xyz = ddx_coarse(r4.xyz);
  r11.xyz = ddy_coarse(r4.xyz);
  r12.x = dot(r4.xyz, icb[r9.z+0].xyz);
  r12.y = dot(r4.xyz, icb[r9.w+0].xyz);
  r4.x = dot(r10.xyz, icb[r9.z+0].xyz);
  r4.y = dot(r10.xyz, icb[r9.w+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.z+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.w+0].xyz);
  r4.xyz = t5.SampleGrad(s0_s, r12.xy, r4.xyx, r10.xyx).xyz;
  r10.xyz = -cb0[67].xyz + r3.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r4.w = r4.w / cb4[12].x;
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb4[12].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r5.w ? 0 : r4.w;
  r4.xyz = r4.xyz + -r6.xyz;
  r4.xyz = r4.www * r4.xyz + r6.xyz;
  r4.xyz = cb4[5].xyz * r4.xyz;
  r6.xyz = r3.xyz / cb4[9].zzz;
  r10.xyz = ddx_coarse(r6.xyz);
  r11.xyz = ddy_coarse(r6.xyz);
  r12.x = dot(r6.xyz, icb[r8.y+0].xyz);
  r12.y = dot(r6.xyz, icb[r8.z+0].xyz);
  r13.x = dot(r10.xyz, icb[r8.y+0].xyz);
  r13.y = dot(r10.xyz, icb[r8.z+0].xyz);
  r14.x = dot(r11.xyz, icb[r8.y+0].xyz);
  r14.y = dot(r11.xyz, icb[r8.z+0].xyz);
  r12.xyz = t6.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r13.x = dot(r6.xyz, icb[r9.x+0].xyz);
  r13.y = dot(r6.xyz, icb[r9.y+0].xyz);
  r6.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r6.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r6.xyz = t6.SampleGrad(s0_s, r13.xy, r6.xyx, r10.xyx).xyz;
  r6.xyz = r6.xyz * r8.www;
  r6.xyz = r12.xyz * r8.xxx + r6.xyz;
  r6.xyz = r6.xyz / r2.www;
  r6.xyz = r6.xyz * cb4[7].xyz + -r4.xyz;
  r4.xyz = r0.xxx * r6.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r6.xyz = ddx_coarse(r5.xyz);
  r10.xyz = ddy_coarse(r5.xyz);
  r11.x = dot(r5.xyz, icb[r8.y+0].xyz);
  r11.y = dot(r5.xyz, icb[r8.z+0].xyz);
  r12.x = dot(r6.xyz, icb[r8.y+0].xyz);
  r12.y = dot(r6.xyz, icb[r8.z+0].xyz);
  r13.x = dot(r10.xyz, icb[r8.y+0].xyz);
  r13.y = dot(r10.xyz, icb[r8.z+0].xyz);
  r8.yz = t7.SampleGrad(s0_s, r11.xy, r12.yx, r13.yx).xy;
  r11.x = dot(r5.xyz, icb[r9.x+0].xyz);
  r11.y = dot(r5.xyz, icb[r9.y+0].xyz);
  r5.x = dot(r6.xyz, icb[r9.x+0].xyz);
  r5.y = dot(r6.xyz, icb[r9.y+0].xyz);
  r6.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r6.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r5.xy = t7.SampleGrad(s0_s, r11.xy, r5.xy, r6.xy).xy;
  r5.xy = r5.xy * r8.ww;
  r5.xy = r8.yz * r8.xx + r5.xy;
  r5.xy = r5.xy / r2.ww;
  r1.zw = t8.Sample(s0_s, r1.zw).xy;
  r1.w = r1.w + -r5.y;
  r6.x = saturate(r0.x * r1.w + r5.y);
  r1.w = cb4[12].z * r3.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb4[12].w * r1.w;
  r2.w = saturate(cb4[13].y + v1.z);
  r1.w = r2.w * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r6.y = saturate(cb4[13].z * r1.w);
  r1.w = cb4[13].w + r5.x;
  r1.z = cb4[14].x + r1.z;
  r1.z = r1.z + -r1.w;
  r0.x = saturate(r0.x * r1.z + r1.w);
  r1.zw = -cb0[129].xy + v4.xy;
  r5.xy = cb0[152].xx + r1.zw;
  r5.xy = (uint2)r5.xy;
  r2.w = (uint)r5.y << 1;
  r2.w = (int)r2.w + (int)r5.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t9.SampleBias(s4_s, r1.zw, cb0[143].y).x;
  r1.z = r2.w + r1.z;
  r1.z = cb4[14].y * r1.z;
  r1.z = 0.166666672 * r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r3.w = r1.x * cb0[65].z + -cb0[65].w;
  r3.w = 1 / r3.w;
  r2.w = r3.w + r2.w;
  r1.w = r1.w ? r1.y : r2.w;
  r1.w = r1.w / cb4[14].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[14].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = cb4[15].x * r1.w;
  r1.w = max(1, r1.w);
  r1.w = r2.w ? 1 : r1.w;
  r1.z = r1.z * r1.w + r1.y;
  r1.z = r1.x / r1.z;
  r1.z = min(v4.z, r1.z);
  r1.x = -r1.z * r1.y + r1.x;
  r1.x = r1.x / r1.z;
  r1.xyw = r2.xyz * r1.xxx + r3.xyz;
  r2.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.x = mad((int)v2.x, 36, 20);
  r2.w = cmp(0 < cb0[215].x);
  r3.x = t2[r0.x].val[4/4];
  r3.y = t2[r0.x].val[4/4+1];
  r0.x = cmp(0 < r3.y);
  if (r0.x != 0) {
    r3.yzw = r1.xyw * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r4.xyz = (int3)r3.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r0.x = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r4.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r4.xyz * r0.xxx + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r0.x = t1.SampleLevel(s1_s, r3.yzw, 0).x;
  } else {
    r3.y = mad((int)v2.x, 36, 18);
    r3.y = t2[r3.y].val[12/4];
    r3.y = cmp(0 < r3.y);
    r3.y = r2.w ? r3.y : 0;
    r0.x = r3.y ? cb1[5].x : 1;
  }
  r3.y = 0.0799999982 * r6.y;
  r4.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r3.yzw = r6.xxx * r4.xyz + r3.yyy;
  r4.xyz = -r2.xyz * r6.xxx + r2.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r3.yzw = r3.yzw * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r5.xyz = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r4.www ? r5.xyz : r4.xyz;
  r3.yzw = r4.www ? float3(0,0,0) : r3.yzw;
  r4.w = dot(r3.yzw, float3(0.300000012,0.589999974,0.109999999));
  r5.x = r4.w * 2.04040003 + -0.332399994;
  r5.x = r4.w * -4.79510021 + r5.x;
  r4.w = r4.w * 2.75519991 + r5.x;
  r4.w = 1.33200002 + r4.w;
  r4.w = max(1, r4.w);
  r5.xyz = r7.ywy * r7.ywx;
  r8.yw = r7.ww * r7.yx;
  r5.x = r7.x * r7.x + -r5.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r7.ywx;
  r8.xz = r5.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r5.x = 0.429042608 * r5.x;
  r9.x = 0.886227548;
  r5.y = dot(cb1[6].xyzw, r9.xyzw);
  r5.z = dot(cb1[9].xyzw, r8.xyzw);
  r5.y = r5.y + r5.z;
  r10.x = cb1[12].x * r5.x + r5.y;
  r5.y = dot(cb1[7].xyzw, r9.xyzw);
  r5.z = dot(cb1[10].xyzw, r8.xyzw);
  r5.y = r5.y + r5.z;
  r10.y = cb1[12].y * r5.x + r5.y;
  r5.y = dot(cb1[8].xyzw, r9.xyzw);
  r5.z = dot(cb1[11].xyzw, r8.xyzw);
  r5.y = r5.y + r5.z;
  r10.z = cb1[12].z * r5.x + r5.y;
  r5.xyz = max(float3(0,0,0), r10.xyz);
  r5.xyz = r2.www ? r5.xyz : 0;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r4.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r5.xyz = r8.xyz * r5.xyz;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r4.x = cmp(0 < cb0[140].x);
  if (r4.x != 0) {
    r4.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r8.x = t2[r4.x].val[0/4];
    r8.y = t2[r4.x].val[0/4+1];
    r8.z = t2[r4.x].val[0/4+2];
    r8.xyz = -r8.xyz + r1.xyw;
    r4.x = t2[r4.y].val[0/4];
    r4.y = t2[r4.y].val[0/4+1];
    r4.z = t2[r4.y].val[0/4+2];
    r4.xyz = float3(1,1,1) + r4.xyz;
    r4.xyz = cmp(r4.xyz < abs(r8.xyz));
    r4.x = (int)r4.y | (int)r4.x;
    r4.x = (int)r4.z | (int)r4.x;
    r1.x = dot(r1.xyw, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.yzw = r4.xxx ? r1.xyw : r0.yzw;
  }
  r1.xyw = cb0[145].yyy * r3.yzw + r5.xyz;
  r0.yzw = r1.xyw + r0.yzw;
  r1.xyw = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyw = frac(r1.xyw);
  r1.xyw = r1.xyw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyw = r1.xyw * r1.xyy;
  r1.x = dot(r1.xyw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r7.xyw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r2.w * r4.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.yzw;
  o0.w = 0;
  o1.w = r3.x;
  o2.w = 0.505882382;
  o2.xy = r6.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r1.z;
  return;
}