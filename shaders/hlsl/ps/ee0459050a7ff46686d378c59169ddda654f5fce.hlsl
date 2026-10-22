// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[227];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb0[226].x) + -1;
  r1.xyzw = float4(0,0,0,0);
  r0.y = 0;
  while (true) {
    r0.w = cmp((int)r0.y >= (int)r0.x);
    if (r0.w != 0) break;
    r0.w = (int)r0.y ^ 2;
    r2.x = max((int)-r0.y, (int)r0.y);
    r2.x = (uint)r2.x >> 1;
    r2.y = -(int)r2.x;
    r0.w = r0.w ? -0.000000 : 0;
    r0.w = r0.w ? r2.y : r2.x;
    r2.xyzw = cb0[r0.w+34].xyzw + v0.xyxy;
    r3.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
    r3.xyzw = r3.xyzw * cb0[r0.y+98].xyzw + r1.xyzw;
    r2.xyzw = t0.SampleLevel(s0_s, r2.zw, 0).xyzw;
    r0.yz = (int2)r0.yy + int2(2,1);
    r1.xyzw = r2.xyzw * cb0[r0.z+98].xyzw + r3.xyzw;
  }
  r0.x = cmp((int)r0.y < asint(cb0[226].x));
  if (r0.x != 0) {
    r0.x = (int)r0.y ^ 2;
    r0.z = max((int)-r0.y, (int)r0.y);
    r0.z = (uint)r0.z >> 1;
    r0.w = -(int)r0.z;
    r0.x = r0.x ? -0.000000 : 0;
    r0.x = r0.x ? r0.w : r0.z;
    r0.xz = cb0[r0.x+34].xy + v0.xy;
    r2.xyzw = t0.SampleLevel(s0_s, r0.xz, 0).xyzw;
    o0.xyzw = r2.xyzw * cb0[r0.y+98].xyzw + r1.xyzw;
  } else {
    o0.xyzw = r1.xyzw;
  }
  return;
}