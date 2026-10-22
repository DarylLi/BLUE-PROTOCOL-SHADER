// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[16];
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
  float4 v2 : COLOR1,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r5.xyz = r4.xyz / cb5[8].zzz;
  r1.zw = t6.SampleBias(s3_s, r5.xz, cb0[143].y).xy;
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r1.zw;
  r1.zw = t6.SampleBias(s3_s, r5.yz, cb0[143].y).xy;
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
  r7.xy = t6.SampleBias(s3_s, r5.xy, cb0[143].y).xy;
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
  r6.xyz = cb5[8].www * r6.xyz + r7.xyz;
  r1.zw = r4.xy / cb5[9].zz;
  r7.xy = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
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
  r7.xyz = cb5[9].www * r7.xyz + r8.xyz;
  r0.w = v1.z * 0.5 + 0.5;
  r0.w = saturate(r0.w * cb5[10].x + cb5[10].w);
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
  r8.yzw = r7.xyz * r0.www;
  r2.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r2.w = sqrt(r2.w);
  r9.xyz = -cb4[5].xyz / r2.www;
  r2.w = dot(r9.xyz, r8.yzw);
  r2.w = 1 + r2.w;
  r10.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r10.xyz, r10.xyz);
  r3.w = sqrt(r3.w);
  r10.xyz = r10.xyz / r3.www;
  r3.w = saturate(dot(-r10.xyz, r9.xyz));
  r4.w = 1 + -cb3[1].x;
  r3.w = saturate(r4.w + r3.w);
  r2.w = r3.w * r2.w;
  r3.w = dot(r8.yzw, r2.xyz);
  r3.w = max(0, r3.w);
  r3.w = 1 + -r3.w;
  r3.w = max(9.99999975e-005, abs(r3.w));
  r3.w = log2(r3.w);
  r5.w = cb3[1].y * r3.w;
  r5.w = exp2(r5.w);
  r6.w = 1 + -cb3[0].w;
  r5.w = r5.w * r6.w + cb3[0].w;
  r6.w = cmp(r5.w >= cb3[0].y);
  r6.w = r6.w ? 1.000000 : 0;
  r5.w = r6.w * r5.w;
  r6.w = r7.z * r0.w + 1;
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb3[0].x * r6.w;
  r6.w = exp2(r6.w);
  r6.w = min(1, r6.w);
  r6.w = r7.w ? 0 : r6.w;
  r5.w = r6.w * r5.w;
  r6.w = -r7.z * r0.w + 1;
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb3[1].z * r6.w;
  r6.w = exp2(r6.w);
  r6.w = min(1, r6.w);
  r6.w = r7.w ? 0 : r6.w;
  r5.w = r6.w * r5.w;
  r5.w = cb3[0].z * r5.w;
  r2.w = r5.w * r2.w;
  r9.xyz = cb4[4].xyz * r2.www;
  r2.w = dot(-cb4[8].xyz, -cb4[8].xyz);
  r2.w = sqrt(r2.w);
  r11.xyz = -cb4[8].xyz / r2.www;
  r2.w = dot(r11.xyz, r8.yzw);
  r2.w = 1 + r2.w;
  r6.w = saturate(dot(-r10.xyz, r11.xyz));
  r4.w = saturate(r6.w + r4.w);
  r2.w = r4.w * r2.w;
  r2.w = r2.w * r5.w;
  r10.xyz = cb4[9].xyz * r2.www;
  r10.xyz = cb4[1].yyy * r10.xyz;
  r9.xyz = r9.xyz * cb4[1].xxx + r10.xyz;
  r9.xyz = cb3[2].xyz * r9.xyz;
  r10.xyz = cb5[2].xyz * r9.xyz;
  r9.xyz = -r9.xyz * cb5[2].xyz + cb5[3].xyz;
  r9.xyz = cb5[11].xxx * r9.xyz + r10.xyz;
  r10.xyz = r3.xyz / cb5[8].zzz;
  r11.xyzw = cmp(abs(r8.zwwy) < abs(r8.yyzz));
  r2.w = r11.y ? r11.x : 0;
  r11.xyz = r11.zzz ? float3(1,2,0) : float3(2,0,1);
  r11.xyz = r2.www ? float3(0,1.40129846e-045,2.80259693e-045) : r11.xyz;
  r12.xy = cmp(abs(r8.yz) < abs(r8.ww));
  r2.w = r11.w ? r12.x : 0;
  r12.xyz = r12.yyy ? float3(2,1,3) : float3(1,3,2);
  r12.xyz = r2.www ? float3(3,2,1) : r12.xyz;
  r12.xyz = (int3)-r11.xyz + (int3)r12.xyz;
  r12.xyz = max(int3(0,0,0), (int3)r12.xyz);
  r12.xyz = min(int3(2,2,2), (int3)r12.xyz);
  r13.x = dot(abs(r8.yzw), icb[r11.x+0].xyz);
  r13.y = dot(abs(r8.yzw), icb[r12.x+0].xyz);
  r11.xw = float2(-0.577300012,-0.577300012) + r13.xy;
  r11.xw = saturate(float2(2.36574411,2.36574411) * r11.xw);
  r2.w = cmp((int)r11.z < (int)r11.y);
  r11.yz = r2.ww ? r11.zy : r11.yz;
  r2.w = cmp((int)r12.z < (int)r12.y);
  r12.xy = r2.ww ? r12.zy : r12.yz;
  r13.xyz = ddx_coarse(r10.xyz);
  r14.xyz = ddy_coarse(r10.xyz);
  r15.x = dot(r10.xyz, icb[r11.y+0].xyz);
  r15.y = dot(r10.xyz, icb[r11.z+0].xyz);
  r16.x = dot(r13.xyz, icb[r11.y+0].xyz);
  r16.y = dot(r13.xyz, icb[r11.z+0].xyz);
  r17.x = dot(r14.xyz, icb[r11.y+0].xyz);
  r17.y = dot(r14.xyz, icb[r11.z+0].xyz);
  r15.xyz = t8.SampleGrad(s0_s, r15.xy, r16.xyx, r17.xyx).xyz;
  r16.x = dot(r10.xyz, icb[r12.x+0].xyz);
  r16.y = dot(r10.xyz, icb[r12.y+0].xyz);
  r10.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r10.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r10.xyz = t8.SampleGrad(s0_s, r16.xy, r10.xyx, r13.xyx).xyz;
  r10.xyz = r10.xyz * r11.www;
  r10.xyz = r15.xyz * r11.xxx + r10.xyz;
  r2.w = r11.x + r11.w;
  r10.xyz = r10.xyz / r2.www;
  r4.xyz = r4.xyz / cb5[11].www;
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
  r13.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r5.w = r13.y ? r13.x : 0;
  r13.xyz = r13.zzz ? float3(1,2,0) : float3(2,0,1);
  r13.xyz = r5.www ? float3(0,1.40129846e-045,2.80259693e-045) : r13.xyz;
  r12.zw = cmp(abs(v1.xy) < abs(v1.zz));
  r5.w = r12.z ? r13.w : 0;
  r12.zw = r12.ww ? float2(4.20389539e-045,1.40129846e-045) : float2(2.80259693e-045,4.20389539e-045);
  r12.zw = r5.ww ? float2(1.40129846e-045,2.80259693e-045) : r12.zw;
  r12.zw = (int2)-r13.zy + (int2)r12.zw;
  r12.zw = max(int2(0,0), (int2)r12.zw);
  r12.zw = min(int2(0,0), (int2)r12.zw);
  r5.w = dot(abs(v1.xyz), icb[r13.x+0].xyz);
  r5.w = -0.577300012 + r5.w;
  r5.w = saturate(2.36574411 * r5.w);
  r6.w = cmp((int)r13.z < (int)r13.y);
  r13.xy = r6.ww ? r13.zy : r13.yz;
  r6.w = cmp((int)r12.z < (int)r12.w);
  r12.zw = r6.ww ? r12.zw : r12.wz;
  r4.w = cmp(r4.w < r5.w);
  r12.zw = r4.ww ? r13.xy : r12.zw;
  r13.xyz = ddx_coarse(r4.xyz);
  r14.xyz = ddy_coarse(r4.xyz);
  r15.x = dot(r4.xyz, icb[r12.z+0].xyz);
  r15.y = dot(r4.xyz, icb[r12.w+0].xyz);
  r4.x = dot(r13.xyz, icb[r12.z+0].xyz);
  r4.y = dot(r13.xyz, icb[r12.w+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.z+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.w+0].xyz);
  r4.xyz = t8.SampleGrad(s0_s, r15.xy, r4.xyx, r13.xyx).xyz;
  r13.xyz = -cb0[67].xyz + r3.xyz;
  r4.w = dot(r13.xyz, r13.xyz);
  r4.w = sqrt(r4.w);
  r4.w = r4.w / cb5[12].x;
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb5[12].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r5.w ? 0 : r4.w;
  r4.xyz = r4.xyz + -r10.xyz;
  r4.xyz = r4.www * r4.xyz + r10.xyz;
  r4.xyz = cb5[5].xyz * r4.xyz;
  r10.xyz = r3.xyz / cb5[9].zzz;
  r13.xyz = ddx_coarse(r10.xyz);
  r14.xyz = ddy_coarse(r10.xyz);
  r15.x = dot(r10.xyz, icb[r11.y+0].xyz);
  r15.y = dot(r10.xyz, icb[r11.z+0].xyz);
  r16.x = dot(r13.xyz, icb[r11.y+0].xyz);
  r16.y = dot(r13.xyz, icb[r11.z+0].xyz);
  r17.x = dot(r14.xyz, icb[r11.y+0].xyz);
  r17.y = dot(r14.xyz, icb[r11.z+0].xyz);
  r15.xyz = t9.SampleGrad(s0_s, r15.xy, r16.xyx, r17.xyx).xyz;
  r16.x = dot(r10.xyz, icb[r12.x+0].xyz);
  r16.y = dot(r10.xyz, icb[r12.y+0].xyz);
  r10.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r10.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r10.xyz = t9.SampleGrad(s0_s, r16.xy, r10.xyx, r13.xyx).xyz;
  r10.xyz = r10.xyz * r11.www;
  r10.xyz = r15.xyz * r11.xxx + r10.xyz;
  r10.xyz = r10.xyz / r2.www;
  r6.xyz = float3(0,0,1) + r6.xyz;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.z / r0.x;
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = saturate(r0.x * cb5[10].x + cb5[10].w);
  r0.x = r0.x + r0.x;
  r0.x = min(1, r0.x);
  r6.xyz = r10.xyz * cb5[7].xyz + -r4.xyz;
  r4.xyz = r0.xxx * r6.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r6.xyz = ddx_coarse(r5.xyz);
  r10.xyz = ddy_coarse(r5.xyz);
  r13.x = dot(r5.xyz, icb[r11.y+0].xyz);
  r13.y = dot(r5.xyz, icb[r11.z+0].xyz);
  r14.x = dot(r6.xyz, icb[r11.y+0].xyz);
  r14.y = dot(r6.xyz, icb[r11.z+0].xyz);
  r15.x = dot(r10.xyz, icb[r11.y+0].xyz);
  r15.y = dot(r10.xyz, icb[r11.z+0].xyz);
  r0.yz = t10.SampleGrad(s0_s, r13.xy, r14.yx, r15.yx).xy;
  r13.x = dot(r5.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r5.xyz, icb[r12.y+0].xyz);
  r5.x = dot(r6.xyz, icb[r12.x+0].xyz);
  r5.y = dot(r6.xyz, icb[r12.y+0].xyz);
  r6.x = dot(r10.xyz, icb[r12.x+0].xyz);
  r6.y = dot(r10.xyz, icb[r12.y+0].xyz);
  r5.xy = t10.SampleGrad(s0_s, r13.xy, r5.xy, r6.xy).xy;
  r5.xy = r5.xy * r11.ww;
  r0.yz = r0.yz * r11.xx + r5.xy;
  r0.yz = r0.yz / r2.ww;
  r1.zw = t11.Sample(s0_s, r1.zw).xy;
  r1.w = r1.w + -r0.z;
  r5.x = saturate(r0.x * r1.w + r0.z);
  r0.z = cb5[12].z * r3.w;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[12].w * r0.z;
  r1.w = saturate(cb5[13].y + v1.z);
  r0.z = r1.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r5.y = saturate(cb5[13].z * r0.z);
  r0.y = cb5[13].w + r0.y;
  r0.z = cb5[14].x + r1.z;
  r0.z = r0.z + -r0.y;
  r0.x = saturate(r0.x * r0.z + r0.y);
  r0.yz = -cb0[129].xy + v4.xy;
  r1.zw = cb0[152].xx + r0.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t12.SampleBias(s5_s, r0.yz, cb0[143].y).x;
  r0.y = r1.z + r0.y;
  r0.y = cb5[14].y * r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = cmp(cb0[31].w < 1);
  r1.z = r1.x * cb0[65].x + cb0[65].y;
  r1.w = r1.x * cb0[65].z + -cb0[65].w;
  r1.w = 1 / r1.w;
  r1.z = r1.z + r1.w;
  r0.z = r0.z ? r1.y : r1.z;
  r0.z = r0.z / cb5[14].z;
  r1.z = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb5[14].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = cb5[15].x * r0.z;
  r0.z = max(1, r0.z);
  r0.z = r1.z ? 1 : r0.z;
  r0.y = r0.y * r0.z + r1.y;
  r0.y = r1.x / r0.y;
  r0.y = min(v4.z, r0.y);
  r0.z = -r0.y * r1.y + r1.x;
  r0.z = r0.z / r0.y;
  r1.xyz = r2.xyz * r0.zzz + r3.xyz;
  r0.z = cmp(0.00100000005 < abs(v2.w));
  r2.xy = floor(v4.xy);
  r1.w = dot(r2.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.x = cmp(v2.w < 0);
  r2.y = 1 + v2.w;
  r2.y = cmp(r1.w < r2.y);
  r1.w = cmp(v2.w < r1.w);
  r1.w = r2.x ? r2.y : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.z = r0.z ? r1.w : 0;
  if (r0.z != 0) discard;
  r2.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.x = cmp(0 < cb0[215].x);
  r0.z = cmp(0 < cb1[20].z);
  if (r0.z != 0) {
    r3.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
    r3.xyz = cb0[213].xyz * r3.xyz;
    r4.xyz = (int3)r3.xyz;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r0.z = 1 + cb0[213].w;
    r3.xyz = r3.xyz / r4.www;
    r3.xyz = frac(r3.xyz);
    r3.xyz = cb0[213].www * r3.xyz;
    r3.xyz = r4.xyz * r0.zzz + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = cb0[214].xyz * r3.xyz;
    r0.z = t1.SampleLevel(s1_s, r3.xyz, 0).x;
  } else {
    r1.w = cmp(0 < cb1[18].w);
    r1.w = r0.x ? r1.w : 0;
    r0.z = r1.w ? cb2[5].x : 1;
  }
  r1.w = 0.0799999982 * r5.y;
  r3.xyz = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r3.xyz = r5.xxx * r3.xyz + r1.www;
  r4.xyz = -r2.xyz * r5.xxx + r2.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r1.www ? r6.xyz : r4.xyz;
  r3.xyz = r1.www ? float3(0,0,0) : r3.xyz;
  r1.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  if (r0.x != 0) {
    r6.xyz = r1.xyz * cb2[1].xyz + cb2[0].xyz;
    r6.xyz = max(cb2[2].xyz, r6.xyz);
    r6.xyz = min(cb2[3].xyz, r6.xyz);
    r10.xyzw = t3.Sample(s2_s, r6.xyz).xyzw;
    r11.xyzw = t4.Sample(s1_s, r6.xyz).xyzw;
    r6.xyzw = t5.Sample(s1_s, r6.xyz).xyzw;
    r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r8.zwy;
    r13.xw = r10.xw;
    r13.y = r11.x;
    r13.z = r6.x;
    r12.x = 0.886227548;
    r13.x = dot(r13.xyzw, r12.xyzw);
    r14.x = r10.y;
    r14.yw = r11.yw;
    r14.z = r6.y;
    r13.y = dot(r14.xyzw, r12.xyzw);
    r6.x = r10.z;
    r6.y = r11.z;
    r13.z = dot(r6.xyzw, r12.xyzw);
    r6.xyz = max(float3(0,0,0), r13.xyz);
    r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r8.x = 1;
    r10.xyzw = r0.xxxx ? cb2[4].wxyz : r8.xyzw;
    r0.x = 1 + -r10.x;
    r0.x = -r0.x * r0.x + 1;
    r7.xyz = r7.xyz * r0.www + -r10.yzw;
    r7.xyz = r0.xxx * r7.xyz + r10.yzw;
    r0.w = saturate(dot(r10.yzw, r8.yzw));
    r2.w = 1 + -r0.w;
    r10.y = r0.x * r2.w + r0.w;
  } else {
    r7.xyz = r8.yzw;
    r10.xy = float2(1,1);
  }
  r11.x = t2[0].val[0/4];
  r11.y = t2[0].val[0/4+1];
  r11.z = t2[0].val[0/4+2];
  r11.w = t2[0].val[0/4+3];
  r7.w = 1;
  r11.x = dot(r11.xyzw, r7.xyzw);
  r12.x = t2[1].val[0/4];
  r12.y = t2[1].val[0/4+1];
  r12.z = t2[1].val[0/4+2];
  r12.w = t2[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r7.xyzw);
  r12.x = t2[2].val[0/4];
  r12.y = t2[2].val[0/4+1];
  r12.z = t2[2].val[0/4+2];
  r12.w = t2[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r7.xyzw);
  r12.xyzw = r7.xyzz * r7.yzzx;
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
  r0.x = r7.y * r7.y;
  r0.x = r7.x * r7.x + -r0.x;
  r7.x = t2[6].val[0/4];
  r7.y = t2[6].val[0/4+1];
  r7.z = t2[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r7.xyz = r7.xyz * r0.xxx + r11.xyz;
  r7.xyz = max(float3(0,0,0), r7.xyz);
  r7.xyz = cb0[187].xyz * r7.xyz;
  r0.x = r10.x * r10.y;
  r7.xyz = r7.xyz * r0.xxx;
  r6.xyz = r6.xyz * cb0[157].xyz + r7.xyz;
  r0.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r4.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = max(float3(0,0,0), r9.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r7.xyz = -cb1[5].xyz + r1.xyz;
    r9.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r9.xyz < abs(r7.xyz));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r1.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r3.xyz + r6.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r0.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r8.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.x * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r0.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r5.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r0.y;
  return;
}