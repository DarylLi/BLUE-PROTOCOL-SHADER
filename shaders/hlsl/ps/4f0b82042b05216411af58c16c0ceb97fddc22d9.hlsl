// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.xy = cb0[38].zw * r0.xy;
  r0.xy = r0.xy * cb1[130].xy + cb1[129].xy;
  r0.xy = cb1[132].zw * r0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  switch (r0.x) {
    case 0 :    r0.xyz = float3(0.100000001,0.100000001,0.200000003);
    break;
    case 1 :    r0.xyz = float3(0.100000001,1,0.100000001);
    break;
    case 2 :    r0.xyz = float3(1,0.100000001,0.100000001);
    break;
    case 3 :    r0.xyz = float3(0.600000024,0.400000006,0.100000001);
    break;
    case 4 :    r0.xyz = float3(0.100000001,0.400000006,0.400000006);
    break;
    case 5 :    r0.xyz = float3(0.200000003,0.600000024,0.5);
    break;
    case 6 :    r0.xyz = float3(0.200000003,0.200000003,0.800000012);
    break;
    case 7 :    r0.xyz = float3(0.600000024,0.100000001,0.5);
    break;
    case 8 :    r0.xyz = float3(0.699999988,1,1);
    break;
    case 9 :    r0.xyz = float3(0.300000012,1,1);
    break;
    case 1 :    r0.xyz = float3(0.5,0.5,1);
    break;
    case 1 :    r0.xyz = float3(1,0.800000012,0.300000012);
    break;
    case 1 :    r0.xyz = float3(0.5,0.800000012,0.899999976);
    break;
    case 1 :    r0.xyz = float3(0.5,0.800000012,0.899999976);
    break;
    case 1 :    r0.xyz = float3(0.100000001,0.100000001,0.200000003);
    break;
    default :
    r0.xyz = float3(1,1,1);
    break;
  }
  r1.xyz = cb2[1].xyz + -r0.xyz;
  r0.xyz = cb2[2].xxx * r1.xyz + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  o0.xyz = cb1[135].yyy * r0.xyz;
  o0.w = 1;
  return;
}