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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = cmp((uint2)vThreadID.xy < asuint(cb0[0].zw));
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xyzw = (uint4)vThreadID.xyxy;
    r0.xyzw = float4(0.5,0.5,0.5,0.5) + r0.xyzw;
    r0.xyzw = cb0[2].zwzw * r0.xyzw;
    r0.xyzw = r0.xyzw + r0.xyzw;
    r1.xyzw = cb0[2].zwzw * float4(-0.5,-0.5,0.5,-0.5) + r0.zwzw;
    r1.xyzw = min(cb0[1].xyxy, r1.xyzw);
    r2.xyzw = t0.SampleLevel(s0_s, r1.xy, 0).xyzw;
    r1.xyzw = t0.SampleLevel(s0_s, r1.zw, 0).xyzw;
    r0.xyzw = cb0[2].zwzw * float4(-0.5,0.5,0.5,0.5) + r0.xyzw;
    r0.xyzw = min(cb0[1].xyxy, r0.xyzw);
    r3.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r0.xyzw = t0.SampleLevel(s0_s, r0.zw, 0).xyzw;
    r4.x = cmp(r1.w < abs(r2.w));
    r4.x = r4.x ? r1.w : r2.w;
    r4.y = cmp(r3.w < abs(r4.x));
    r4.x = r4.y ? r3.w : r4.x;
    r4.y = cmp(r0.w < abs(r4.x));
    r4.x = r4.y ? r0.w : r4.x;
    r2.w = r4.x + -r2.w;
    r5.x = saturate(-r2.w * 64 + 1);
    r1.w = r4.x + -r1.w;
    r5.y = saturate(-r1.w * 64 + 1);
    r1.w = r4.x + -r3.w;
    r5.z = saturate(-r1.w * 64 + 1);
    r0.w = r4.x + -r0.w;
    r5.w = saturate(-r0.w * 64 + 1);
    r0.w = dot(float4(1,1,1,1), r5.xyzw);
    r0.w = rcp(r0.w);
    r1.xyz = r5.yyy * r1.xyz;
    r1.xyz = r2.xyz * r5.xxx + r1.xyz;
    r1.xyz = r3.xyz * r5.zzz + r1.xyz;
    r0.xyz = r0.xyz * r5.www + r1.xyz;
    r0.xyz = r0.www * r0.xyz;
    r0.w = cb0[1].z * r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  }
  return;
}