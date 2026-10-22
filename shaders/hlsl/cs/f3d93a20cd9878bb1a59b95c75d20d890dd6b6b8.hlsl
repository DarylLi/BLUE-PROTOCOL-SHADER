// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

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
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = (uint)vThreadIDInGroup.x >> 4;
  r0.y = (uint)vThreadGroupID.x << 3;
  r0.x = mad((int)r0.x, 2, (int)r0.y);
  r0.x = t4.Load(r0.x).x;
  uiDest.x = (uint)r0.x / asuint(cb0[9].z);
  r2.x = (uint)r0.x % asuint(cb0[9].z);
  r1.x = uiDest.x;
  r3.x = (int)vThreadIDInGroup.x & 3;
  if (2 == 0) r3.y = 0; else if (2+2 < 32) {   r3.y = (uint)vThreadIDInGroup.x << (32-(2 + 2)); r3.y = (uint)r3.y >> (32-2);  } else r3.y = (uint)vThreadIDInGroup.x >> 2;
  r2.y = r1.x;
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r2.x << 2) & bitmask.y) | ((uint)r3.x & ~bitmask.y);
  bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.z = (((uint)r2.y << 2) & bitmask.z) | ((uint)r3.y & ~bitmask.z);
  r0.x = cmp((int)r0.x != 0x0000ffff);
  r1.xy = cmp((uint2)r0.yz < asuint(cb0[12].zw));
  r0.w = r1.y ? r1.x : 0;
  r0.x = r0.x ? r0.w : 0;
  if (r0.x != 0) {
    r0.x = mad((int)vThreadGroupID.x, 8, 1);
    r0.x = t4.Load(r0.x).x;
    r1.xy = (uint2)r3.xy << int2(2,2);
    bitmask.x = ((~(-1 << 30)) << 4) & 0xffffffff;  r1.x = (((uint)r2.x << 4) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 4) & 0xffffffff;  r1.y = (((uint)r2.y << 4) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    r1.xy = (uint2)r1.xy;
    r1.xy = cb0[13].xy + r1.xy;
    r1.zw = float2(0.5,0.5) + r1.xy;
    r1.zw = cb0[11].xy * r1.zw;
    r2.xyzw = t3.SampleLevel(s1_s, r1.zw, 0).xyzw;
    r1.xy = r1.xy * float2(2,2) + cb1[129].xy;
    r1.xy = float2(0.5,0.5) + r1.xy;
    r1.xy = r1.xy * cb1[132].zw + -cb1[66].wz;
    r1.xy = r1.xy / cb1[66].xy;
    r1.xy = r1.xy * r2.ww;
    r1.yzw = cb1[49].xyz * r1.yyy;
    r1.xyz = r1.xxx * cb1[48].xyz + r1.yzw;
    r1.xyz = r2.www * cb1[50].xyz + r1.xyz;
    r1.xyz = cb1[51].xyz + r1.xyz;
    r3.x = t1[r0.x].val[0/4];
    r3.y = t1[r0.x].val[0/4+1];
    r3.z = t1[r0.x].val[0/4+2];
    r3.w = t1[r0.x].val[0/4+3];
    r3.xyz = r3.xyz + -r1.xyz;
    r0.w = dot(r3.xyz, r3.xyz);
    r2.w = r3.w * r3.w;
    r0.w = r2.w / r0.w;
    r0.w = cmp(0.0625 < r0.w);
    if (r0.w != 0) {
      r0.w = (int)r0.x * 17;
      r3.xyzw = mad((int4)r0.xxxx, int4(17,17,17,17), int4(3,1,2,4));
      r4.x = t2[r3.x].val[0/4];
      r4.y = t2[r3.x].val[0/4+1];
      r4.z = t2[r3.x].val[0/4+2];
      r5.x = t2[r0.w].val[0/4];
      r5.y = t2[r0.w].val[0/4+1];
      r5.z = t2[r0.w].val[0/4+2];
      r5.w = t2[r0.w].val[0/4+3];
      r6.x = t2[r3.y].val[0/4];
      r6.y = t2[r3.y].val[0/4+1];
      r6.z = t2[r3.y].val[0/4+2];
      r6.w = t2[r3.y].val[0/4+3];
      r7.x = t2[r3.z].val[0/4];
      r7.y = t2[r3.z].val[0/4+1];
      r7.z = t2[r3.z].val[0/4+2];
      r7.w = t2[r3.z].val[0/4+3];
      r3.x = t2[r3.w].val[0/4];
      r3.y = t2[r3.w].val[0/4+1];
      r3.z = t2[r3.w].val[0/4+2];
      r3.w = t2[r3.w].val[0/4+3];
      r1.w = 1;
      r8.x = dot(r1.xyzw, r5.xyzw);
      r8.y = dot(r1.xyzw, r6.xyzw);
      r8.z = dot(r1.xyzw, r7.xyzw);
      r1.xyz = cmp(r8.xyz < -r4.xyz);
      r9.xyz = r8.xyz + r4.xyz;
      r9.xyz = abs(r9.xyz);
      r1.xyz = r1.xyz ? r9.xyz : 0;
      r9.xyz = cmp(r4.xyz < r8.xyz);
      r10.xyz = r8.xyz + -r4.xyz;
      r10.xyz = abs(r10.xyz);
      r9.xyz = r9.xyz ? r10.xyz : 0;
      r0.w = dot(r1.xyz, float3(1,1,1));
      r1.x = dot(r9.xyz, float3(1,1,1));
      r0.w = r1.x + r0.w;
      r0.w = r0.w * abs(r3.w);
      r0.w = cmp(r0.w < cb0[8].x);
      if (r0.w != 0) {
        r0.y = mad((int)r0.z, asint(cb0[12].z), (int)r0.y);
        r0.z = cmp(abs(r2.z) < 0.999000013);
        r1.xyz = r0.zzz ? float3(1,0,0) : float3(0,1,0);
        r9.xyz = r1.xyz * r2.yzx;
        r1.xyz = r1.zxy * r2.zxy + -r9.xyz;
        r0.z = dot(r1.xyz, r1.xyz);
        r0.z = rsqrt(r0.z);
        r1.xyz = r1.xyz * r0.zzz;
        r9.xyz = r2.zxy * r1.yzx;
        r9.xyz = r2.yzx * r1.zxy + -r9.xyz;
        r0.z = 10 * cb0[8].z;
        r0.z = r0.z * r0.z + 1;
        r0.z = cb0[8].y * r0.z;
        r0.w = 1 / cb0[8].x;
        r10.xy = mad((int2)r0.xx, int2(17,17), int2(5,6));
        r11.x = t2[r10.x].val[0/4];
        r11.y = t2[r10.x].val[0/4+1];
        r11.z = t2[r10.x].val[0/4+2];
        r11.w = t2[r10.x].val[0/4+3];
        r10.x = t2[r10.y].val[0/4];
        r10.y = t2[r10.y].val[0/4+1];
        r0.x = dot(r4.xyz, r4.xyz);
        r0.x = sqrt(r0.x);
        r0.x = r0.x * abs(r3.w);
        r0.x = 0.5 * r0.x;
        r1.w = max(9.99999975e-005, r11.w);
        r1.w = 1 / r1.w;
        r2.w = 0;
        while (true) {
          r4.w = cmp((uint)r2.w >= 9);
          if (r4.w != 0) break;
          r12.xyz = cb2[r2.w+0].yyy * r9.xyz;
          r12.xyz = cb2[r2.w+0].xxx * r1.xyz + r12.xyz;
          r12.xyz = cb2[r2.w+0].zzz * r2.xyz + r12.xyz;
          r13.x = dot(r12.xyz, r5.xyz);
          r13.y = dot(r12.xyz, r6.xyz);
          r13.z = dot(r12.xyz, r7.xyz);
          r4.w = 1;
          r5.w = cb0[8].y;
          r6.w = cb0[8].y;
          r7.w = 0;
          while (true) {
            r8.w = cmp((uint)r7.w < 10);
            r9.w = cmp(r5.w < r0.z);
            r8.w = r8.w ? r9.w : 0;
            if (r8.w == 0) break;
            r12.xyz = r13.xyz * r5.www + r8.xyz;
            r14.xyz = max(r12.xyz, -r4.xyz);
            r14.xyz = min(r14.xyz, r4.xyz);
            r12.xyz = -r14.xyz + r12.xyz;
            r8.w = dot(r12.xyz, r12.xyz);
            r8.w = (uint)r8.w >> 1;
            r8.w = (int)r8.w + 0x1fbd1df5;
            r12.xyz = r14.xyz * r3.xyz + r11.xyz;
            r9.w = t0.SampleLevel(s0_s, r12.xyz, 0).x;
            r9.w = r9.w * r10.x + r10.y;
            r8.w = r9.w + r8.w;
            r9.w = r8.w * abs(r3.w);
            r10.z = cb0[22].z * r5.w;
            r10.z = (int)-r10.z + 0x7ef311c2;
            r10.w = saturate(r10.z * r9.w);
            r10.z = saturate(r10.z * r0.x);
            r10.z = 1 + -r10.z;
            r11.w = saturate(r5.w * r1.w);
            r11.w = 1 + -r11.w;
            r10.z = max(r11.w, r10.z);
            r10.z = max(r10.w, r10.z);
            r8.w = r8.w * abs(r3.w) + r5.w;
            r8.w = r8.w * r0.w;
            r8.w = r8.w * r8.w;
            r8.w = 0.600000024 * r8.w;
            r8.w = min(1, r8.w);
            r8.w = max(r10.z, r8.w);
            r4.w = min(r8.w, r4.w);
            r7.w = (int)r7.w + 1;
            r8.w = (uint)r7.w;
            r8.w = cb0[8].z * r8.w;
            r8.w = r8.w * r8.w + 1;
            r10.z = cb0[8].y * r8.w;
            r8.w = cb0[8].y * r8.w + -r6.w;
            r8.w = 0.600000024 * r8.w;
            r8.w = max(r9.w, r8.w);
            r5.w = r8.w + r5.w;
            r6.w = r10.z;
          }
          r5.w = (int)r2.w * asint(cb0[12].z);
          r5.w = mad((int)r5.w, asint(cb0[12].w), (int)r0.y);
          // Needs manual fix for instruction:
                atomic_umin u0, r5.w, r4.w
          InterlockedMin(dest, value, orig_value);
          r2.w = (int)r2.w + 1;
        }
      }
    }
  }
  return;
}