// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.xy = cb0[26].ww * r0.xy;
  r0.zw = float2(0,1);
  r0.xyz = cb0[26].xyz + r0.xyz;
  r1.xy = float2(0,0);
  while (true) {
    r1.z = cmp((uint)r1.y >= asuint(cb0[22].z));
    if (r1.z != 0) break;
    r1.z = (int)r1.y * 12;
    r2.xy = mad((int2)r1.yy, int2(12,12), int2(5,6));
    r3.xyzw = t2.Load(r2.x).xyzw;
    r2.xyzw = t2.Load(r2.y).xyzw;
    r3.x = dot(r0.xyzw, r3.xyzw);
    r3.y = dot(r0.xyzw, r2.xyzw);
    r2.xyzw = t2.Load(r1.z).xyzw;
    r1.z = cmp(r2.x < 0);
    r2.x = abs(r2.x);
    r2.zw = r3.xy * r2.xy + r2.zw;
    r1.w = mad((int)r1.y, 12, 1);
    r3.xyzw = t2.Load(r1.w).xyzw;
    r4.xy = r3.xy + r3.zw;
    r4.xy = float2(0.5,0.5) * r4.xy;
    r4.zw = r2.xy * float2(0.5,0.5) + r2.zw;
    r4.xy = cmp(r4.xy < r4.zw);
    r2.xy = r4.xy ? r2.xy : 0;
    r2.xy = r2.zw + r2.xy;
    r1.zw = r1.zz ? r2.xy : r2.zw;
    r2.xy = cmp(r3.xy < r1.zw);
    r2.x = r2.y ? r2.x : 0;
    r1.zw = cmp(r1.zw < r3.zw);
    r1.z = r1.w ? r1.z : 0;
    r1.z = r1.z ? r2.x : 0;
    if (r1.z != 0) {
      r1.x = r1.y;
      break;
    }
    r1.y = (int)r1.y + 1;
    r1.x = 0;
  }
  r1.y = (int)r1.x * 12;
  r1.zw = mad((int2)r1.xx, int2(12,12), int2(5,6));
  r2.xyzw = t2.Load(r1.z).xyzw;
  r3.xyzw = t2.Load(r1.w).xyzw;
  r0.w = 1;
  r2.x = dot(r0.xyzw, r2.xyzw);
  r2.y = dot(r0.xyzw, r3.xyzw);
  r3.xyzw = t2.Load(r1.y).xyzw;
  r1.y = cmp(r3.x < 0);
  r3.x = abs(r3.x);
  r1.zw = r2.xy * r3.xy + r3.zw;
  r3.z = mad((int)r1.x, 12, 1);
  r4.xyzw = t2.Load(r3.z).xyzw;
  r3.zw = r4.xy + r4.zw;
  r3.zw = float2(0.5,0.5) * r3.zw;
  r5.xy = r3.xy * float2(0.5,0.5) + r1.zw;
  r3.zw = cmp(r3.zw < r5.xy);
  r3.zw = r3.zw ? r3.xy : 0;
  r3.zw = r3.zw + r1.zw;
  r1.yz = r1.yy ? r3.zw : r1.zw;
  r3.zw = cmp(r4.xy < r1.yz);
  r1.w = r3.w ? r3.z : 0;
  r3.zw = cmp(r1.yz < r4.zw);
  r3.z = r3.w ? r3.z : 0;
  r1.w = r3.z ? r1.w : 0;
  if (r1.w != 0) {
    r3.zw = cmp((uint2)vThreadID.xy < asuint(cb0[28].xy));
    r1.w = r3.w ? r3.z : 0;
    if (r1.w != 0) {
      r1.w = mad((int)r1.x, 12, 3);
      r3.zw = t2.Load(r1.w).zw;
      r3.zw = r3.zw * r2.xy;
      r4.xyzw = t1.SampleLevel(s1_s, r3.zw, 0).xyzw;
      r1.w = mad((int)r1.x, 12, 11);
      r5.xyzw = t2.Load(r1.w).xyzw;
      r1.w = dot(r4.xyzw, r5.xyzw);
      r1.w = 1 + -r1.w;
      r1.w = cmp(0.5 < r1.w);
      if (r1.w != 0) {
        r1.yz = r3.xy * float2(0.5,0.5) + r1.yz;
        r3.xyzw = t0.SampleLevel(s0_s, r1.yz, 0).xyzw;
        r1.y = dot(r3.xy, float2(65280,255));
        r1.y = -32768 + r1.y;
        r2.z = 0.0078125 * r1.y;
        r3.xy = r3.zw * float2(2,2) + float2(-1,-1);
        r1.y = dot(r3.xy, r3.xy);
        r1.y = 1 + -r1.y;
        r1.y = max(0, r1.y);
        r3.z = sqrt(r1.y);
        r1.xyz = mad((int3)r1.xxx, int3(12,12,12), int3(8,9,10));
        r4.xyzw = t2.Load(r1.x).xyzw;
        r5.xyzw = t2.Load(r1.y).xyzw;
        r1.xyzw = t2.Load(r1.z).xyzw;
        r2.w = 1;
        r4.x = dot(r2.xyzw, r4.xyzw);
        r4.y = dot(r2.xyzw, r5.xyzw);
        r4.z = dot(r2.xyzw, r1.xyzw);
        r1.x = 0;
        while (true) {
          r1.y = cmp((uint)r1.x >= asuint(cb0[28].z));
          if (r1.y != 0) break;
          r1.y = (uint)r1.x;
          r0.zw = r1.yy * cb0[26].ww + cb0[26].zz;
          r1.yzw = r0.xyw + -r4.xyz;
          r1.y = dot(r3.xyz, r1.yzw);
          r1.z = cmp(r1.y < -cb0[27].x);
          r1.w = -cb0[27].x + -r1.y;
          r1.y = r1.z ? r1.w : r1.y;
          r1.y = max(-cb0[22].w, r1.y);
          r1.y = min(cb0[22].w, r1.y);
          r1.z = cb0[24].y;
          r2.xyzw = r0.xyzw * cb0[r1.z+18].wwww + cb0[r1.z+18].xyzz;
          r2.xyzw = frac(r2.xyzw);
          r2.xyzw = cb0[22].xxxx * r2.xyzw;
          r2.xyzw = (uint4)r2.xyzw;
        // No code for instruction (needs manual fix):
                ld_uav_typed_indexable(texture3d)(float,float,float,float) r0.z, r2.xyww, u0.yzxw
          r0.z = min(r1.y, r0.z);
        // No code for instruction (needs manual fix):
                store_uav_typed u0.xyzw, r2.xyzw, r0.zzzz
          r1.x = (int)r1.x + 1;
        }
      }
    }
  }
  return;
}