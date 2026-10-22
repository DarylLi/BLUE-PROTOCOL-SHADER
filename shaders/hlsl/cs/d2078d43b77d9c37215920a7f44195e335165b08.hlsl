// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[155];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyzw = (uint4)vThreadID.xyyy;
    r0.xyzw = cb1[129].xyyy + r0.xyzw;
    r1.xy = float2(0.5,0.5) + r0.xw;
    r1.xy = cb1[132].zw * r1.xy;
    r2.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
    r1.x = t1.SampleLevel(s0_s, r1.xy, 0).x;
    r1.y = r1.x * cb1[65].x + cb1[65].y;
    r1.x = r1.x * cb1[65].z + -cb1[65].w;
    r1.x = 1 / r1.x;
    r1.x = r1.y + r1.x;
    r1.y = -cb1[154].z + r1.x;
    r1.y = r1.y / r1.x;
    r1.y = cb0[1].x * r1.y;
    r1.x = cb0[2].x * -r1.x;
    r1.x = exp2(r1.x);
    r1.x = 1 + -r1.x;
    r1.x = cb0[2].y * r1.x;
    r1.x = max(abs(r1.y), r1.x);
    r1.y = cmp(r1.y < 0);
    r1.x = r1.y ? -r1.x : r1.x;
    r1.x = max(cb0[1].y, r1.x);
    r1.x = min(cb0[1].z, r1.x);
    r2.w = cb0[2].z * r1.x;
    r0.xyzw = (uint4)r0.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r2.xyzw
  }
  return;
}