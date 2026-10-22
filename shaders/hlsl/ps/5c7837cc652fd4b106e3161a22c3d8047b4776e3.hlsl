// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[234];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb0[233].x) + -1;
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
    r2.xyzw = cb0[r0.w+41].xyzw + v0.xyxy;
    r3.xyzw = max(cb0[33].xyxy, r2.xyzw);
    r3.xyzw = min(cb0[33].zwzw, r3.xyzw);
    r4.xyzw = t0.SampleLevel(s0_s, r3.xy, 0).xyzw;
    r2.xyzw = r3.xyzw + -r2.xyzw;
    r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
    r2.xy = r2.xz * r2.yw;
    r4.xyzw = r2.xxxx * r4.xyzw;
    r4.xyzw = r4.xyzw * cb0[r0.y+105].xyzw + r1.xyzw;
    r3.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
    r2.xyzw = r3.xyzw * r2.yyyy;
    r0.yz = (int2)r0.yy + int2(2,1);
    r1.xyzw = r2.xyzw * cb0[r0.z+105].xyzw + r4.xyzw;
  }
  r0.x = cmp((int)r0.y < asint(cb0[233].x));
  if (r0.x != 0) {
    r0.x = (int)r0.y ^ 2;
    r0.z = max((int)-r0.y, (int)r0.y);
    r0.z = (uint)r0.z >> 1;
    r0.w = -(int)r0.z;
    r0.x = r0.x ? -0.000000 : 0;
    r0.x = r0.x ? r0.w : r0.z;
    r0.xz = cb0[r0.x+41].xy + v0.xy;
    r2.xy = max(cb0[33].xy, r0.xz);
    r2.xy = min(cb0[33].zw, r2.xy);
    r3.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
    r0.xz = r2.xy + -r0.xz;
    r0.xz = saturate(-abs(r0.xz) * cb0[27].xy + float2(1,1));
    r0.x = r0.x * r0.z;
    r2.xyzw = r0.xxxx * r3.xyzw;
    r1.xyzw = r2.xyzw * cb0[r0.y+105].xyzw + r1.xyzw;
  }
  r0.xy = max(cb0[40].xy, v0.xy);
  r0.xy = min(cb0[40].zw, r0.xy);
  r0.xyzw = t1.SampleLevel(s1_s, r0.xy, 0).xyzw;
  o0.xyzw = r1.xyzw + r0.xyzw;
  return;
}