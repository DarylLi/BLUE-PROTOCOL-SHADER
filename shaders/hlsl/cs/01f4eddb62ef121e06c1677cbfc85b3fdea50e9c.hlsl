// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[1]; } g0[1024];
struct t4_t {
  float val[4];
};
StructuredBuffer<t4_t> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[23];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_tgsm_raw g1, 4
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.x = mad((int)vThreadIDInGroup.y, 16, (int)vThreadIDInGroup.x);
  r0.yz = (uint2)vThreadID.xy << int2(1,1);
  r0.yz = (uint2)r0.yz;
  r0.yz = cb1[129].xy + r0.yz;
  r0.yz = float2(0.5,0.5) + r0.yz;
  r1.xy = cb1[132].zw * r0.yz;
  r0.yz = r0.yz * cb1[132].zw + -cb1[66].wz;
  r0.yz = r0.yz / cb1[66].xy;
  r0.w = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r1.x + r0.w;
  r0.yz = r0.yz * r0.ww;
  r1.xyz = cb1[49].xyz * r0.zzz;
  r1.xyz = r0.yyy * cb1[48].xyz + r1.xyz;
  r0.yzw = r0.www * cb1[50].xyz + r1.xyz;
  r0.yzw = cb1[51].xyz + r0.yzw;
  r0.yzw = -cb1[67].xyz + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r1.xyz = float3(40000,40000,40000) * r0.yzw;
  r2.xyz = r0.yzw * float3(40000,40000,40000) + cb1[67].xyz;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r1.xyz * r0.yyy;
  if (r0.x == 0) {
  // No code for instruction (needs manual fix):
    store_raw g1.x, l(0), l(0)
  }
  GroupMemoryBarrierWithGroupSync();
  r1.x = 1 / cb1[28].x;
  r1.y = 1 / cb1[29].y;
  r1.zw = (uint2)vThreadGroupID.xy;
  r1.zw = r1.zw / cb0[22].zw;
  r1.z = dot(r1.zz, r1.xx);
  r3.y = r1.z + -r1.x;
  r1.z = dot(r1.ww, r1.yy);
  r3.w = r1.y + -r1.z;
  r3.z = 1;
  r1.z = dot(r3.yzw, r3.yzw);
  r1.z = rsqrt(r1.z);
  r4.xyz = r3.ywz * r1.zzz;
  r1.zw = (int2)vThreadGroupID.xy + int2(1,1);
  r1.zw = (uint2)r1.zw;
  r1.zw = r1.zw / cb0[22].zw;
  r1.z = dot(r1.zz, r1.xx);
  r3.x = r1.z + -r1.x;
  r1.x = dot(r3.xzw, r3.xzw);
  r1.x = rsqrt(r1.x);
  r1.z = dot(r1.ww, r1.yy);
  r5.y = r1.y + -r1.z;
  r5.xz = r3.yz;
  r1.y = dot(r5.xyz, r5.xyz);
  r1.y = rsqrt(r1.y);
  r3.y = r5.y;
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r6.xyz = r3.xwz * r1.xxx + r4.xyz;
  r1.xyw = r5.xyz * r1.yyy + r6.xyz;
  r1.xyz = r3.xyz * r1.zzz + r1.xyw;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r3.xyz = cb1[17].xyz * r1.yyy;
  r3.xyz = r1.xxx * cb1[16].xyz + r3.xyz;
  r3.xyz = r1.zzz * cb1[18].xyz + r3.xyz;
  r1.x = dot(r1.xyz, r4.xyz);
  r1.y = r1.x * r1.x;
  r1.x = -r1.x * r1.x + 1;
  r1.x = sqrt(r1.x);
  r1.z = t2.Load(float4(1,1,1,1)).x;
  r1.w = r1.x * r1.x;
  r3.w = r0.x;
  while (true) {
    r4.x = cmp((uint)r3.w >= (uint)r1.z);
    if (r4.x != 0) break;
    r4.x = t3[r3.w].val[0/4];
    r4.y = t3[r3.w].val[0/4+1];
    r4.z = t3[r3.w].val[0/4+2];
    r4.w = t3[r3.w].val[0/4+3];
    r5.x = r4.w / r1.x;
    r5.xyz = -r5.xxx * r3.xyz + cb1[67].xyz;
    r5.xyz = -r5.xyz + r4.xyz;
    r5.w = dot(r5.xyz, r5.xyz);
    r5.x = dot(r3.xyz, r5.xyz);
    r5.y = cmp(0 < r5.x);
    r5.x = r5.x * r5.x;
    r5.z = r5.w * r1.y;
    r5.x = cmp(r5.x >= r5.z);
    r5.x = r5.x ? r5.y : 0;
    r4.xyz = -cb1[67].xyz + r4.xyz;
    r5.y = dot(r4.xyz, r4.xyz);
    r4.x = dot(r3.xyz, r4.xyz);
    r4.y = cmp(0 < -r4.x);
    r4.x = r4.x * r4.x;
    r4.z = r5.y * r1.w;
    r4.x = cmp(r4.x >= r4.z);
    r4.x = r4.x ? r4.y : 0;
    r4.y = r4.w * r4.w;
    r4.y = cmp(r4.y >= r5.y);
    r4.x = r4.x ? r4.y : -1;
    r4.x = r5.x ? r4.x : 0;
    if (r4.x != 0) {
      // Needs manual fix for instruction:
        imm_atomic_iadd r4.x, g1, l(0), l(1)
      InterlockedAdd(dest, imm_value, orig_value);
      r4.y = cmp((uint)r4.x < 1024);
      if (r4.y != 0) {
        g0[r4.x].val[0/4] = r3.w;
      }
    }
    r3.w = (int)r3.w + 256;
  }
  GroupMemoryBarrierWithGroupSync();
// No code for instruction (needs manual fix):
ld_raw r0.x, l(0), g1.xxxx
  r1.x = min(1024, (uint)r0.x);
  r3.xyz = cb1[67].xyz;
  r3.w = 1;
  r2.w = 1;
  r1.yz = float2(40000,0);
  while (true) {
    r1.w = cmp((uint)r1.z >= (uint)r1.x);
    if (r1.w != 0) break;
    r1.w = g0[r1.z].val[0/4];
    r4.x = (int)r1.w * 17;
    r4.yzw = mad((int3)r1.www, int3(17,17,17), int3(3,1,2));
    r5.x = t4[r4.y].val[0/4];
    r5.y = t4[r4.y].val[0/4+1];
    r5.z = t4[r4.y].val[0/4+2];
    r6.x = t4[r4.x].val[0/4];
    r6.y = t4[r4.x].val[0/4+1];
    r6.z = t4[r4.x].val[0/4+2];
    r6.w = t4[r4.x].val[0/4+3];
    r7.x = t4[r4.z].val[0/4];
    r7.y = t4[r4.z].val[0/4+1];
    r7.z = t4[r4.z].val[0/4+2];
    r7.w = t4[r4.z].val[0/4+3];
    r4.x = t4[r4.w].val[0/4];
    r4.y = t4[r4.w].val[0/4+1];
    r4.z = t4[r4.w].val[0/4+2];
    r4.w = t4[r4.w].val[0/4+3];
    r8.x = dot(r3.xyzw, r6.xyzw);
    r8.y = dot(r3.xyzw, r7.xyzw);
    r8.z = dot(r3.xyzw, r4.xyzw);
    r6.x = dot(r2.xyzw, r6.xyzw);
    r6.y = dot(r2.xyzw, r7.xyzw);
    r6.z = dot(r2.xyzw, r4.xyzw);
    r4.xyz = r6.xyz + -r8.xyz;
    r6.xyz = float3(1,1,1) / r4.xyz;
    r7.xyz = -r8.xyz + -r5.xyz;
    r7.xyz = r7.xyz * r6.xyz;
    r9.xyz = -r8.xyz + r5.xyz;
    r6.xyz = r9.xyz * r6.xyz;
    r9.xyz = min(r7.xyz, r6.xyz);
    r6.xyz = max(r7.xyz, r6.xyz);
    r4.w = max(r9.y, r9.z);
    r7.x = saturate(max(r9.x, r4.w));
    r4.w = min(r6.y, r6.z);
    r7.y = saturate(min(r6.x, r4.w));
    r4.w = cmp(r7.x < r7.y);
    if (r4.w != 0) {
      r6.xyz = mad((int3)r1.www, int3(17,17,17), int3(4,5,6));
      r9.x = t4[r6.x].val[0/4];
      r9.y = t4[r6.x].val[0/4+1];
      r9.z = t4[r6.x].val[0/4+2];
      r9.w = t4[r6.x].val[0/4+3];
      r6.x = t4[r6.y].val[0/4];
      r6.y = t4[r6.y].val[0/4+1];
      r6.w = t4[r6.y].val[0/4+2];
      r7.z = t4[r6.z].val[0/4];
      r7.w = t4[r6.z].val[0/4+1];
      r1.w = dot(r4.xyz, r4.xyz);
      r1.w = sqrt(r1.w);
      r4.xyz = r4.xyz / r1.www;
      r7.xy = r7.xy * r1.ww;
      r1.w = r7.x;
      r4.w = 1000000;
      r5.w = 0;
      while (true) {
        r6.z = cmp((uint)r5.w >= 256);
        if (r6.z != 0) break;
        r10.xyz = r4.xyz * r1.www + r8.xyz;
        r10.xyz = max(r10.xyz, -r5.xyz);
        r10.xyz = min(r10.xyz, r5.xyz);
        r10.xyz = r10.xyz * r9.xyz + r6.xyw;
        r6.z = t1.SampleLevel(s1_s, r10.xyz, 0).x;
        r6.z = r6.z * r7.z + r7.w;
        r8.w = min(r6.z, r4.w);
        r10.x = max(0.0009765625, r6.z);
        r10.x = r10.x + r1.w;
        r6.z = cmp(r6.z < 0);
        r10.y = cmp(r7.y < r10.x);
        r6.z = (int)r6.z | (int)r10.y;
        if (r6.z != 0) {
          r1.w = r10.x;
          r4.w = r8.w;
          break;
        }
        r5.w = (int)r5.w + 1;
        r1.w = r10.x;
        r4.w = r8.w;
      }
      r4.x = r4.w * abs(r9.w);
      r4.x = cmp(r4.x < 0);
      r4.y = cmp((int)r5.w == 256);
      r4.x = (int)r4.y | (int)r4.x;
      r4.y = r1.w * abs(r9.w);
      r4.y = min(r4.y, r1.y);
      r1.y = r4.x ? r4.y : r1.y;
    }
    r1.z = (int)r1.z + 1;
  }
  r0.xyz = r0.yzw * r1.yyy + cb1[67].xyz;
// No code for instruction (needs manual fix):
ld_raw r1.x, l(0), g1.xxxx
  r1.x = min(1024, (uint)r1.x);
  r2.xyz = cb1[67].xyz;
  r2.w = 1;
  r0.w = 1;
  r1.zw = float2(0,0);
  while (true) {
    r3.x = cmp((uint)r1.w >= (uint)r1.x);
    if (r3.x != 0) break;
    r3.x = g0[r1.w].val[0/4];
    r3.y = (int)r3.x * 17;
    r4.xyz = mad((int3)r3.xxx, int3(17,17,17), int3(3,1,2));
    r5.x = t4[r4.x].val[0/4];
    r5.y = t4[r4.x].val[0/4+1];
    r5.z = t4[r4.x].val[0/4+2];
    r6.x = t4[r3.y].val[0/4];
    r6.y = t4[r3.y].val[0/4+1];
    r6.z = t4[r3.y].val[0/4+2];
    r6.w = t4[r3.y].val[0/4+3];
    r7.x = t4[r4.y].val[0/4];
    r7.y = t4[r4.y].val[0/4+1];
    r7.z = t4[r4.y].val[0/4+2];
    r7.w = t4[r4.y].val[0/4+3];
    r4.x = t4[r4.z].val[0/4];
    r4.y = t4[r4.z].val[0/4+1];
    r4.z = t4[r4.z].val[0/4+2];
    r4.w = t4[r4.z].val[0/4+3];
    r8.x = dot(r2.xyzw, r6.xyzw);
    r8.y = dot(r2.xyzw, r7.xyzw);
    r8.z = dot(r2.xyzw, r4.xyzw);
    r6.x = dot(r0.xyzw, r6.xyzw);
    r6.y = dot(r0.xyzw, r7.xyzw);
    r6.z = dot(r0.xyzw, r4.xyzw);
    r3.yzw = r6.xyz + -r8.xyz;
    r4.xyz = float3(1,1,1) / r3.yzw;
    r6.xyz = -r8.xyz + -r5.xyz;
    r6.xyz = r6.xyz * r4.xyz;
    r7.xyz = -r8.xyz + r5.xyz;
    r4.xyz = r7.xyz * r4.xyz;
    r7.xyz = min(r6.xyz, r4.xyz);
    r4.xyz = max(r6.xyz, r4.xyz);
    r4.w = max(r7.y, r7.z);
    r6.x = saturate(max(r7.x, r4.w));
    r4.y = min(r4.y, r4.z);
    r6.y = saturate(min(r4.x, r4.y));
    r4.x = cmp(r6.x < r6.y);
    if (r4.x != 0) {
      r4.xyz = mad((int3)r3.xxx, int3(17,17,17), int3(4,5,6));
      r7.x = t4[r4.x].val[0/4];
      r7.y = t4[r4.x].val[0/4+1];
      r7.z = t4[r4.x].val[0/4+2];
      r4.x = t4[r4.y].val[0/4];
      r4.y = t4[r4.y].val[0/4+1];
      r4.w = t4[r4.y].val[0/4+2];
      r6.z = t4[r4.z].val[0/4];
      r6.w = t4[r4.z].val[0/4+1];
      r3.x = dot(r3.yzw, r3.yzw);
      r3.x = sqrt(r3.x);
      r3.yzw = r3.yzw / r3.xxx;
      r6.xy = r6.xy * r3.xx;
      r3.x = r6.x;
      r4.z = 0;
      while (true) {
        r5.w = cmp((uint)r4.z >= 256);
        if (r5.w != 0) break;
        r9.xyz = r3.yzw * r3.xxx + r8.xyz;
        r9.xyz = max(r9.xyz, -r5.xyz);
        r9.xyz = min(r9.xyz, r5.xyz);
        r9.xyz = r9.xyz * r7.xyz + r4.xyw;
        r5.w = t1.SampleLevel(s1_s, r9.xyz, 0).x;
        r5.w = r5.w * r6.z + r6.w;
        r7.w = max(0.0009765625, r5.w);
        r3.x = r7.w + r3.x;
        r5.w = cmp(r5.w < 0);
        r7.w = cmp(r6.y < r3.x);
        r5.w = (int)r5.w | (int)r7.w;
        if (r5.w != 0) {
          break;
        }
        r4.z = (int)r4.z + 1;
      }
      r3.x = (uint)r4.z;
      r1.z = r3.x + r1.z;
    }
    r1.w = (int)r1.w + 1;
  }
  r0.x = saturate(0.00499999989 * r1.z);
  r0.y = cmp(r1.y < 40000);
  r0.z = 0.100000001 + r0.x;
  r0.xyz = r0.yyy ? r0.zzz : r0.xxx;
  r0.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  return;
}