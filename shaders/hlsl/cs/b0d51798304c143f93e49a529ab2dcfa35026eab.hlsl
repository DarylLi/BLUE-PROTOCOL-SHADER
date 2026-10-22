// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)cb0[1].xy;
  r0.xy = cmp((uint2)vThreadID.xy < (uint2)r0.xy);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = (uint2)vThreadID.xy;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r1.xyz = float3(0,0,0);
    r0.z = 0.125;
    while (true) {
      r0.w = cmp(r0.z >= 4);
      if (r0.w != 0) break;
      r0.w = 1.57079637 * r0.z;
      sincos(r0.w, r2.x, r3.x);
      r4.xyz = r1.xyz;
      r4.w = 0.125;
      while (true) {
        r0.w = cmp(r4.w >= 4);
        if (r0.w != 0) break;
        r0.w = cb0[3].y * r4.w;
        r0.w = r0.w * 0.25 + cb0[3].z;
        r1.w = -r0.w * r0.w + 1;
        r1.w = sqrt(r1.w);
        r5.x = r1.w * r3.x;
        r5.y = r1.w * r2.x;
        r2.yz = cb0[3].xx * r5.xy;
        r0.w = max(1.00000001e-007, r0.w);
        r2.yz = r2.yz / r0.ww;
        r2.yz = cb0[2].zw * r2.yz;
        r2.yz = cb0[1].zw * r2.yz;
        r2.yz = r0.xy * cb0[1].zw + r2.yz;
        r2.yzw = t0.SampleLevel(s0_s, r2.yz, 0).xyz;
        r4.xy = r4.xy + r2.yz;
        r0.w = -1.44269502 * r2.w;
        r0.w = exp2(r0.w);
        r4.z = r4.z + r0.w;
        r4.w = 1 + r4.w;
      }
      r1.xyz = r4.xyz;
      r0.z = 1 + r0.z;
    }
    r0.x = cmp(0 < r1.z);
    r1.xyz = float3(0.0625,0.0625,0.0625) * r1.xyz;
    r0.y = log2(r1.z);
    r0.y = 0.693147182 * r0.y;
    r1.w = r0.x ? -r0.y : 100;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xywx
  }
  return;
}