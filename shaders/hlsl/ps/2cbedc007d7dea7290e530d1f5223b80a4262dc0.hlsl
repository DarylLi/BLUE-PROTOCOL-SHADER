// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r0.z = t1.SampleLevel(s0_s, r0.xy, 0).w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  r0.w = cmp(0 < (uint)r0.z);
  r0.z = cmp((int)r0.z != 14);
  r0.z = r0.z ? r0.w : 0;
  if (r0.z != 0) {
    r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
    r1.xyzw = cb1[45].xyzw * v1.yyyy;
    r1.xyzw = v1.xxxx * cb1[44].xyzw + r1.xyzw;
    r0.xyzw = r0.xxxx * cb1[46].xyzw + r1.xyzw;
    r0.xyzw = cb1[47].xyzw + r0.xyzw;
    r0.xyz = r0.xyz / r0.www;
    r0.xyz = -cb1[70].xyz + r0.xyz;
    r1.xyz = cb2[6].xyz + -r0.xyz;
    r0.w = dot(r1.xyz, r1.xyz);
    r0.w = rsqrt(r0.w);
    r1.xyz = r1.xyz * r0.www;
    r0.w = dot(r1.xyz, cb2[8].xyz);
    r0.w = -cb2[10].x + r0.w;
    r0.w = saturate(cb2[10].y * r0.w);
    r0.w = r0.w * r0.w;
    r0.xyz = -cb2[6].xyz + r0.xyz;
    r0.x = dot(r0.xyz, r0.xyz);
    r0.x = sqrt(r0.x);
    r0.x = cb2[6].w * r0.x;
    r0.x = cmp(r0.x < 1);
    r0.y = cmp(9.99999975e-005 < r0.w);
    r0.x = r0.y ? r0.x : 0;
    r0.y = cmp(cb0[0].x < 1);
    r0.y = r0.y ? 0.400000006 : 0.0399999991;
    r0.xyz = r0.xxx ? r0.yyy : 0;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}