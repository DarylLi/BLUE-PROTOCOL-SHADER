// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[31];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = vThreadID.xy;
  r0.w = 0;
  r1.w = 0;
  r1.xyz = float3(1,1,1);
  r0.z = 0;
  while (true) {
    r2.x = cmp((uint)r0.z >= asuint(cb0[0].z));
    if (r2.x != 0) break;
    r2.x = t0.Load(r0.xyzw).x;
    r2.xyz = cb0[29].xyz * r2.xxx;
    r2.xyz = -r2.xyz * cb0[30].yyy + r1.xyz;
    r1.xyz = max(cb0[30].xxx, r2.xyz);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzz, r1.xyzw
    r0.z = (int)r0.z + 1;
  }
  return;
}