// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[30];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[29];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float o3 : TEXCOORD6,
  out float3 p3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(3,3,3) * cb0[3].zxy;
  r0.xyz = cb0[2].zxy * float3(6,6,6) + r0.xyz;
  r0.xyz = cb0[6].zxy * float3(3,3,3) + r0.xyz;
  r0.xyz = -cb0[5].zxy * float3(6,6,6) + r0.xyz;
  r1.xyz = float3(4,4,4) * cb0[3].zxy;
  r1.xyz = cb0[2].zxy * float3(-6,-6,-6) + -r1.xyz;
  r1.xyz = -cb0[6].zxy * float3(2,2,2) + r1.xyz;
  r1.xyz = cb0[5].zxy * float3(6,6,6) + r1.xyz;
  r0.w = dot(v0.xyz, cb0[9].xyz);
  r0.w = r0.w * cb0[8].w + -cb0[6].w;
  r1.xyz = r1.xyz * r0.www;
  r1.w = r0.w * r0.w;
  r0.xyz = r0.xyz * r1.www + r1.xyz;
  r0.xyz = cb0[3].zxy + r0.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.xyz = cb0[8].zxy * r0.zxy;
  r1.xyz = cb0[8].yzx * r0.xyz + -r1.xyz;
  r2.x = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r2.x);
  r1.xyz = r2.xxx * r1.xyz;
  r2.xyz = r1.yzx * r0.xyz;
  r2.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = cmp(0 != cb0[5].w);
  r3.x = saturate(r0.w);
  r3.y = r3.x * -2 + 3;
  r3.x = r3.x * r3.x;
  r3.x = r3.y * r3.x;
  r2.w = r2.w ? r3.x : r0.w;
  r3.x = cb0[3].w + -cb0[2].w;
  r3.x = r2.w * r3.x + cb0[2].w;
  sincos(r3.x, r3.x, r4.x);
  r3.yzw = r3.xxx * r2.xyz;
  r3.yzw = r4.xxx * r1.xyz + -r3.yzw;
  r5.xyzw = cb0[7].xyzw + -cb0[4].xyzw;
  r5.xyzw = r2.wwww * r5.xyzw + cb0[4].xyzw;
  r4.yz = cmp(float2(0,0) < r5.xy);
  r6.xy = cmp(r5.xy < float2(0,0));
  r4.yz = (int2)-r4.yz + (int2)r6.xy;
  r4.yz = (int2)r4.yz;
  r6.xyz = r4.yyy * r3.yzw;
  r3.yzw = r5.xxx * r3.yzw;
  r7.xyz = cb0[10].xyz * r6.xxx;
  r7.xyz = cb0[9].xyz * r0.yyy + r7.xyz;
  r8.xyz = r3.xxx * r1.xyz;
  r4.xyw = r4.xxx * r2.xyz + r8.xyz;
  r8.xyz = r4.xyw * r4.zzz;
  r4.xyz = r4.xyw * r5.yyy;
  r7.xyz = cb0[11].xyz * r8.xxx + r7.xyz;
  r9.x = dot(v1.xyz, r7.xyz);
  r7.z = dot(v2.xyz, r7.xyz);
  r6.xyw = cb0[10].xyz * r6.yyy;
  r10.xyz = cb0[10].xyz * r6.zzz;
  r10.xyz = cb0[9].xyz * r0.xxx + r10.xyz;
  r0.xyz = cb0[9].xyz * r0.zzz + r6.xyw;
  r0.xyz = cb0[11].xyz * r8.yyy + r0.xyz;
  r6.xyz = cb0[11].xyz * r8.zzz + r10.xyz;
  r9.y = dot(v1.xyz, r0.xyz);
  r7.x = dot(v2.xyz, r0.xyz);
  r9.z = dot(v1.xyz, r6.xyz);
  r7.y = dot(v2.xyz, r6.xyz);
  r0.xyz = r9.xyz * r7.xyz;
  r0.xyz = r7.zxy * r9.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r6.xyz = r0.xyz * r7.xyz;
  r0.xyz = r0.zxy * r7.yzx + -r6.xyz;
  r0.xyz = v2.www * r0.xyz;
  r6.xyz = cb2[4].yyy * cb2[1].xyz;
  r8.xyz = r6.xyz * r0.yyy;
  r6.xyz = r7.xxx * r6.xyz;
  r9.xyz = cb2[4].xxx * cb2[0].xyz;
  r8.xyz = r0.xxx * r9.xyz + r8.xyz;
  r6.xyz = r7.zzz * r9.xyz + r6.xyz;
  r7.xzw = cb2[4].zzz * cb2[2].xyz;
  o0.xyz = r0.zzz * r7.xzw + r8.xyz;
  r0.xyz = r7.yyy * r7.xzw + r6.xyz;
  o0.w = 0;
  o1.xyz = r0.xyz;
  o1.w = cb2[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  r2.w = r1.w * r0.w;
  r3.x = -r1.w * 2 + r2.w;
  r3.x = r3.x + r0.w;
  r0.w = r1.w * r0.w + -r1.w;
  r1.w = 3 * r1.w;
  r6.xyz = cb0[3].xyz * r3.xxx;
  r3.x = r2.w * 2 + -r1.w;
  r1.w = r2.w * -2 + r1.w;
  r2.w = 1 + r3.x;
  r6.xyz = r2.www * cb0[2].xyz + r6.xyz;
  r6.xyz = r0.www * cb0[6].xyz + r6.xyz;
  r6.xyz = r1.www * cb0[5].xyz + r6.xyz;
  r1.xyz = r5.zzz * r1.xyz + r6.xyz;
  r1.xyw = r5.www * r2.xyz + r1.xyz;
  r2.w = r1.x;
  r5.xyz = cb0[11].xyz * r4.xxx;
  r2.xyz = cb0[10].xyz * r3.yyy + r5.xyz;
  r0.w = dot(v0.xyzw, r2.xyzw);
  r2.w = r1.y;
  r4.xyw = cb0[11].xyz * r4.yyy;
  r5.xyz = cb0[11].xyz * r4.zzz;
  r1.xyz = cb0[10].xyz * r3.www + r5.xyz;
  r2.xyz = cb0[10].xyz * r3.zzz + r4.xyw;
  r2.x = dot(v0.xyzw, r2.xyzw);
  r2.xyz = cb2[1].xyz * r2.xxx;
  r2.xyz = cb2[0].xyz * r0.www + r2.xyz;
  r0.w = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb2[2].xyz * r0.www + r2.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = -cb1[70].zxy + r1.zxy;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r2.yzw = -r3.xyz + r2.xyz;
  r2.zw = float2(9.99999975e-005,9.99999975e-005) * r2.zw;
  r0.w = r2.y * 9.99999975e-005 + 0.200000003;
  r3.xy = t1.SampleLevel(s1_s, r2.zw, -1).xy;
  r4.xyz = t0.SampleLevel(s0_s, r2.zw, -1).xyz;
  r2.yz = t2.SampleLevel(s2_s, r2.zw, -1).xy;
  r2.yz = float2(-1,-1) + r2.yz;
  r1.w = r4.x + -r4.y;
  r1.w = max(9.99999975e-005, r1.w);
  r2.w = cb4[29].x + r4.y;
  r3.z = -r2.w + r0.w;
  r0.w = -r4.z + r0.w;
  r2.w = r2.w + -r4.z;
  r2.w = max(9.99999975e-005, r2.w);
  r3.z = max(0, r3.z);
  r1.w = r3.z / r1.w;
  r1.w = min(1, r1.w);
  r3.z = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r3.z = min(0.200000003, r3.z);
  r1.w = r3.z * r1.w;
  r3.z = max(0, r0.w);
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.w = r3.z / r2.w;
  r2.w = min(1, r2.w);
  r3.z = 1 + -r2.w;
  r2.w = ceil(r2.w);
  r3.z = min(0.200000003, r3.z);
  r2.w = r3.z * r2.w;
  r2.w = 5 * r2.w;
  r3.z = r1.w * 5 + -r2.w;
  r1.w = 5 * r1.w;
  r3.z = cmp(9.99999975e-006 < abs(r3.z));
  r3.w = cmp(r1.w >= r2.w);
  r1.w = max(r1.w, r2.w);
  r2.w = r3.w ? r3.y : r3.x;
  r2.w = r3.z ? r2.w : r3.x;
  r2.w = cb4[29].y * r2.w;
  r2.w = r2.w * r1.w;
  r3.x = cb4[15].z + cb2[5].z;
  r2.x = -r3.x + r2.x;
  r0.w = min(r2.x, r0.w);
  r0.w = cb4[29].w * r0.w;
  r0.w = r1.w * r0.w;
  r0.w = r2.w * r0.w;
  r2.yz = r0.ww * r2.yz;
  r0.w = dot(r2.yz, r2.yz);
  r0.w = sqrt(r0.w);
  r2.w = -1.20000005 * r0.w;
  r1.xyz = r2.yzw + r1.xyz;
  p3.xyz = r1.xyz;
  o3.x = 0;
  r2.x = cb3[23].z;
  r2.y = cb3[24].z;
  r2.z = cb3[25].z;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb3[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb3[27].z, r0.x);
  r0.x = cb3[27].y * r0.x + cb3[27].x;
  r2.xyzw = cb3[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[19].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb3[21].xyzw + r2.xyzw;
  r1.xyzw = cb3[22].xyzw + r1.xyzw;
  r0.y = cmp(r1.z < 0);
  r0.z = cmp(0 < cb3[28].x);
  r0.y = r0.y ? r0.z : 0;
  r0.yz = r0.yy ? float2(9.99999997e-007,1) : r1.zw;
  o4.xy = r1.xy;
  r0.x = r0.y * cb3[27].w + r0.x;
  o4.z = r0.x * r0.z;
  o4.w = r0.z;
  return;
}