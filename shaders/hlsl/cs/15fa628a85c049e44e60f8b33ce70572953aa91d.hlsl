// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadGroupID.x < asuint(cb0[1].y));
  r1.y = asint(cb0[1].x) + 1;
  r1.x = (int)r1.y * (int)vThreadGroupID.x;
  r2.x = mad((int)vThreadGroupID.x, asint(cb0[1].x), asint(cb0[1].y));
  r2.y = cb0[1].x;
  r0.xy = r0.xx ? r1.xy : r2.xy;
  bitmask.x = ((~(-1 << 26)) << 6) & 0xffffffff;  r0.x = (((uint)r0.x << 6) & bitmask.x) | ((uint)vThreadIDInGroup.x & ~bitmask.x);
  r0.z = (int)r0.x + asint(cb0[1].z);
  r1.zw = float2(0,0);
  r0.w = cb0[2].x;
  r2.xy = r0.xz;
  r2.z = 0;
  while (true) {
    r2.w = cmp((uint)r2.z >= (uint)r0.y);
    if (r2.w != 0) break;
    r2.w = cmp((uint)r2.x < (uint)r0.w);
    if (r2.w != 0) {
      r3.xy = t0.Load(r2.x).xy;
      r3.zw = float2(1024,1024) * r3.xy;
      r1.xy = (int2)r3.zw;
      r4.xyz = t1.Load(r1.xyz).xyz;
      r4.xyz = -cb0[0].xyz + r4.xyz;
      r1.x = dot(r4.xyz, r4.xyz);
      r1.x = sqrt(r1.x);
      r1.x = f32tof16(r1.x);
      r1.x = ~(int)r1.x;
      r1.x = (int)r1.x & 0x0000ffff;
      r1.x = (int)r1.x | asint(cb0[1].w);
    // No code for instruction (needs manual fix):
        store_uav_typed u0.xyzw, r2.yyyy, r1.xxxx
    // No code for instruction (needs manual fix):
        store_uav_typed u1.xyzw, r2.yyyy, r3.xyxx
    }
    r2.xyz = (int3)r2.xyz + int3(64,64,1);
  }
  return;
}