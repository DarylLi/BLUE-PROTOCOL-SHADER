// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

struct t11_t {
  float val[4];
};
StructuredBuffer<t11_t> t11 : register(t11);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v5.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xyz = r3.xyz / cb3[4].zzz;
  r5.xy = t12.SampleBias(s2_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r5.xy;
  r5.xy = t12.SampleBias(s2_s, r4.yz, cb0[143].y).xy;
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
  r5.zw = t12.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
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
  r6.xyz = r3.xyz / cb3[5].yyy;
  r5.zw = t12.SampleBias(s2_s, r6.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t12.SampleBias(s2_s, r6.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r5.zw;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.xxx * r9.xyz + r8.xyz;
  r5.zw = t12.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
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
  r1.w = r0.w / cb3[5].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[5].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r1.www * r8.xyz + r7.xyz;
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb3[6].xxx * r8.xyz + r7.xyz;
  r5.zw = cb3[6].yy * v3.xy;
  r2.w = cb3[6].z + cb0[143].y;
  r5.zw = t13.SampleBias(s3_s, r5.zw, r2.w).xy;
  r8.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r8.z = sqrt(r2.w);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb3[6].www * r9.xyz + r8.xyz;
  r7.xyz = cb3[7].xxx * r8.xyz + r7.xyz;
  r9.xyz = r3.xyz / cb3[7].www;
  r5.zw = t14.SampleBias(s4_s, r9.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.y = v1.y * r2.w;
  r10.xz = -r5.zw;
  r5.zw = t14.SampleBias(s4_s, r9.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.x = v1.x * r2.w;
  r11.yz = -r5.zw;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.xxx * r11.xyz + r10.xyz;
  r5.zw = t14.SampleBias(s4_s, r9.xy, cb0[143].y).xy;
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
  r3.xyz = r3.xyz / cb3[8].zzz;
  r5.zw = t14.SampleBias(s4_s, r3.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.y = v1.y * r2.w;
  r10.xz = -r5.zw;
  r5.zw = t14.SampleBias(s4_s, r3.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r12.x = v1.x * r2.w;
  r12.yz = -r5.zw;
  r12.xyz = r12.xyz + -r10.xyz;
  r5.xzw = r5.xxx * r12.xyz + r10.xyz;
  r10.xy = t14.SampleBias(s4_s, r3.xy, cb0[143].y).xy;
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
  r0.w = r0.w / cb3[8].w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[9].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r5.xyz = r10.xyz + -r11.xyz;
  r5.xyz = r0.www * r5.xyz + r11.xyz;
  r10.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[9].yyy * r10.xyz + r5.xyz;
  r5.xyz = cb3[9].zzz * r8.xyz + r5.xyz;
  r2.w = cmp(0 >= v2.x);
  r3.w = log2(v2.x);
  r3.w = cb3[9].w * r3.w;
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
  r4.w = dot(-cb2[5].xyz, -cb2[5].xyz);
  r4.w = sqrt(r4.w);
  r7.xyz = -cb2[5].xyz / r4.www;
  r4.w = dot(r7.xyz, r5.xyz);
  r4.w = 1 + r4.w;
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = sqrt(r5.w);
  r8.xyz = r8.xyz / r5.www;
  r5.w = saturate(dot(-r8.xyz, r7.xyz));
  r6.w = 1 + -cb1[1].x;
  r5.w = saturate(r6.w + r5.w);
  r4.w = r5.w * r4.w;
  r1.x = dot(r5.xyz, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.y = cb1[1].y * r1.x;
  r1.y = exp2(r1.y);
  r1.z = 1 + -cb1[0].w;
  r1.y = r1.y * r1.z + cb1[0].w;
  r1.z = cmp(r1.y >= cb1[0].y);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.z * r1.y;
  r1.z = r0.z * r3.w + 1;
  r5.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r5.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r0.z * r3.w + 1;
  r5.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r5.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb1[0].z * r1.y;
  r1.z = r4.w * r1.y;
  r7.xyz = cb2[4].xyz * r1.zzz;
  r1.z = dot(-cb2[8].xyz, -cb2[8].xyz);
  r1.z = sqrt(r1.z);
  r10.xyz = -cb2[8].xyz / r1.zzz;
  r1.z = dot(r10.xyz, r5.xyz);
  r1.z = 1 + r1.z;
  r4.w = saturate(dot(-r8.xyz, r10.xyz));
  r4.w = saturate(r4.w + r6.w);
  r1.z = r4.w * r1.z;
  r1.y = r1.z * r1.y;
  r8.xyz = cb2[9].xyz * r1.yyy;
  r8.xyz = cb2[1].yyy * r8.xyz;
  r7.xyz = r7.xyz * cb2[1].xxx + r8.xyz;
  r7.xyz = cb1[2].xyz * r7.xyz;
  r8.xyz = cb3[2].xyz * r7.xyz;
  r7.xyz = -r7.xyz * cb3[2].xyz + cb3[3].xyz;
  r7.xyz = cb3[10].xxx * r7.xyz + r8.xyz;
  r8.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r1.y = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r1.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r1.yz = cmp(abs(r5.xy) < abs(r5.zz));
  r1.y = r1.y ? r8.w : 0;
  r10.xyz = r1.zzz ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r1.yyy ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r8.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r11.y = dot(abs(r5.xyz), icb[r10.x+0].xyz);
  r1.yz = float2(-0.577300012,-0.577300012) + r11.xy;
  r1.yz = saturate(float2(2.36574411,2.36574411) * r1.yz);
  r4.w = cmp((int)r8.z < (int)r8.y);
  r8.xy = r4.ww ? r8.zy : r8.yz;
  r4.w = cmp((int)r10.z < (int)r10.y);
  r8.zw = r4.ww ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r4.xyz);
  r11.xyz = ddy_coarse(r4.xyz);
  r12.x = dot(r4.xyz, icb[r8.x+0].xyz);
  r12.y = dot(r4.xyz, icb[r8.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r8.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r8.y+0].xyz);
  r12.xyz = t15.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r13.x = dot(r4.xyz, icb[r8.z+0].xyz);
  r13.y = dot(r4.xyz, icb[r8.w+0].xyz);
  r4.x = dot(r10.xyz, icb[r8.z+0].xyz);
  r4.y = dot(r10.xyz, icb[r8.w+0].xyz);
  r10.x = dot(r11.xyz, icb[r8.z+0].xyz);
  r10.y = dot(r11.xyz, icb[r8.w+0].xyz);
  r4.xyz = t15.SampleGrad(s0_s, r13.xy, r4.xyx, r10.xyx).xyz;
  r4.xyz = r4.xyz * r1.zzz;
  r4.xyz = r12.xyz * r1.yyy + r4.xyz;
  r4.w = r1.y + r1.z;
  r4.xyz = r4.xyz / r4.www;
  r5.w = dot(r2.xy, float2(17,0.100000001));
  r5.w = sin(r5.w);
  r5.w = 10000 * r5.w;
  r6.w = 0.100000001 * r2.z;
  r7.w = r2.y * 13 + r2.x;
  r7.w = sin(r7.w);
  r7.w = 0.100000001 + abs(r7.w);
  r5.w = r7.w * r5.w;
  r5.w = frac(r5.w);
  r6.w = r5.w * 17 + r6.w;
  r6.w = sin(r6.w);
  r6.w = 10000 * r6.w;
  r5.w = r2.z * 13 + r5.w;
  r5.w = sin(r5.w);
  r5.w = 0.100000001 + abs(r5.w);
  r5.w = r6.w * r5.w;
  r5.w = frac(r5.w);
  r10.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r6.w = r10.y ? r10.x : 0;
  r10.xyz = r10.zzz ? float3(1,2,0) : float3(2,0,1);
  r10.xyz = r6.www ? float3(0,1.40129846e-045,2.80259693e-045) : r10.xyz;
  r11.xy = cmp(abs(v1.xy) < abs(v1.zz));
  r6.w = r10.w ? r11.x : 0;
  r11.xy = r11.yy ? float2(3,1) : float2(2,3);
  r11.xy = r6.ww ? float2(1,2) : r11.xy;
  r11.xy = (int2)-r10.zy + (int2)r11.xy;
  r11.xy = max(int2(0,0), (int2)r11.xy);
  r11.xy = min(int2(2,2), (int2)r11.xy);
  r6.w = dot(abs(v1.xyz), icb[r10.x+0].xyz);
  r6.w = -0.577300012 + r6.w;
  r6.w = saturate(2.36574411 * r6.w);
  r7.w = cmp((int)r10.z < (int)r10.y);
  r10.xy = r7.ww ? r10.zy : r10.yz;
  r7.w = cmp((int)r11.x < (int)r11.y);
  r10.zw = r7.ww ? r11.xy : r11.yx;
  r5.w = cmp(r5.w < r6.w);
  r10.xy = r5.ww ? r10.xy : r10.zw;
  r11.xyz = ddx_coarse(r6.xyz);
  r12.xyz = ddy_coarse(r6.xyz);
  r13.x = dot(r6.xyz, icb[r10.x+0].xyz);
  r13.y = dot(r6.xyz, icb[r10.y+0].xyz);
  r6.x = dot(r11.xyz, icb[r10.x+0].xyz);
  r6.y = dot(r11.xyz, icb[r10.y+0].xyz);
  r11.x = dot(r12.xyz, icb[r10.x+0].xyz);
  r11.y = dot(r12.xyz, icb[r10.y+0].xyz);
  r6.xyz = t15.SampleGrad(s0_s, r13.xy, r6.xyx, r11.xyx).xyz;
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r1.www * r6.xyz + r4.xyz;
  r6.xyz = ddx_coarse(r9.xyz);
  r11.xyz = ddy_coarse(r9.xyz);
  r12.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r12.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r13.x = dot(r6.xyz, icb[r8.x+0].xyz);
  r13.y = dot(r6.xyz, icb[r8.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r8.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r8.y+0].xyz);
  r12.xyz = t16.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r8.x = dot(r9.xyz, icb[r8.z+0].xyz);
  r8.y = dot(r9.xyz, icb[r8.w+0].xyz);
  r9.x = dot(r6.xyz, icb[r8.z+0].xyz);
  r9.y = dot(r6.xyz, icb[r8.w+0].xyz);
  r6.x = dot(r11.xyz, icb[r8.z+0].xyz);
  r6.y = dot(r11.xyz, icb[r8.w+0].xyz);
  r6.xyz = t16.SampleGrad(s0_s, r8.xy, r9.xyx, r6.xyx).xyz;
  r6.xyz = r6.xyz * r1.zzz;
  r1.yzw = r12.xyz * r1.yyy + r6.xyz;
  r1.yzw = r1.yzw / r4.www;
  r6.xyz = ddx_coarse(r3.xyz);
  r8.xyz = ddy_coarse(r3.xyz);
  r9.x = dot(r3.xyz, icb[r10.x+0].xyz);
  r9.y = dot(r3.xyz, icb[r10.y+0].xyz);
  r3.x = dot(r6.xyz, icb[r10.x+0].xyz);
  r3.y = dot(r6.xyz, icb[r10.y+0].xyz);
  r6.x = dot(r8.xyz, icb[r10.x+0].xyz);
  r6.y = dot(r8.xyz, icb[r10.y+0].xyz);
  r3.xyz = t16.SampleGrad(s0_s, r9.xy, r3.xyx, r6.xyx).xyz;
  r3.xyz = r3.xyz + -r1.yzw;
  r1.yzw = r0.www * r3.xyz + r1.yzw;
  r3.xyz = r1.yzw + -r4.xyz;
  r3.xyz = r2.www * r3.xyz + r4.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.x = saturate(cb3[10].y + r0.w);
  r1.y = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r1.z = saturate(cb3[10].z + r1.y);
  r1.z = r1.z + -r4.x;
  r4.x = saturate(r2.w * r1.z + r4.x);
  r1.x = cb3[10].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x * 0.959999979 + 0.0399999991;
  r1.x = cb3[11].x * r1.x;
  r1.z = saturate(cb3[11].z + v1.z);
  r1.x = r1.z * r1.x;
  r1.x = max(0, r1.x);
  r1.x = min(0.5, r1.x);
  r4.y = saturate(cb3[11].w * r1.x);
  r0.w = saturate(cb3[12].x + r0.w);
  r1.x = saturate(cb3[12].y + r1.y);
  r1.x = r1.x + -r0.w;
  r0.w = saturate(r2.w * r1.x + r0.w);
  r1.xyz = min(float3(1,1,1), r3.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r3.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
  r3.xyz = cb0[213].xyz * r3.xyz;
  r6.xyz = (int3)r3.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.w = 1 + cb0[213].w;
  r3.xyz = r3.xyz / r6.www;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cb0[213].www * r3.xyz;
  r3.xyz = r6.xyz * r0.www + r3.xyz;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = cb0[214].xyz * r3.xyz;
  r0.w = mad((int)v4.x, 36, 20);
  r4.z = t10[r0.w].val[4/4];
  r4.w = t10[r0.w].val[4/4+1];
  r0.w = cmp(0 < r4.w);
  if (r0.w != 0) {
    r0.w = t9.SampleLevel(s1_s, r3.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = 0.0799999982 * r4.y;
  r6.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r6.xyz = r4.xxx * r6.xyz + r1.www;
  r8.xyz = -r1.xyz * r4.xxx + r1.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r9.xyz = t1.SampleLevel(s1_s, r3.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t7.SampleLevel(s1_s, r3.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r9.xxxx;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyz = r5.yzy * r5.yzx;
  r17.yw = r5.zz * r5.yx;
  r2.w = r5.x * r5.x + -r16.x;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r17.xz = r16.zy * float2(1,3) + float2(0,-1);
  r16.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r17.xyzw;
  r2.w = 0.429042608 * r2.w;
  r17.x = r9.y;
  r17.yzw = r10.yzw;
  r18.x = 0.886227548;
  r4.w = dot(r17.xyzw, r18.xyzw);
  r10.yzw = r13.xyz;
  r5.w = dot(r10.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.x = r13.w * r2.w + r4.w;
  r13.x = r9.z;
  r13.yzw = r11.yzw;
  r4.w = dot(r13.xyzw, r18.xyzw);
  r11.yzw = r14.xyz;
  r5.w = dot(r11.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.y = r14.w * r2.w + r4.w;
  r9.yzw = r12.yzw;
  r4.w = dot(r9.xyzw, r18.xyzw);
  r12.yzw = r15.xyz;
  r5.w = dot(r12.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.z = r15.w * r2.w + r4.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = cb0[157].xyz * r9.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r3.xyz = t8.SampleLevel(s1_s, r3.xyz, 0).xyz;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r3.xyz, r3.xyz);
    r10.x = sqrt(r2.w);
    r2.w = max(9.99999975e-005, r10.x);
    r3.xyz = r3.xyz / r2.www;
    r2.w = 1 + -r10.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r3.www + -r3.xyz;
    r11.xyz = r2.www * r0.xyz + r3.xyz;
    r0.x = saturate(dot(r3.xyz, r5.xyz));
    r0.y = 1 + -r0.x;
    r10.y = r2.w * r0.y + r0.x;
  } else {
    r11.xyz = r5.xyz;
    r10.xy = float2(1,1);
  }
  r3.x = t11[0].val[0/4];
  r3.y = t11[0].val[0/4+1];
  r3.z = t11[0].val[0/4+2];
  r3.w = t11[0].val[0/4+3];
  r11.w = 1;
  r0.x = dot(r3.xyzw, r11.xyzw);
  r3.x = t11[1].val[0/4];
  r3.y = t11[1].val[0/4+1];
  r3.z = t11[1].val[0/4+2];
  r3.w = t11[1].val[0/4+3];
  r0.y = dot(r3.xyzw, r11.xyzw);
  r3.x = t11[2].val[0/4];
  r3.y = t11[2].val[0/4+1];
  r3.z = t11[2].val[0/4+2];
  r3.w = t11[2].val[0/4+3];
  r0.z = dot(r3.xyzw, r11.xyzw);
  r3.xyzw = r11.xyzz * r11.yzzx;
  r12.x = t11[3].val[0/4];
  r12.y = t11[3].val[0/4+1];
  r12.z = t11[3].val[0/4+2];
  r12.w = t11[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r3.xyzw);
  r13.x = t11[4].val[0/4];
  r13.y = t11[4].val[0/4+1];
  r13.z = t11[4].val[0/4+2];
  r13.w = t11[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r3.xyzw);
  r13.x = t11[5].val[0/4];
  r13.y = t11[5].val[0/4+1];
  r13.z = t11[5].val[0/4+2];
  r13.w = t11[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r3.xyzw);
  r2.w = r11.y * r11.y;
  r2.w = r11.x * r11.x + -r2.w;
  r3.x = t11[6].val[0/4];
  r3.y = t11[6].val[0/4+1];
  r3.z = t11[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r3.xyz * r2.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r2.w = r10.x * r10.y;
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r9.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r2.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r3.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r3.xyz * r0.xyz;
  r3.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t10[r7.x].val[0/4];
    r7.z = t10[r7.x].val[0/4+1];
    r7.w = t10[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r2.xyz;
    r8.x = t10[r7.y].val[0/4];
    r8.y = t10[r7.y].val[0/4+1];
    r8.z = t10[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r3.www ? r2.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
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
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r4.z;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}