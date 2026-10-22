// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

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
  r0.y = 255 * r0.y;
  r0.y = round(r0.y);
  r0.y = (uint)r0.y;
  r0.y = (int)r0.y & 15;
  r3.xyzw = cmp((int4)r0.yyyy == int4(12,13,9,5));
  r4.xy = cmp((int2)r0.yy != int2(0,14));
  r3.xy = (int2)r3.yz | (int2)r3.xw;
  r0.x = r3.z ? 0 : r0.x;
  r1.xyz = r3.yyy ? r1.xyz : r2.xyz;
  r1.xyz = -r1.xyz * r0.xxx + r1.xyz;
  r1.xyz = r3.xxx ? r2.xyz : r1.xyz;
  r1.xyz = r1.xyz * cb1[136].www + cb1[136].xyz;
  r1.xyz = r3.yyy ? r2.xyz : r1.xyz;
  r0.x = r3.x ? r2.w : 1;
  r0.y = ~(int)r3.x;
  r0.y = r4.x ? r0.y : 0;
  r0.y = r4.y ? r0.y : 0;
  r0.y = (int)r0.y & 0x3f800000;
  r0.y = cb0[0].y * r0.y;
  r2.xyz = t3.SampleLevel(s2_s, r0.zw, 0).xyz;
  r0.z = t2.SampleLevel(s1_s, r0.zw, 0).x;
  r0.x = r0.x * r0.z + -1;
  o0.w = r0.y * r0.x + 1;
  o0.xyz = r2.xyz * r1.xyz;
  return;
}