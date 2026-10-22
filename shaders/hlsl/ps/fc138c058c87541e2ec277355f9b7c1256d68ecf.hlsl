// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.xy = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).w;
  r0.xyw = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r1.xyzw = cmp((int4)r0.zzzz == int4(2,3,4,5));
  r1.x = (int)r1.y | (int)r1.x;
  r1.xy = (int2)r1.zw | (int2)r1.xx;
  r1.x = (int)r1.w | (int)r1.x;
  r2.xyzw = cmp((int4)r0.zzzz == int4(6,7,8,12));
  r1.zw = cmp((int2)r0.zz == int2(13,9));
  r0.z = (int)r1.x | (int)r2.x;
  r0.z = (int)r2.y | (int)r0.z;
  r0.z = (int)r2.z | (int)r0.z;
  r0.z = (int)r2.w | (int)r0.z;
  r0.z = (int)r1.z | (int)r0.z;
  r0.z = (int)r1.w | (int)r0.z;
  r0.xyz = (int3)r0.xyw & (int3)r0.zzz;
  r3.xyz = r0.xyz * r0.xyz;
  r0.w = (int)r1.y | (int)r2.x;
  r0.w = (int)r2.y | (int)r0.w;
  r0.w = (int)r1.w | (int)r0.w;
  r0.xyz = r0.www ? r3.xyz : r0.xyz;
  r1.xyz = log2(r0.xyz);
  r0.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r1.xyz = float3(0.454544991,0.454544991,0.454544991) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r0.xyz = r0.xyz ? float3(0,0,0) : r1.xyz;
  r1.xyz = cb2[1].xyz + -r0.xyz;
  r0.xyz = cb2[2].xxx * r1.xyz + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb1[135].yyy * r0.xyz;
  o0.w = 1;
  return;
}