// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[3];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_resource_raw t1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xy = (uint2)vThreadID.zy << int2(10,5);
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + (int)vThreadID.x;
  r0.y = (uint)r0.x << 2;
  r0.y = (int)r0.y + 256;
// No code for instruction (needs manual fix):
ld_raw_indexable(raw_buffer)(mixed,mixed,mixed,mixed) r0.y, r0.y, t1.xxxx
  r0.y = (int)r0.y + -1;
  r0.z = 0.25 * cb0[10].x;
  r1.xyzw = float4(0,0,0,0);
  r0.w = r0.y;
  r2.xyzw = float4(0,0,0,0);
  while (true) {
    r3.x = cmp((int)r0.w == -1);
    if (r3.x != 0) break;
    r3.x = t0[r0.w].val[0/4];
    r3.y = t0[r0.w].val[0/4+1];
    r3.z = t0[r0.w].val[0/4+2];
    r3.w = (uint)r3.y >> 24;
    r4.x = (uint)r3.w;
    if (8 == 0) r5.x = 0; else if (8+16 < 32) {     r5.x = (uint)r3.y << (32-(8 + 16)); r5.x = (uint)r5.x >> (32-8);    } else r5.x = (uint)r3.y >> 16;
    if (8 == 0) r5.y = 0; else if (8+8 < 32) {     r5.y = (uint)r3.x << (32-(8 + 8)); r5.y = (uint)r5.y >> (32-8);    } else r5.y = (uint)r3.x >> 8;
    if (8 == 0) r5.z = 0; else if (8+16 < 32) {     r5.z = (uint)r3.x << (32-(8 + 16)); r5.z = (uint)r5.z >> (32-8);    } else r5.z = (uint)r3.x >> 16;
    r5.yzw = (uint3)r5.xyz;
    r3.w = r5.y + r4.x;
    r4.z = 255 + -r3.w;
    r3.y = f16tof32(r3.y);
    r4.y = r5.y;
    r4.xyz = r4.xyz * r3.yyy;
    r4.xyz = r4.xyz * r0.zzz;
    r3.x = r3.x ? 0.000000 : 0;
    r5.x = (uint)r3.x;
    r3.xyw = r5.zwx * float3(0.00787401572,0.00787401572,0.00787401572) + float3(-1,-1,-1);
    r4.w = dot(cb0[5].yzx, r3.xyw);
    r4.w = max(0.25, abs(r4.w));
    r4.w = 0.150000006 / r4.w;
    r4.xyz = r4.xyz * float3(0.00392156886,0.00392156886,0.00392156886) + r2.xyz;
    r4.w = r4.w * r0.z;
    r5.x = r4.w * 0.282094985 + r1.x;
    r3.xyw = r4.www * r3.xyw;
    r5.yzw = r3.xyw * float3(0.488602996,0.488602996,0.488602996) + r1.yzw;
    r3.x = (int)r2.w + 1;
    r3.y = cmp(128 < (uint)r3.x);
    if (r3.y != 0) {
      r1.xyzw = r5.xyzw;
      r2.xyz = r4.xyz;
      r2.w = r3.x;
      break;
    }
    r0.w = (int)r3.z + -1;
    r1.xyzw = r5.xyzw;
    r2.xyz = r4.xyz;
    r2.w = r3.x;
  }
  r0.y = max(1, (uint)r2.w);
  r0.y = (uint)r0.y;
  r2.xyz = r2.xyz / r0.yyy;
  r3.x = (int)r0.x & 31;
  if (5 == 0) r3.y = 0; else if (5+5 < 32) {   r3.y = (uint)r0.x << (32-(5 + 5)); r3.y = (uint)r3.y >> (32-5);  } else r3.y = (uint)r0.x >> 5;
  r3.zw = (uint2)r0.xx >> int2(10,10);
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r3.xyww, r1.xyzw
  r2.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u1.xyzw, r3.xyzw, r2.xyzw
  return;
}