// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2darray (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.x = (uint)vThreadID.x % asuint(cb0[5].x);
  r0.y = vThreadID.y;
  r1.xy = cmp((uint2)r0.xy >= asuint(cb0[5].yz));
  r1.x = (int)r1.y | (int)r1.x;
  if (r1.x != 0) {
    return;
  }
  r1.x = (int)vThreadID.x ^ asint(cb0[5].x);
  r1.y = max(asint(-cb0[5].x), asint(cb0[5].x));
  uiDest.y = (uint)vThreadID.x / (uint)r1.y;
  r1.y = uiDest.y;
  r1.z = -(int)r1.y;
  r1.x = r1.x ? -0.000000 : 0;
  r0.zw = r1.xx ? r1.zz : r1.yy;
  r1.xyzw = (uint4)r0.yxyx;
  r1.xyzw = float4(0.5,0.5,0.5,0.5) + r1.xyzw;
  r2.xyzw = asint(cb0[5].zyzy);
  r1.xyzw = r1.xyzw / r2.xyzw;
  r1.xyzw = r1.zxyw * float4(2,2,2,2) + float4(0,-1,-1,-1);
  r2.xyzw = cmp((int4)r0.wwww == int4(1,2,3,4));
  r3.xy = float2(1,-1) * r1.zy;
  r3.zw = float2(1,-1);
  r4.xz = -r1.yz;
  r4.y = -1;
  r5.xyz = r2.www ? r3.xyz : r4.zxy;
  r5.xyz = r2.zzz ? r3.xwy : r5.xyz;
  r6.xy = r3.xz;
  r6.z = r1.y;
  r5.xyz = r2.yyy ? r6.xyz : r5.xyz;
  r5.xyz = r2.xxx ? r3.wyx : r5.xyz;
  r4.xy = r3.zy;
  r3.xyz = r0.www ? r5.xyz : r4.xyz;
  r3.w = asint(-cb0[4].z) + asint(cb0[4].w);
  r3.w = (int)r3.w + -1;
  r3.w = 1 << (int)r3.w;
  r4.x = dot(r3.xyz, r3.xyz);
  r4.x = rsqrt(r4.x);
  r4.xyz = r4.xxx * r3.zxy;
  r5.xy = float2(1,-1) * r1.wx;
  r5.zw = float2(1,-1);
  r6.xz = -r1.wx;
  r6.y = -1;
  r7.xyz = r2.www ? r5.zxy : r6.yxz;
  r7.xyz = r2.zzz ? r5.yxw : r7.xyz;
  r1.yz = r5.xz;
  r1.xyz = r2.yyy ? r1.xyz : r7.xyz;
  r1.xyz = r2.xxx ? r5.xwy : r1.xyz;
  r6.yz = r5.zy;
  r1.xyz = r0.www ? r1.xyz : r6.xyz;
  r2.xyz = r1.xyz * r4.zxy;
  r1.xyz = r1.zxy * r4.xyz + -r2.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r2.xyz = r4.xyz * r1.yzx;
  r2.xyz = r4.zxy * r1.zxy + -r2.xyz;
  r1.w = (uint)r3.w;
  r1.w = 4 / r1.w;
  r4.xyzw = t0.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r5.xy = float2(-0.699999988,0.699999988) * r1.ww;
  r6.xyz = r1.xyz * r5.xxx + r3.xyz;
  r7.xyz = r2.xyz * r5.xxx + r6.xyz;
  r7.xyzw = t0.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r4.xyzw = r7.xyzw * float4(0.375,0.375,0.375,0.375) + r4.xyzw;
  r7.xyz = r1.xyz * r5.yyy + r3.xyz;
  r5.xzw = r2.xyz * r5.xxx + r7.xyz;
  r8.xyzw = t0.SampleLevel(s0_s, r5.xzw, 0).xyzw;
  r4.xyzw = r8.xyzw * float4(0.375,0.375,0.375,0.375) + r4.xyzw;
  r5.xzw = r2.xyz * r5.yyy + r6.xyz;
  r6.xyzw = t0.SampleLevel(s0_s, r5.xzw, 0).xyzw;
  r4.xyzw = r6.xyzw * float4(0.375,0.375,0.375,0.375) + r4.xyzw;
  r5.xyz = r2.xyz * r5.yyy + r7.xyz;
  r5.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r4.xyzw = r5.xyzw * float4(0.375,0.375,0.375,0.375) + r4.xyzw;
  r5.xyz = r2.xyz * -r1.www + r3.xyz;
  r5.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r4.xyzw = r5.xyzw * float4(0.375,0.375,0.375,0.375) + r4.xyzw;
  r5.xyz = r1.xyz * -r1.www + r3.xyz;
  r5.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r4.xyzw = r5.xyzw * float4(0.375,0.375,0.375,0.375) + r4.xyzw;
  r1.xyz = r1.xyz * r1.www + r3.xyz;
  r5.xyzw = t0.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r4.xyzw = r5.xyzw * float4(0.375,0.375,0.375,0.375) + r4.xyzw;
  r1.xyz = r2.xyz * r1.www + r3.xyz;
  r1.xyzw = t0.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r1.xyzw = r1.xyzw * float4(0.375,0.375,0.375,0.375) + r4.xyzw;
  r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}