// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Buffer<uint4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = mad((int2)vThreadID.xy, asint(cb0[33].zz), asint(cb0[32].xy));
  r0.xy = (uint2)r0.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb1[132].zw * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r1.y = r0.w + r0.z;
  r0.z = cmp(cb0[33].x < r1.y);
  r0.w = cmp(r1.y < cb0[33].y);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.xy = r0.xy * cb1[132].zw + -cb1[66].wz;
    r0.xy = r0.xy / cb1[66].xy;
    r0.xy = r0.xy * r1.yy;
    r0.yzw = cb1[49].xyz * r0.yyy;
    r0.xyz = r0.xxx * cb1[48].xyz + r0.yzw;
    r0.xyz = r1.yyy * cb1[50].xyz + r0.xyz;
    r0.xyz = cb1[51].xyz + r0.xyz;
    r1.zw = cb0[10].xy * r0.yy;
    r1.zw = r0.xx * cb0[9].xy + r1.zw;
    r1.zw = r0.zz * cb0[11].xy + r1.zw;
    r1.zw = cb0[12].xy + r1.zw;
    r2.xy = r1.zw * float2(0.5,0.5) + float2(0.5,0.5);
    r1.zw = asuint(cb0[8].xy);
    r2.z = 1 + -r2.y;
    r1.zw = r2.xz * r1.zw;
    r1.zw = (uint2)r1.zw;
    r1.z = mad((int)r1.w, asint(cb0[8].x), (int)r1.z);
    r1.w = t4.Load(r1.z).x;
    r1.z = t3.Load(r1.z).x;
    r2.xy = (uint2)vThreadID.xy;
    r2.xy = float2(0.5,0.5) + r2.xy;
    r2.xy = cb0[34].xy * r2.xy;
    r2.x = t6.SampleLevel(s2_s, r2.xy, 0).x;
    r0.w = 100 + r0.z;
    r0.xyz = -cb1[60].xyz * float3(50,50,50) + r0.xyw;
    r0.w = cb0[30].y * r1.y + 2;
    r3.xyz = cb0[28].xyz * r0.www + r0.xyz;
    r0.xyz = cb0[28].xyz * cb0[31].zzz + r0.xyz;
    r3.w = 1;
    r0.w = 1;
    r4.w = 255.992188;
    r2.yz = float2(1,0);
    while (true) {
      r2.w = cmp((uint)r2.z >= (uint)r1.z);
      if (r2.w != 0) break;
      r2.w = (int)r1.w + (int)r2.z;
      r2.w = t5.Load(r2.w).x;
      r5.x = (int)r2.w * 6;
      r5.x = t2[r5.x].val[0/4];
      r5.y = t2[r5.x].val[0/4+1];
      r5.z = t2[r5.x].val[0/4+2];
      r5.w = t2[r5.x].val[0/4+3];
      r6.x = mad((int)r2.w, 6, 1);
      r6.x = t2[r6.x].val[0/4];
      r6.y = t2[r6.x].val[0/4+1];
      r6.z = t2[r6.x].val[0/4+2];
      r6.w = t2[r6.x].val[0/4+3];
      r7.xy = mad((int2)r2.ww, int2(6,6), int2(2,3));
      r8.x = t2[r7.x].val[0/4];
      r8.y = t2[r7.x].val[0/4+1];
      r8.z = t2[r7.x].val[0/4+2];
      r8.w = t2[r7.x].val[0/4+3];
      r4.x = t2[r7.y].val[0/4];
      r4.y = t2[r7.y].val[0/4+1];
      r4.z = t2[r7.y].val[0/4+2];
      r7.x = dot(r3.xyzw, r5.xyzw);
      r7.y = dot(r3.xyzw, r6.xyzw);
      r7.z = dot(r3.xyzw, r8.xyzw);
      r5.x = dot(r0.xyzw, r5.xyzw);
      r5.y = dot(r0.xyzw, r6.xyzw);
      r5.z = dot(r0.xyzw, r8.xyzw);
      r5.xyz = r5.xyz + -r7.xyz;
      r6.xyz = float3(1,1,1) / r5.xyz;
      r8.xyz = float3(0,0,-256) + -r7.xyz;
      r8.xyz = r8.xyz * r6.xyz;
      r9.xyz = -r7.xyz + r4.xyw;
      r6.xyz = r9.xyz * r6.xyz;
      r9.xyz = min(r8.xyz, r6.xyz);
      r6.xyz = max(r8.xyz, r6.xyz);
      r4.x = max(r9.y, r9.z);
      r4.x = saturate(max(r9.x, r4.x));
      r4.y = min(r6.y, r6.z);
      r4.y = saturate(min(r6.x, r4.y));
      r5.w = cmp(r4.x < r4.y);
      if (r5.w != 0) {
        r2.w = mad((int)r2.w, 6, 4);
        r6.x = t2[r2.w].val[0/4];
        r6.y = t2[r2.w].val[0/4+1];
        r6.z = t2[r2.w].val[0/4+2];
        r6.w = t2[r2.w].val[0/4+3];
        r2.w = dot(r5.xyz, r5.xyz);
        r2.w = sqrt(r2.w);
        r5.xyz = r5.xyz / r2.www;
        r4.x = r2.w * r4.x;
        r8.xy = float2(100,500) * r4.zz;
        r4.z = 1 / r8.x;
        r2.w = r2.w * r4.y + -r4.x;
        r4.y = r4.x;
        r5.w = 1;
        r7.w = 0;
        while (true) {
          r8.x = cmp(r7.w >= 16);
          if (r8.x != 0) break;
          r8.xzw = r5.xyz * r4.yyy + r7.xyz;
          r8.xz = r8.xz * r6.xy + r6.zw;
          r8.xz = t1.SampleLevel(s1_s, r8.xz, 0).xy;
          r8.x = dot(r8.xz, float2(65280,255));
          r8.x = -32768 + r8.x;
          r8.z = saturate(r4.y * r4.z);
          r8.z = 1 + -r8.z;
          r9.x = cb0[31].x * r4.y;
          r9.x = max(9.99999975e-005, r9.x);
          r9.x = min(r9.x, r8.y);
          r4.y = r2.w * 0.0625 + r4.y;
          r8.x = -r8.x * 0.0078125 + r8.w;
          r8.x = saturate(r8.x / r9.x);
          r8.x = max(r8.x, r8.z);
          r8.x = min(r8.x, r5.w);
          r8.z = cmp(r8.x < 0.00999999978);
          if (r8.z != 0) {
            r5.w = r8.x;
            break;
          }
          r7.w = 1 + r7.w;
          r5.w = r8.x;
        }
        r2.y = min(r5.w, r2.y);
        r2.w = cmp(r2.y < 0.00999999978);
        if (r2.w != 0) {
          r2.y = 0;
          break;
        }
      }
      r2.z = (int)r2.z + 1;
    }
    r1.x = min(r2.y, r2.x);
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyxx
  return;
}