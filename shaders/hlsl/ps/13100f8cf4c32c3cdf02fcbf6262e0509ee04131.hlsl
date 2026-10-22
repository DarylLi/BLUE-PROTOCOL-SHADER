// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[26];
}




// 3Dmigoto declarations
#define cmp -


void main(
  nointerpolation float4 v0 : TEXCOORD0,
  nointerpolation uint v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u2
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v2.yx;
  r0.xy = (uint2)r0.xy;
  r0.x = r0.x * cb0[25].x + r0.y;
  r0.x = (uint)r0.x;
  r1.xyzw = t3.Load(r0.x).xyzw;
  r0.y = r1.w * r1.w;
  r0.z = -r1.w * r1.w + 1;
  r0.z = sqrt(r0.z);
  r2.xyz = cb1[70].xyz + v0.xyz;
  r3.xyz = cb1[13].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb1[12].xyz + r3.xyz;
  r2.xyz = r2.zzz * cb1[14].xyz + r2.xyw;
  r2.xyz = cb1[15].xyz + r2.xyz;
  r0.w = cb0[8].x * 0.5 + v0.w;
  r2.w = r0.w / r0.z;
  r3.xyz = r2.www * r1.xyz + r2.xyz;
  r2.w = dot(r3.xyz, r3.xyz);
  r3.x = dot(r1.xyz, r3.xyz);
  r3.y = cmp(0 < r3.x);
  r3.x = r3.x * r3.x;
  r0.y = r2.w * r0.y;
  r0.y = cmp(r3.x >= r0.y);
  r0.y = r0.y ? r3.y : 0;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.x = dot(r1.xyz, r2.xyz);
  r2.y = cmp(0 < -r2.x);
  r2.z = r2.x * r2.x;
  r3.x = r0.z * r0.z;
  r3.x = r3.x * r2.w;
  r2.z = cmp(r2.z >= r3.x);
  r2.y = r2.z ? r2.y : 0;
  r2.z = r0.w * r0.w;
  r2.z = cmp(r2.z >= r2.w);
  r2.y = r2.y ? r2.z : -1;
  r0.y = r0.y ? r2.y : 0;
  if (r0.y != 0) {
    r3.xyzw = t4.Load(r0.x).xyzw;
    r0.y = r2.x + r0.w;
    r0.w = r2.x + -r0.w;
    r2.x = cmp(r3.x < r0.y);
    r2.y = cmp(r0.w < r3.y);
    r2.x = r2.y ? r2.x : 0;
    if (r2.x != 0) {
      r2.x = r3.x + r3.y;
      r2.x = 0.5 * r2.x;
      r2.xyz = r2.xxx * r1.xyz;
      r4.xyz = cb1[17].xyz * r2.yyy;
      r2.xyw = r2.xxx * cb1[16].xyz + r4.xyz;
      r2.xyz = r2.zzz * cb1[18].xyz + r2.xyw;
      r2.xyz = cb1[19].xyz + r2.xyz;
      r2.xyz = -cb1[70].xyz + r2.xyz;
      r3.x = r3.y + -r3.x;
      r3.x = 0.5 * r3.x;
      r3.y = r3.y * r0.z;
      r3.y = r3.y / r1.w;
      r3.y = r3.y * r3.y;
      r3.x = r3.x * r3.x + r3.y;
      r3.x = sqrt(r3.x);
      r3.y = (int)v1.x * 17;
      r4.xyzw = mad((int4)v1.xxxx, int4(17,17,17,17), int4(3,1,2,4));
      r5.x = t1[r4.x].val[0/4];
      r5.y = t1[r4.x].val[0/4+1];
      r5.z = t1[r4.x].val[0/4+2];
      r6.x = t1[r3.y].val[0/4];
      r6.y = t1[r3.y].val[0/4+1];
      r6.z = t1[r3.y].val[0/4+2];
      r6.w = t1[r3.y].val[0/4+3];
      r7.x = t1[r4.y].val[0/4];
      r7.y = t1[r4.y].val[0/4+1];
      r7.z = t1[r4.y].val[0/4+2];
      r7.w = t1[r4.y].val[0/4+3];
      r8.x = t1[r4.z].val[0/4];
      r8.y = t1[r4.z].val[0/4+1];
      r8.z = t1[r4.z].val[0/4+2];
      r8.w = t1[r4.z].val[0/4+3];
      r4.x = t1[r4.w].val[0/4];
      r4.y = t1[r4.w].val[0/4+1];
      r4.z = t1[r4.w].val[0/4+2];
      r4.w = t1[r4.w].val[0/4+3];
      r2.w = 1;
      r6.x = dot(r2.xyzw, r6.xyzw);
      r6.y = dot(r2.xyzw, r7.xyzw);
      r6.z = dot(r2.xyzw, r8.xyzw);
      r2.xyz = cmp(r6.xyz < -r5.xyz);
      r7.xyz = r6.xyz + r5.xyz;
      r7.xyz = abs(r7.xyz);
      r2.xyz = r2.xyz ? r7.xyz : 0;
      r7.xyz = cmp(r5.xyz < r6.xyz);
      r8.xyz = r6.xyz + -r5.xyz;
      r8.xyz = abs(r8.xyz);
      r7.xyz = r7.xyz ? r8.xyz : 0;
      r2.x = dot(r2.xyz, float3(1,1,1));
      r2.y = dot(r7.xyz, float3(1,1,1));
      r2.x = r2.x + r2.y;
      r2.x = r2.x * abs(r4.w);
      r2.y = cb0[8].x + r3.x;
      r2.x = cmp(r2.x < r2.y);
      if (r2.x != 0) {
        r2.xz = mad((int2)v1.xx, int2(17,17), int2(5,6));
        r7.x = t1[r2.x].val[0/4];
        r7.y = t1[r2.x].val[0/4+1];
        r7.z = t1[r2.x].val[0/4+2];
        r2.x = t1[r2.z].val[0/4];
        r2.z = t1[r2.z].val[0/4+1];
        r8.xyz = max(r6.xyz, -r5.xyz);
        r5.xyz = min(r8.xyz, r5.xyz);
        r6.xyz = r6.xyz + -r5.xyz;
        r2.w = dot(r6.xyz, r6.xyz);
        r2.w = sqrt(r2.w);
        r4.xyz = r5.xyz * r4.xyz + r7.xyz;
        r3.x = t0.SampleLevel(s0_s, r4.xyz, 0).x;
        r2.x = r3.x * r2.x + r2.z;
        r2.x = r2.x + r2.w;
        r2.x = r2.x * abs(r4.w);
        r2.x = cmp(r2.x < r2.y);
        if (r2.x != 0) {
          r2.y = -1;
        }
      } else {
        r2.x = 0;
      }
    } else {
      r2.x = 0;
    }
    r2.x = (int)r2.y & (int)r2.x;
    if (r2.x == 0) {
      r0.y = cmp(r3.z < r0.y);
      r0.w = cmp(r0.w < r3.w);
      r0.y = r0.w ? r0.y : 0;
      if (r0.y != 0) {
        r0.y = r3.z + r3.w;
        r0.y = 0.5 * r0.y;
        r1.xyz = r1.xyz * r0.yyy;
        r2.xyz = cb1[17].xyz * r1.yyy;
        r2.xyz = r1.xxx * cb1[16].xyz + r2.xyz;
        r1.xyz = r1.zzz * cb1[18].xyz + r2.xyz;
        r1.xyz = cb1[19].xyz + r1.xyz;
        r2.xyz = -cb1[70].xyz + r1.xyz;
        r0.y = r3.w + -r3.z;
        r0.y = 0.5 * r0.y;
        r0.z = r3.w * r0.z;
        r0.z = r0.z / r1.w;
        r0.z = r0.z * r0.z;
        r0.y = r0.y * r0.y + r0.z;
        r0.y = sqrt(r0.y);
        r0.z = (int)v1.x * 17;
        r1.xyzw = mad((int4)v1.xxxx, int4(17,17,17,17), int4(3,1,2,4));
        r3.x = t1[r1.x].val[0/4];
        r3.y = t1[r1.x].val[0/4+1];
        r3.z = t1[r1.x].val[0/4+2];
        r4.x = t1[r0.z].val[0/4];
        r4.y = t1[r0.z].val[0/4+1];
        r4.z = t1[r0.z].val[0/4+2];
        r4.w = t1[r0.z].val[0/4+3];
        r5.x = t1[r1.y].val[0/4];
        r5.y = t1[r1.y].val[0/4+1];
        r5.z = t1[r1.y].val[0/4+2];
        r5.w = t1[r1.y].val[0/4+3];
        r6.x = t1[r1.z].val[0/4];
        r6.y = t1[r1.z].val[0/4+1];
        r6.z = t1[r1.z].val[0/4+2];
        r6.w = t1[r1.z].val[0/4+3];
        r1.x = t1[r1.w].val[0/4];
        r1.y = t1[r1.w].val[0/4+1];
        r1.z = t1[r1.w].val[0/4+2];
        r1.w = t1[r1.w].val[0/4+3];
        r2.w = 1;
        r4.x = dot(r2.xyzw, r4.xyzw);
        r4.y = dot(r2.xyzw, r5.xyzw);
        r4.z = dot(r2.xyzw, r6.xyzw);
        r2.xyz = cmp(r4.xyz < -r3.xyz);
        r5.xyz = r4.xyz + r3.xyz;
        r5.xyz = abs(r5.xyz);
        r2.xyz = r2.xyz ? r5.xyz : 0;
        r5.xyz = cmp(r3.xyz < r4.xyz);
        r6.xyz = r4.xyz + -r3.xyz;
        r6.xyz = abs(r6.xyz);
        r5.xyz = r5.xyz ? r6.xyz : 0;
        r0.z = dot(r2.xyz, float3(1,1,1));
        r0.w = dot(r5.xyz, float3(1,1,1));
        r0.z = r0.z + r0.w;
        r0.z = r0.z * abs(r1.w);
        r0.y = cb0[8].x + r0.y;
        r0.z = cmp(r0.z < r0.y);
        if (r0.z != 0) {
          r0.zw = mad((int2)v1.xx, int2(17,17), int2(5,6));
          r2.x = t1[r0.z].val[0/4];
          r2.y = t1[r0.z].val[0/4+1];
          r2.z = t1[r0.z].val[0/4+2];
          r0.z = t1[r0.w].val[0/4];
          r0.w = t1[r0.w].val[0/4+1];
          r5.xyz = max(r4.xyz, -r3.xyz);
          r3.xyz = min(r5.xyz, r3.xyz);
          r4.xyz = r4.xyz + -r3.xyz;
          r2.w = dot(r4.xyz, r4.xyz);
          r2.w = sqrt(r2.w);
          r1.xyz = r3.xyz * r1.xyz + r2.xyz;
          r1.x = t0.SampleLevel(s0_s, r1.xyz, 0).x;
          r0.z = r1.x * r0.z + r0.w;
          r0.z = r0.z + r2.w;
          r0.z = r0.z * abs(r1.w);
          r0.y = cmp(r0.z < r0.y);
          if (r0.y != 0) {
            r0.z = -1;
          }
        } else {
          r0.y = 0;
        }
      } else {
        r0.y = 0;
      }
      r0.y = (int)r0.z & (int)r0.y;
    } else {
      r0.y = -1;
    }
    if (r0.y != 0) {
      // Needs manual fix for instruction:
        imm_atomic_iadd r1.x, u1, v1.x, l(1)
      InterlockedAdd(dest, imm_value, orig_value);
      r0.y = t2.Load(v1.x).x;
      r0.y = (int)r1.x + (int)r0.y;
      r0.z = (uint)r0.y << 1;
    // No code for instruction (needs manual fix):
        store_uav_typed u2.xyzw, r0.zzzz, r0.xxxx
      bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.y << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    // No code for instruction (needs manual fix):
        store_uav_typed u2.xyzw, r0.xxxx, v1.xxxx
    }
  }
  o0.xyzw = float4(0,0,0,0);
  return;
}