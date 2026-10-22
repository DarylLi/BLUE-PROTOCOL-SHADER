// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = (uint2)v0.xy;
  r1.xy = t0.SampleLevel(s0_s, r0.xy, 0).zw;
  r1.y = 255 * r1.y;
  r1.y = round(r1.y);
  r1.y = (uint)r1.y;
  r1.y = (int)r1.y & 15;
  r1.yz = cmp((int2)r1.yy == int2(4,0));
  if (r1.y != 0) {
    r0.xy = t1.SampleLevel(s0_s, r0.xy, 0).xy;
    r0.y = r0.y + -r1.x;
    r1.x = r0.x * r0.y + r1.x;
  }
  r0.x = r1.x * cb0[1].y + 2;
  r0.x = min(1, r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.x = (int)r1.z | (int)r0.x;
  r0.yz = (uint2)r0.zw >> int2(2,2);
  r0.y = (int)r0.z + (int)r0.y;
  r0.y = (int)r0.y & 1;
  r0.y = (uint)r0.y;
  r1.xyzw = r0.yyyy * float4(0,1,0,0) + float4(1,0,0,1);
  r1.xyzw = float4(0.200000003,0.200000003,0.200000003,0.200000003) * r1.xyzw;
  o0.xyzw = r0.xxxx ? float4(0,0,0,0) : r1.xyzw;
  return;
}