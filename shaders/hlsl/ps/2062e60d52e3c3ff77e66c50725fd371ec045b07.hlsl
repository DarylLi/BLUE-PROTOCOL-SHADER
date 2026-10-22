// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[21];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = min(cb0[20].xy, v0.xy);
  r0.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r1.x = cmp(r0.w < 0);
  if (r1.x != 0) {
    r1.xyzw = float4(0,0,0,0);
    r2.y = -2;
    while (true) {
      r2.z = cmp(2 < r2.y);
      if (r2.z != 0) break;
      r3.xyz = r1.xyz;
      r2.z = r1.w;
      r2.x = -2;
      while (true) {
        r2.w = cmp(2 < r2.x);
        if (r2.w != 0) break;
        r4.xy = cb0[19].yz * r2.xy + v0.xy;
        r4.xy = min(cb0[20].xy, r4.xy);
        r4.xyzw = t0.SampleLevel(s0_s, r4.xy, 0).xyzw;
        r2.w = cmp(0 < r4.w);
        r2.w = r2.w ? 1.000000 : 0;
        r3.w = -abs(r4.w) + abs(r0.w);
        r3.w = -1000 * abs(r3.w);
        r3.w = r3.w / abs(r0.w);
        r3.w = exp2(r3.w);
        r5.xy = float2(5,5) * r2.xy;
        r5.xy = exp2(-abs(r5.xy));
        r4.w = max(r5.x, r5.y);
        r2.w = r4.w * r2.w;
        r4.w = r2.w * r3.w;
        r3.xyz = r4.xyz * r4.www + r3.xyz;
        r2.z = r2.w * r3.w + r2.z;
        r2.x = 1 + r2.x;
      }
      r1.xyz = r3.xyz;
      r1.w = r2.z;
      r2.y = 1 + r2.y;
    }
    r2.x = cmp(0 < r1.w);
    r1.w = 1 / r1.w;
    r1.xyz = r1.xyz * r1.www + -r0.xyz;
    r1.xyz = cb0[13].zzz * r1.xyz + r0.xyz;
    o0.xyz = r2.xxx ? r1.xyz : r0.xyz;
  } else {
    o0.xyz = r0.xyz;
  }
  o0.w = abs(r0.w);
  return;
}