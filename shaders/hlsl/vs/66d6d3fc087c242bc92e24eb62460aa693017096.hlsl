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
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
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
  out float4 o0 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5;
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
  r3.xyzw = cb0[7].zwxy + -cb0[4].zwxy;
  r3.xyzw = r0.xxxx * r3.xyzw + cb0[4].zwxy;
  r1.xyz = r3.xxx * r2.xyz + r1.xyz;
  r4.xyz = r2.yzx * r0.yzw;
  r0.yzw = r0.wyz * r2.zxy + -r4.xyz;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r1.xyw = r3.yyy * r0.yzw + r1.xyz;
  r4.w = r1.y;
  r2.w = cb0[3].w + -cb0[2].w;
  r0.x = r0.x * r2.w + cb0[2].w;
  sincos(r0.x, r0.x, r3.x);
  r5.xyz = r0.xxx * r2.xyz;
  r5.xyz = r3.xxx * r0.yzw + r5.xyz;
  r0.xyz = r0.xxx * r0.yzw;
  r0.xyz = r3.xxx * r2.xyz + -r0.xyz;
  r0.xyz = r0.xyz * r3.zzz;
  r2.xyz = r5.xyz * r3.www;
  r3.xyz = cb0[11].xyz * r2.yyy;
  r4.xyz = cb0[10].xyz * r0.yyy + r3.xyz;
  r0.y = dot(v0.xyzw, r4.xyzw);
  r3.xyz = cb2[1].xyz * r0.yyy;
  r4.w = r1.x;
  r2.xyw = cb0[11].xyz * r2.xxx;
  r5.xyz = cb0[11].xyz * r2.zzz;
  r1.xyz = cb0[10].xyz * r0.zzz + r5.xyz;
  r4.xyz = cb0[10].xyz * r0.xxx + r2.xyw;
  r0.x = dot(v0.xyzw, r4.xyzw);
  r0.xyz = cb2[0].xyz * r0.xxx + r3.xyz;
  r0.w = dot(v0.xyzw, r1.xyzw);
  r0.xyz = cb2[2].xyz * r0.www + r0.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = -cb1[70].zxy + r0.zxy;
  r2.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r2.xyz = floor(r2.xyz);
  r2.xyz = r2.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.yzw = -r2.xyz + r1.xyz;
  r1.zw = float2(9.99999975e-005,9.99999975e-005) * r1.zw;
  r0.w = r1.y * 9.99999975e-005 + 0.200000003;
  r2.xyz = t0.SampleLevel(s0_s, r1.zw, -1).xyz;
  r1.y = r2.x + -r2.y;
  r1.y = max(9.99999975e-005, r1.y);
  r2.x = cb3[15].w + r2.y;
  r2.y = -r2.x + r0.w;
  r0.w = -r2.z + r0.w;
  r2.x = r2.x + -r2.z;
  r2.xy = max(float2(9.99999975e-005,0), r2.xy);
  r1.y = r2.y / r1.y;
  r1.y = min(1, r1.y);
  r2.y = 1 + -r1.y;
  r1.y = ceil(r1.y);
  r2.y = min(0.200000003, r2.y);
  r1.y = r2.y * r1.y;
  r2.y = max(0, r0.w);
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.x = r2.y / r2.x;
  r2.x = min(1, r2.x);
  r2.y = 1 + -r2.x;
  r2.x = ceil(r2.x);
  r2.y = min(0.200000003, r2.y);
  r2.x = r2.x * r2.y;
  r2.x = 5 * r2.x;
  r2.y = r1.y * 5 + -r2.x;
  r1.y = 5 * r1.y;
  r2.y = cmp(9.99999975e-006 < abs(r2.y));
  r2.zw = t1.SampleLevel(s1_s, r1.zw, -1).xy;
  r1.zw = t2.SampleLevel(s2_s, r1.zw, -1).xy;
  r1.zw = float2(-1,-1) + r1.zw;
  r3.x = cmp(r1.y >= r2.x);
  r1.y = max(r1.y, r2.x);
  r2.x = r3.x ? r2.w : r2.z;
  r2.x = r2.y ? r2.x : r2.z;
  r2.x = cb3[16].x * r2.x;
  r2.x = r2.x * r1.y;
  r2.y = cb3[8].z + cb2[5].z;
  r1.x = -r2.y + r1.x;
  r0.w = min(r1.x, r0.w);
  r0.w = cb3[16].z * r0.w;
  r0.w = r1.y * r0.w;
  r0.w = r2.x * r0.w;
  r1.xy = r0.ww * r1.zw;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}