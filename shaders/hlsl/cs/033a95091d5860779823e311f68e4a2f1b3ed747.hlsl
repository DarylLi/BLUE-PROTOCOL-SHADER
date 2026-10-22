// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[126];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[64];
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
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[34].xyyy);
  r1.xy = (int2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = float2(0.125,0.125) * cb0[39].zw;
  r1.xy = r1.xy * cb0[32].zw + r1.zw;
  r1.zw = -cb1[66].wz + r1.xy;
  r1.zw = r1.zw / cb1[66].xy;
  r2.xyz = cb1[123].xyw * r1.www;
  r2.xyz = r1.zzz * cb1[122].xyw + r2.xyz;
  r2.w = t1.SampleLevel(s1_s, r1.xy, 0).x;
  r2.xyz = r2.www * cb1[124].xyw + r2.xyz;
  r2.xyz = cb1[125].xyw + r2.xyz;
  r2.xy = r2.xy / r2.zz;
  r2.zw = t2.SampleLevel(s2_s, r1.xy, 0).xy;
  r3.xy = r2.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r2.z = cmp(0 < r2.z);
  r1.zw = -r3.xy + r1.zw;
  r1.zw = r2.zz ? r1.zw : r2.xy;
  r1.zw = r1.zw * cb0[63].xy + cb0[63].zw;
  r2.xy = r1.zw * cb0[62].xy + float2(-0.5,-0.5);
  r2.zw = floor(r2.xy);
  r2.xy = r2.xy + -r2.zw;
  r3.xy = float2(1,1) + -r2.yx;
  r3.zw = r3.xy * r2.xy;
  r2.x = r2.x * r2.y;
  r2.y = r3.y * r3.x;
  r3.xy = r1.xy + -r1.zw;
  r4.x = dot(r3.xy, r3.xy);
  r4.x = sqrt(r4.x);
  r4.x = 100 * r4.x;
  r4.x = min(1, r4.x);
  r4.x = r4.x * -0.100000001 + 0.100000001;
  r4.y = t3.SampleLevel(s3_s, r1.xy, 0).x;
  r1.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.y = saturate(r4.y + -r4.x);
  r4.x = saturate(r4.y + r4.x);
  r4.zw = float2(0.5,0.5) * cb0[62].zw;
  r2.zw = r2.zw * cb0[62].zw + r4.zw;
  r5.xw = cb0[62].zw;
  r5.yz = float2(0,0);
  r5.xyzw = r5.xyzw + r2.zwzw;
  r4.z = t0.SampleLevel(s0_s, r5.xy, 0).x;
  r4.w = t0.SampleLevel(s0_s, r5.zw, 0).x;
  r4.zw = max(r4.zw, r1.yy);
  r4.zw = min(r4.zw, r4.xx);
  r3.z = r4.z * r3.z;
  r4.z = t0.SampleLevel(s0_s, r2.zw, 0).x;
  r2.zw = cb0[62].zw + r2.zw;
  r2.z = t0.SampleLevel(s0_s, r2.zw, 0).x;
  r2.z = max(r2.z, r1.y);
  r2.z = min(r2.z, r4.x);
  r2.w = max(r4.z, r1.y);
  r1.x = max(r1.x, r1.y);
  r1.x = min(r1.x, r4.x);
  r1.y = min(r2.w, r4.x);
  r1.y = r2.y * r1.y + r3.z;
  r1.y = r3.w * r4.w + r1.y;
  r1.y = r2.x * r2.z + r1.y;
  r1.y = r1.y + -r1.x;
  r2.x = t1.SampleLevel(s1_s, r1.zw, 0).x;
  r2.yz = -cb1[66].wz + r1.zw;
  r2.yz = r2.yz / cb1[66].xy;
  r4.xzw = cb1[123].xyw * r2.zzz;
  r4.xzw = r2.yyy * cb1[122].xyw + r4.xzw;
  r4.xzw = r2.xxx * cb1[124].xyw + r4.xzw;
  r4.xzw = cb1[125].xyw + r4.xzw;
  r2.xw = r4.xz / r4.ww;
  r3.zw = t2.SampleLevel(s2_s, r1.zw, 0).xy;
  r4.xz = r3.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r3.z = cmp(0 < r3.z);
  r2.yz = -r4.xz + r2.yz;
  r2.xy = r3.zz ? r2.yz : r2.xw;
  r2.xy = r2.xy * cb0[63].xy + cb0[63].zw;
  r1.zw = -r2.xy + r1.zw;
  r1.zw = r3.xy + -r1.zw;
  r1.z = r1.z + r1.w;
  r1.z = 100 * abs(r1.z);
  r1.z = min(1, r1.z);
  r1.z = 1 + -r1.z;
  r1.x = r1.z * r1.y + r1.x;
  r1.y = r4.y + -r1.x;
  r1.x = cb0[61].x * r1.y + r1.x;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xxxx
  return;
}