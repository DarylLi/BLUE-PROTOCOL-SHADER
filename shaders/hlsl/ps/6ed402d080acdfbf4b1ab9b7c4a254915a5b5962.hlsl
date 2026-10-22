// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[208];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[132].xy * v0.xy;
  r0.xy = (uint2)r0.xy;
  r0.x = (int)r0.y + (int)r0.x;
  r0.y = (uint)cb0[152].x;
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x & 1;
  r0.x = r0.x ? 1 : 0;
  r0.y = cmp(0 < cb0[156].y);
  r0.z = cmp(0 < cb0[207].z);
  r0.y = r0.z ? r0.y : 0;
  r0.z = cmp(0 != cb0[156].y);
  r1.xyz = t1.SampleLevel(s0_s, v0.xy, 0).xyz;
  r2.xyz = r0.zzz ? float3(1,1,1) : r1.xyz;
  r0.xyz = r0.yyy ? r0.xxx : r2.xyz;
  r0.w = t0.SampleLevel(s0_s, v0.xy, 0).w;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r2.xyzw = cmp((int4)r0.wwww == int4(12,13,5,9));
  r2.xy = (int2)r2.yw | (int2)r2.xz;
  r0.xyz = r2.yyy ? r0.xyz : r1.xyz;
  o0.xyz = r2.xxx ? r1.xyz : r0.xyz;
  o0.w = 0;
  return;
}