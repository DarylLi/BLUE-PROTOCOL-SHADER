// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 32, 1, 1
  r0.x = mad((int)vThreadGroupID.x, 32, (int)vThreadIDInGroup.x);
  r1.x = cmp((uint)r0.x >= asuint(cb0[2].x));
  if (r1.x != 0) {
    return;
  }
  r1.x = cmp((uint)vThreadGroupID.y >= asuint(cb0[2].y));
  if (r1.x != 0) {
    return;
  }
  r1.x = max(asuint(cb0[0].w), asuint(cb0[0].z));
  r1.x = (uint)r1.x;
  r1.x = cb0[1].z * r1.x;
  r1.x = max(1, r1.x);
  r1.yz = asuint(cb0[2].yx);
  r2.xy = cb0[1].yx * r1.xx;
  r1.yz = cmp(r2.xy >= r1.yz);
  r1.y = (int)r1.z | (int)r1.y;
  if (r1.y != 0) {
    r2.x = (uint)r0.x;
    r2.yw = (uint2)vThreadGroupID.yy;
    r1.y = (int)-r0.x + asint(cb0[2].x);
    r2.z = (uint)r1.y;
    r2.xyzw = r2.xyzw / r1.xxxx;
    r1.z = (int)-vThreadGroupID.y + asint(cb0[2].y);
    r3.x = (uint)r0.x;
    r3.yzw = (uint3)r1.zyz;
    r3.xyzw = r3.xyzw / r1.xxxx;
    r4.xyzw = cmp(r2.xyzw < float4(0.5,0.5,0.5,0.5));
    r1.yz = r4.yw ? r4.xz : 0;
    if (r1.y != 0) {
      r1.yw = cb0[1].xy + r2.xy;
      r4.xyzw = t0.SampleLevel(s0_s, r1.yw, 0).xyzw;
      r4.w = max(0, r4.w);
    } else {
      r4.xyzw = float4(0,0,0,0);
    }
    if (r1.z != 0) {
      r2.x = cb0[1].x + -r2.z;
      r2.y = cb0[1].y + r2.w;
      r2.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
      r4.xyz = r4.xyz + r2.xyz;
      r4.w = max(r4.w, r2.w);
    }
    r2.xyzw = cmp(r3.xyzw < float4(0.5,0.5,0.5,0.5));
    r1.yz = r2.yw ? r2.xz : 0;
    if (r1.y != 0) {
      r2.x = cb0[1].x + r3.x;
      r2.y = cb0[1].y + -r3.y;
      r2.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
      r4.xyz = r4.xyz + r2.xyz;
      r4.w = max(r4.w, r2.w);
    }
    if (r1.z != 0) {
      r1.yz = cb0[1].xy + -r3.zw;
      r2.xyzw = t0.SampleLevel(s0_s, r1.yz, 0).xyzw;
      r4.xyz = r4.xyz + r2.xyz;
      r4.w = max(r4.w, r2.w);
    }
  } else {
    r1.yz = asuint(cb0[0].xy);
    r1.w = (uint)r0.x;
    r2.x = r1.w / r1.x;
    r1.w = (uint)vThreadGroupID.y;
    r2.y = r1.w / r1.x;
    r1.xy = r1.yz / r1.xx;
    r1.zw = float2(1,1) / r1.xy;
    r2.xy = cb0[1].xy + r2.xy;
    r1.zw = r2.xy * r1.zw;
    r1.zw = frac(r1.zw);
    r2.xy = r1.zw * r1.xy;
    r2.zw = cmp(r2.xy < float2(1,1));
    r2.z = r2.w ? r2.z : 0;
    if (r2.z != 0) {
      r4.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
    } else {
      r4.xyzw = float4(0,0,0,0);
    }
    r1.xy = r1.zw * r1.xy + -cb0[1].xy;
    r1.x = dot(r1.xy, r1.xy);
    r1.x = sqrt(r1.x);
    r1.x = cmp(r1.x < 9.99999975e-005);
    r1.yzw = cb0[1].www * r4.xyz;
    r4.xyz = r1.xxx ? r1.yzw : r4.xyz;
  }
  r0.yzw = vThreadGroupID.yyy;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r4.xyzw
  return;
}