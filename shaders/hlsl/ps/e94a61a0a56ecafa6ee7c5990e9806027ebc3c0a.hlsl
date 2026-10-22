// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.yx * float2(2,2) + float2(0,-1);
  r0.z = 1;
  r1.xz = v0.xy * float2(2,-2) + float2(-1,0);
  r1.y = -1;
  r2.yz = v0.xy * float2(-2,-2) + float2(1,0);
  r2.x = -1;
  r3.xyw = v0.xyx * float3(2,-2,-2) + float3(-1,0,1);
  r3.z = 1;
  r4.xyzw = cmp(asint(cb0[2].xxxx) == int4(1,2,3,4));
  r2.xyz = r4.www ? r3.zxy : r2.xyz;
  r2.xyz = r4.zzz ? r1.zxy : r2.xyz;
  r0.xyz = r4.yyy ? r0.xyz : r2.xyz;
  r0.xyz = r4.xxx ? r1.xyz : r0.xyz;
  r0.xyz = cb0[2].xxx ? r0.xyz : r3.wzy;
  r1.xy = v0.xy * float2(-2,-2) + float2(1,1);
  r1.z = -1;
  r2.xyw = v0.xyx * float3(2,-2,-2) + float3(-1,1,1);
  r2.z = 1;
  r1.xyz = r4.www ? r2.xyz : r1.xyz;
  r3.yz = v0.yx * float2(-2,2) + float2(1,-1);
  r3.x = -1;
  r1.xyz = r4.zzz ? r3.zxy : r1.xyz;
  r5.xz = v0.xy * float2(2,2) + float2(-1,-1);
  r5.y = 1;
  r1.xyz = r4.yyy ? r5.xyz : r1.xyz;
  r1.xyz = r4.xxx ? r3.xyz : r1.xyz;
  r1.xyz = cb0[2].xxx ? r1.xyz : r2.zyw;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.zxy * r0.www;
  r3.xyz = r2.zxy * r0.xyz;
  r0.xyz = r0.zxy * r2.xyz + -r3.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.xyz = r2.xyz * r0.yzx;
  r2.xyz = r2.zxy * r0.zxy + -r3.xyz;
  r0.w = asint(-cb0[4].z) + asint(cb0[4].w);
  r0.w = (int)r0.w + -1;
  r0.w = 1 << (int)r0.w;
  r0.w = (uint)r0.w;
  r0.w = 4 / r0.w;
  r3.xy = float2(-0.699999988,0.699999988) * r0.ww;
  r4.xyz = r0.xyz * r3.xxx + r1.xyz;
  r5.xyz = r2.xyz * r3.xxx + r4.xyz;
  r4.xyz = r2.xyz * r3.yyy + r4.xyz;
  r4.xyzw = t0.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r5.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r6.xyzw = t0.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r5.xyzw = r5.xyzw * float4(0.375,0.375,0.375,0.375) + r6.xyzw;
  r6.xyz = r0.xyz * r3.yyy + r1.xyz;
  r3.xzw = r2.xyz * r3.xxx + r6.xyz;
  r6.xyz = r2.xyz * r3.yyy + r6.xyz;
  r6.xyzw = t0.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r3.xyzw = t0.SampleLevel(s0_s, r3.xzw, 0).xyzw;
  r3.xyzw = r3.xyzw * float4(0.375,0.375,0.375,0.375) + r5.xyzw;
  r3.xyzw = r4.xyzw * float4(0.375,0.375,0.375,0.375) + r3.xyzw;
  r3.xyzw = r6.xyzw * float4(0.375,0.375,0.375,0.375) + r3.xyzw;
  r4.xyz = r2.xyz * -r0.www + r1.xyz;
  r2.xyz = r2.xyz * r0.www + r1.xyz;
  r2.xyzw = t0.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r4.xyzw = t0.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r3.xyzw = r4.xyzw * float4(0.375,0.375,0.375,0.375) + r3.xyzw;
  r4.xyz = r0.xyz * -r0.www + r1.xyz;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.xyzw = t0.SampleLevel(s0_s, r0.xyz, 0).xyzw;
  r1.xyzw = t0.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r1.xyzw = r1.xyzw * float4(0.375,0.375,0.375,0.375) + r3.xyzw;
  r0.xyzw = r0.xyzw * float4(0.375,0.375,0.375,0.375) + r1.xyzw;
  r0.xyzw = r2.xyzw * float4(0.375,0.375,0.375,0.375) + r0.xyzw;
  o0.xyzw = float4(0.25,0.25,0.25,0.25) * r0.xyzw;
  return;
}