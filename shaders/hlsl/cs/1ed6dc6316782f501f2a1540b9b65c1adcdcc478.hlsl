// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<uint4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

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
  float4 cb0[34];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r0.w = mad((int)r1.w, asint(cb0[8].x), (int)r1.z);
    r1.z = t4.Load(r0.w).x;
    r0.w = t3.Load(r0.w).x;
    r1.w = cb0[30].y * r1.y + 2;
    r2.xyz = cb0[28].xyz * r1.www + r0.xyz;
    r3.xyz = cb0[28].xyz * cb0[31].zzz + r0.xyz;
    r2.w = 1;
    r3.w = 1;
    r0.xy = float2(1,0);
    while (true) {
      r0.z = cmp((uint)r0.y >= (uint)r0.w);
      if (r0.z != 0) break;
      r0.z = (int)r1.z + (int)r0.y;
      r0.z = t5.Load(r0.z).x;
      r1.w = (int)r0.z * 17;
      r4.xyzw = mad((int4)r0.zzzz, int4(17,17,17,17), int4(3,1,2,4));
      r5.x = t2[r4.x].val[0/4];
      r5.y = t2[r4.x].val[0/4+1];
      r5.z = t2[r4.x].val[0/4+2];
      r6.x = t2[r1.w].val[0/4];
      r6.y = t2[r1.w].val[0/4+1];
      r6.z = t2[r1.w].val[0/4+2];
      r6.w = t2[r1.w].val[0/4+3];
      r7.x = t2[r4.y].val[0/4];
      r7.y = t2[r4.y].val[0/4+1];
      r7.z = t2[r4.y].val[0/4+2];
      r7.w = t2[r4.y].val[0/4+3];
      r8.x = t2[r4.z].val[0/4];
      r8.y = t2[r4.z].val[0/4+1];
      r8.z = t2[r4.z].val[0/4+2];
      r8.w = t2[r4.z].val[0/4+3];
      r4.x = t2[r4.w].val[0/4];
      r4.y = t2[r4.w].val[0/4+1];
      r4.z = t2[r4.w].val[0/4+2];
      r4.w = t2[r4.w].val[0/4+3];
      r9.x = dot(r2.xyzw, r6.xyzw);
      r9.y = dot(r2.xyzw, r7.xyzw);
      r9.z = dot(r2.xyzw, r8.xyzw);
      r6.x = dot(r3.xyzw, r6.xyzw);
      r6.y = dot(r3.xyzw, r7.xyzw);
      r6.z = dot(r3.xyzw, r8.xyzw);
      r6.xyz = r6.xyz + -r9.xyz;
      r1.w = dot(r6.xyz, r6.xyz);
      r1.w = sqrt(r1.w);
      r7.xyz = r6.xyz / r1.www;
      r5.w = 1 / abs(r4.w);
      r6.w = 100 * r5.w;
      r7.w = dot(-r9.xyz, r7.xyz);
      r7.w = max(0, r7.w);
      r7.w = cb0[31].x * r7.w;
      r7.w = min(r7.w, r6.w);
      r8.xyz = r5.xyz * float3(-0.699999988,-0.699999988,-0.699999988) + -r7.www;
      r10.xyz = r5.xyz * float3(0.699999988,0.699999988,0.699999988) + r7.www;
      r6.xyz = float3(1,1,1) / r6.xyz;
      r8.xyz = r8.xyz + -r9.xyz;
      r8.xyz = r8.xyz * r6.xyz;
      r10.xyz = r10.xyz + -r9.xyz;
      r6.xyz = r10.xyz * r6.xyz;
      r10.xyz = min(r8.xyz, r6.xyz);
      r6.xyz = max(r8.xyz, r6.xyz);
      r7.w = max(r10.y, r10.z);
      r8.x = saturate(max(r10.x, r7.w));
      r6.y = min(r6.y, r6.z);
      r8.y = saturate(min(r6.x, r6.y));
      r6.x = cmp(r8.x < r8.y);
      if (r6.x != 0) {
        r4.w = cmp(r4.w < 0);
        r6.xy = mad((int2)r0.zz, int2(17,17), int2(5,6));
        r10.x = t2[r6.x].val[0/4];
        r10.y = t2[r6.x].val[0/4+1];
        r10.z = t2[r6.x].val[0/4+2];
        r10.w = t2[r6.x].val[0/4+3];
        r6.x = t2[r6.y].val[0/4];
        r6.y = t2[r6.y].val[0/4+1];
        r0.z = 0.400000006 * r5.w;
        r6.z = r10.w * r5.w;
        r6.z = max(9.99999975e-005, r6.z);
        r6.z = 1 / r6.z;
        r8.xy = r8.xy * r1.ww;
        r1.w = r0.x;
        r7.w = r8.x;
        r8.z = 0;
        while (true) {
          r8.w = cmp((uint)r8.z >= 20);
          if (r8.w != 0) break;
          r11.xyz = r7.xyz * r7.www + r9.xyz;
          r12.xyz = max(r11.xyz, -r5.xyz);
          r12.xyz = min(r12.xyz, r5.xyz);
          r11.xyz = r12.xyz + -r11.xyz;
          r8.w = dot(r11.xyz, r11.xyz);
          r8.w = sqrt(r8.w);
          r11.xyz = r12.xyz * r4.xyz + r10.xyz;
          r9.w = t1.SampleLevel(s1_s, r11.xyz, 0).x;
          r9.w = r9.w * r6.x + r6.y;
          r8.w = r9.w + r8.w;
          r9.w = -cb0[13].x * r5.w + r8.w;
          r8.w = r4.w ? r9.w : r8.w;
          r9.w = saturate(r7.w * r6.z);
          r9.w = 1 + -r9.w;
          r10.w = cb0[31].x * r7.w;
          r10.w = max(r10.w, r0.z);
          r10.w = min(r10.w, r6.w);
          r10.w = saturate(r8.w / r10.w);
          r9.w = max(r10.w, r9.w);
          r9.w = min(r9.w, r1.w);
          r8.w = max(0.0125000002, abs(r8.w));
          r7.w = r8.w + r7.w;
          r8.w = cmp(r9.w < 0.00999999978);
          r10.w = cmp(r8.y < r7.w);
          r8.w = (int)r8.w | (int)r10.w;
          if (r8.w != 0) {
            r1.w = r9.w;
            break;
          }
          r8.z = (int)r8.z + 1;
          r1.w = r9.w;
        }
        r0.z = (uint)r8.z;
        r0.z = -r0.z * 0.0500000007 + 1;
        r0.x = min(r1.w, r0.z);
      }
      r0.z = cmp(r0.x < 0.00999999978);
      if (r0.z != 0) {
        r0.x = 0;
        break;
      }
      r0.y = (int)r0.y + 1;
    }
    r1.x = r0.x;
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, vThreadID.xyyy, r1.xyxx
  return;
}