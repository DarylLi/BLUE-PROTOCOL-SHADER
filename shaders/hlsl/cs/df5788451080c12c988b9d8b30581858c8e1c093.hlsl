// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
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
  r0.xy = (uint2)cb0[12].xy;
  r0.xy = cmp((uint2)vThreadID.xy < (uint2)r0.xy);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = (int2)cb0[14].xy;
    r0.zw = (int2)r0.xy ^ (int2)vThreadID.xy;
    r1.xy = max((int2)-r0.xy, (int2)r0.xy);
    uiDest.xy = (uint2)vThreadID.xy / (uint2)r1.xy;
    r1.xy = uiDest.xy;
    r1.zw = -(int2)r1.xy;
    r0.zw = (int2)r0.zw & int2(0x80000000,0x80000000);
    r1.xy = r0.zw ? r1.zw : r1.xy;
    r1.zw = float2(0,0);
    r2.xyz = t0.Load(r1.xyz).xyz;
    if (cb0[15].y != 0) {
      r0.zw = (uint2)vThreadID.xy;
      r0.zw = float2(0.5,0.5) + r0.zw;
      r0.zw = cb0[12].zw * r0.zw;
      r1.zw = (int2)cb0[14].zw;
      r0.xy = mad((int2)r1.xy, (int2)r0.xy, (int2)r1.zw);
      r0.zw = r0.zw * float2(2,-2) + float2(-1,1);
      r1.xyzw = cb0[1].xyzw * r0.wwww;
      r1.xyzw = r0.zzzz * cb0[0].xyzw + r1.xyzw;
      r1.xyzw = cb0[3].xyzw + r1.xyzw;
      r1.xyz = r1.xyz / r1.www;
      r3.xyz = cb0[5].xyw * r1.yyy;
      r1.xyw = r1.xxx * cb0[4].xyw + r3.xyz;
      r1.xyz = r1.zzz * cb0[6].xyw + r1.xyw;
      r1.xyz = cb0[7].xyw + r1.xyz;
      r0.zw = r1.xy / r1.zz;
      r0.zw = r0.zw * float2(0.5,-0.5) + float2(0.5,0.5);
      r1.xyz = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
      r0.z = cmp(0 < asuint(cb0[11].w));
      r3.xyz = cb0[11].xyz * r1.xxx;
      r3.xyz = r3.xyz * float3(100000,100000,100000) + cb0[9].xyz;
      r3.xyz = -cb0[8].xyz + r3.xyz;
      r0.w = dot(r3.xyz, cb0[10].xyz);
      r0.w = 9.99999975e-006 * r0.w;
      r1.x = r0.z ? r0.w : r1.x;
      r0.xy = cmp((int2)r0.xy == (int2)vThreadID.xy);
      r0.x = r0.y ? r0.x : 0;
      r0.yz = r2.yz + -r1.yz;
      r2.yz = cb0[15].xx * r0.yz + r1.yz;
      r2.xyz = r0.xxx ? r2.xyz : r1.xyz;
    }
    r0.xyzw = max(float4(0,0,0,0), r2.xyzx);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
  }
  return;
}