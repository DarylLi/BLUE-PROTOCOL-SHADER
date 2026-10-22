// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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
  float4 cb4[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r4.xyz = r3.xyz / cb4[4].zzz;
  r5.xy = t9.SampleBias(s2_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r5.xy;
  r5.xy = t9.SampleBias(s2_s, r4.yz, cb0[143].y).xy;
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
  r5.zw = t9.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
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
  r6.xyz = r3.xyz / cb4[5].yyy;
  r5.zw = t9.SampleBias(s2_s, r6.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t9.SampleBias(s2_s, r6.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r5.zw;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.xxx * r9.xyz + r8.xyz;
  r5.zw = t9.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
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
  r1.w = r0.w / cb4[5].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[5].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r1.www * r8.xyz + r7.xyz;
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb4[6].xxx * r8.xyz + r7.xyz;
  r5.zw = cb4[6].yy * v3.xy;
  r2.w = cb4[6].z + cb0[143].y;
  r5.zw = t10.SampleBias(s3_s, r5.zw, r2.w).xy;
  r8.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r8.z = sqrt(r2.w);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb4[6].www * r9.xyz + r8.xyz;
  r7.xyz = cb4[7].xxx * r8.xyz + r7.xyz;
  r9.xyz = r3.xyz / cb4[7].www;
  r5.zw = t11.SampleBias(s4_s, r9.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.y = v1.y * r2.w;
  r10.xz = -r5.zw;
  r5.zw = t11.SampleBias(s4_s, r9.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.x = v1.x * r2.w;
  r11.yz = -r5.zw;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.xxx * r11.xyz + r10.xyz;
  r5.zw = t11.SampleBias(s4_s, r9.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.xy = -r5.zw;
  r11.z = v1.z * r2.w;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.yyy * r11.xyz + r10.xyz;
  r2.w = dot(r10.xyz, r10.xyz);
  r2.w = sqrt(r2.w);
  r10.xyz = r10.xyz / r2.www;
  r11.x = dot(v0.xyz, r10.xyz);
  r11.y = dot(r0.xyz, r10.xyz);
  r11.z = dot(v1.xyz, r10.xyz);
  r3.xyz = r3.xyz / cb4[8].zzz;
  r5.zw = t11.SampleBias(s4_s, r3.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.y = v1.y * r2.w;
  r10.xz = -r5.zw;
  r5.zw = t11.SampleBias(s4_s, r3.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r12.x = v1.x * r2.w;
  r12.yz = -r5.zw;
  r12.xyz = r12.xyz + -r10.xyz;
  r5.xzw = r5.xxx * r12.xyz + r10.xyz;
  r10.xy = t11.SampleBias(s4_s, r3.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r10.xy, r10.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.xy = -r10.xy;
  r10.z = v1.z * r2.w;
  r10.xyz = r10.xyz + -r5.xzw;
  r5.xyz = r5.yyy * r10.xyz + r5.xzw;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r5.xyz = r5.xyz / r2.www;
  r10.x = dot(v0.xyz, r5.xyz);
  r10.y = dot(r0.xyz, r5.xyz);
  r10.z = dot(v1.xyz, r5.xyz);
  r0.w = r0.w / cb4[8].w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[9].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r5.xyz = r10.xyz + -r11.xyz;
  r5.xyz = r0.www * r5.xyz + r11.xyz;
  r10.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[9].yyy * r10.xyz + r5.xyz;
  r5.xyz = cb4[9].zzz * r8.xyz + r5.xyz;
  r2.w = cmp(0 >= v2.x);
  r3.w = log2(v2.x);
  r3.w = cb4[9].w * r3.w;
  r3.w = exp2(r3.w);
  r2.w = r2.w ? 0 : r3.w;
  r3.w = 1 + -r2.w;
  r2.w = saturate(r2.w * r3.w + r2.w);
  r5.xyz = r5.xyz + -r7.xyz;
  r5.xyz = r2.www * r5.xyz + r7.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = r5.xyz * r3.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r5.xyz = r3.www * r0.xyz;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = sqrt(r0.y);
  r8.xyz = r8.xyz / r0.yyy;
  r0.y = saturate(dot(-r8.xyz, r7.xyz));
  r4.w = 1 + -cb2[1].x;
  r0.y = saturate(r4.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r1.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r1.x = cb2[1].y * r0.y;
  r1.x = exp2(r1.x);
  r1.y = 1 + -cb2[0].w;
  r1.x = r1.x * r1.y + cb2[0].w;
  r1.y = cmp(r1.x >= cb2[0].y);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.y * r1.x;
  r1.y = r0.z * r3.w + 1;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb2[0].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = r1.z ? 0 : r1.y;
  r1.x = r1.x * r1.y;
  r0.z = -r0.z * r3.w + 1;
  r1.y = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r1.y ? 0 : r0.z;
  r0.z = r1.x * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r1.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r3.w = saturate(dot(-r8.xyz, r7.xyz));
  r3.w = saturate(r3.w + r4.w);
  r0.x = r3.w * r0.x;
  r0.x = r0.x * r0.z;
  r7.xyz = cb3[9].xyz * r0.xxx;
  r7.xyz = cb3[1].yyy * r7.xyz;
  r1.xyz = r1.xyz * cb3[1].xxx + r7.xyz;
  r1.xyz = cb2[2].xyz * r1.xyz;
  r7.xyz = cb4[2].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb4[2].xyz + cb4[3].xyz;
  r1.xyz = cb4[10].xxx * r1.xyz + r7.xyz;
  r7.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r0.x = r7.y ? r7.x : 0;
  r7.xyz = r7.zzz ? float3(1,2,0) : float3(2,0,1);
  r7.xyz = r0.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r7.xyz;
  r0.xz = cmp(abs(r5.xy) < abs(r5.zz));
  r0.x = r0.x ? r7.w : 0;
  r8.xyz = r0.zzz ? float3(2,1,3) : float3(1,3,2);
  r8.xyz = r0.xxx ? float3(3,2,1) : r8.xyz;
  r8.xyz = (int3)-r7.xyz + (int3)r8.xyz;
  r8.xyz = max(int3(0,0,0), (int3)r8.xyz);
  r8.xyz = min(int3(2,2,2), (int3)r8.xyz);
  r10.x = dot(abs(r5.xyz), icb[r7.x+0].xyz);
  r10.y = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r0.xz = float2(-0.577300012,-0.577300012) + r10.xy;
  r0.xz = saturate(float2(2.36574411,2.36574411) * r0.xz);
  r3.w = cmp((int)r7.z < (int)r7.y);
  r7.xy = r3.ww ? r7.zy : r7.yz;
  r3.w = cmp((int)r8.z < (int)r8.y);
  r7.zw = r3.ww ? r8.zy : r8.yz;
  r8.xyz = ddx_coarse(r4.xyz);
  r10.xyz = ddy_coarse(r4.xyz);
  r11.x = dot(r4.xyz, icb[r7.x+0].xyz);
  r11.y = dot(r4.xyz, icb[r7.y+0].xyz);
  r12.x = dot(r8.xyz, icb[r7.x+0].xyz);
  r12.y = dot(r8.xyz, icb[r7.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r7.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r7.y+0].xyz);
  r11.xyz = t12.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r12.x = dot(r4.xyz, icb[r7.z+0].xyz);
  r12.y = dot(r4.xyz, icb[r7.w+0].xyz);
  r4.x = dot(r8.xyz, icb[r7.z+0].xyz);
  r4.y = dot(r8.xyz, icb[r7.w+0].xyz);
  r8.x = dot(r10.xyz, icb[r7.z+0].xyz);
  r8.y = dot(r10.xyz, icb[r7.w+0].xyz);
  r4.xyz = t12.SampleGrad(s0_s, r12.xy, r4.xyx, r8.xyx).xyz;
  r4.xyz = r4.xyz * r0.zzz;
  r4.xyz = r11.xyz * r0.xxx + r4.xyz;
  r3.w = r0.x + r0.z;
  r4.xyz = r4.xyz / r3.www;
  r4.w = dot(r2.xy, float2(17,0.100000001));
  r4.w = sin(r4.w);
  r4.w = 10000 * r4.w;
  r5.w = 0.100000001 * r2.z;
  r6.w = r2.y * 13 + r2.x;
  r6.w = sin(r6.w);
  r6.w = 0.100000001 + abs(r6.w);
  r4.w = r6.w * r4.w;
  r4.w = frac(r4.w);
  r5.w = r4.w * 17 + r5.w;
  r5.w = sin(r5.w);
  r5.w = 10000 * r5.w;
  r4.w = r2.z * 13 + r4.w;
  r4.w = sin(r4.w);
  r4.w = 0.100000001 + abs(r4.w);
  r4.w = r5.w * r4.w;
  r4.w = frac(r4.w);
  r8.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r5.w = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r5.www ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r10.xy = cmp(abs(v1.xy) < abs(v1.zz));
  r5.w = r8.w ? r10.x : 0;
  r10.xy = r10.yy ? float2(3,1) : float2(2,3);
  r10.xy = r5.ww ? float2(1,2) : r10.xy;
  r10.xy = (int2)-r8.zy + (int2)r10.xy;
  r10.xy = max(int2(0,0), (int2)r10.xy);
  r10.xy = min(int2(2,2), (int2)r10.xy);
  r5.w = dot(abs(v1.xyz), icb[r8.x+0].xyz);
  r5.w = -0.577300012 + r5.w;
  r5.w = saturate(2.36574411 * r5.w);
  r6.w = cmp((int)r8.z < (int)r8.y);
  r8.xy = r6.ww ? r8.zy : r8.yz;
  r6.w = cmp((int)r10.x < (int)r10.y);
  r8.zw = r6.ww ? r10.xy : r10.yx;
  r4.w = cmp(r4.w < r5.w);
  r8.xy = r4.ww ? r8.xy : r8.zw;
  r10.xyz = ddx_coarse(r6.xyz);
  r11.xyz = ddy_coarse(r6.xyz);
  r12.x = dot(r6.xyz, icb[r8.x+0].xyz);
  r12.y = dot(r6.xyz, icb[r8.y+0].xyz);
  r6.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r6.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r8.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r8.y+0].xyz);
  r6.xyz = t12.SampleGrad(s0_s, r12.xy, r6.xyx, r10.xyx).xyz;
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r1.www * r6.xyz + r4.xyz;
  r6.xyz = ddx_coarse(r9.xyz);
  r10.xyz = ddy_coarse(r9.xyz);
  r11.x = dot(r9.xyz, icb[r7.x+0].xyz);
  r11.y = dot(r9.xyz, icb[r7.y+0].xyz);
  r12.x = dot(r6.xyz, icb[r7.x+0].xyz);
  r12.y = dot(r6.xyz, icb[r7.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r7.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r7.y+0].xyz);
  r11.xyz = t13.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r7.x = dot(r9.xyz, icb[r7.z+0].xyz);
  r7.y = dot(r9.xyz, icb[r7.w+0].xyz);
  r9.x = dot(r6.xyz, icb[r7.z+0].xyz);
  r9.y = dot(r6.xyz, icb[r7.w+0].xyz);
  r6.x = dot(r10.xyz, icb[r7.z+0].xyz);
  r6.y = dot(r10.xyz, icb[r7.w+0].xyz);
  r6.xyz = t13.SampleGrad(s0_s, r7.xy, r9.xyx, r6.xyx).xyz;
  r6.xyz = r6.xyz * r0.zzz;
  r6.xyz = r11.xyz * r0.xxx + r6.xyz;
  r6.xyz = r6.xyz / r3.www;
  r7.xyz = ddx_coarse(r3.xyz);
  r9.xyz = ddy_coarse(r3.xyz);
  r10.x = dot(r3.xyz, icb[r8.x+0].xyz);
  r10.y = dot(r3.xyz, icb[r8.y+0].xyz);
  r3.x = dot(r7.xyz, icb[r8.x+0].xyz);
  r3.y = dot(r7.xyz, icb[r8.y+0].xyz);
  r7.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r7.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r3.xyz = t13.SampleGrad(s0_s, r10.xy, r3.xyx, r7.xyx).xyz;
  r3.xyz = r3.xyz + -r6.xyz;
  r0.xzw = r0.www * r3.xyz + r6.xyz;
  r3.xyz = r0.xzw + -r4.xyz;
  r3.xyz = r2.www * r3.xyz + r4.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb4[10].y + r1.w);
  r0.x = dot(r0.xzw, float3(0.300000012,0.589999974,0.109999999));
  r0.z = saturate(cb4[10].z + r0.x);
  r0.z = r0.z + -r3.w;
  r4.x = saturate(r2.w * r0.z + r3.w);
  r0.y = cb4[10].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[11].x * r0.y;
  r0.z = saturate(cb4[11].z + v1.z);
  r0.y = r0.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r4.y = saturate(cb4[11].w * r0.y);
  r0.y = saturate(cb4[12].x + r1.w);
  r0.x = saturate(cb4[12].y + r0.x);
  r0.x = r0.x + -r0.y;
  r0.x = saturate(r2.w * r0.x + r0.y);
  r0.yzw = min(float3(1,1,1), r3.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r3.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
  r3.xyz = cb0[213].xyz * r3.xyz;
  r6.xyz = (int3)r3.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.x = 1 + cb0[213].w;
  r3.xyz = r3.xyz / r6.www;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cb0[213].www * r3.xyz;
  r3.xyz = r6.xyz * r0.xxx + r3.xyz;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = cb0[214].xyz * r3.xyz;
  r0.x = cmp(0 < cb1[20].z);
  if (r0.x != 0) {
    r0.x = t8.SampleLevel(s1_s, r3.xyz, 0).x;
  } else {
    r0.x = 1;
  }
  r1.w = 0.0799999982 * r4.y;
  r6.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.yzw;
  r6.xyz = r4.xxx * r6.xyz + r1.www;
  r7.xyz = -r0.yzw * r4.xxx + r0.yzw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r8.xyz = t1.SampleLevel(s1_s, r3.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r3.xyzw = t7.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r3.xyzw = r3.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r3.xyzw = r3.xyzw * r8.xxxx;
  r3.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r3.xyzw;
  r14.xyz = r5.yzy * r5.yzx;
  r15.yw = r5.zz * r5.yx;
  r2.w = r5.x * r5.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r2.w = 0.429042608 * r2.w;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r4.z = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r4.w = dot(r9.xyzw, r14.xyzw);
  r4.z = r4.z + r4.w;
  r9.x = r12.w * r2.w + r4.z;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r4.z = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r4.w = dot(r10.xyzw, r14.xyzw);
  r4.z = r4.z + r4.w;
  r9.y = r13.w * r2.w + r4.z;
  r8.yzw = r11.yzw;
  r4.z = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r3.xyz;
  r3.x = dot(r11.xyzw, r14.xyzw);
  r3.x = r4.z + r3.x;
  r9.z = r3.w * r2.w + r3.x;
  r3.xyz = max(float3(0,0,0), r9.xyz);
  r3.xyz = cb0[157].xyz * r3.xyz;
  r3.xyz = float3(0.318309873,0.318309873,0.318309873) * r3.xyz;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r7.xyz;
  r8.xyz = r0.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.yzw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r3.xyz = r8.xyz * r3.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r3.www ? r2.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r3.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r2.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}