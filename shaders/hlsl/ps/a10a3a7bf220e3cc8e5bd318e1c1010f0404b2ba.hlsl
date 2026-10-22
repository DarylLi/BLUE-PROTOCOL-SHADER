// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[18];
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
  float4 v2 : COLOR0,
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
  out float4 o6 : SV_Target6)
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
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v4.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xyz = r3.xyz / cb5[10].zzz;
  r5.xy = t2.SampleBias(s2_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r5.xy;
  r5.xy = t2.SampleBias(s2_s, r4.yz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.x = v1.x * r0.w;
  r7.yz = -r5.xy;
  r5.xy = min(float2(1,1), abs(v1.xz));
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.xxx * r7.xyz + r6.xyz;
  r5.zw = t2.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r5.zw;
  r7.z = v1.z * r0.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.yyy * r7.xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.xyz, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = r3.xyz / cb5[11].yyy;
  r5.zw = t2.SampleBias(s2_s, r6.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t2.SampleBias(s2_s, r6.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r5.zw;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.xxx * r9.xyz + r8.xyz;
  r5.zw = t2.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r5.zw;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.yyy * r9.xyz + r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r1.w = r0.w / cb5[11].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[11].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r1.www * r8.xyz + r7.xyz;
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb5[12].xxx * r8.xyz + r7.xyz;
  r8.xyz = r3.xyz / cb5[12].www;
  r5.zw = t3.SampleBias(s3_s, r8.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r5.zw;
  r5.zw = t3.SampleBias(s3_s, r8.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.x = v1.x * r2.w;
  r10.yz = -r5.zw;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.xxx * r10.xyz + r9.xyz;
  r5.zw = t3.SampleBias(s3_s, r8.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.xy = -r5.zw;
  r10.z = v1.z * r2.w;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.yyy * r10.xyz + r9.xyz;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = sqrt(r2.w);
  r9.xyz = r9.xyz / r2.www;
  r10.x = dot(v0.xyz, r9.xyz);
  r10.y = dot(r0.xyz, r9.xyz);
  r10.z = dot(v1.xyz, r9.xyz);
  r3.xyz = r3.xyz / cb5[13].zzz;
  r5.zw = t3.SampleBias(s3_s, r3.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r5.zw;
  r5.zw = t3.SampleBias(s3_s, r3.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.x = v1.x * r2.w;
  r11.yz = -r5.zw;
  r11.xyz = r11.xyz + -r9.xyz;
  r5.xzw = r5.xxx * r11.xyz + r9.xyz;
  r9.xy = t3.SampleBias(s3_s, r3.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r9.xy, r9.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r2.w;
  r9.xyz = r9.xyz + -r5.xzw;
  r5.xyz = r5.yyy * r9.xyz + r5.xzw;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r5.xyz = r5.xyz / r2.www;
  r9.x = dot(v0.xyz, r5.xyz);
  r9.y = dot(r0.xyz, r5.xyz);
  r9.z = dot(v1.xyz, r5.xyz);
  r0.w = r0.w / cb5[13].w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[14].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r5.xyz = r9.xyz + -r10.xyz;
  r5.xyz = r0.www * r5.xyz + r10.xyz;
  r9.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[14].yyy * r9.xyz + r5.xyz;
  r2.w = v1.z * 0.5 + 0.5;
  r2.w = saturate(r2.w * cb5[14].z + cb5[15].y);
  r5.xyz = r5.xyz + -r7.xyz;
  r5.xyz = r2.www * r5.xyz + r7.xyz;
  r7.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyz = r7.xyz * r2.www;
  r9.xyz = r7.yyy * r0.yzx;
  r7.xyw = r7.xxx * v0.yzx + r9.xyz;
  r7.xyz = r7.zzz * v1.yzx + r7.xyw;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  r9.xyz = r7.xyz * r2.www;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r7.xzw = -cb4[5].xyz / r3.www;
  r3.w = dot(r7.zwx, r9.xyz);
  r3.w = 1 + r3.w;
  r10.xyz = cb0[67].xyz + -r2.xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = sqrt(r4.w);
  r10.xyz = r10.xyz / r4.www;
  r4.w = saturate(dot(-r10.xyz, r7.xzw));
  r5.w = 1 + -cb3[1].x;
  r4.w = saturate(r5.w + r4.w);
  r3.w = r4.w * r3.w;
  r1.x = dot(r9.zxy, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.y = cb3[1].y * r1.x;
  r1.y = exp2(r1.y);
  r1.z = 1 + -cb3[0].w;
  r1.y = r1.y * r1.z + cb3[0].w;
  r1.z = cmp(r1.y >= cb3[0].y);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.z * r1.y;
  r1.z = r7.y * r2.w + 1;
  r4.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r4.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r7.y * r2.w + 1;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb3[0].z * r1.y;
  r1.z = r3.w * r1.y;
  r7.xyz = cb4[4].xyz * r1.zzz;
  r1.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r1.z = sqrt(r1.z);
  r11.xyz = -cb4[8].xyz / r1.zzz;
  r1.z = dot(r11.yzx, r9.xyz);
  r1.z = 1 + r1.z;
  r2.w = saturate(dot(-r10.xyz, r11.xyz));
  r2.w = saturate(r2.w + r5.w);
  r1.z = r2.w * r1.z;
  r1.y = r1.z * r1.y;
  r10.xyz = cb4[9].xyz * r1.yyy;
  r10.xyz = cb4[1].yyy * r10.xyz;
  r7.xyz = r7.xyz * cb4[1].xxx + r10.xyz;
  r7.xyz = cb3[2].xyz * r7.xyz;
  r10.xyz = cb5[2].xyz * r7.xyz;
  r5.xyz = float3(0,0,1) + r5.xyz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.z / r0.x;
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = saturate(r0.x * cb5[14].z + cb5[15].y);
  r0.x = r0.x + r0.x;
  r0.x = min(1, r0.x);
  r5.xyz = -r7.xyz * cb5[2].xyz + cb5[3].xyz;
  r5.xyz = cb5[15].zzz * r5.xyz + r10.xyz;
  r7.xyz = r2.xyz / cb5[10].zzz;
  r10.xyzw = cmp(abs(r9.xyyz) < abs(r9.zzxx));
  r0.y = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r0.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r0.yz = cmp(abs(r9.zx) < abs(r9.yy));
  r0.y = r0.y ? r10.w : 0;
  r11.xyz = r0.zzz ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r0.yyy ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r10.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r12.x = dot(abs(r9.zxy), icb[r10.x+0].xyz);
  r12.y = dot(abs(r9.zxy), icb[r11.x+0].xyz);
  r0.yz = float2(-0.577300012,-0.577300012) + r12.xy;
  r0.yz = saturate(float2(2.36574411,2.36574411) * r0.yz);
  r1.y = cmp((int)r10.z < (int)r10.y);
  r1.yz = r1.yy ? r10.zy : r10.yz;
  r2.w = cmp((int)r11.z < (int)r11.y);
  r10.xy = r2.ww ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r7.xyz);
  r12.xyz = ddy_coarse(r7.xyz);
  r13.x = dot(r7.xyz, icb[r1.y+0].xyz);
  r13.y = dot(r7.xyz, icb[r1.z+0].xyz);
  r14.x = dot(r11.xyz, icb[r1.y+0].xyz);
  r14.y = dot(r11.xyz, icb[r1.z+0].xyz);
  r15.x = dot(r12.xyz, icb[r1.y+0].xyz);
  r15.y = dot(r12.xyz, icb[r1.z+0].xyz);
  r13.xyz = t4.SampleGrad(s0_s, r13.xy, r14.xyx, r15.xyx).xyz;
  r14.x = dot(r7.xyz, icb[r10.x+0].xyz);
  r14.y = dot(r7.xyz, icb[r10.y+0].xyz);
  r7.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r7.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r7.xyz = t4.SampleGrad(s0_s, r14.xy, r7.xyx, r11.xyx).xyz;
  r7.xyz = r7.xyz * r0.zzz;
  r7.xyz = r13.xyz * r0.yyy + r7.xyz;
  r2.w = r0.y + r0.z;
  r7.xyz = r7.xyz / r2.www;
  r3.w = dot(r2.xy, float2(17,0.100000001));
  r3.w = sin(r3.w);
  r3.w = 10000 * r3.w;
  r4.w = 0.100000001 * r2.z;
  r5.w = r2.y * 13 + r2.x;
  r5.w = sin(r5.w);
  r5.w = 0.100000001 + abs(r5.w);
  r3.w = r5.w * r3.w;
  r3.w = frac(r3.w);
  r4.w = r3.w * 17 + r4.w;
  r4.w = sin(r4.w);
  r4.w = 10000 * r4.w;
  r3.w = r2.z * 13 + r3.w;
  r3.w = sin(r3.w);
  r3.w = 0.100000001 + abs(r3.w);
  r3.w = r4.w * r3.w;
  r3.w = frac(r3.w);
  r11.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r4.w = r11.y ? r11.x : 0;
  r11.xyz = r11.zzz ? float3(1,2,0) : float3(2,0,1);
  r11.xyz = r4.www ? float3(0,1.40129846e-045,2.80259693e-045) : r11.xyz;
  r10.zw = cmp(abs(v1.xy) < abs(v1.zz));
  r4.w = r10.z ? r11.w : 0;
  r10.zw = r10.ww ? float2(4.20389539e-045,1.40129846e-045) : float2(2.80259693e-045,4.20389539e-045);
  r10.zw = r4.ww ? float2(1.40129846e-045,2.80259693e-045) : r10.zw;
  r10.zw = (int2)-r11.zy + (int2)r10.zw;
  r10.zw = max(int2(0,0), (int2)r10.zw);
  r10.zw = min(int2(0,0), (int2)r10.zw);
  r4.w = dot(abs(v1.xyz), icb[r11.x+0].xyz);
  r4.w = -0.577300012 + r4.w;
  r4.w = saturate(2.36574411 * r4.w);
  r5.w = cmp((int)r11.z < (int)r11.y);
  r11.xy = r5.ww ? r11.zy : r11.yz;
  r5.w = cmp((int)r10.z < (int)r10.w);
  r10.zw = r5.ww ? r10.zw : r10.wz;
  r3.w = cmp(r3.w < r4.w);
  r10.zw = r3.ww ? r11.xy : r10.zw;
  r11.xyz = ddx_coarse(r6.xyz);
  r12.xyz = ddy_coarse(r6.xyz);
  r13.x = dot(r6.xyz, icb[r10.z+0].xyz);
  r13.y = dot(r6.xyz, icb[r10.w+0].xyz);
  r6.x = dot(r11.xyz, icb[r10.z+0].xyz);
  r6.y = dot(r11.xyz, icb[r10.w+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.z+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.w+0].xyz);
  r12.xyz = t4.SampleGrad(s0_s, r13.xy, r6.xyx, r11.xyx).xyz;
  r12.xyz = r12.xyz + -r7.xyz;
  r7.xyz = r1.www * r12.xyz + r7.xyz;
  r7.xyz = cb5[5].xyz * r7.xyz;
  r12.xyz = r2.xyz / cb5[12].www;
  r14.xyz = ddx_coarse(r12.xyz);
  r15.xyz = ddy_coarse(r12.xyz);
  r16.x = dot(r12.xyz, icb[r1.y+0].xyz);
  r16.y = dot(r12.xyz, icb[r1.z+0].xyz);
  r17.x = dot(r14.xyz, icb[r1.y+0].xyz);
  r17.y = dot(r14.xyz, icb[r1.z+0].xyz);
  r18.x = dot(r15.xyz, icb[r1.y+0].xyz);
  r18.y = dot(r15.xyz, icb[r1.z+0].xyz);
  r16.xyz = t5.SampleGrad(s0_s, r16.xy, r17.xyx, r18.xyx).xyz;
  r17.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r17.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r12.x = dot(r14.xyz, icb[r10.x+0].xyz);
  r12.y = dot(r14.xyz, icb[r10.y+0].xyz);
  r14.x = dot(r15.xyz, icb[r10.x+0].xyz);
  r14.y = dot(r15.xyz, icb[r10.y+0].xyz);
  r12.xyz = t5.SampleGrad(s0_s, r17.xy, r12.xyx, r14.xyx).xyz;
  r12.xyz = r12.xyz * r0.zzz;
  r12.xyz = r16.xyz * r0.yyy + r12.xyz;
  r12.xyz = r12.xyz / r2.www;
  r14.xyz = ddx_coarse(r3.xyz);
  r15.xyz = ddy_coarse(r3.xyz);
  r16.x = dot(r3.xyz, icb[r10.z+0].xyz);
  r16.y = dot(r3.xyz, icb[r10.w+0].xyz);
  r3.x = dot(r14.xyz, icb[r10.z+0].xyz);
  r3.y = dot(r14.xyz, icb[r10.w+0].xyz);
  r14.x = dot(r15.xyz, icb[r10.z+0].xyz);
  r14.y = dot(r15.xyz, icb[r10.w+0].xyz);
  r15.xyz = t5.SampleGrad(s0_s, r16.xy, r3.xyx, r14.xyx).xyz;
  r15.xyz = r15.xyz + -r12.xyz;
  r12.xyz = r0.www * r15.xyz + r12.xyz;
  r12.xyz = r12.xyz * cb5[7].xyz + -r7.xyz;
  r7.xyz = r0.xxx * r12.xyz + r7.xyz;
  r3.z = saturate(v2.x + v2.x);
  r12.xyz = cb5[9].xyz * r7.xyz + -r7.xyz;
  r7.xyz = r3.zzz * r12.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r12.xyz = ddx_coarse(r4.xyz);
  r15.xyz = ddy_coarse(r4.xyz);
  r17.x = dot(r4.xyz, icb[r1.y+0].xyz);
  r17.y = dot(r4.xyz, icb[r1.z+0].xyz);
  r18.x = dot(r12.xyz, icb[r1.y+0].xyz);
  r18.y = dot(r12.xyz, icb[r1.z+0].xyz);
  r19.x = dot(r15.xyz, icb[r1.y+0].xyz);
  r19.y = dot(r15.xyz, icb[r1.z+0].xyz);
  r3.zw = t6.SampleGrad(s0_s, r17.xy, r18.xx, r19.xx).xy;
  r17.x = dot(r4.xyz, icb[r10.x+0].xyz);
  r17.y = dot(r4.xyz, icb[r10.y+0].xyz);
  r4.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r4.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r12.x = dot(r15.xyz, icb[r10.x+0].xyz);
  r12.y = dot(r15.xyz, icb[r10.y+0].xyz);
  r4.xy = t6.SampleGrad(s0_s, r17.xy, r4.xy, r12.xy).xy;
  r4.xy = r4.xy * r0.zz;
  r3.zw = r3.zw * r0.yy + r4.xy;
  r3.zw = r3.zw / r2.ww;
  r4.xy = t6.SampleGrad(s0_s, r13.xy, r6.xy, r11.xy).xy;
  r4.xy = r4.xy + -r3.zw;
  r3.zw = r1.ww * r4.xy + r3.zw;
  r4.xyz = ddx_coarse(r8.xyz);
  r6.xyz = ddy_coarse(r8.xyz);
  r11.x = dot(r8.xyz, icb[r1.y+0].xyz);
  r11.y = dot(r8.xyz, icb[r1.z+0].xyz);
  r12.x = dot(r4.xyz, icb[r1.y+0].xyz);
  r12.y = dot(r4.xyz, icb[r1.z+0].xyz);
  r13.x = dot(r6.xyz, icb[r1.y+0].xyz);
  r13.y = dot(r6.xyz, icb[r1.z+0].xyz);
  r1.yz = t7.SampleGrad(s0_s, r11.xy, r12.yx, r13.yx).xy;
  r11.x = dot(r8.xyz, icb[r10.x+0].xyz);
  r11.y = dot(r8.xyz, icb[r10.y+0].xyz);
  r8.x = dot(r4.xyz, icb[r10.x+0].xyz);
  r8.y = dot(r4.xyz, icb[r10.y+0].xyz);
  r4.x = dot(r6.xyz, icb[r10.x+0].xyz);
  r4.y = dot(r6.xyz, icb[r10.y+0].xyz);
  r4.xy = t7.SampleGrad(s0_s, r11.xy, r8.xy, r4.xy).xy;
  r4.xy = r4.xy * r0.zz;
  r0.yz = r1.yz * r0.yy + r4.xy;
  r0.yz = r0.yz / r2.ww;
  r1.yz = t7.SampleGrad(s0_s, r16.xy, r3.yx, r14.yx).xy;
  r1.yz = r1.yz + -r0.yz;
  r0.yz = r0.ww * r1.yz + r0.yz;
  r0.z = r0.z + -r3.w;
  r3.x = saturate(r0.x * r0.z + r3.w);
  r0.z = cb5[15].w * r1.x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[16].x * r0.z;
  r0.w = saturate(cb5[16].z + v1.z);
  r0.z = r0.w * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r3.y = saturate(cb5[16].w * r0.z);
  r0.z = cb5[17].x + r3.z;
  r0.y = cb5[17].y + r0.y;
  r0.y = r0.y + -r0.z;
  r0.x = r0.x * r0.y + r0.z;
  r0.x = saturate(-v2.x + r0.x);
  r0.yzw = min(float3(1,1,1), r7.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r1.xyzw = t1.Sample(s1_s, v3.zw).xyzw;
  r4.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r1.xyzw = saturate(r1.xyzw * cb2[1].xyzw + r4.xyzw);
  r1.xyzw = r1.xyzw * r1.xyzw;
  o5.xyzw = cb2[0].xyzw * r1.xyzw;
  r0.x = 0.0799999982 * r3.y;
  r1.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.yzw;
  r1.xyz = r3.xxx * r1.xyz + r0.xxx;
  r4.xyz = -r0.yzw * r3.xxx + r0.yzw;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r0.x = cmp(0 != cb0[183].w);
  r6.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r0.xxx ? r6.xyz : r4.xyz;
  r1.xyz = r0.xxx ? float3(0,0,0) : r1.xyz;
  r0.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.x * 2.04040003 + -0.332399994;
  r1.w = r0.x * -4.79510021 + r1.w;
  r0.x = r0.x * 2.75519991 + r1.w;
  r0.x = 1.33200002 + r0.x;
  r0.x = max(1, r0.x);
  r3.zw = float2(1,0.5) * v3.xy;
  r6.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t0.Sample(s1_s, r3.zw).xyzw;
  r6.xyzw = t0.Sample(s1_s, r6.xy).xyzw;
  r1.w = r6.w * 0.00392156886 + r7.w;
  r1.w = -0.00196078443 + r1.w;
  r1.w = r1.w * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r9.w = 1;
  r2.w = dot(r6.xyzw, r9.xyzw);
  r2.w = max(0, r2.w);
  r1.w = r2.w * r1.w;
  r6.xyz = r1.www * r7.xyz;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r4.xyz;
  r7.xyz = r0.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r0.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r0.yzw * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xyz));
    r2.w = (int)r5.y | (int)r5.x;
    r2.w = (int)r5.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r2.www ? r2.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r6.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r9.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * r0.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r0.yzw;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}