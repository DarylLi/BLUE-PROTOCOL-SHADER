// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float3 v2 : TEXCOORD9,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v3.z;
  r1.y = 1;
  r1.xy = v3.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v3.yyyy;
  r2.xyzw = v3.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v3.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r5.xyz = r4.xyz / cb4[8].zzz;
  r1.zw = t11.SampleBias(s2_s, r5.xz, cb0[143].y).xy;
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r1.zw;
  r1.zw = t11.SampleBias(s2_s, r5.yz, cb0[143].y).xy;
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
  r7.xy = t11.SampleBias(s2_s, r5.xy, cb0[143].y).xy;
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
  r7.xy = t12.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
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
  r8.xyz = r7.xyz * r0.www;
  r2.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r2.w = sqrt(r2.w);
  r9.xyz = -cb3[5].xyz / r2.www;
  r2.w = dot(r9.xyz, r8.xyz);
  r2.w = 1 + r2.w;
  r10.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r10.xyz, r10.xyz);
  r3.w = sqrt(r3.w);
  r10.xyz = r10.xyz / r3.www;
  r3.w = saturate(dot(-r10.xyz, r9.xyz));
  r4.w = 1 + -cb2[1].x;
  r3.w = saturate(r4.w + r3.w);
  r2.w = r3.w * r2.w;
  r3.w = dot(r8.xyz, r2.xyz);
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
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb2[0].x * r6.w;
  r6.w = exp2(r6.w);
  r6.w = min(1, r6.w);
  r6.w = r7.w ? 0 : r6.w;
  r5.w = r6.w * r5.w;
  r6.w = -r7.z * r0.w + 1;
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb2[1].z * r6.w;
  r6.w = exp2(r6.w);
  r6.w = min(1, r6.w);
  r6.w = r7.w ? 0 : r6.w;
  r5.w = r6.w * r5.w;
  r5.w = cb2[0].z * r5.w;
  r2.w = r5.w * r2.w;
  r9.xyz = cb3[4].xyz * r2.www;
  r2.w = dot(-cb3[8].xyz, -cb3[8].xyz);
  r2.w = sqrt(r2.w);
  r11.xyz = -cb3[8].xyz / r2.www;
  r2.w = dot(r11.xyz, r8.xyz);
  r2.w = 1 + r2.w;
  r6.w = saturate(dot(-r10.xyz, r11.xyz));
  r4.w = saturate(r6.w + r4.w);
  r2.w = r4.w * r2.w;
  r2.w = r2.w * r5.w;
  r10.xyz = cb3[9].xyz * r2.www;
  r10.xyz = cb3[1].yyy * r10.xyz;
  r9.xyz = r9.xyz * cb3[1].xxx + r10.xyz;
  r9.xyz = cb2[2].xyz * r9.xyz;
  r10.xyz = cb4[2].xyz * r9.xyz;
  r9.xyz = -r9.xyz * cb4[2].xyz + cb4[3].xyz;
  r9.xyz = cb4[11].xxx * r9.xyz + r10.xyz;
  r10.xyz = r3.xyz / cb4[8].zzz;
  r11.xyzw = cmp(abs(r8.yzzx) < abs(r8.xxyy));
  r2.w = r11.y ? r11.x : 0;
  r11.xyz = r11.zzz ? float3(1,2,0) : float3(2,0,1);
  r11.xyz = r2.www ? float3(0,1.40129846e-045,2.80259693e-045) : r11.xyz;
  r12.xy = cmp(abs(r8.xy) < abs(r8.zz));
  r2.w = r11.w ? r12.x : 0;
  r12.xyz = r12.yyy ? float3(2,1,3) : float3(1,3,2);
  r12.xyz = r2.www ? float3(3,2,1) : r12.xyz;
  r12.xyz = (int3)-r11.xyz + (int3)r12.xyz;
  r12.xyz = max(int3(0,0,0), (int3)r12.xyz);
  r12.xyz = min(int3(2,2,2), (int3)r12.xyz);
  r13.x = dot(abs(r8.xyz), icb[r11.x+0].xyz);
  r13.y = dot(abs(r8.xyz), icb[r12.x+0].xyz);
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
  r15.xyz = t13.SampleGrad(s0_s, r15.xy, r16.xyx, r17.xyx).xyz;
  r16.x = dot(r10.xyz, icb[r12.x+0].xyz);
  r16.y = dot(r10.xyz, icb[r12.y+0].xyz);
  r10.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r10.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r10.xyz = t13.SampleGrad(s0_s, r16.xy, r10.xyx, r13.xyx).xyz;
  r10.xyz = r10.xyz * r11.www;
  r10.xyz = r15.xyz * r11.xxx + r10.xyz;
  r2.w = r11.x + r11.w;
  r10.xyz = r10.xyz / r2.www;
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
  r4.xyz = t13.SampleGrad(s0_s, r15.xy, r4.xyx, r13.xyx).xyz;
  r13.xyz = -cb0[67].xyz + r3.xyz;
  r4.w = dot(r13.xyz, r13.xyz);
  r4.w = sqrt(r4.w);
  r4.w = r4.w / cb4[12].x;
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb4[12].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r5.w ? 0 : r4.w;
  r4.xyz = r4.xyz + -r10.xyz;
  r4.xyz = r4.www * r4.xyz + r10.xyz;
  r4.xyz = cb4[5].xyz * r4.xyz;
  r10.xyz = r3.xyz / cb4[9].zzz;
  r13.xyz = ddx_coarse(r10.xyz);
  r14.xyz = ddy_coarse(r10.xyz);
  r15.x = dot(r10.xyz, icb[r11.y+0].xyz);
  r15.y = dot(r10.xyz, icb[r11.z+0].xyz);
  r16.x = dot(r13.xyz, icb[r11.y+0].xyz);
  r16.y = dot(r13.xyz, icb[r11.z+0].xyz);
  r17.x = dot(r14.xyz, icb[r11.y+0].xyz);
  r17.y = dot(r14.xyz, icb[r11.z+0].xyz);
  r15.xyz = t14.SampleGrad(s0_s, r15.xy, r16.xyx, r17.xyx).xyz;
  r16.x = dot(r10.xyz, icb[r12.x+0].xyz);
  r16.y = dot(r10.xyz, icb[r12.y+0].xyz);
  r10.x = dot(r13.xyz, icb[r12.x+0].xyz);
  r10.y = dot(r13.xyz, icb[r12.y+0].xyz);
  r13.x = dot(r14.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r14.xyz, icb[r12.y+0].xyz);
  r10.xyz = t14.SampleGrad(s0_s, r16.xy, r10.xyx, r13.xyx).xyz;
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
  r0.x = saturate(r0.x * cb4[10].x + cb4[10].w);
  r0.x = r0.x + r0.x;
  r0.x = min(1, r0.x);
  r6.xyz = r10.xyz * cb4[7].xyz + -r4.xyz;
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
  r0.yz = t15.SampleGrad(s0_s, r13.xy, r14.yx, r15.yx).xy;
  r13.x = dot(r5.xyz, icb[r12.x+0].xyz);
  r13.y = dot(r5.xyz, icb[r12.y+0].xyz);
  r5.x = dot(r6.xyz, icb[r12.x+0].xyz);
  r5.y = dot(r6.xyz, icb[r12.y+0].xyz);
  r6.x = dot(r10.xyz, icb[r12.x+0].xyz);
  r6.y = dot(r10.xyz, icb[r12.y+0].xyz);
  r5.xy = t15.SampleGrad(s0_s, r13.xy, r5.xy, r6.xy).xy;
  r5.xy = r5.xy * r11.ww;
  r0.yz = r0.yz * r11.xx + r5.xy;
  r0.yz = r0.yz / r2.ww;
  r1.zw = t16.Sample(s0_s, r1.zw).xy;
  r1.w = r1.w + -r0.z;
  r5.x = saturate(r0.x * r1.w + r0.z);
  r0.z = cb4[12].z * r3.w;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb4[12].w * r0.z;
  r1.w = saturate(cb4[13].y + v1.z);
  r0.z = r1.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r5.y = saturate(cb4[13].z * r0.z);
  r0.y = cb4[13].w + r0.y;
  r0.z = cb4[14].x + r1.z;
  r0.z = r0.z + -r0.y;
  r0.x = saturate(r0.x * r0.z + r0.y);
  r0.yz = -cb0[129].xy + v3.xy;
  r1.zw = cb0[152].xx + r0.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t17.SampleBias(s4_s, r0.yz, cb0[143].y).x;
  r0.y = r1.z + r0.y;
  r0.y = cb4[14].y * r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = cmp(cb0[31].w < 1);
  r1.z = r1.x * cb0[65].x + cb0[65].y;
  r1.w = r1.x * cb0[65].z + -cb0[65].w;
  r1.w = 1 / r1.w;
  r1.z = r1.z + r1.w;
  r0.z = r0.z ? r1.y : r1.z;
  r0.z = r0.z / cb4[14].z;
  r1.z = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[14].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = cb4[15].x * r0.z;
  r0.z = max(1, r0.z);
  r0.z = r1.z ? 1 : r0.z;
  r0.y = r0.y * r0.z + r1.y;
  r0.y = r1.x / r0.y;
  r0.y = min(v3.z, r0.y);
  r0.z = -r0.y * r1.y + r1.x;
  r0.z = r0.z / r0.y;
  r1.xyz = r2.xyz * r0.zzz + r3.xyz;
  r2.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r3.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
  r3.xyz = cb0[213].xyz * r3.xyz;
  r4.xyz = (int3)r3.xyz;
  r4.w = 0;
  r4.xyzw = t0.Load(r4.xyzw).xyzw;
  r4.xyzw = (uint4)r4.xyzw;
  r0.x = 1 + cb0[213].w;
  r3.xyz = r3.xyz / r4.www;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cb0[213].www * r3.xyz;
  r3.xyz = r4.xyz * r0.xxx + r3.xyz;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = cb0[214].xyz * r3.xyz;
  r0.x = cmp(0 < cb1[20].z);
  if (r0.x != 0) {
    r0.x = t9.SampleLevel(s1_s, r3.xyz, 0).x;
  } else {
    r0.x = 1;
  }
  r0.z = 0.0799999982 * r5.y;
  r4.xyz = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r4.xyz = r5.xxx * r4.xyz + r0.zzz;
  r6.xyz = -r2.xyz * r5.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r0.z = cmp(0 != cb0[183].w);
  r10.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.zzz ? r10.xyz : r6.xyz;
  r4.xyz = r0.zzz ? float3(0,0,0) : r4.xyz;
  r0.z = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.z * 2.04040003 + -0.332399994;
  r1.w = r0.z * -4.79510021 + r1.w;
  r0.z = r0.z * 2.75519991 + r1.w;
  r0.z = 1.33200002 + r0.z;
  r0.z = max(1, r0.z);
  r10.xyz = t1.SampleLevel(s1_s, r3.xyz, 0).zxy;
  r11.xyzw = t2.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t4.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t6.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r10.yyyy;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r10.zzzz;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = r13.xyzw * r10.xxxx;
  r13.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r13.wxyz;
  r14.xyzw = t3.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t5.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = t7.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = r14.xyzw * r10.yyyy;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r10.zzzz;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyzw = r16.xyzw * r10.xxxx;
  r16.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r16.xyzw;
  r17.xyz = r8.yzy * r8.yzx;
  r18.yw = r8.zz * r8.yx;
  r1.w = r8.x * r8.x + -r17.x;
  r19.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r8.yzx;
  r18.xz = r17.zy * float2(1,3) + float2(0,-1);
  r17.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r18.xyzw;
  r1.w = 0.429042608 * r1.w;
  r18.x = r10.y;
  r18.yzw = r11.yzw;
  r19.x = 0.886227548;
  r2.w = dot(r18.xyzw, r19.xyzw);
  r11.yzw = r14.xyz;
  r3.w = dot(r11.xyzw, r17.xyzw);
  r2.w = r3.w + r2.w;
  r11.x = r14.w * r1.w + r2.w;
  r14.x = r10.z;
  r14.yzw = r12.yzw;
  r2.w = dot(r14.xyzw, r19.xyzw);
  r12.yzw = r15.xyz;
  r3.w = dot(r12.xyzw, r17.xyzw);
  r2.w = r3.w + r2.w;
  r11.y = r15.w * r1.w + r2.w;
  r10.yzw = r13.yzw;
  r2.w = dot(r10.xyzw, r19.xyzw);
  r13.yzw = r16.xyz;
  r3.w = dot(r13.xyzw, r17.xyzw);
  r2.w = r3.w + r2.w;
  r11.z = r16.w * r1.w + r2.w;
  r10.xyz = max(float3(0,0,0), r11.xyz);
  r10.xyz = cb0[157].xyz * r10.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r3.xyz = t8.SampleLevel(s1_s, r3.xyz, 0).xyz;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.w = dot(r3.xyz, r3.xyz);
    r11.x = sqrt(r1.w);
    r1.w = max(9.99999975e-005, r11.x);
    r3.xyz = r3.xyz / r1.www;
    r1.w = 1 + -r11.x;
    r1.w = -r1.w * r1.w + 1;
    r7.xyz = r7.xyz * r0.www + -r3.xyz;
    r7.xyz = r1.www * r7.xyz + r3.xyz;
    r0.w = saturate(dot(r3.xyz, r8.xyz));
    r2.w = 1 + -r0.w;
    r11.y = r1.w * r2.w + r0.w;
  } else {
    r7.xyz = r8.xyz;
    r11.xy = float2(1,1);
  }
  r3.x = t10[0].val[0/4];
  r3.y = t10[0].val[0/4+1];
  r3.z = t10[0].val[0/4+2];
  r3.w = t10[0].val[0/4+3];
  r7.w = 1;
  r3.x = dot(r3.xyzw, r7.xyzw);
  r12.x = t10[1].val[0/4];
  r12.y = t10[1].val[0/4+1];
  r12.z = t10[1].val[0/4+2];
  r12.w = t10[1].val[0/4+3];
  r3.y = dot(r12.xyzw, r7.xyzw);
  r12.x = t10[2].val[0/4];
  r12.y = t10[2].val[0/4+1];
  r12.z = t10[2].val[0/4+2];
  r12.w = t10[2].val[0/4+3];
  r3.z = dot(r12.xyzw, r7.xyzw);
  r12.xyzw = r7.xyzz * r7.yzzx;
  r13.x = t10[3].val[0/4];
  r13.y = t10[3].val[0/4+1];
  r13.z = t10[3].val[0/4+2];
  r13.w = t10[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t10[4].val[0/4];
  r14.y = t10[4].val[0/4+1];
  r14.z = t10[4].val[0/4+2];
  r14.w = t10[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t10[5].val[0/4];
  r14.y = t10[5].val[0/4+1];
  r14.z = t10[5].val[0/4+2];
  r14.w = t10[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.w = r7.y * r7.y;
  r0.w = r7.x * r7.x + -r0.w;
  r7.x = t10[6].val[0/4];
  r7.y = t10[6].val[0/4+1];
  r7.z = t10[6].val[0/4+2];
  r3.xyz = r13.xyz + r3.xyz;
  r3.xyz = r7.xyz * r0.www + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = cb0[187].xyz * r3.xyz;
  r0.w = r11.x * r11.y;
  r3.xyz = r3.xyz * r0.www;
  r3.xyz = r10.xyz * float3(0.318309873,0.318309873,0.318309873) + r3.xyz;
  r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r6.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r3.xyz = r7.xyz * r3.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = max(float3(0,0,0), r9.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r7.xyz = -cb1[5].xyz + r1.xyz;
    r9.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r9.xyz < abs(r7.xyz));
    r1.w = (int)r7.y | (int)r7.x;
    r1.w = (int)r7.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r1.www ? r1.xyz : r6.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.xyz + r3.xyz;
  r1.xyz = r1.xyz + r6.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r8.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.z = r0.w * r0.z;
  r0.z = r0.z * cb0[135].y + 0.00390625;
  r0.z = log2(r0.z);
  r0.z = r0.z * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.z;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r5.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r0.y;
  return;
}