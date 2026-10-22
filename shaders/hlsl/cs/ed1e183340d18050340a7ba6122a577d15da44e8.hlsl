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

cbuffer cb1 : register(b1)
{
  float4 cb1[70];
}

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
    r0.x = (uint)vThreadID.x << 2;
    r0.x = t0.Load(r0.x).x;
    r1.xyz = mad((int3)vThreadID.xxx, int3(4,4,4), int3(1,2,3));
    r0.y = t0.Load(r1.x).x;
    r0.z = t0.Load(r1.y).x;
    r0.w = t0.Load(r1.z).x;
    r1.x = cmp(cb0[26].w == 0.000000);
    r1.yzw = cb0[26].xyz + r0.xyz;
    r2.xy = float2(0,0);
    while (true) {
      r2.z = cmp((uint)r2.x >= asuint(cb0[27].x));
      r2.y = 0;
      if (r2.z != 0) break;
      r2.z = dot(cb0[r2.x+14].xyz, r1.yzw);
      r2.z = -cb0[r2.x+14].w + r2.z;
      r2.z = cmp(r0.w < r2.z);
      if (r2.z != 0) {
        r2.y = -1;
        break;
      }
      r2.x = (int)r2.x + 1;
      r2.xy = r2.xz;
    }
    r1.y = ~(int)r2.y;
    r1.x = r1.x ? r1.y : 0;
    r1.y = cmp(0 < cb0[26].w);
    r2.xyz = cb0[26].xyz + -r0.xyz;
    r1.z = dot(r2.xyz, r2.xyz);
    r1.w = cb0[26].w + r0.w;
    r1.w = r1.w * r1.w;
    r1.z = cmp(r1.z < r1.w);
    r1.y = r1.z ? r1.y : 0;
    r1.x = (int)r1.y | (int)r1.x;
    if (r1.x != 0) {
      r1.xyz = -cb1[69].xyz + r0.xyz;
      r1.x = dot(r1.xyz, r1.xyz);
      r1.y = (int)vThreadID.x * 17;
      r1.z = (uint)r1.y << 2;
      r1.w = (int)r1.z + 24;
      r2.x = (int)r1.w + 2;
      r2.z = t1.Load(r2.x).x;
      r3.x = (int)r1.w + 3;
      r2.w = t1.Load(r3.x).x;
      r3.x = cmp(r2.z < 9.99999975e-005);
      r3.y = cmp(r2.z < r1.x);
      r3.x = (int)r3.y | (int)r3.x;
      r3.y = cmp(r2.w < 9.99999975e-005);
      r1.x = cmp(r1.x < r2.w);
      r1.x = (int)r1.x | (int)r3.y;
      r1.x = r1.x ? r3.x : 0;
      if (r1.x != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r3.x, u0, l(1), l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        u1[r3.x].val[0/4] = r0.x;
        u1[r3.x].val[0/4+1] = r0.y;
        u1[r3.x].val[0/4+2] = r0.z;
        u1[r3.x].val[0/4+3] = r0.w;
        r0.xy = (int2)r3.xx * int2(17,5);
        r4.x = t1.Load(r1.z).x;
        r3.yzw = mad((int3)r1.yyy, int3(4,4,4), int3(1,2,3));
        r4.y = t1.Load(r3.y).x;
        r4.z = t1.Load(r3.z).x;
        r4.w = t1.Load(r3.w).x;
        u2[r0.x].val[0/4] = r4.x;
        u2[r0.x].val[0/4+1] = r4.y;
        u2[r0.x].val[0/4+2] = r4.z;
        u2[r0.x].val[0/4+3] = r4.w;
        r4.xyzw = mad((int4)r3.xxxx, int4(17,17,17,17), int4(1,2,3,4));
        r5.xyzw = (int4)r1.zzzz + int4(4,8,12,16);
        r6.x = t1.Load(r5.x).x;
        r7.xyzw = (int4)r5.xxyy + int4(1,3,1,3);
        r6.y = t1.Load(r7.x).x;
        r8.xyzw = (int4)r5.xyzw + int4(2,2,2,2);
        r6.z = t1.Load(r8.x).x;
        r6.w = t1.Load(r7.y).x;
        u2[r4.x].val[0/4] = r6.x;
        u2[r4.x].val[0/4+1] = r6.y;
        u2[r4.x].val[0/4+2] = r6.z;
        u2[r4.x].val[0/4+3] = r6.w;
        r6.x = t1.Load(r5.y).x;
        r6.y = t1.Load(r7.z).x;
        r6.z = t1.Load(r8.y).x;
        r6.w = t1.Load(r7.w).x;
        u2[r4.y].val[0/4] = r6.x;
        u2[r4.y].val[0/4+1] = r6.y;
        u2[r4.y].val[0/4+2] = r6.z;
        u2[r4.y].val[0/4+3] = r6.w;
        r6.x = t1.Load(r5.z).x;
        r7.xyzw = (int4)r5.zzww + int4(1,3,1,3);
        r6.y = t1.Load(r7.x).x;
        r6.z = t1.Load(r8.z).x;
        r6.w = t1.Load(r7.y).x;
        u2[r4.z].val[0/4] = r6.x;
        u2[r4.z].val[0/4+1] = r6.y;
        u2[r4.z].val[0/4+2] = r6.z;
        u2[r4.z].val[0/4+3] = r6.w;
        r5.x = t1.Load(r5.w).x;
        r5.y = t1.Load(r7.z).x;
        r5.z = t1.Load(r8.w).x;
        r5.w = t1.Load(r7.w).x;
        u2[r4.w].val[0/4] = r5.x;
        u2[r4.w].val[0/4+1] = r5.y;
        u2[r4.w].val[0/4+2] = r5.z;
        u2[r4.w].val[0/4+3] = r5.w;
        r4.xyzw = mad((int4)r3.xxxx, int4(17,17,17,17), int4(5,6,7,8));
        r5.xyzw = (int4)r1.zzzz + int4(20,28,32,36);
        r6.x = t1.Load(r5.x).x;
        r7.xyzw = (int4)r5.xxyy + int4(1,3,1,3);
        r6.y = t1.Load(r7.x).x;
        r8.xyzw = (int4)r5.xyzw + int4(2,2,2,2);
        r6.z = t1.Load(r8.x).x;
        r6.w = t1.Load(r7.y).x;
        u2[r4.x].val[0/4] = r6.x;
        u2[r4.x].val[0/4+1] = r6.y;
        u2[r4.x].val[0/4+2] = r6.z;
        u2[r4.x].val[0/4+3] = r6.w;
        r2.x = t1.Load(r1.w).x;
        r0.z = (int)r1.w + 1;
        r2.y = t1.Load(r0.z).x;
        u2[r4.y].val[0/4] = r2.x;
        u2[r4.y].val[0/4+1] = r2.y;
        u2[r4.y].val[0/4+2] = r2.z;
        u2[r4.y].val[0/4+3] = r2.w;
        r2.x = t1.Load(r5.y).x;
        r2.y = t1.Load(r7.z).x;
        r2.z = t1.Load(r8.y).x;
        r2.w = t1.Load(r7.w).x;
        u2[r4.z].val[0/4] = r2.x;
        u2[r4.z].val[0/4+1] = r2.y;
        u2[r4.z].val[0/4+2] = r2.z;
        u2[r4.z].val[0/4+3] = r2.w;
        r2.x = t1.Load(r5.z).x;
        r6.xyzw = (int4)r5.zzww + int4(1,3,1,3);
        r2.y = t1.Load(r6.x).x;
        r2.z = t1.Load(r8.z).x;
        r2.w = t1.Load(r6.y).x;
        u2[r4.w].val[0/4] = r2.x;
        u2[r4.w].val[0/4+1] = r2.y;
        u2[r4.w].val[0/4+2] = r2.z;
        u2[r4.w].val[0/4+3] = r2.w;
        r2.xyzw = mad((int4)r3.xxxx, int4(17,17,17,17), int4(9,10,11,12));
        r4.x = t1.Load(r5.w).x;
        r4.y = t1.Load(r6.z).x;
        r4.z = t1.Load(r8.w).x;
        r4.w = t1.Load(r6.w).x;
        u2[r2.x].val[0/4] = r4.x;
        u2[r2.x].val[0/4+1] = r4.y;
        u2[r2.x].val[0/4+2] = r4.z;
        u2[r2.x].val[0/4+3] = r4.w;
        r4.xyzw = (int4)r1.zzzz + int4(40,44,48,52);
        r5.x = t1.Load(r4.x).x;
        r6.xyzw = (int4)r4.xxyy + int4(1,3,1,3);
        r5.y = t1.Load(r6.x).x;
        r7.xyzw = (int4)r4.xyzw + int4(2,2,2,2);
        r5.z = t1.Load(r7.x).x;
        r5.w = t1.Load(r6.y).x;
        u2[r2.y].val[0/4] = r5.x;
        u2[r2.y].val[0/4+1] = r5.y;
        u2[r2.y].val[0/4+2] = r5.z;
        u2[r2.y].val[0/4+3] = r5.w;
        r5.x = t1.Load(r4.y).x;
        r5.y = t1.Load(r6.z).x;
        r5.z = t1.Load(r7.y).x;
        r5.w = t1.Load(r6.w).x;
        u2[r2.z].val[0/4] = r5.x;
        u2[r2.z].val[0/4+1] = r5.y;
        u2[r2.z].val[0/4+2] = r5.z;
        u2[r2.z].val[0/4+3] = r5.w;
        r5.x = t1.Load(r4.z).x;
        r6.xyzw = (int4)r4.zzww + int4(1,3,1,3);
        r5.y = t1.Load(r6.x).x;
        r5.z = t1.Load(r7.z).x;
        r5.w = t1.Load(r6.y).x;
        u2[r2.w].val[0/4] = r5.x;
        u2[r2.w].val[0/4+1] = r5.y;
        u2[r2.w].val[0/4+2] = r5.z;
        u2[r2.w].val[0/4+3] = r5.w;
        r2.xyzw = mad((int4)r3.xxxx, int4(17,17,17,17), int4(13,14,15,16));
        r4.x = t1.Load(r4.w).x;
        r4.y = t1.Load(r6.z).x;
        r4.z = t1.Load(r7.w).x;
        r4.w = t1.Load(r6.w).x;
        u2[r2.x].val[0/4] = r4.x;
        u2[r2.x].val[0/4+1] = r4.y;
        u2[r2.x].val[0/4+2] = r4.z;
        u2[r2.x].val[0/4+3] = r4.w;
        r1.xyz = (int3)r1.zzz + int3(56,60,64);
        r4.x = t1.Load(r1.x).x;
        r5.xyzw = (int4)r1.xxyy + int4(1,3,1,3);
        r4.y = t1.Load(r5.x).x;
        r3.yzw = (int3)r1.xyz + int3(2,2,2);
        r4.z = t1.Load(r3.y).x;
        r4.w = t1.Load(r5.y).x;
        u2[r2.y].val[0/4] = r4.x;
        u2[r2.y].val[0/4+1] = r4.y;
        u2[r2.y].val[0/4+2] = r4.z;
        u2[r2.y].val[0/4+3] = r4.w;
        r6.x = t1.Load(r1.y).x;
        r6.y = t1.Load(r5.z).x;
        r6.z = t1.Load(r3.z).x;
        r6.w = t1.Load(r5.w).x;
        u2[r2.z].val[0/4] = r6.x;
        u2[r2.z].val[0/4+1] = r6.y;
        u2[r2.z].val[0/4+2] = r6.z;
        u2[r2.z].val[0/4+3] = r6.w;
        r5.x = t1.Load(r1.z).x;
        r0.zw = (int2)r1.zz + int2(1,3);
        r5.y = t1.Load(r0.z).x;
        r5.z = t1.Load(r3.w).x;
        r5.w = t1.Load(r0.w).x;
        u2[r2.w].val[0/4] = r5.x;
        u2[r2.w].val[0/4+1] = r5.y;
        u2[r2.w].val[0/4+2] = r5.z;
        u2[r2.w].val[0/4+3] = r5.w;
        r0.x = dot(float4(-0.699999988,-0.699999988,-0.699999988,1), r4.xyzw);
        r0.z = dot(float4(-0.699999988,-0.699999988,-0.699999988,1), r6.xyzw);
        r0.w = dot(float4(-0.699999988,-0.699999988,-0.699999988,1), r5.xyzw);
        r1.xyz = cb0[10].xyz * r0.zzz;
        r1.xyz = r0.xxx * cb0[9].xyz + r1.xyz;
        r0.xzw = r0.www * cb0[11].xyz + r1.xyz;
        r0.xzw = cb0[12].xyz + r0.xzw;
        r1.xyz = min(float3(2000000,2000000,2000000), r0.xzw);
        r2.xyz = max(float3(-2000000,-2000000,-2000000), r0.xzw);
        r1.w = dot(float4(0.699999988,-0.699999988,-0.699999988,1), r4.xyzw);
        r2.w = dot(float4(0.699999988,-0.699999988,-0.699999988,1), r6.xyzw);
        r3.y = dot(float4(0.699999988,-0.699999988,-0.699999988,1), r5.xyzw);
        r7.xyz = cb0[10].xyz * r2.www;
        r7.xyz = r1.www * cb0[9].xyz + r7.xyz;
        r3.yzw = r3.yyy * cb0[11].xyz + r7.xyz;
        r3.yzw = cb0[12].xyz + r3.yzw;
        r1.xyz = min(r3.yzw, r1.xyz);
        r2.xyz = max(r3.yzw, r2.xyz);
        r1.w = dot(float4(-0.699999988,0.699999988,-0.699999988,1), r4.xyzw);
        r2.w = dot(float4(-0.699999988,0.699999988,-0.699999988,1), r6.xyzw);
        r7.x = dot(float4(-0.699999988,0.699999988,-0.699999988,1), r5.xyzw);
        r7.yzw = cb0[10].xyz * r2.www;
        r7.yzw = r1.www * cb0[9].xyz + r7.yzw;
        r7.xyz = r7.xxx * cb0[11].xyz + r7.yzw;
        r7.xyz = cb0[12].xyz + r7.xyz;
        r1.xyz = min(r7.xyz, r1.xyz);
        r2.xyz = max(r7.xyz, r2.xyz);
        r1.w = dot(float4(0.699999988,0.699999988,-0.699999988,1), r4.xyzw);
        r2.w = dot(float4(0.699999988,0.699999988,-0.699999988,1), r6.xyzw);
        r7.w = dot(float4(0.699999988,0.699999988,-0.699999988,1), r5.xyzw);
        r8.xyz = cb0[10].xyz * r2.www;
        r8.xyz = r1.www * cb0[9].xyz + r8.xyz;
        r8.xyz = r7.www * cb0[11].xyz + r8.xyz;
        r8.xyz = cb0[12].xyz + r8.xyz;
        r1.xyz = min(r8.xyz, r1.xyz);
        r2.xyz = max(r8.xyz, r2.xyz);
        r1.w = dot(float4(-0.699999988,-0.699999988,0.699999988,1), r4.xyzw);
        r2.w = dot(float4(-0.699999988,-0.699999988,0.699999988,1), r6.xyzw);
        r7.w = dot(float4(-0.699999988,-0.699999988,0.699999988,1), r5.xyzw);
        r8.xyz = cb0[10].xyz * r2.www;
        r8.xyz = r1.www * cb0[9].xyz + r8.xyz;
        r8.xyz = r7.www * cb0[11].xyz + r8.xyz;
        r8.xyz = cb0[12].xyz + r8.xyz;
        r1.xyz = min(r8.xyz, r1.xyz);
        r2.xyz = max(r8.xyz, r2.xyz);
        r1.w = dot(float4(0.699999988,-0.699999988,0.699999988,1), r4.xyzw);
        r2.w = dot(float4(0.699999988,-0.699999988,0.699999988,1), r6.xyzw);
        r7.w = dot(float4(0.699999988,-0.699999988,0.699999988,1), r5.xyzw);
        r9.xyz = cb0[10].xyz * r2.www;
        r9.xyz = r1.www * cb0[9].xyz + r9.xyz;
        r9.xyz = r7.www * cb0[11].xyz + r9.xyz;
        r9.xyz = cb0[12].xyz + r9.xyz;
        r1.xyz = min(r9.xyz, r1.xyz);
        r2.xyz = max(r9.xyz, r2.xyz);
        r1.w = dot(float4(-0.699999988,0.699999988,0.699999988,1), r4.xyzw);
        r2.w = dot(float4(-0.699999988,0.699999988,0.699999988,1), r6.xyzw);
        r7.w = dot(float4(-0.699999988,0.699999988,0.699999988,1), r5.xyzw);
        r9.xyz = cb0[10].xyz * r2.www;
        r9.xyz = r1.www * cb0[9].xyz + r9.xyz;
        r9.xyz = r7.www * cb0[11].xyz + r9.xyz;
        r9.xyz = cb0[12].xyz + r9.xyz;
        r1.xyz = min(r9.xyz, r1.xyz);
        r2.xyz = max(r9.xyz, r2.xyz);
        r1.w = dot(float4(0.699999988,0.699999988,0.699999988,1), r4.xyzw);
        r2.w = dot(float4(0.699999988,0.699999988,0.699999988,1), r6.xyzw);
        r4.x = dot(float4(0.699999988,0.699999988,0.699999988,1), r5.xyzw);
        r4.yzw = cb0[10].xyz * r2.www;
        r4.yzw = r1.www * cb0[9].xyz + r4.yzw;
        r4.xyz = r4.xxx * cb0[11].xyz + r4.yzw;
        r4.xyz = cb0[12].xyz + r4.xyz;
        r1.xyz = min(r4.xyz, r1.xyz);
        r2.xyz = max(r4.xyz, r2.xyz);
        r3.yzw = r3.yzw + -r0.xzw;
        r3.yzw = float3(0.5,0.5,0.5) * r3.yzw;
        r4.xyz = r7.xyz + -r0.xzw;
        r4.xyz = float3(0.5,0.5,0.5) * r4.xyz;
        r0.xzw = r8.xyz + -r0.xzw;
        r0.xzw = float3(0.5,0.5,0.5) * r0.xzw;
        r1.w = 0;
        u3[r0.y].val[0/4] = r1.x;
        u3[r0.y].val[0/4+1] = r1.y;
        u3[r0.y].val[0/4+2] = r1.z;
        u3[r0.y].val[0/4+3] = r1.w;
        r1.xyzw = mad((int4)r3.xxxx, int4(5,5,5,5), int4(1,2,3,4));
        r2.w = 0;
        u3[r1.x].val[0/4] = r2.x;
        u3[r1.x].val[0/4+1] = r2.y;
        u3[r1.x].val[0/4+2] = r2.z;
        u3[r1.x].val[0/4+3] = r2.w;
        r1.x = dot(r3.yzw, r3.yzw);
        r1.x = max(9.99999975e-005, r1.x);
        r2.xyz = r3.yzw / r1.xxx;
        r2.w = 0;
        u3[r1.y].val[0/4] = r2.x;
        u3[r1.y].val[0/4+1] = r2.y;
        u3[r1.y].val[0/4+2] = r2.z;
        u3[r1.y].val[0/4+3] = r2.w;
        r1.x = dot(r4.xyz, r4.xyz);
        r1.x = max(9.99999975e-005, r1.x);
        r2.xyz = r4.xyz / r1.xxx;
        r2.w = 0;
        u3[r1.z].val[0/4] = r2.x;
        u3[r1.z].val[0/4+1] = r2.y;
        u3[r1.z].val[0/4+2] = r2.z;
        u3[r1.z].val[0/4+3] = r2.w;
        r1.x = dot(r0.xzw, r0.xzw);
        r1.x = max(9.99999975e-005, r1.x);
        r2.xyz = r0.xzw / r1.xxx;
        r2.w = 0;
        u3[r1.w].val[0/4] = r2.x;
        u3[r1.w].val[0/4+1] = r2.y;
        u3[r1.w].val[0/4+2] = r2.z;
        u3[r1.w].val[0/4+3] = r2.w;
      }
    }
  }
  return;
}