// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[22];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  if (1 == 0) r0.x = 0; else if (1+1 < 32) {   r0.x = (uint)vThreadIDInGroupFlattened.x << (32-(1 + 1)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)vThreadIDInGroupFlattened.x >> 1;
  r1.xyzw = (uint4)vThreadIDInGroupFlattened.xxxx >> int4(2,3,4,5);
  bitmask.y = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.y = (((uint)r1.x << 1) & bitmask.y) | ((uint)0 & ~bitmask.y);
  bitmask.z = ((~(-1 << 1)) << 1) & 0xffffffff;  r0.z = (((uint)r1.y << 1) & bitmask.z) | ((uint)0 & ~bitmask.z);
  bitmask.w = ((~(-1 << 1)) << 2) & 0xffffffff;  r0.w = (((uint)r1.z << 2) & bitmask.w) | ((uint)0 & ~bitmask.w);
  bitmask.y = ((~(-1 << 1)) << 0) & 0xffffffff;  r0.y = (((uint)vThreadIDInGroupFlattened.x << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r0.x = (int)r0.z + (int)r0.x;
  r2.x = (int)r0.w + (int)r0.y;
  r2.yzw = mad((int3)r1.www, int3(4,4,4), (int3)r0.xxx);
  r0.xyzw = mad((int4)vThreadGroupID.xyyy, int4(8,8,8,8), (int4)r2.xyzw);
  r1.xy = (uint2)r0.xw;
  r1.zw = cmp(r1.xy < cb0[17].zw);
  r1.z = r1.w ? r1.z : 0;
  if (r1.z != 0) {
    r1.xy = float2(0.5,0.5) + r1.xy;
    r1.zw = cb0[15].xy * r1.xy;
    r2.x = t0.SampleLevel(s0_s, r1.zw, 0).x;
    r3.xyzw = cb0[15].xyxy * float4(-2,-2,-2,-1) + r1.zwzw;
    r3.xyzw = max(cb0[20].zwzw, r3.xyzw);
    r3.xyzw = min(cb0[21].xyxy, r3.xyzw);
    r2.y = t0.SampleLevel(s0_s, r3.xy, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r2.x = min(r2.x, r2.y);
    r3.xyzw = cb0[15].xyxy * float4(-2,0,-2,1) + r1.zwzw;
    r3.xyzw = max(cb0[20].zwzw, r3.xyzw);
    r3.xyzw = min(cb0[21].xyxy, r3.xyzw);
    r2.y = t0.SampleLevel(s0_s, r3.xy, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r2.x = min(r2.x, r2.y);
    r3.xyzw = cb0[15].xyxy * float4(-2,2,-1,-2) + r1.zwzw;
    r3.xyzw = max(cb0[20].zwzw, r3.xyzw);
    r3.xyzw = min(cb0[21].xyxy, r3.xyzw);
    r2.y = t0.SampleLevel(s0_s, r3.xy, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.yz = r1.xy * cb0[15].xy + -cb0[15].xy;
    r2.yz = max(cb0[20].zw, r2.yz);
    r2.yz = min(cb0[21].xy, r2.yz);
    r2.y = t0.SampleLevel(s0_s, r2.yz, 0).x;
    r2.x = min(r2.x, r2.y);
    r3.xyzw = cb0[15].xyxy * float4(-1,0,-1,1) + r1.zwzw;
    r3.xyzw = max(cb0[20].zwzw, r3.xyzw);
    r3.xyzw = min(cb0[21].xyxy, r3.xyzw);
    r2.y = t0.SampleLevel(s0_s, r3.xy, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r2.x = min(r2.x, r2.y);
    r3.xyzw = cb0[15].xyxy * float4(-1,2,0,-2) + r1.zwzw;
    r3.xyzw = max(cb0[20].zwzw, r3.xyzw);
    r3.xyzw = min(cb0[21].xyxy, r3.xyzw);
    r2.y = t0.SampleLevel(s0_s, r3.xy, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r2.x = min(r2.x, r2.y);
    r3.xyzw = cb0[15].xyxy * float4(0,-1,0,1) + r1.zwzw;
    r3.xyzw = max(cb0[20].zwzw, r3.xyzw);
    r3.xyzw = min(cb0[21].xyxy, r3.xyzw);
    r2.y = t0.SampleLevel(s0_s, r3.xy, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r2.x = min(r2.x, r2.y);
    r3.xyzw = cb0[15].xyxy * float4(0,2,1,-2) + r1.zwzw;
    r3.xyzw = max(cb0[20].zwzw, r3.xyzw);
    r3.xyzw = min(cb0[21].xyxy, r3.xyzw);
    r2.y = t0.SampleLevel(s0_s, r3.xy, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r2.x = min(r2.x, r2.y);
    r3.xyzw = cb0[15].xyxy * float4(1,-1,1,0) + r1.zwzw;
    r3.xyzw = max(cb0[20].zwzw, r3.xyzw);
    r3.xyzw = min(cb0[21].xyxy, r3.xyzw);
    r2.y = t0.SampleLevel(s0_s, r3.xy, 0).x;
    r2.x = min(r2.x, r2.y);
    r2.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r2.x = min(r2.x, r2.y);
    r1.xy = r1.xy * cb0[15].xy + cb0[15].xy;
    r1.xy = max(cb0[20].zw, r1.xy);
    r1.xy = min(cb0[21].xy, r1.xy);
    r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
    r1.x = min(r2.x, r1.x);
    r2.xyzw = cb0[15].xyxy * float4(1,2,2,-2) + r1.zwzw;
    r2.xyzw = max(cb0[20].zwzw, r2.xyzw);
    r2.xyzw = min(cb0[21].xyxy, r2.xyzw);
    r1.y = t0.SampleLevel(s0_s, r2.xy, 0).x;
    r1.x = min(r1.x, r1.y);
    r1.y = t0.SampleLevel(s0_s, r2.zw, 0).x;
    r1.x = min(r1.x, r1.y);
    r2.xyzw = cb0[15].xyxy * float4(2,-1,2,0) + r1.zwzw;
    r2.xyzw = max(cb0[20].zwzw, r2.xyzw);
    r2.xyzw = min(cb0[21].xyxy, r2.xyzw);
    r1.y = t0.SampleLevel(s0_s, r2.xy, 0).x;
    r1.x = min(r1.x, r1.y);
    r1.y = t0.SampleLevel(s0_s, r2.zw, 0).x;
    r1.x = min(r1.x, r1.y);
    r2.xy = cb0[15].xy * float2(2,1) + r1.zw;
    r2.xy = max(cb0[20].zw, r2.xy);
    r2.xy = min(cb0[21].xy, r2.xy);
    r1.y = t0.SampleLevel(s0_s, r2.xy, 0).x;
    r1.x = min(r1.x, r1.y);
    r1.yz = cb0[15].xy * float2(2,2) + r1.zw;
    r1.yz = max(cb0[20].zw, r1.yz);
    r1.yz = min(cb0[21].xy, r1.yz);
    r1.y = t0.SampleLevel(s0_s, r1.yz, 0).x;
    r1.x = min(r1.x, r1.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xyzw, r1.xxxx
  }
  return;
}