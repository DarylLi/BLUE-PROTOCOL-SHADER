// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xz = v0.xy * float2(2,2) + float2(-1,-1);
  r0.y = 1;
  r1.xy = v0.xy * float2(-2,-2) + float2(1,1);
  r1.z = -1;
  r2.xy = v0.xy * float2(2,-2) + float2(-1,1);
  r2.z = 1;
  r3.xyzw = cmp(asint(cb0[2].xxxx) == int4(1,2,3,4));
  r1.xyz = r3.www ? r2.xyz : r1.xyz;
  r4.yz = v0.yx * float2(-2,2) + float2(1,-1);
  r4.x = -1;
  r1.xyz = r3.zzz ? r4.zxy : r1.xyz;
  r0.xyz = r3.yyy ? r0.xyz : r1.xyz;
  r0.xyz = r3.xxx ? r4.xyz : r0.xyz;
  r2.w = v0.x * -2 + 1;
  r0.xyz = cb0[2].xxx ? r0.xyz : r2.zyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xy = r0.zz * r0.yx;
  r1.yw = float2(-1.09254801,-1.09254801) * r1.xy;
  r2.xyz = r0.yzy * r0.yzx;
  r2.yz = float2(1.09254801,3) * r2.zy;
  r0.w = r0.x * r0.x + -r2.x;
  r0.w = cb0[8].x * r0.w;
  r1.xz = r2.yz * float2(1,0.315391988) + float2(0,-0.315391988);
  r1.x = dot(r1.xyzw, cb0[7].xyzw);
  r2.yzw = float3(-0.488602996,0.488602996,-0.488602996) * r0.yzx;
  r2.x = 0.282094985;
  r1.y = dot(r2.xyzw, cb0[6].xyzw);
  r1.x = r1.y + r1.x;
  r0.w = r0.w * 0.546274006 + r1.x;
  r1.x = asuint(cb0[5].y);
  r0.xyz = t0.SampleLevel(s0_s, r0.xyz, r1.x).xyz;
  r0.xyz = r0.xyz * r0.www;
  r1.xy = v0.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + r0.w;
  r1.x = sqrt(r0.w);
  r0.w = r1.x * r0.w;
  r0.w = 4 / r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}