// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[512];
Texture3D<float4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[29];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 1, 8
  r0.xy = cmp((int2)vThreadIDInGroup.xz == int2(0,0));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r0.x = mad((int)vThreadIDInGroup.z, 8, (int)vThreadIDInGroup.x);
  r0.yzw = float3(4,0.5,4) * cb0[25].xyz;
  r1.x = cb0[24].y;
  r0.yzw = cb0[r1.x+14].www * r0.yzw;
  r1.yzw = (uint3)vThreadGroupID.xyz;
  r1.yzw = float3(0.5,0.5,0.5) + r1.yzw;
  r1.yzw = r1.yzw * float3(8,1,8) + float3(0.5,0.5,0.5);
  r1.yzw = cb0[25].xyz * r1.yzw;
  r1.yzw = cb0[r1.x+14].www * r1.yzw;
  r1.yzw = r1.yzw * float3(2,2,2) + cb0[26].xyz;
  r2.xyz = (uint3)vThreadID.xyz >> int3(4,4,4);
  r2.y = mad((int)r2.z, asint(cb0[27].z), (int)r2.y);
  r2.x = mad((int)r2.y, asint(cb0[27].y), (int)r2.x);
  r2.y = t3.Load(r2.x).x;
  r2.y = min(2048, (uint)r2.y);
  r2.x = (uint)r2.x << 11;
  r2.z = r0.x;
  while (true) {
    r2.w = cmp((uint)r2.z >= (uint)r2.y);
    if (r2.w != 0) break;
    r2.w = (int)r2.z + (int)r2.x;
    r2.w = t4.Load(r2.w).x;
    r3.x = t1[r2.w].val[0/4];
    r3.y = t1[r2.w].val[0/4+1];
    r3.z = t1[r2.w].val[0/4+2];
    r3.w = t1[r2.w].val[0/4+3];
    r3.xyz = r3.xyz + -r1.yzw;
    r3.xyz = -r0.yzw * float3(2,2,2) + abs(r3.xyz);
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.x = dot(r3.xyz, r3.xyz);
    r3.y = cb0[22].w + r3.w;
    r3.y = r3.y * r3.y;
    r3.x = cmp(r3.x < r3.y);
    if (r3.x != 0) {
      // Needs manual fix for instruction:
        imm_atomic_iadd r3.x, g1, l(0), l(1)
      InterlockedAdd(dest, imm_value, orig_value);
      g0[r3.x].val[0/4] = r2.w;
    }
    r2.z = (int)r2.z + 64;
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.x, l(0), g1.xxxx
  r0.x = min(512, (uint)r0.x);
  r0.yzw = (uint3)vThreadID.xyz;
  r0.yzw = float3(0.5,0.5,0.5) + r0.yzw;
  r0.yzw = cb0[25].xyz * r0.yzw;
  r0.yzw = cb0[r1.x+14].www * r0.yzw;
  r2.xyz = r0.yzw * float3(2,2,2) + cb0[26].xyz;
  r0.yzw = r2.xyz * cb0[r1.x+18].www + cb0[r1.x+18].xyz;
  r0.yzw = frac(r0.yzw);
  r0.yzw = cb0[22].xxx * r0.yzw;
  r1.xyz = (uint3)r0.yzw;
  r1.w = 0;
  r0.y = t5.Load(r1.xyzw).x;
  r2.w = 1;
  r0.z = r0.y;
  r0.w = 0;
  while (true) {
    r1.w = cmp((uint)r0.w >= (uint)r0.x);
    if (r1.w != 0) break;
    r1.w = g0[r0.w].val[0/4];
    r3.x = (int)r1.w * 17;
    r4.xyzw = mad((int4)r1.wwww, int4(17,17,17,17), int4(3,1,2,4));
    r3.y = t2[r4.x].val[0/4];
    r3.z = t2[r4.x].val[0/4+1];
    r3.w = t2[r4.x].val[0/4+2];
    r5.x = t2[r3.x].val[0/4];
    r5.y = t2[r3.x].val[0/4+1];
    r5.z = t2[r3.x].val[0/4+2];
    r5.w = t2[r3.x].val[0/4+3];
    r6.x = t2[r4.y].val[0/4];
    r6.y = t2[r4.y].val[0/4+1];
    r6.z = t2[r4.y].val[0/4+2];
    r6.w = t2[r4.y].val[0/4+3];
    r7.x = t2[r4.z].val[0/4];
    r7.y = t2[r4.z].val[0/4+1];
    r7.z = t2[r4.z].val[0/4+2];
    r7.w = t2[r4.z].val[0/4+3];
    r4.x = t2[r4.w].val[0/4];
    r4.y = t2[r4.w].val[0/4+1];
    r4.z = t2[r4.w].val[0/4+2];
    r4.w = t2[r4.w].val[0/4+3];
    r5.x = dot(r2.xyzw, r5.xyzw);
    r5.y = dot(r2.xyzw, r6.xyzw);
    r5.z = dot(r2.xyzw, r7.xyzw);
    r6.xyz = cmp(r5.xyz < -r3.yzw);
    r7.xyz = r5.xyz + r3.yzw;
    r7.xyz = abs(r7.xyz);
    r6.xyz = r6.xyz ? r7.xyz : 0;
    r7.xyz = cmp(r3.yzw < r5.xyz);
    r8.xyz = r5.xyz + -r3.yzw;
    r8.xyz = abs(r8.xyz);
    r7.xyz = r7.xyz ? r8.xyz : 0;
    r3.x = dot(r6.xyz, float3(1,1,1));
    r5.w = dot(r7.xyz, float3(1,1,1));
    r3.x = r5.w + r3.x;
    r3.x = r3.x * abs(r4.w);
    r3.x = cmp(r3.x < cb0[22].w);
    if (r3.x != 0) {
      r6.xy = mad((int2)r1.ww, int2(17,17), int2(5,6));
      r6.x = t2[r6.x].val[0/4];
      r6.z = t2[r6.x].val[0/4+1];
      r6.w = t2[r6.x].val[0/4+2];
      r7.x = t2[r6.y].val[0/4];
      r7.y = t2[r6.y].val[0/4+1];
      r8.xyz = max(r5.xyz, -r3.yzw);
      r3.xyz = min(r8.xyz, r3.yzw);
      r5.xyz = r5.xyz + -r3.xyz;
      r1.w = dot(r5.xyz, r5.xyz);
      r1.w = sqrt(r1.w);
      r3.xyz = r3.xyz * r4.xyz + r6.xzw;
      r3.x = t0.SampleLevel(s0_s, r3.xyz, 0).x;
      r3.x = r3.x * r7.x + r7.y;
      r1.w = r3.x + r1.w;
      r1.w = r1.w * abs(r4.w);
      r0.z = min(r1.w, r0.z);
    }
    r0.w = (int)r0.w + 1;
  }
  r0.xyw = cmp((uint3)vThreadID.xyz < asuint(cb0[28].xyz));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.w ? r0.x : 0;
  if (r0.x != 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzz, r0.zzzz
  }
  return;
}