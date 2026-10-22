// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[155];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
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
  r0.xy = (int2)vThreadID.xy + asint(cb0[1].xy);
  r0.xy = cmp((uint2)r0.xy >= asuint(cb0[1].zw));
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x != 0) {
    return;
  }
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = float2(0.5,0.5) + r0.xy;
  r1.xyzw = cb0[0].zwww * r0.zwww;
  r1.xyzw = r1.xyzw * cb1[130].xyyy + cb1[129].xyyy;
  r1.xyzw = cb1[132].zwww * r1.xyzw;
  r1.xyzw = max(cb1[133].xyyy, r1.xyzw);
  r1.xyzw = min(cb1[133].zwww, r1.xyzw);
  r2.xy = float2(0.5,0.5) * cb0[2].xy;
  r0.zw = r0.zw * float2(0.5,0.5) + -r2.xy;
  r0.zw = cb0[7].zw * r0.zw;
  r0.zw = min(cb0[4].zw, r0.zw);
  r2.xyzw = t4.SampleLevel(s1_s, r0.zw, 0).xyzw;
  r3.x = 1 + -r2.w;
  r3.yzw = t0.SampleLevel(s0_s, r1.xw, 0).xyz;
  r4.x = t1.SampleLevel(s0_s, r1.xw, 0).x;
  r4.y = r4.x * cb1[65].x + cb1[65].y;
  r4.x = r4.x * cb1[65].z + -cb1[65].w;
  r4.x = 1 / r4.x;
  r4.x = r4.y + r4.x;
  r4.y = -cb1[154].z + r4.x;
  r4.y = r4.y / r4.x;
  r4.y = cb0[3].x * r4.y;
  r4.x = cb0[4].x * -r4.x;
  r4.x = exp2(r4.x);
  r4.x = 1 + -r4.x;
  r4.x = cb0[4].y * r4.x;
  r4.x = max(abs(r4.y), r4.x);
  r4.y = cmp(r4.y < 0);
  r4.x = r4.y ? -r4.x : r4.x;
  r4.x = max(cb0[3].y, r4.x);
  r4.x = min(cb0[3].z, r4.x);
  r4.y = saturate(3 + -r4.x);
  r5.xyzw = t5.SampleLevel(s1_s, r0.zw, 0).xyzw;
  r0.z = cmp(0 < r5.w);
  r0.w = rcp(r5.w);
  r0.z = r0.z ? r0.w : 0;
  r5.xyz = r5.xyz * r0.zzz;
  r0.z = cmp(0.00100000005 >= r5.w);
  r0.z = r0.z ? 1 : r4.y;
  r0.w = 1 + -r0.z;
  r3.yzw = r0.zzz * r3.yzw;
  r3.yzw = r5.xyz * r0.www + r3.yzw;
  r0.z = cmp(r3.x < 1);
  r0.w = cmp(r5.w != 1.000000);
  r0.z = r0.w ? r0.z : 0;
  r0.w = saturate(3 + r4.x);
  r4.w = min(r3.x, r0.w);
  r0.w = 1 + -r4.w;
  r3.x = 1 + -r3.x;
  r0.w = r0.w / r3.x;
  r4.xyz = r2.xyz * r0.www;
  r2.xyzw = r2.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
  r2.xyzw = r0.zzzz ? r4.xyzw : r2.xyzw;
  r2.xyz = r3.yzw * r2.www + r2.xyz;
  if (cb0[6].x == 0) {
    r0.zw = r1.xw;
    r2.w = -1;
  } else {
    r0.xy = cb1[129].xy + r0.xy;
    r0.xy = float2(0.5,0.5) + r0.xy;
    r3.xyzw = t6.Gather(s1_s, r1.xw).xyzw;
    r4.xy = r3.xy * cb1[65].xx + cb1[65].yy;
    r3.xy = r3.xy * cb1[65].zz + -cb1[65].ww;
    r3.xy = float2(1,1) / r3.xy;
    r4.zw = r4.xy + r3.xy;
    r3.xy = r3.wz * cb1[65].xx + cb1[65].yy;
    r3.zw = r3.wz * cb1[65].zz + -cb1[65].ww;
    r3.zw = float2(1,1) / r3.zw;
    r4.xy = r3.xy + r3.zw;
    r3.xyzw = min(float4(2000000,2000000,2000000,2000000), r4.xyzw);
    r4.xy = (uint2)r0.xy;
    r4.zw = float2(0,0);
    r0.x = t7.Load(r4.xyz).x;
    r0.y = r0.x * cb1[65].x + cb1[65].y;
    r0.x = r0.x * cb1[65].z + -cb1[65].w;
    r0.x = 1 / r0.x;
    r0.x = r0.y + r0.x;
    r0.x = min(2000000, r0.x);
    r3.xyzw = r3.zxyw + -r0.xxxx;
    r0.x = 1 / r0.x;
    r4.xyzw = abs(r3.yzxw) * r0.xxxx;
    r4.xyzw = cmp(r4.xyzw < float4(0.100000001,0.100000001,0.100000001,0.100000001));
    r0.x = r4.y ? r4.x : 0;
    r0.x = r4.z ? r0.x : 0;
    r0.x = r4.w ? r0.x : 0;
    r2.w = ~(int)r0.x;
    if (r0.x != 0) {
      r0.zw = r1.xw;
    } else {
      r4.yz = -cb0[8].xy * float2(0.5,0.5) + r1.xw;
      r4.x = min(100000000, abs(r3.y));
      r5.xy = cb0[8].xy + r4.yz;
      r0.x = cmp(abs(r3.z) < r4.x);
      r5.z = abs(r3.z);
      r6.xy = r0.xx ? r5.zx : r4.xy;
      r0.x = cmp(abs(r3.x) < r6.x);
      r3.x = abs(r3.x);
      r3.y = r4.y;
      r3.z = r5.y;
      r6.z = r4.z;
      r3.xyz = r0.xxx ? r3.xyz : r6.xyz;
      r0.x = cmp(abs(r3.w) < r3.x);
      r0.zw = r0.xx ? r5.xy : r3.yz;
    }
  }
  r0.xy = max(cb0[5].xy, r0.zw);
  r0.xy = min(cb0[5].zw, r0.xy);
  if (r2.w != 0) {
    r3.xyzw = t2.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r4.xyz = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
  } else {
    r3.xyzw = t2.SampleLevel(s1_s, r0.xy, 0).xyzw;
    r4.xyz = t3.SampleLevel(s1_s, r0.xy, 0).xyz;
  }
  r0.xyz = r3.www * r2.xyz;
  r0.xyz = r0.xyz * r4.xyz + r3.xyz;
  r1.xyzw = cb1[132].xyyy * r1.xyzw;
  r1.xyzw = (uint4)r1.xyzw;
  r0.w = 0;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  return;
}