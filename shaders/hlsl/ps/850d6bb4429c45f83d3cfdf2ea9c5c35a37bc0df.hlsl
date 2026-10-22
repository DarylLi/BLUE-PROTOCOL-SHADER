// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r1.xyz = t1.Sample(s1_s, v0.xy).xyz;
  r1.xyz = cmp(r1.xyz != float3(0,0,0));
  r1.x = r1.y ? r1.x : 0;
  r1.x = r1.z ? r1.x : 0;
  r2.xyzw = r0.xyzw;
  r3.y = 2;
  r1.y = 10;
  while (true) {
    r1.z = cmp(r3.y < -2);
    if (r1.z != 0) break;
    r1.z = r3.y * r3.y;
    r4.xyzw = r2.xyzw;
    r3.x = -2;
    r1.w = r1.y;
    while (true) {
      r3.z = cmp(2 < r3.x);
      if (r3.z != 0) break;
      r3.zw = r3.xy * cb0[0].xy + v0.xy;
      r5.xyzw = t0.Sample(s0_s, r3.zw).xyzw;
      r6.xyz = t2.Sample(s2_s, r3.zw).xyz;
      r6.xyz = cmp(r6.xyz != float3(0,0,0));
      r3.z = r6.y ? r6.x : 0;
      r3.z = r6.z ? r3.z : 0;
      r3.z = r1.x ? r3.z : 0;
      r3.w = r3.x * r3.x + r1.z;
      r3.w = (int)r3.w;
      r6.x = cmp((int)r3.w < (int)r1.w);
      r3.z = r6.x ? r3.z : 0;
      r4.xyzw = r3.zzzz ? r5.xyzw : r4.xyzw;
      r1.w = r3.z ? r3.w : r1.w;
      r3.x = 1 + r3.x;
    }
    r2.xyzw = r4.xyzw;
    r1.y = r1.w;
    r3.y = -1 + r3.y;
  }
  o0.xyzw = r2.xyzw;
  return;
}