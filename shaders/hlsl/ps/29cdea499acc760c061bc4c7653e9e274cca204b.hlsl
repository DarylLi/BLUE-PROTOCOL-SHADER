// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[208];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < cb1[156].y);
  r0.y = cmp(0 < cb1[207].z);
  r0.x = r0.y ? r0.x : 0;
  r0.y = (uint)cb1[152].x;
  r0.zw = cb1[132].zw * v0.xy;
  r1.xy = cb1[132].xy * r0.zw;
  r1.xy = (uint2)r1.xy;
  r1.x = (int)r1.y + (int)r1.x;
  r0.y = (int)r0.y + (int)r1.x;
  r0.y = (int)r0.y & 1;
  r0.y = r0.y ? 1 : 0;
  r1.x = cmp(0 != cb1[156].y);
  r2.xyzw = t1.SampleLevel(s0_s, r0.zw, 0).xyzw;
  r1.xyz = r1.xxx ? float3(1,1,1) : r2.xyz;
  r1.xyz = r0.xxx ? r0.yyy : r1.xyz;
  r0.xy = t0.SampleLevel(s0_s, r0.zw, 0).xw;
  r3.xyz = t2.SampleLevel(s1_s, r0.zw, 0).xyz;
  r0.y = 255 * r0.y;
  r0.y = round(r0.y);
  r0.y = (uint)r0.y;
  r0.y = (int)r0.y & 15;
  r4.xyzw = cmp((int4)r0.yyyy == int4(12,13,9,5));
  r0.yz = cmp((int2)r0.yy != int2(0,14));
  r4.xy = (int2)r4.yz | (int2)r4.xw;
  r0.x = r4.z ? 0 : r0.x;
  r1.xyz = r4.yyy ? r1.xyz : r2.xyz;
  r1.xyz = -r1.xyz * r0.xxx + r1.xyz;
  r1.xyz = r4.xxx ? r2.xyz : r1.xyz;
  r1.xyz = r1.xyz * cb1[136].www + cb1[136].xyz;
  r1.xyz = r4.yyy ? r2.xyz : r1.xyz;
  r0.x = -1 + r2.w;
  o0.xyz = r1.xyz * r3.xyz;
  r0.w = ~(int)r4.x;
  r0.y = r0.y ? r0.w : 0;
  r0.y = r0.z ? r0.y : 0;
  r0.y = r0.y ? 1.000000 : 0;
  r0.y = cb0[0].y * r0.y;
  r0.x = r0.y * r0.x + 1;
  o0.w = r4.x ? r0.x : 1;
  return;
}