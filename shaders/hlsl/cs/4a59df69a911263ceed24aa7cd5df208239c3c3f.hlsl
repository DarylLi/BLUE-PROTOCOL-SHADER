// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

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
    r0.w = 100 + r0.z;
    r0.xyz = -cb1[60].xyz * float3(50,50,50) + r0.xyw;
    r0.w = cb0[30].y * r1.y + 2;
    r2.xyz = cb0[28].xyz * r0.www + r0.xyz;
    r0.xyz = cb0[28].xyz * cb0[31].zzz + r0.xyz;
    r2.w = 1;
    r0.w = 1;
    r3.w = 255.992188;
    r4.xy = float2(1,0);
    while (true) {
      r4.z = cmp((uint)r4.y >= (uint)r1.z);
      if (r4.z != 0) break;
      r4.z = (int)r1.w + (int)r4.y;
      r4.z = t5.Load(r4.z).x;
      r4.w = (int)r4.z * 6;
      r5.x = t2[r4.w].val[0/4];
      r5.y = t2[r4.w].val[0/4+1];
      r5.z = t2[r4.w].val[0/4+2];
      r5.w = t2[r4.w].val[0/4+3];
      r4.w = mad((int)r4.z, 6, 1);
      r6.x = t2[r4.w].val[0/4];
      r6.y = t2[r4.w].val[0/4+1];
      r6.z = t2[r4.w].val[0/4+2];
      r6.w = t2[r4.w].val[0/4+3];
      r7.xy = mad((int2)r4.zz, int2(6,6), int2(2,3));
      r8.x = t2[r7.x].val[0/4];
      r8.y = t2[r7.x].val[0/4+1];
      r8.z = t2[r7.x].val[0/4+2];
      r8.w = t2[r7.x].val[0/4+3];
      r3.x = t2[r7.y].val[0/4];
      r3.y = t2[r7.y].val[0/4+1];
      r3.z = t2[r7.y].val[0/4+2];
      r7.x = dot(r2.xyzw, r5.xyzw);
      r7.y = dot(r2.xyzw, r6.xyzw);
      r7.z = dot(r2.xyzw, r8.xyzw);
      r5.x = dot(r0.xyzw, r5.xyzw);
      r5.y = dot(r0.xyzw, r6.xyzw);
      r5.z = dot(r0.xyzw, r8.xyzw);
      r5.xyz = r5.xyz + -r7.xyz;
      r6.xyz = float3(1,1,1) / r5.xyz;
      r8.xyz = float3(0,0,-256) + -r7.xyz;
      r8.xyz = r8.xyz * r6.xyz;
      r9.xyz = -r7.xyz + r3.xyw;
      r6.xyz = r9.xyz * r6.xyz;
      r9.xyz = min(r8.xyz, r6.xyz);
      r6.xyz = max(r8.xyz, r6.xyz);
      r3.x = max(r9.y, r9.z);
      r3.x = saturate(max(r9.x, r3.x));
      r3.y = min(r6.y, r6.z);
      r3.y = saturate(min(r6.x, r3.y));
      r4.w = cmp(r3.x < r3.y);
      if (r4.w != 0) {
        r4.z = mad((int)r4.z, 6, 4);
        r6.x = t2[r4.z].val[0/4];
        r6.y = t2[r4.z].val[0/4+1];
        r6.z = t2[r4.z].val[0/4+2];
        r6.w = t2[r4.z].val[0/4+3];
        r4.z = dot(r5.xyz, r5.xyz);
        r4.z = sqrt(r4.z);
        r5.xyz = r5.xyz / r4.zzz;
        r3.x = r4.z * r3.x;
        r8.xy = float2(100,500) * r3.zz;
        r3.z = 1 / r8.x;
        r3.y = r4.z * r3.y + -r3.x;
        r4.z = r3.x;
        r4.w = 1;
        r5.w = 0;
        while (true) {
          r7.w = cmp(r5.w >= 8);
          if (r7.w != 0) break;
          r8.xzw = r5.xyz * r4.zzz + r7.xyz;
          r8.xz = r8.xz * r6.xy + r6.zw;
          r8.xz = t1.SampleLevel(s1_s, r8.xz, 0).xy;
          r7.w = dot(r8.xz, float2(65280,255));
          r7.w = -32768 + r7.w;
          r8.x = saturate(r4.z * r3.z);
          r8.x = 1 + -r8.x;
          r8.z = cb0[31].x * r4.z;
          r8.z = max(9.99999975e-005, r8.z);
          r8.z = min(r8.z, r8.y);
          r4.z = r3.y * 0.125 + r4.z;
          r7.w = -r7.w * 0.0078125 + r8.w;
          r7.w = saturate(r7.w / r8.z);
          r7.w = max(r7.w, r8.x);
          r7.w = min(r7.w, r4.w);
          r8.x = cmp(r7.w < 0.00999999978);
          if (r8.x != 0) {
            r4.w = r7.w;
            break;
          }
          r5.w = 1 + r5.w;
          r4.w = r7.w;
        }
        r4.x = min(r4.x, r4.w);
        r3.x = cmp(r4.x < 0.00999999978);
        if (r3.x != 0) {
          r4.x = 0;
          break;
        }
      }
      r4.y = (int)r4.y + 1;
    }
    r1.x = r4.x;
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyxx
  return;
}