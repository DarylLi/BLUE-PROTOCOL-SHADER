// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[236];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[235].zwww);
  r1.xy = (uint2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = cb0[234].xy * r1.xy;
  r2.xy = r1.xy * cb0[234].xy + float2(-0.5,-0.5);
  r2.x = max(abs(r2.x), abs(r2.y));
  r2.x = cmp(r2.x >= 0.5);
  if (r2.x != 0) {
    return;
  }
  r2.x = asint(cb0[233].x) + -1;
  r3.xyz = float3(0,0,0);
  r2.y = 0;
  while (true) {
    r2.w = cmp((int)r2.y >= (int)r2.x);
    if (r2.w != 0) break;
    r2.w = (int)r2.y ^ 2;
    r4.x = max((int)-r2.y, (int)r2.y);
    r4.x = (uint)r4.x >> 1;
    r4.y = -(int)r4.x;
    r2.w = r2.w ? -0.000000 : 0;
    r2.w = r2.w ? r4.y : r4.x;
    r4.xyzw = r1.xyxy * cb0[234].xyxy + cb0[r2.w+41].xyzw;
    r5.xyzw = max(cb0[33].xyxy, r4.xyzw);
    r5.xyzw = min(cb0[33].zwzw, r5.xyzw);
    r6.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
    r4.xyzw = r5.xyzw + -r4.xyzw;
    r4.xyzw = saturate(-abs(r4.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
    r4.xy = r4.xz * r4.yw;
    r4.xzw = r4.xxx * r6.xyz;
    r4.xzw = r4.xzw * cb0[r2.y+105].xyz + r3.xyz;
    r5.xyz = t0.SampleLevel(s0_s, r5.zw, 0).xyz;
    r5.xyz = r5.xyz * r4.yyy;
    r2.yz = (int2)r2.yy + int2(2,1);
    r3.xyz = r5.xyz * cb0[r2.z+105].xyz + r4.xzw;
  }
  r2.x = cmp((int)r2.y < asint(cb0[233].x));
  if (r2.x != 0) {
    r2.x = (int)r2.y ^ 2;
    r2.z = max((int)-r2.y, (int)r2.y);
    r2.z = (uint)r2.z >> 1;
    r2.w = -(int)r2.z;
    r2.x = r2.x ? -0.000000 : 0;
    r2.x = r2.x ? r2.w : r2.z;
    r2.xz = r1.xy * cb0[234].xy + cb0[r2.x+41].xy;
    r4.xy = max(cb0[33].xy, r2.xz);
    r4.xy = min(cb0[33].zw, r4.xy);
    r5.xyz = t0.SampleLevel(s0_s, r4.xy, 0).xyz;
    r2.xz = r4.xy + -r2.xz;
    r2.xz = saturate(-abs(r2.xz) * cb0[27].xy + float2(1,1));
    r2.x = r2.x * r2.z;
    r2.xzw = r2.xxx * r5.xyz;
    r3.xyz = r2.xzw * cb0[r2.y+105].xyz + r3.xyz;
  }
  r2.xy = max(cb0[33].xy, r1.zw);
  r2.xy = min(cb0[33].zw, r2.xy);
  r2.z = t0.SampleLevel(s0_s, r2.xy, 0).w;
  r1.xy = -r1.xy * cb0[234].xy + r2.xy;
  r1.xy = saturate(-abs(r1.xy) * cb0[27].xy + float2(1,1));
  r1.x = r1.x * r1.y;
  r3.w = r1.x * r2.z;
  r1.xy = max(cb0[40].xy, r1.zw);
  r1.xy = min(cb0[40].zw, r1.xy);
  r1.xyzw = t1.SampleLevel(s1_s, r1.xy, 0).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}