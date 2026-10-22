// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  if (cb0[0].x == 0) {
    r0.x = 1;
    r0.yz = v0.yx * float2(2,2) + float2(-1,-1);
    o0.xyzw = t0.Sample(s0_s, r0.xyz).xyzw;
  } else {
    r0.x = cmp(asint(cb0[0].x) == 1);
    if (r0.x != 0) {
      r0.x = -1;
      r0.yz = v0.yx * float2(2,-2) + float2(-1,1);
      o0.xyzw = t0.Sample(s0_s, r0.xyz).xyzw;
    } else {
      r0.x = cmp(asint(cb0[0].x) == 2);
      if (r0.x != 0) {
        r0.xz = v0.xy * float2(2,2) + float2(-1,-1);
        r0.y = 1;
        o0.xyzw = t0.Sample(s0_s, r0.xyz).xyzw;
      } else {
        r0.x = cmp(asint(cb0[0].x) == 3);
        if (r0.x != 0) {
          r0.xz = v0.xy * float2(2,-2) + float2(-1,1);
          r0.y = -1;
          o0.xyzw = t0.Sample(s0_s, r0.xyz).xyzw;
        } else {
          r0.x = cmp(asint(cb0[0].x) == 5);
          if (r0.x != 0) {
            r0.xy = v0.xy * float2(-2,2) + float2(1,-1);
            r0.z = 1;
            o0.xyzw = t0.Sample(s0_s, r0.xyz).xyzw;
          } else {
            r0.x = cmp(asint(cb0[0].x) == 4);
            if (r0.x != 0) {
              r0.xy = v0.xy * float2(2,2) + float2(-1,-1);
              r0.z = -1;
              o0.xyzw = t0.Sample(s0_s, r0.xyz).xyzw;
            }
          }
        }
      }
    }
  }
  return;
}