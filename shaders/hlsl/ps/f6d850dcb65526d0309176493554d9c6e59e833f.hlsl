// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD4,
  float3 v4 : TEXCOORD9,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r5.xyz = r4.xyz / cb5[8].zzz;
  r1.zw = t1.SampleBias(s2_s, r5.xz, cb0[143].y).xy;
  r1.zw = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r1.zw;
  r1.zw = t1.SampleBias(s2_s, r5.yz, cb0[143].y).xy;
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
  r7.xy = t1.SampleBias(s2_s, r5.xy, cb0[143].y).xy;
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
  r7.xy = t2.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
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
  r8.xyz = r7.yyy * r0.yzx;
  r7.xyw = r7.xxx * v0.yzx + r8.xyz;
  r7.xyz = r7.zzz * v1.yzx + r7.xyw;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r8.xyz = r7.xyz * r0.www;
  r2.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r2.w = sqrt(r2.w);
  r7.xzw = -cb4[5].xyz / r2.www;
  r2.w = dot(r7.zwx, r8.xyz);
  r2.w = 1 + r2.w;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r9.xyz, r9.xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = r9.xyz / r3.www;
  r3.w = saturate(dot(-r9.xyz, r7.xzw));
  r4.w = 1 + -cb3[1].x;
  r3.w = saturate(r4.w + r3.w);
  r2.w = r3.w * r2.w;
  r3.w = dot(r8.zxy, r2.xyz);
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
  r6.w = r7.y * r0.w + 1;
  r7.x = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb3[0].x * r6.w;
  r6.w = exp2(r6.w);
  r6.w = min(1, r6.w);
  r6.w = r7.x ? 0 : r6.w;
  r5.w = r6.w * r5.w;
  r0.w = -r7.y * r0.w + 1;
  r6.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[1].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r6.w ? 0 : r0.w;
  r0.w = r5.w * r0.w;
  r0.w = cb3[0].z * r0.w;
  r2.w = r2.w * r0.w;
  r7.xyz = cb4[4].xyz * r2.www;
  r2.w = dot(-cb4[8].xyz, -cb4[8].xyz);
  r2.w = sqrt(r2.w);
  r10.xyz = -cb4[8].xyz / r2.www;
  r2.w = dot(r10.yzx, r8.xyz);
  r2.w = 1 + r2.w;
  r5.w = saturate(dot(-r9.xyz, r10.xyz));
  r4.w = saturate(r5.w + r4.w);
  r2.w = r4.w * r2.w;
  r0.w = r2.w * r0.w;
  r9.xyz = cb4[9].xyz * r0.www;
  r9.xyz = cb4[1].yyy * r9.xyz;
  r7.xyz = r7.xyz * cb4[1].xxx + r9.xyz;
  r7.xyz = cb3[2].xyz * r7.xyz;
  r9.xyz = cb5[2].xyz * r7.xyz;
  r7.xyz = -r7.xyz * cb5[2].xyz + cb5[3].xyz;
  r7.xyz = cb5[11].xxx * r7.xyz + r9.xyz;
  r9.xyz = r3.xyz / cb5[8].zzz;
  r10.xyzw = cmp(abs(r8.xyyz) < abs(r8.zzxx));
  r0.w = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r0.www ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r11.xy = cmp(abs(r8.zx) < abs(r8.yy));
  r0.w = r10.w ? r11.x : 0;
  r11.xyz = r11.yyy ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r0.www ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r12.x = dot(abs(r8.zxy), icb[r10.x+0].xyz);
  r12.y = dot(abs(r8.zxy), icb[r11.x+0].xyz);
  r10.xw = float2(-0.577300012,-0.577300012) + r12.xy;
  r10.xw = saturate(float2(2.36574411,2.36574411) * r10.xw);
  r0.w = cmp((int)r10.z < (int)r10.y);
  r10.yz = r0.ww ? r10.zy : r10.yz;
  r0.w = cmp((int)r11.z < (int)r11.y);
  r11.xy = r0.ww ? r11.zy : r11.yz;
  r12.xyz = ddx_coarse(r9.xyz);
  r13.xyz = ddy_coarse(r9.xyz);
  r14.x = dot(r9.xyz, icb[r10.y+0].xyz);
  r14.y = dot(r9.xyz, icb[r10.z+0].xyz);
  r15.x = dot(r12.xyz, icb[r10.y+0].xyz);
  r15.y = dot(r12.xyz, icb[r10.z+0].xyz);
  r16.x = dot(r13.xyz, icb[r10.y+0].xyz);
  r16.y = dot(r13.xyz, icb[r10.z+0].xyz);
  r14.xyz = t3.SampleGrad(s0_s, r14.xy, r15.xyx, r16.xyx).xyz;
  r15.x = dot(r9.xyz, icb[r11.x+0].xyz);
  r15.y = dot(r9.xyz, icb[r11.y+0].xyz);
  r9.x = dot(r12.xyz, icb[r11.x+0].xyz);
  r9.y = dot(r12.xyz, icb[r11.y+0].xyz);
  r12.x = dot(r13.xyz, icb[r11.x+0].xyz);
  r12.y = dot(r13.xyz, icb[r11.y+0].xyz);
  r9.xyz = t3.SampleGrad(s0_s, r15.xy, r9.xyx, r12.xyx).xyz;
  r9.xyz = r9.xyz * r10.www;
  r9.xyz = r14.xyz * r10.xxx + r9.xyz;
  r0.w = r10.x + r10.w;
  r9.xyz = r9.xyz / r0.www;
  r4.xyz = r4.xyz / cb5[11].www;
  r2.w = dot(r3.xy, float2(17,0.100000001));
  r2.w = sin(r2.w);
  r2.w = 10000 * r2.w;
  r4.w = 0.100000001 * r3.z;
  r5.w = r3.y * 13 + r3.x;
  r5.w = sin(r5.w);
  r5.w = 0.100000001 + abs(r5.w);
  r2.w = r5.w * r2.w;
  r2.w = frac(r2.w);
  r4.w = r2.w * 17 + r4.w;
  r4.w = sin(r4.w);
  r4.w = 10000 * r4.w;
  r2.w = r3.z * 13 + r2.w;
  r2.w = sin(r2.w);
  r2.w = 0.100000001 + abs(r2.w);
  r2.w = r4.w * r2.w;
  r2.w = frac(r2.w);
  r12.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r4.w = r12.y ? r12.x : 0;
  r12.xyz = r12.zzz ? float3(1,2,0) : float3(2,0,1);
  r12.xyz = r4.www ? float3(0,1.40129846e-045,2.80259693e-045) : r12.xyz;
  r11.zw = cmp(abs(v1.xy) < abs(v1.zz));
  r4.w = r11.z ? r12.w : 0;
  r11.zw = r11.ww ? float2(4.20389539e-045,1.40129846e-045) : float2(2.80259693e-045,4.20389539e-045);
  r11.zw = r4.ww ? float2(1.40129846e-045,2.80259693e-045) : r11.zw;
  r11.zw = (int2)-r12.zy + (int2)r11.zw;
  r11.zw = max(int2(0,0), (int2)r11.zw);
  r11.zw = min(int2(0,0), (int2)r11.zw);
  r4.w = dot(abs(v1.xyz), icb[r12.x+0].xyz);
  r4.w = -0.577300012 + r4.w;
  r4.w = saturate(2.36574411 * r4.w);
  r5.w = cmp((int)r12.z < (int)r12.y);
  r12.xy = r5.ww ? r12.zy : r12.yz;
  r5.w = cmp((int)r11.z < (int)r11.w);
  r11.zw = r5.ww ? r11.zw : r11.wz;
  r2.w = cmp(r2.w < r4.w);
  r11.zw = r2.ww ? r12.xy : r11.zw;
  r12.xyz = ddx_coarse(r4.xyz);
  r13.xyz = ddy_coarse(r4.xyz);
  r14.x = dot(r4.xyz, icb[r11.z+0].xyz);
  r14.y = dot(r4.xyz, icb[r11.w+0].xyz);
  r4.x = dot(r12.xyz, icb[r11.z+0].xyz);
  r4.y = dot(r12.xyz, icb[r11.w+0].xyz);
  r12.x = dot(r13.xyz, icb[r11.z+0].xyz);
  r12.y = dot(r13.xyz, icb[r11.w+0].xyz);
  r4.xyz = t3.SampleGrad(s0_s, r14.xy, r4.xyx, r12.xyx).xyz;
  r12.xyz = -cb0[67].xyz + r3.xyz;
  r2.w = dot(r12.xyz, r12.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb5[12].x;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[12].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r4.xyz = r4.xyz + -r9.xyz;
  r4.xyz = r2.www * r4.xyz + r9.xyz;
  r4.xyz = cb5[5].xyz * r4.xyz;
  r9.xyz = r3.xyz / cb5[9].zzz;
  r12.xyz = ddx_coarse(r9.xyz);
  r13.xyz = ddy_coarse(r9.xyz);
  r14.x = dot(r9.xyz, icb[r10.y+0].xyz);
  r14.y = dot(r9.xyz, icb[r10.z+0].xyz);
  r15.x = dot(r12.xyz, icb[r10.y+0].xyz);
  r15.y = dot(r12.xyz, icb[r10.z+0].xyz);
  r16.x = dot(r13.xyz, icb[r10.y+0].xyz);
  r16.y = dot(r13.xyz, icb[r10.z+0].xyz);
  r14.xyz = t4.SampleGrad(s0_s, r14.xy, r15.xyx, r16.xyx).xyz;
  r15.x = dot(r9.xyz, icb[r11.x+0].xyz);
  r15.y = dot(r9.xyz, icb[r11.y+0].xyz);
  r9.x = dot(r12.xyz, icb[r11.x+0].xyz);
  r9.y = dot(r12.xyz, icb[r11.y+0].xyz);
  r12.x = dot(r13.xyz, icb[r11.x+0].xyz);
  r12.y = dot(r13.xyz, icb[r11.y+0].xyz);
  r9.xyz = t4.SampleGrad(s0_s, r15.xy, r9.xyx, r12.xyx).xyz;
  r9.xyz = r9.xyz * r10.www;
  r9.xyz = r14.xyz * r10.xxx + r9.xyz;
  r9.xyz = r9.xyz / r0.www;
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
  r6.xyz = r9.xyz * cb5[7].xyz + -r4.xyz;
  r4.xyz = r0.xxx * r6.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r6.xyz = ddx_coarse(r5.xyz);
  r9.xyz = ddy_coarse(r5.xyz);
  r12.x = dot(r5.xyz, icb[r10.y+0].xyz);
  r12.y = dot(r5.xyz, icb[r10.z+0].xyz);
  r13.x = dot(r6.xyz, icb[r10.y+0].xyz);
  r13.y = dot(r6.xyz, icb[r10.z+0].xyz);
  r14.x = dot(r9.xyz, icb[r10.y+0].xyz);
  r14.y = dot(r9.xyz, icb[r10.z+0].xyz);
  r0.yz = t5.SampleGrad(s0_s, r12.xy, r13.yx, r14.yx).xy;
  r12.x = dot(r5.xyz, icb[r11.x+0].xyz);
  r12.y = dot(r5.xyz, icb[r11.y+0].xyz);
  r5.x = dot(r6.xyz, icb[r11.x+0].xyz);
  r5.y = dot(r6.xyz, icb[r11.y+0].xyz);
  r6.x = dot(r9.xyz, icb[r11.x+0].xyz);
  r6.y = dot(r9.xyz, icb[r11.y+0].xyz);
  r5.xy = t5.SampleGrad(s0_s, r12.xy, r5.xy, r6.xy).xy;
  r5.xy = r5.xy * r10.ww;
  r0.yz = r0.yz * r10.xx + r5.xy;
  r0.yz = r0.yz / r0.ww;
  r1.zw = t6.Sample(s0_s, r1.zw).xy;
  r0.w = r1.w + -r0.z;
  r5.x = saturate(r0.x * r0.w + r0.z);
  r0.z = cb5[12].z * r3.w;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[12].w * r0.z;
  r0.w = saturate(cb5[13].y + v1.z);
  r0.z = r0.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r5.y = saturate(cb5[13].z * r0.z);
  r0.y = cb5[13].w + r0.y;
  r0.z = cb5[14].x + r1.z;
  r0.z = r0.z + -r0.y;
  r0.x = saturate(r0.x * r0.z + r0.y);
  r0.yz = -cb0[129].xy + v5.xy;
  r1.zw = cb0[152].xx + r0.yz;
  r1.zw = (uint2)r1.zw;
  r0.w = (uint)r1.w << 1;
  r0.w = (int)r0.w + (int)r1.z;
  r0.w = (uint)r0.w % 5;
  r0.w = (uint)r0.w;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t7.SampleBias(s4_s, r0.yz, cb0[143].y).x;
  r0.y = r0.w + r0.y;
  r0.y = cb5[14].y * r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = cmp(cb0[31].w < 1);
  r0.w = r1.x * cb0[65].x + cb0[65].y;
  r1.z = r1.x * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r0.w = r1.z + r0.w;
  r0.z = r0.z ? r1.y : r0.w;
  r0.z = r0.z / cb5[14].z;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb5[14].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = cb5[15].x * r0.z;
  r0.z = max(1, r0.z);
  r0.z = r0.w ? 1 : r0.z;
  r0.y = r0.y * r0.z + r1.y;
  r0.y = r1.x / r0.y;
  r0.y = min(v5.z, r0.y);
  r0.z = cmp(0.00100000005 < abs(v2.w));
  r1.zw = floor(v5.xy);
  r0.w = dot(r1.zw, float2(347.834503,3343.28369));
  r0.w = cos(r0.w);
  r0.w = 1000 * r0.w;
  r0.w = frac(r0.w);
  r1.z = cmp(v2.w < 0);
  r1.w = 1 + v2.w;
  r1.w = cmp(r0.w < r1.w);
  r0.w = cmp(v2.w < r0.w);
  r0.w = r1.z ? r1.w : r0.w;
  r0.w = cmp((int)r0.w == 0);
  r0.z = r0.z ? r0.w : 0;
  if (r0.z != 0) discard;
  r4.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.x = 0.0799999982 * r5.y;
  r6.xyz = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r0.xzw = r5.xxx * r6.xyz + r0.xxx;
  r6.xyz = -r4.xyz * r5.xxx + r4.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r0.xzw = r0.xzw * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r9.xyz = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.zzz ? r9.xyz : r6.xyz;
  r0.xzw = r1.zzz ? float3(0,0,0) : r0.xzw;
  r1.z = dot(r0.xzw, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r1.z * 2.04040003 + -0.332399994;
  r1.w = r1.z * -4.79510021 + r1.w;
  r1.z = r1.z * 2.75519991 + r1.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  r5.zw = float2(1,0.5) * v3.xy;
  r9.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t0.Sample(s1_s, r5.zw).xyzw;
  r9.xyzw = t0.Sample(s1_s, r9.xy).xyzw;
  r1.w = r9.w * 0.00392156886 + r10.w;
  r1.w = -0.00196078443 + r1.w;
  r1.w = r1.w * cb2[4].w + cb2[6].w;
  r10.xyz = r10.xyz * r10.xyz;
  r10.xyz = r10.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r9.xyzw = r9.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r8.w = 1;
  r2.w = dot(r9.xyzw, r8.xyzw);
  r2.w = max(0, r2.w);
  r1.w = r2.w * r1.w;
  r9.xyz = r1.www * r10.xyz;
  r9.xyz = cb0[157].xyz * r9.xyz;
  r1.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r9.xyz * r6.xyz;
  r10.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r10.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r10.xyz = float3(1.33200002,1.33200002,1.33200002) + r10.xyz;
  r10.xyz = max(float3(1,1,1), r10.xyz);
  r9.xyz = r10.xyz * r9.xyz;
  r0.xzw = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r1.x = -r0.y * r1.y + r1.x;
    r1.x = r1.x / r0.y;
    r2.xyz = r2.xyz * r1.xxx + r3.xyz;
    r3.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r3.xyz = cmp(r7.xyz < abs(r3.xyz));
    r1.x = (int)r3.y | (int)r3.x;
    r1.x = (int)r3.z | (int)r1.x;
    r1.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r1.xxx ? r2.xyz : r6.xyz;
  }
  r0.xzw = cb0[145].yyy * r0.xzw + r9.xyz;
  r0.xzw = r0.xzw + r6.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r8.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r1.w * r1.z;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.75686276;
  o2.xy = r5.xy;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r0.y;
  return;
}