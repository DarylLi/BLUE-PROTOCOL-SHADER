// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u3_t {
  float val[4];
};
RWStructuredBuffer<u3_t> u3 : register(u3);

struct u2_t {
  float val[4];
};
RWStructuredBuffer<u2_t> u2 : register(u2);

struct u1_t {
  float val[4];
};
RWStructuredBuffer<u1_t> u1 : register(u1);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  if (vThreadID.x == 0) {
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, l(0,0,0,0), cb0[13].yyyy
  }
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[0].w));
  if (r0.x != 0) {
    r0.x = (uint)vThreadID.x << 1;
    r0.y = (uint)r0.x << 2;
    r1.x = t0.Load(r0.y).x;
    r0.z = (int)r0.y + 1;
    r1.y = t0.Load(r0.z).x;
    r0.x = mad((int)r0.x, 4, 2);
    r1.z = t0.Load(r0.x).x;
    r0.xzw = (int3)r0.yyy + int3(4,5,6);
    r2.x = t0.Load(r0.x).x;
    r2.y = t0.Load(r0.z).x;
    r2.z = t0.Load(r0.w).x;
    r0.xz = float2(0,0);
    while (true) {
      r0.w = cmp((uint)r0.x >= asuint(cb0[27].x));
      r0.z = 0;
      if (r0.w != 0) break;
      r0.w = dot(cb0[r0.x+14].xyz, r1.xyz);
      r0.w = -cb0[r0.x+14].w + r0.w;
      r3.x = dot(abs(cb0[r0.x+14].xyz), r2.xyz);
      r0.w = cmp(r3.x < r0.w);
      if (r0.w != 0) {
        r0.z = -1;
        break;
      }
      r0.x = (int)r0.x + 1;
      r0.xz = r0.xw;
    }
    if (r0.z == 0) {
      // Needs manual fix for instruction:
        imm_atomic_iadd r3.x, u0, l(1), l(1)
      InterlockedAdd(dest, imm_value, orig_value);
      r0.xy = (int2)r0.yy + int2(3,7);
      r1.w = t0.Load(r0.x).x;
      r2.w = t0.Load(r0.y).x;
      r2.z = 500 + r2.z;
      r0.x = (uint)r3.x << 1;
      u1[r0.x].val[0/4] = r1.x;
      u1[r0.x].val[0/4+1] = r1.y;
      u1[r0.x].val[0/4+2] = r1.z;
      u1[r0.x].val[0/4+3] = r1.w;
      bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r3.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
      u1[r0.y].val[0/4] = r2.x;
      u1[r0.y].val[0/4+1] = r2.y;
      u1[r0.y].val[0/4+2] = r2.z;
      u1[r0.y].val[0/4+3] = r2.w;
      r0.xy = (int2)r3.xx * int2(6,5);
      r0.z = (int)vThreadID.x * 6;
      r0.w = (uint)r0.z << 2;
      r4.x = t1.Load(r0.w).x;
      r3.yzw = (int3)r0.www + int3(1,3,7);
      r4.y = t1.Load(r3.y).x;
      r0.z = mad((int)r0.z, 4, 2);
      r4.z = t1.Load(r0.z).x;
      r4.w = t1.Load(r3.z).x;
      u2[r0.x].val[0/4] = r4.x;
      u2[r0.x].val[0/4+1] = r4.y;
      u2[r0.x].val[0/4+2] = r4.z;
      u2[r0.x].val[0/4+3] = r4.w;
      r0.z = mad((int)r3.x, 6, 1);
      r4.xyz = (int3)r0.www + int3(4,5,6);
      r5.x = t1.Load(r4.x).x;
      r5.y = t1.Load(r4.y).x;
      r5.z = t1.Load(r4.z).x;
      r5.w = t1.Load(r3.w).x;
      u2[r0.z].val[0/4] = r5.x;
      u2[r0.z].val[0/4+1] = r5.y;
      u2[r0.z].val[0/4+2] = r5.z;
      u2[r0.z].val[0/4+3] = r5.w;
      r4.xyzw = mad((int4)r3.xxxx, int4(6,6,6,6), int4(2,3,4,5));
      r5.xyzw = (int4)r0.wwww + int4(8,12,16,20);
      r6.x = t1.Load(r5.x).x;
      r7.xyzw = (int4)r5.xxzz + int4(1,3,1,3);
      r6.y = t1.Load(r7.x).x;
      r8.xyzw = (int4)r5.xyyy | int4(2,5,6,7);
      r6.z = t1.Load(r8.x).x;
      r6.w = t1.Load(r7.y).x;
      u2[r4.x].val[0/4] = r6.x;
      u2[r4.x].val[0/4+1] = r6.y;
      u2[r4.x].val[0/4+2] = r6.z;
      u2[r4.x].val[0/4+3] = r6.w;
      r6.x = t1.Load(r5.y).x;
      r6.y = t1.Load(r8.y).x;
      r6.z = t1.Load(r8.z).x;
      r6.w = t1.Load(r8.w).x;
      u2[r4.y].val[0/4] = r6.x;
      u2[r4.y].val[0/4+1] = r6.y;
      u2[r4.y].val[0/4+2] = r6.z;
      u2[r4.y].val[0/4+3] = r6.w;
      r6.x = t1.Load(r5.z).x;
      r6.y = t1.Load(r7.z).x;
      r8.xyzw = (int4)r5.zwww | int4(2,5,6,7);
      r6.z = t1.Load(r8.x).x;
      r6.w = t1.Load(r7.w).x;
      u2[r4.z].val[0/4] = r6.x;
      u2[r4.z].val[0/4+1] = r6.y;
      u2[r4.z].val[0/4+2] = r6.z;
      u2[r4.z].val[0/4+3] = r6.w;
      r5.x = t1.Load(r5.w).x;
      r5.y = t1.Load(r8.y).x;
      r5.z = t1.Load(r8.z).x;
      r5.w = t1.Load(r8.w).x;
      u2[r4.w].val[0/4] = r5.x;
      u2[r4.w].val[0/4+1] = r5.y;
      u2[r4.w].val[0/4+2] = r5.z;
      u2[r4.w].val[0/4+3] = r5.w;
      r0.xzw = -r2.xyz + r1.xyz;
      r3.yzw = cb0[10].xyz * r0.zzz;
      r3.yzw = r0.xxx * cb0[9].xyz + r3.yzw;
      r0.xzw = r0.www * cb0[11].xyz + r3.yzw;
      r0.xzw = cb0[12].xyz + r0.xzw;
      r3.yzw = min(float3(2000000,2000000,2000000), r0.xzw);
      r4.xyz = max(float3(-2000000,-2000000,-2000000), r0.xzw);
      r5.xyz = r2.xyz * float3(1,-1,-1) + r1.xyz;
      r6.xyz = cb0[10].xyz * r5.yyy;
      r5.xyw = r5.xxx * cb0[9].xyz + r6.xyz;
      r5.xyz = r5.zzz * cb0[11].xyz + r5.xyw;
      r5.xyz = cb0[12].xyz + r5.xyz;
      r3.yzw = min(r5.xyz, r3.yzw);
      r4.xyz = max(r5.xyz, r4.xyz);
      r6.xyz = r2.xyz * float3(-1,1,-1) + r1.xyz;
      r7.xyz = cb0[10].xyz * r6.yyy;
      r6.xyw = r6.xxx * cb0[9].xyz + r7.xyz;
      r6.xyz = r6.zzz * cb0[11].xyz + r6.xyw;
      r6.xyz = cb0[12].xyz + r6.xyz;
      r3.yzw = min(r6.xyz, r3.yzw);
      r4.xyz = max(r6.xyz, r4.xyz);
      r7.xyz = r2.xyz * float3(1,1,-1) + r1.xyz;
      r8.xyz = cb0[10].xyz * r7.yyy;
      r7.xyw = r7.xxx * cb0[9].xyz + r8.xyz;
      r7.xyz = r7.zzz * cb0[11].xyz + r7.xyw;
      r7.xyz = cb0[12].xyz + r7.xyz;
      r3.yzw = min(r7.xyz, r3.yzw);
      r4.xyz = max(r7.xyz, r4.xyz);
      r7.xyz = r2.xyz * float3(-1,-1,1) + r1.xyz;
      r8.xyz = cb0[10].xyz * r7.yyy;
      r7.xyw = r7.xxx * cb0[9].xyz + r8.xyz;
      r7.xyz = r7.zzz * cb0[11].xyz + r7.xyw;
      r7.xyz = cb0[12].xyz + r7.xyz;
      r3.yzw = min(r7.xyz, r3.yzw);
      r4.xyz = max(r7.xyz, r4.xyz);
      r8.xyz = r2.xyz * float3(1,-1,1) + r1.xyz;
      r9.xyz = cb0[10].xyz * r8.yyy;
      r8.xyw = r8.xxx * cb0[9].xyz + r9.xyz;
      r8.xyz = r8.zzz * cb0[11].xyz + r8.xyw;
      r8.xyz = cb0[12].xyz + r8.xyz;
      r3.yzw = min(r8.xyz, r3.yzw);
      r4.xyz = max(r8.xyz, r4.xyz);
      r8.xyz = r2.xyz * float3(-1,1,1) + r1.xyz;
      r9.xyz = cb0[10].xyz * r8.yyy;
      r8.xyw = r8.xxx * cb0[9].xyz + r9.xyz;
      r8.xyz = r8.zzz * cb0[11].xyz + r8.xyw;
      r8.xyz = cb0[12].xyz + r8.xyz;
      r3.yzw = min(r8.xyz, r3.yzw);
      r4.xyz = max(r8.xyz, r4.xyz);
      r1.xyz = r2.xyz + r1.xyz;
      r2.xyz = cb0[10].xyz * r1.yyy;
      r1.xyw = r1.xxx * cb0[9].xyz + r2.xyz;
      r1.xyz = r1.zzz * cb0[11].xyz + r1.xyw;
      r1.xyz = cb0[12].xyz + r1.xyz;
      r2.xyz = min(r3.yzw, r1.xyz);
      r1.xyz = max(r4.xyz, r1.xyz);
      r3.yzw = r5.xyz + -r0.xzw;
      r3.yzw = float3(0.5,0.5,0.5) * r3.yzw;
      r4.xyz = r6.xyz + -r0.xzw;
      r4.xyz = float3(0.5,0.5,0.5) * r4.xyz;
      r0.xzw = r7.xyz + -r0.xzw;
      r0.xzw = float3(0.5,0.5,0.5) * r0.xzw;
      r2.w = 0;
      u3[r0.y].val[0/4] = r2.x;
      u3[r0.y].val[0/4+1] = r2.y;
      u3[r0.y].val[0/4+2] = r2.z;
      u3[r0.y].val[0/4+3] = r2.w;
      r2.xyzw = mad((int4)r3.xxxx, int4(5,5,5,5), int4(1,2,3,4));
      r1.w = 0;
      u3[r2.x].val[0/4] = r1.x;
      u3[r2.x].val[0/4+1] = r1.y;
      u3[r2.x].val[0/4+2] = r1.z;
      u3[r2.x].val[0/4+3] = r1.w;
      r1.x = dot(r3.yzw, r3.yzw);
      r1.x = max(9.99999975e-005, r1.x);
      r1.xyz = r3.yzw / r1.xxx;
      r1.w = 0;
      u3[r2.y].val[0/4] = r1.x;
      u3[r2.y].val[0/4+1] = r1.y;
      u3[r2.y].val[0/4+2] = r1.z;
      u3[r2.y].val[0/4+3] = r1.w;
      r1.x = dot(r4.xyz, r4.xyz);
      r1.x = max(9.99999975e-005, r1.x);
      r1.xyz = r4.xyz / r1.xxx;
      r1.w = 0;
      u3[r2.z].val[0/4] = r1.x;
      u3[r2.z].val[0/4+1] = r1.y;
      u3[r2.z].val[0/4+2] = r1.z;
      u3[r2.z].val[0/4+3] = r1.w;
      r1.x = dot(r0.xzw, r0.xzw);
      r1.x = max(9.99999975e-005, r1.x);
      r1.xyz = r0.xzw / r1.xxx;
      r1.w = 0;
      u3[r2.w].val[0/4] = r1.x;
      u3[r2.w].val[0/4+1] = r1.y;
      u3[r2.w].val[0/4+2] = r1.z;
      u3[r2.w].val[0/4+3] = r1.w;
    }
  }
  return;
}