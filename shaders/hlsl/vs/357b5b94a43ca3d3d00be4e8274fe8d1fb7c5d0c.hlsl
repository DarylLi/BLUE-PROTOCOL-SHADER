// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[17];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE4,
  float4 v5 : ATTRIBUTE5,
  float4 v6 : ATTRIBUTE6,
  float4 v7 : ATTRIBUTE7,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyz, cb0[9].xyz);
  r0.x = r0.x * cb0[8].w + -cb0[6].w;
  r0.y = r0.x * r0.x;
  r0.z = r0.y * r0.x;
  r0.w = -r0.y * 2 + r0.z;
  r0.w = r0.w + r0.x;
  r1.xyz = cb0[3].xyz * r0.www;
  r0.w = 3 * r0.y;
  r1.w = r0.z * 2 + -r0.w;
  r0.z = r0.z * -2 + r0.w;
  r0.w = 1 + r1.w;
  r1.xyz = r0.www * cb0[2].xyz + r1.xyz;
  r0.w = r0.y * r0.x + -r0.y;
  r1.xyz = r0.www * cb0[6].xyz + r1.xyz;
  r1.xyz = r0.zzz * cb0[5].xyz + r1.xyz;
  r2.xyz = float3(3,3,3) * cb0[3].zxy;
  r2.xyz = cb0[2].zxy * float3(6,6,6) + r2.xyz;
  r2.xyz = cb0[6].zxy * float3(3,3,3) + r2.xyz;
  r2.xyz = -cb0[5].zxy * float3(6,6,6) + r2.xyz;
  r3.xyz = float3(4,4,4) * cb0[3].zxy;
  r3.xyz = cb0[2].zxy * float3(-6,-6,-6) + -r3.xyz;
  r3.xyz = -cb0[6].zxy * float3(2,2,2) + r3.xyz;
  r3.xyz = cb0[5].zxy * float3(6,6,6) + r3.xyz;
  r3.xyz = r3.xyz * r0.xxx;
  r0.yzw = r2.xyz * r0.yyy + r3.xyz;
  r0.yzw = cb0[3].zxy + r0.yzw;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r2.xyz = cb0[8].zxy * r0.wyz;
  r2.xyz = cb0[8].yzx * r0.yzw + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(r0.x);
  r2.w = r1.w * -2 + 3;
  r1.w = r1.w * r1.w;
  r1.w = r2.w * r1.w;
  r2.w = cmp(0 != cb0[5].w);
  r0.x = r2.w ? r1.w : r0.x;
  r3.xyzw = cb0[7].xyzw + -cb0[4].xyzw;
  r3.xyzw = r0.xxxx * r3.xyzw + cb0[4].xyzw;
  r1.xyz = r3.zzz * r2.xyz + r1.xyz;
  r4.xyz = r2.yzx * r0.yzw;
  r4.xyz = r0.wyz * r2.zxy + -r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r1.xyw = r3.www * r4.xyz + r1.xyz;
  r5.w = r1.y;
  r2.w = cb0[3].w + -cb0[2].w;
  r0.x = r0.x * r2.w + cb0[2].w;
  sincos(r0.x, r0.x, r6.x);
  r6.yzw = r0.xxx * r2.xyz;
  r6.yzw = r6.xxx * r4.xyz + r6.yzw;
  r4.xyz = r0.xxx * r4.xyz;
  r2.xyz = r6.xxx * r2.xyz + -r4.xyz;
  r4.xyz = r6.yzw * r3.yyy;
  r7.xyz = cb0[11].xyz * r4.yyy;
  r8.xyz = r2.xyz * r3.xxx;
  r5.xyz = cb0[10].xyz * r8.yyy + r7.xyz;
  r5.y = dot(v0.xyzw, r5.xyzw);
  r7.xyz = cb2[1].xyz * r5.yyy;
  r9.w = r1.x;
  r4.xyw = cb0[11].xyz * r4.xxx;
  r10.xyz = cb0[11].xyz * r4.zzz;
  r1.xyz = cb0[10].xyz * r8.zzz + r10.xyz;
  r9.xyz = cb0[10].xyz * r8.xxx + r4.xyw;
  r5.x = dot(v0.xyzw, r9.xyzw);
  r5.z = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb2[0].xyz * r5.xxx + r7.xyz;
  r1.xyz = cb2[2].xyz * r5.zzz + r1.xyz;
  r4.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = -cb1[70].zxy + r1.zxy;
  r7.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r7.xyz = floor(r7.xyz);
  r7.xyz = r7.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r4.yzw = -r7.xyz + r4.xyz;
  r3.zw = float2(9.99999975e-005,9.99999975e-005) * r4.zw;
  r0.x = r4.y * 9.99999975e-005 + 0.200000003;
  r4.yzw = t0.SampleLevel(s0_s, r3.zw, -1).xyz;
  r1.w = r4.y + -r4.z;
  r1.w = max(9.99999975e-005, r1.w);
  r2.w = cb3[15].w + r4.z;
  r4.y = -r2.w + r0.x;
  r0.x = -r4.w + r0.x;
  r2.w = r2.w + -r4.w;
  r2.w = max(9.99999975e-005, r2.w);
  r4.y = max(0, r4.y);
  r1.w = r4.y / r1.w;
  r1.w = min(1, r1.w);
  r4.y = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r4.y = min(0.200000003, r4.y);
  r1.w = r4.y * r1.w;
  r4.y = max(0, r0.x);
  r0.x = 10000 * r0.x;
  r0.x = max(0, r0.x);
  r2.w = r4.y / r2.w;
  r2.w = min(1, r2.w);
  r4.y = 1 + -r2.w;
  r2.w = ceil(r2.w);
  r4.y = min(0.200000003, r4.y);
  r2.w = r4.y * r2.w;
  r2.w = 5 * r2.w;
  r4.y = r1.w * 5 + -r2.w;
  r1.w = 5 * r1.w;
  r4.y = cmp(9.99999975e-006 < abs(r4.y));
  r4.z = cmp(r1.w >= r2.w);
  r1.w = max(r1.w, r2.w);
  r7.xy = t1.SampleLevel(s1_s, r3.zw, -1).xy;
  r3.zw = t2.SampleLevel(s2_s, r3.zw, -1).xy;
  r3.zw = float2(-1,-1) + r3.zw;
  r2.w = r4.z ? r7.y : r7.x;
  r2.w = r4.y ? r2.w : r7.x;
  r2.w = cb3[16].x * r2.w;
  r2.w = r2.w * r1.w;
  r4.y = cb3[8].z + cb2[5].z;
  r4.x = r4.x + -r4.y;
  r0.x = min(r4.x, r0.x);
  r0.x = cb3[16].z * r0.x;
  r0.x = r1.w * r0.x;
  r0.x = r2.w * r0.x;
  r7.xy = r0.xx * r3.zw;
  r0.x = dot(r7.xy, r7.xy);
  r0.x = sqrt(r0.x);
  r7.z = -1.20000005 * r0.x;
  r1.xyz = r7.xyz + r1.xyz;
  r7.xyzw = cb1[1].xyzw * r1.yyyy;
  r7.xyzw = r1.xxxx * cb1[0].xyzw + r7.xyzw;
  r1.xyzw = r1.zzzz * cb1[2].xyzw + r7.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = 0.00100000005 * r1.w;
  r2.w = cmp(1 < asint(cb1[135].x));
  r0.x = r2.w ? r0.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.x = cb2[10].x;
  r1.y = cb2[11].x;
  r1.z = cb2[12].x;
  r7.xyw = cb2[13].xyz + cb1[113].xyz;
  r1.w = r7.x;
  r5.w = v0.w;
  r1.x = dot(r5.xyzw, r1.xyzw);
  r8.w = r7.y;
  r8.x = cb2[10].y;
  r8.y = cb2[11].y;
  r8.z = cb2[12].y;
  r1.y = dot(r5.xyzw, r8.xyzw);
  r7.x = cb2[10].z;
  r7.y = cb2[11].z;
  r7.z = cb2[12].z;
  r1.z = dot(r5.xyzw, r7.xyzw);
  r4.xzw = -cb1[113].zxy + r1.zxy;
  r5.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
  r5.xyz = floor(r5.xyz);
  r5.xyz = r5.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r5.xyz = -r5.xyz + r4.xzw;
  r0.x = r4.x + -r4.y;
  r3.zw = float2(9.99999975e-005,9.99999975e-005) * r5.yz;
  r1.w = r5.x * 9.99999975e-005 + 0.200000003;
  r4.xy = t1.SampleLevel(s1_s, r3.zw, -1).xy;
  r5.xyz = t0.SampleLevel(s0_s, r3.zw, -1).xyz;
  r3.zw = t2.SampleLevel(s2_s, r3.zw, -1).xy;
  r3.zw = float2(-1,-1) + r3.zw;
  r2.w = r5.x + -r5.y;
  r2.w = max(9.99999975e-005, r2.w);
  r4.z = cb3[15].w + r5.y;
  r4.w = -r4.z + r1.w;
  r1.w = -r5.z + r1.w;
  r4.z = r4.z + -r5.z;
  r4.zw = max(float2(9.99999975e-005,0), r4.zw);
  r2.w = r4.w / r2.w;
  r2.w = min(1, r2.w);
  r4.w = 1 + -r2.w;
  r2.w = ceil(r2.w);
  r4.w = min(0.200000003, r4.w);
  r2.w = r4.w * r2.w;
  r4.w = max(0, r1.w);
  r1.w = 10000 * r1.w;
  r1.w = max(0, r1.w);
  r0.x = min(r1.w, r0.x);
  r0.x = cb3[16].z * r0.x;
  r1.w = r4.w / r4.z;
  r1.w = min(1, r1.w);
  r4.z = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r4.z = min(0.200000003, r4.z);
  r1.w = r4.z * r1.w;
  r1.w = 5 * r1.w;
  r4.z = r2.w * 5 + -r1.w;
  r2.w = 5 * r2.w;
  r4.z = cmp(9.99999975e-006 < abs(r4.z));
  r4.w = cmp(r2.w >= r1.w);
  r1.w = max(r2.w, r1.w);
  r2.w = r4.w ? r4.y : r4.x;
  r2.w = r4.z ? r2.w : r4.x;
  r2.w = cb3[16].x * r2.w;
  r2.w = r2.w * r1.w;
  r0.x = r1.w * r0.x;
  r0.x = r2.w * r0.x;
  r4.xy = r0.xx * r3.zw;
  r0.x = dot(r4.xy, r4.xy);
  r0.x = sqrt(r0.x);
  r4.z = -1.20000005 * r0.x;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyzw = cb1[92].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb1[91].xyzw + r4.xyzw;
  r1.xyzw = r1.zzzz * cb1[93].xyzw + r4.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xy = cmp(float2(0,0) < r3.xy);
  r1.zw = cmp(r3.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r1.xzw = r2.xyz * r1.xxx;
  r2.xyz = r6.yzw * r1.yyy;
  r3.xyz = cb0[10].xyz * r1.xxx;
  r3.xyz = cb0[9].xyz * r0.zzz + r3.xyz;
  r3.xyz = cb0[11].xyz * r2.xxx + r3.xyz;
  r4.x = dot(v1.xyz, r3.xyz);
  r3.z = dot(v2.xyz, r3.xyz);
  r1.xyz = cb0[10].xyz * r1.zzz;
  r5.xyz = cb0[10].xyz * r1.www;
  r0.xyz = cb0[9].xyz * r0.yyy + r5.xyz;
  r1.xyz = cb0[9].xyz * r0.www + r1.xyz;
  r1.xyz = cb0[11].xyz * r2.yyy + r1.xyz;
  r0.xyz = cb0[11].xyz * r2.zzz + r0.xyz;
  r4.y = dot(v1.xyz, r1.xyz);
  r3.x = dot(v2.xyz, r1.xyz);
  r4.z = dot(v1.xyz, r0.xyz);
  r3.y = dot(v2.xyz, r0.xyz);
  r0.xyz = r4.xyz * r3.xyz;
  r0.xyz = r3.zxy * r4.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = r0.xyz * r3.xyz;
  r0.xyz = r0.zxy * r3.yzx + -r1.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = cb2[4].yyy * cb2[1].xyz;
  r2.xyz = r1.xyz * r0.yyy;
  r1.xyz = r3.xxx * r1.xyz;
  r4.xyz = cb2[4].xxx * cb2[0].xyz;
  r0.xyw = r0.xxx * r4.xyz + r2.xyz;
  r1.xyz = r3.zzz * r4.xyz + r1.xyz;
  r2.xyz = cb2[4].zzz * cb2[2].xyz;
  o3.xyz = r0.zzz * r2.xyz + r0.xyw;
  o4.xyz = r3.yyy * r2.xyz + r1.xyz;
  o3.w = 0;
  o4.w = cb2[4].w * v2.w;
  o5.xy = v4.xy;
  o5.zw = float2(0,0);
  return;
}