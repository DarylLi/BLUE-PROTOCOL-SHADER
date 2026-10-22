// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<uint4> t5 : register(t5);

struct t4_t {
  float val[4];
};
StructuredBuffer<t4_t> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[34];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = mad((int2)vThreadID.xy, asint(cb0[33].zz), asint(cb0[32].xy));
  r0.xy = (uint2)r0.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb1[132].zw * r0.xy;
  r1.x = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r1.y = r1.x * cb1[65].x + cb1[65].y;
  r1.x = r1.x * cb1[65].z + -cb1[65].w;
  r1.x = 1 / r1.x;
  r1.y = r1.y + r1.x;
  r1.z = cmp(cb0[33].x < r1.y);
  r1.w = cmp(r1.y < cb0[33].y);
  r1.z = r1.w ? r1.z : 0;
  if (r1.z != 0) {
    r0.xy = r0.xy * cb1[132].zw + -cb1[66].wz;
    r0.xy = r0.xy / cb1[66].xy;
    r0.xy = r0.xy * r1.yy;
    r2.xyz = cb1[49].xyz * r0.yyy;
    r2.xyz = r0.xxx * cb1[48].xyz + r2.xyz;
    r2.xyz = r1.yyy * cb1[50].xyz + r2.xyz;
    r2.xyz = cb1[51].xyz + r2.xyz;
    r0.xy = cb0[10].xy * r2.yy;
    r0.xy = r2.xx * cb0[9].xy + r0.xy;
    r0.xy = r2.zz * cb0[11].xy + r0.xy;
    r0.xy = cb0[12].xy + r0.xy;
    r3.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
    r0.xy = asuint(cb0[8].xy);
    r3.z = 1 + -r3.y;
    r0.xy = r3.xz * r0.xy;
    r0.xy = (uint2)r0.xy;
    r0.x = mad((int)r0.y, asint(cb0[8].x), (int)r0.x);
    r0.y = t6.Load(r0.x).x;
    r0.x = t5.Load(r0.x).x;
    r1.z = cb0[30].y * r1.y + 2;
    r3.xyz = cb0[28].xyz * r1.zzz + r2.xyz;
    r2.xyz = cb0[28].xyz * cb0[31].zzz + r2.xyz;
    r1.z = t1.SampleLevel(s0_s, r0.zw, 0).w;
    r1.z = 255 * r1.z;
    r1.z = round(r1.z);
    r1.z = (uint)r1.z;
    r1.z = (int)r1.z & 15;
    r4.xyzw = cmp((int4)r1.zzzz == int4(2,3,5,6));
    r1.w = (int)r4.y | (int)r4.x;
    r4.xy = cmp((int2)r1.zz == int2(7,9));
    r5.x = (int)r4.z | (int)r1.w;
    r5.x = (int)r4.w | (int)r5.x;
    r5.x = (int)r4.x | (int)r5.x;
    r5.x = (int)r4.y | (int)r5.x;
    if (r5.x != 0) {
      r0.z = t2.SampleLevel(s0_s, r0.zw, 0).w;
      r6.xyzw = cmp((int4)r1.zzzz == int4(4,8,12,13));
      r0.w = (int)r1.w | (int)r6.x;
      r0.w = (int)r4.z | (int)r0.w;
      r0.w = (int)r4.w | (int)r0.w;
      r0.w = (int)r4.x | (int)r0.w;
      r0.w = (int)r6.y | (int)r0.w;
      r0.w = (int)r6.z | (int)r0.w;
      r0.w = (int)r6.w | (int)r0.w;
      r0.w = (int)r4.y | (int)r0.w;
      r0.z = (int)r0.z & (int)r0.w;
      r0.z = min(0.999000013, r0.z);
      r0.z = 1 + -r0.z;
      r0.z = log2(r0.z);
      r0.z = -0.0346573591 * r0.z;
    } else {
      r0.z = 0;
    }
    r3.w = 1;
    r2.w = 1;
    r1.zw = float2(1,0);
    while (true) {
      r0.w = cmp((uint)r1.w >= (uint)r0.x);
      if (r0.w != 0) break;
      r0.w = (int)r0.y + (int)r1.w;
      r0.w = t7.Load(r0.w).x;
      r4.x = (int)r0.w * 17;
      r6.xyzw = mad((int4)r0.wwww, int4(17,17,17,17), int4(3,1,2,4));
      r4.y = t4[r6.x].val[0/4];
      r4.z = t4[r6.x].val[0/4+1];
      r4.w = t4[r6.x].val[0/4+2];
      r7.x = t4[r4.x].val[0/4];
      r7.y = t4[r4.x].val[0/4+1];
      r7.z = t4[r4.x].val[0/4+2];
      r7.w = t4[r4.x].val[0/4+3];
      r8.x = t4[r6.y].val[0/4];
      r8.y = t4[r6.y].val[0/4+1];
      r8.z = t4[r6.y].val[0/4+2];
      r8.w = t4[r6.y].val[0/4+3];
      r9.x = t4[r6.z].val[0/4];
      r9.y = t4[r6.z].val[0/4+1];
      r9.z = t4[r6.z].val[0/4+2];
      r9.w = t4[r6.z].val[0/4+3];
      r6.x = t4[r6.w].val[0/4];
      r6.y = t4[r6.w].val[0/4+1];
      r6.z = t4[r6.w].val[0/4+2];
      r6.w = t4[r6.w].val[0/4+3];
      r10.x = dot(r3.xyzw, r7.xyzw);
      r10.y = dot(r3.xyzw, r8.xyzw);
      r10.z = dot(r3.xyzw, r9.xyzw);
      r7.x = dot(r2.xyzw, r7.xyzw);
      r7.y = dot(r2.xyzw, r8.xyzw);
      r7.z = dot(r2.xyzw, r9.xyzw);
      r5.yzw = r7.xyz + -r10.xyz;
      r4.x = dot(r5.yzw, r5.yzw);
      r4.x = sqrt(r4.x);
      r7.xyz = r5.yzw / r4.xxx;
      r7.w = 1 / abs(r6.w);
      r8.x = 100 * r7.w;
      r8.y = dot(-r10.xyz, r7.xyz);
      r8.y = max(0, r8.y);
      r8.y = cb0[31].x * r8.y;
      r8.y = min(r8.y, r8.x);
      r9.xyz = r4.yzw * float3(-0.699999988,-0.699999988,-0.699999988) + -r8.yyy;
      r8.yzw = r4.yzw * float3(0.699999988,0.699999988,0.699999988) + r8.yyy;
      r5.yzw = float3(1,1,1) / r5.yzw;
      r9.xyz = r9.xyz + -r10.xyz;
      r9.xyz = r9.xyz * r5.yzw;
      r8.yzw = r8.yzw + -r10.xyz;
      r5.yzw = r8.yzw * r5.yzw;
      r8.yzw = min(r9.xyz, r5.yzw);
      r5.yzw = max(r9.xyz, r5.yzw);
      r8.z = max(r8.z, r8.w);
      r9.x = saturate(max(r8.y, r8.z));
      r5.z = min(r5.z, r5.w);
      r9.y = saturate(min(r5.y, r5.z));
      r5.y = cmp(r9.x < r9.y);
      if (r5.y != 0) {
        r5.y = cmp(r6.w < 0);
        r5.zw = mad((int2)r0.ww, int2(17,17), int2(5,6));
        r11.x = t4[r5.z].val[0/4];
        r11.y = t4[r5.z].val[0/4+1];
        r11.z = t4[r5.z].val[0/4+2];
        r11.w = t4[r5.z].val[0/4+3];
        r5.z = t4[r5.w].val[0/4];
        r5.w = t4[r5.w].val[0/4+1];
        r0.w = 0.400000006 * r7.w;
        r8.y = r11.w * r7.w;
        r8.y = max(9.99999975e-005, r8.y);
        r8.y = 1 / r8.y;
        r8.zw = r9.xy * r4.xx;
        r4.x = r1.z;
        r9.x = r8.z;
        r9.y = 0;
        while (true) {
          r9.z = cmp((uint)r9.y >= 64);
          if (r9.z != 0) break;
          r12.xyz = r7.xyz * r9.xxx + r10.xyz;
          r13.xyz = max(r12.xyz, -r4.yzw);
          r13.xyz = min(r13.xyz, r4.yzw);
          r12.xyz = r13.xyz + -r12.xyz;
          r9.z = dot(r12.xyz, r12.xyz);
          r9.z = sqrt(r9.z);
          r12.xyz = r13.xyz * r6.xyz + r11.xyz;
          r9.w = t3.SampleLevel(s1_s, r12.xyz, 0).x;
          r9.w = r9.w * r5.z + r5.w;
          r9.z = r9.w + r9.z;
          r9.w = -cb0[13].x * r7.w + r9.z;
          r9.z = r5.y ? r9.w : r9.z;
          r9.w = saturate(r9.x * r8.y);
          r9.w = 1 + -r9.w;
          r10.w = cb0[31].x * r9.x;
          r10.w = max(r10.w, r0.w);
          r10.w = min(r10.w, r8.x);
          r10.w = saturate(r9.z / r10.w);
          r9.w = max(r10.w, r9.w);
          r10.w = r9.x * abs(r6.w);
          r10.w = -r10.w * r0.z;
          r10.w = 1.44269502 * r10.w;
          r10.w = exp2(r10.w);
          r10.w = min(1, r10.w);
          r10.w = max(r10.w, r9.w);
          r9.w = r5.x ? r10.w : r9.w;
          r9.w = min(r9.w, r4.x);
          r9.z = max(0.00390625, abs(r9.z));
          r9.x = r9.x + r9.z;
          r9.z = cmp(r9.w < 0.00999999978);
          r10.w = cmp(r8.w < r9.x);
          r9.z = (int)r9.z | (int)r10.w;
          if (r9.z != 0) {
            r4.x = r9.w;
            break;
          }
          r9.y = (int)r9.y + 1;
          r4.x = r9.w;
        }
        r0.w = (uint)r9.y;
        r0.w = -r0.w * 0.015625 + 1;
        r1.z = min(r4.x, r0.w);
      }
      r0.w = cmp(r1.z < 0.00999999978);
      if (r0.w != 0) {
        r1.z = 0;
        break;
      }
      r1.w = (int)r1.w + 1;
    }
    r1.x = r1.z;
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyxx
  return;
}