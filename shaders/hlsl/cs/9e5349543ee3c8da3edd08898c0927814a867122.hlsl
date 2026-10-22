// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

Buffer<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 256, 1, 1
  r0.xyz = cmp((uint3)vThreadGroupID.xyz < asuint(cb0[27].yzw));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.z ? r0.x : 0;
  if (r0.x != 0) {
    r0.x = mad((int)vThreadGroupID.z, asint(cb0[27].z), (int)vThreadGroupID.y);
    r0.x = mad((int)r0.x, asint(cb0[27].y), (int)vThreadGroupID.x);
    r0.y = t0.Load(float4(1,1,1,1)).x;
    r1.xyz = float3(8,8,8) * cb0[25].xyz;
    r0.z = cb0[24].y;
    r1.xyz = cb0[r0.z+14].www * r1.xyz;
    r2.xyz = (uint3)vThreadGroupID.xyz;
    r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
    r2.xyz = r2.xyz * float3(16,16,16) + float3(0.5,0.5,0.5);
    r2.xyz = cb0[25].xyz * r2.xyz;
    r2.xyz = cb0[r0.z+14].www * r2.xyz;
    r2.xyz = r2.xyz * float3(2,2,2) + cb0[26].xyz;
    r0.z = (uint)r0.x << 11;
    r0.w = vThreadIDInGroup.x;
    while (true) {
      r1.w = cmp((uint)r0.w >= (uint)r0.y);
      if (r1.w != 0) break;
      r3.x = t1[r0.w].val[0/4];
      r3.y = t1[r0.w].val[0/4+1];
      r3.z = t1[r0.w].val[0/4+2];
      r3.w = t1[r0.w].val[0/4+3];
      r3.xyz = r3.xyz + -r2.xyz;
      r3.xyz = -r1.xyz * float3(2,2,2) + abs(r3.xyz);
      r3.xyz = max(float3(0,0,0), r3.xyz);
      r1.w = dot(r3.xyz, r3.xyz);
      r2.w = cb0[22].w + r3.w;
      r2.w = r2.w * r2.w;
      r1.w = cmp(r1.w < r2.w);
      if (r1.w != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r3.x, u0, r0.x, l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r1.w = cmp((uint)r3.x < 2048);
        if (r1.w != 0) {
          r1.w = (int)r0.z + (int)r3.x;
        // No code for instruction (needs manual fix):
                store_uav_typed u1.xyzw, r1.wwww, r0.wwww
        }
      }
      r0.w = (int)r0.w + 256;
    }
  }
  return;
}