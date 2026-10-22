// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
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

  r0.xyzw = saturate(cb0[9].yxwz + v0.yxyx);
  r0.xyzw = r0.zxwy * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r1.z = r0.y;
  r2.xy = float2(1,-1) * r0.wy;
  r2.zw = float2(1,-1);
  r1.xy = r2.xz;
  r3.y = -1;
  r3.xz = -r0.yw;
  r4.xyzw = cmp(asint(cb0[2].xxxx) == int4(1,2,3,4));
  r5.xyz = r4.www ? r2.xyz : r3.zxy;
  r5.xyz = r4.zzz ? r2.xwy : r5.xyz;
  r1.xyz = r4.yyy ? r1.xyz : r5.xyz;
  r1.xyz = r4.xxx ? r2.wyx : r1.xyz;
  r3.xy = r2.zy;
  r1.xyz = cb0[2].xxx ? r1.xyz : r3.xyz;
  r0.w = asuint(cb0[5].y);
  r1.xyzw = t0.SampleLevel(s0_s, r1.xyz, r0.w).xyzw;
  r2.z = r0.x;
  r3.xy = float2(1,-1) * r0.zx;
  r0.xz = -r0.xz;
  r0.y = -1;
  r3.zw = float2(1,-1);
  r5.xyz = r4.www ? r3.xyz : r0.zxy;
  r5.xyz = r4.zzz ? r3.xwy : r5.xyz;
  r2.xy = r3.xz;
  r2.xyz = r4.yyy ? r2.xyz : r5.xyz;
  r2.xyz = r4.xxx ? r3.wyx : r2.xyz;
  r0.xy = r3.zy;
  r0.xyz = cb0[2].xxx ? r2.xyz : r0.xyz;
  r2.xyzw = t0.SampleLevel(s0_s, r0.xyz, r0.w).xyzw;
  r1.xyzw = r2.xyzw + r1.xyzw;
  r2.xyzw = saturate(cb0[10].yxwz + v0.yxyx);
  r2.xyzw = r2.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r0.z = r2.x;
  r3.y = -1;
  r3.xz = -r2.xy;
  r5.xy = float2(1,-1) * r2.yx;
  r5.zw = float2(1,-1);
  r6.xyz = r4.www ? r5.xyz : r3.zxy;
  r6.xyz = r4.zzz ? r5.xwy : r6.xyz;
  r0.xy = r5.xz;
  r0.xyz = r4.yyy ? r0.xyz : r6.xyz;
  r0.xyz = r4.xxx ? r5.wyx : r0.xyz;
  r3.xy = r5.zy;
  r0.xyz = cb0[2].xxx ? r0.xyz : r3.xyz;
  r3.xyzw = t0.SampleLevel(s0_s, r0.xyz, r0.w).xyzw;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r0.xz = -r2.zw;
  r3.xy = float2(1,-1) * r2.wz;
  r0.y = -1;
  r3.zw = float2(1,-1);
  r5.xyz = r4.www ? r3.xyz : r0.zxy;
  r5.xyz = r4.zzz ? r3.xwy : r5.xyz;
  r2.xy = r3.xz;
  r2.xyz = r4.yyy ? r2.xyz : r5.xyz;
  r2.xyz = r4.xxx ? r3.wyx : r2.xyz;
  r0.xy = r3.zy;
  r0.xyz = cb0[2].xxx ? r2.xyz : r0.xyz;
  r0.xyzw = t0.SampleLevel(s0_s, r0.xyz, r0.w).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  o0.xyzw = float4(0.25,0.25,0.25,0.25) * r0.xyzw;
  return;
}