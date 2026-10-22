// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[197];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[18];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.z = t1.SampleLevel(s0_s, r0.xy, 0).w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r0.zw = cmp((int2)r0.zz == int2(12,13));
  r0.z = (int)r0.w | (int)r0.z;
  if (r0.z != 0) {
    o0.xyzw = float4(1,1,1,1);
    o1.xyzw = float4(1,1,1,1);
  } else {
    r0.zw = asuint(cb0[13].xy);
    r0.zw = -r0.zw * cb1[132].zw + r0.xy;
    r0.z = t2.SampleLevel(s1_s, r0.zw, 0).x;
    r0.z = cb0[17].y + r0.z;
    r0.z = min(1, r0.z);
    r0.w = cmp(0 < cb0[17].x);
    if (r0.w != 0) {
      o0.xyzw = sqrt(r0.zzzz);
    } else {
      r0.w = cmp(cb1[196].y < 1);
      if (r0.w != 0) {
        r0.x = t0.SampleLevel(s0_s, r0.xy, 0).w;
        r0.x = 3.99900007 * r0.x;
        r0.x = (uint)r0.x;
        r0.x = (int)r0.x & 2;
        r0.x = r0.x ? cb1[196].y : 1;
        r0.y = -1 + r0.z;
        r0.z = r0.x * r0.y + 1;
      }
      o0.xyzw = r0.zzzz;
    }
    o1.xyzw = r0.zzzz;
  }
  return;
}