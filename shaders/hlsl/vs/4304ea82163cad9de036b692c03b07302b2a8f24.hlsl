// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  out float2 o0 : TEXCOORD0,
  out float p0 : TEXCOORD6,
  out float p0 : TEXCOORD8,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = floor(cb3[0].x);
  r0.y = exp2(-r0.x);
  r0.z = cb4[5].x * r0.y;
  r1.x = cb4[5].x * r0.y + -1;
  r0.y = 0.5 * r0.z;
  r0.y = max(2, r0.y);
  r1.y = -1 + r0.y;
  r0.yz = cb4[5].yy * r1.xy;
  r0.w = -cb3[0].x + r0.x;
  r0.w = exp2(-r0.w);
  r1.xy = v0.xy * r0.ww;
  r1.xy = floor(r1.xy);
  r1.zw = float2(0.5,0.5) * r1.xy;
  r2.xy = r1.xy / r0.yy;
  r0.yw = floor(r1.zw);
  r1.xy = r0.yw / r0.zz;
  r0.yz = r1.xy * cb4[2].xy + cb4[2].zw;
  r0.yz = cb4[2].xy * float2(0.5,0.5) + r0.yz;
  r0.yz = v0.zw * cb4[6].xy + r0.yz;
  r0.w = 1 + r0.x;
  r3.xyzw = t0.SampleLevel(s0_s, r0.yz, r0.w).xyzw;
  r0.yz = r2.xy * cb4[2].xy + cb4[2].zw;
  r0.yz = cb4[2].xy * float2(0.5,0.5) + r0.yz;
  r0.yz = v0.zw * cb4[6].xy + r0.yz;
  r4.xyzw = t0.SampleLevel(s0_s, r0.yz, r0.x).xyzw;
  r0.x = cb3[0].x + -r0.x;
  r0.yz = -r4.zw + r3.zw;
  r0.w = dot(r3.xy, float2(65280,255));
  r0.w = -32768 + r0.w;
  r1.z = 0.0078125 * r0.w;
  r0.yz = r0.xx * r0.yz + r4.zw;
  r0.w = dot(r4.xy, float2(65280,255));
  r0.w = -32768 + r0.w;
  r2.z = 0.0078125 * r0.w;
  r3.xy = r0.yz * float2(2,2) + float2(-1,-1);
  r0.y = dot(r3.xy, r3.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r3.z = sqrt(r0.y);
  r4.x = cb2[23].z;
  r4.y = cb2[24].z;
  r4.z = cb2[25].z;
  r0.y = dot(r4.xyz, r3.xyz);
  r0.z = -abs(r0.y) * abs(r0.y) + 1;
  r0.z = max(0, r0.z);
  r0.z = sqrt(r0.z);
  r0.z = r0.z / abs(r0.y);
  r0.y = cmp(0 < abs(r0.y));
  r0.y = r0.y ? r0.z : cb2[27].z;
  r0.y = max(0, r0.y);
  r0.y = min(cb2[27].z, r0.y);
  p0.x = cb2[27].y * r0.y + cb2[27].x;
  r0.yzw = -r2.xyz + r1.xyz;
  r0.xyz = r0.xxx * r0.yzw + r2.xyz;
  r1.xy = cb4[6].ww * v0.zw;
  r1.z = 0;
  r1.xyz = r1.xyz + r0.xyz;
  r2.xyz = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb1[3].xyz + cb0[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb2[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb2[19].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb2[21].xyzw + r2.xyzw;
  o3.xyz = r1.xyz;
  r1.xyzw = cb2[22].xyzw + r2.xyzw;
  r0.z = cmp(r1.z < 0);
  r0.w = cmp(0 < cb2[28].x);
  r0.z = r0.z ? r0.w : 0;
  r0.zw = r0.zz ? float2(9.99999997e-007,1) : r1.zw;
  o4.xy = r1.xy;
  p0.x = r0.z;
  o4.zw = r0.zw;
  r0.zw = cb4[5].zw + r0.xy;
  o0.xy = v0.zw * cb4[6].ww + r0.zw;
  r0.zw = r0.xy * cb4[2].xy + cb4[2].zw;
  r0.xy = r0.xy * cb4[3].xy + cb4[3].zw;
  o1.xy = v0.zw * cb4[6].zz + r0.xy;
  r0.xy = cb4[2].xy * float2(0.5,0.5) + r0.zw;
  o1.zw = v0.zw * cb4[6].xy + r0.xy;
  o2.xyzw = float4(0,0,0,0);
  return;
}