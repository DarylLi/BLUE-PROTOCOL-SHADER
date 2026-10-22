// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[43];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v1.xy;
  r1.xyz = t1.Sample(s1_s, v0.xy).xyz;
  r0.z = t0.SampleLevel(s0_s, v0.xy, 0).w;
  r0.z = 255 * r0.z;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.z = (int)r0.z & 15;
  switch (r0.z) {
    case 0 :    r2.xyz = float3(0.100000001,0.100000001,0.200000003);
    break;
    case 1 :    r2.xyz = float3(0.100000001,1,0.100000001);
    break;
    case 2 :    r2.xyz = float3(1,0.100000001,0.100000001);
    break;
    case 3 :    r2.xyz = float3(0.600000024,0.400000006,0.100000001);
    break;
    case 4 :    r2.xyz = float3(0.100000001,0.400000006,0.400000006);
    break;
    case 5 :    r2.xyz = float3(0.200000003,0.600000024,0.5);
    break;
    case 6 :    r2.xyz = float3(0.200000003,0.200000003,0.800000012);
    break;
    case 7 :    r2.xyz = float3(0.600000024,0.100000001,0.5);
    break;
    case 8 :    r2.xyz = float3(0.699999988,1,1);
    break;
    case 9 :    r2.xyz = float3(0.300000012,1,1);
    break;
    case 1 :    r2.xyz = float3(0.5,0.5,1);
    break;
    case 1 :    r2.xyz = float3(1,0.800000012,0.300000012);
    break;
    case 1 :    r2.xyz = float3(0.5,0.800000012,0.899999976);
    break;
    case 1 :    r2.xyz = float3(0.5,0.800000012,0.899999976);
    break;
    case 1 :    r2.xyz = float3(0.100000001,0.100000001,0.200000003);
    break;
    default :
    r2.xyz = float3(1,1,1);
    break;
  }
  r0.z = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.z = r0.z * 0.199999988 + 0.800000012;
  r1.xyz = r2.xyz * r0.zzz;
  r2.xyzw = (int4)r0.xyxy + int4(-32,-160,-251,-459);
  r0.zw = (int2)r2.xy;
  r2.xy = max(int2(0,0), (int2)r2.zw);
  r0.xy = (int2)-r0.xy + int2(32,160);
  r0.xy = max(int2(0,0), (int2)r0.xy);
  r0.xy = (int2)r0.xy + (int2)r2.xy;
  r0.xy = (int2)r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.y = 0.0500000007 * r0.w;
  r0.y = (int)r0.y;
  r0.w = cmp((int)r0.y < 15);
  if (r0.w != 0) {
    switch (r0.y) {
      case 0 :      r2.xyz = float3(0.100000001,0.100000001,0.200000003);
      break;
      case 1 :      r2.xyz = float3(0.100000001,1,0.100000001);
      break;
      case 2 :      r2.xyz = float3(1,0.100000001,0.100000001);
      break;
      case 3 :      r2.xyz = float3(0.600000024,0.400000006,0.100000001);
      break;
      case 4 :      r2.xyz = float3(0.100000001,0.400000006,0.400000006);
      break;
      case 5 :      r2.xyz = float3(0.200000003,0.600000024,0.5);
      break;
      case 6 :      r2.xyz = float3(0.200000003,0.200000003,0.800000012);
      break;
      case 7 :      r2.xyz = float3(0.600000024,0.100000001,0.5);
      break;
      case 8 :      r2.xyz = float3(0.699999988,1,1);
      break;
      case 9 :      r2.xyz = float3(0.300000012,1,1);
      break;
      case 1 :      r2.xyz = float3(0.5,0.5,1);
      break;
      case 1 :      r2.xyz = float3(1,0.800000012,0.300000012);
      break;
      case 1 :      r2.xyz = float3(0.5,0.800000012,0.899999976);
      break;
      case 1 :      r2.xyz = float3(0.5,0.800000012,0.899999976);
      break;
      case 1 :      r2.xyz = float3(0.100000001,0.100000001,0.200000003);
      break;
      default :
      r2.xyz = float3(1,1,1);
      break;
    }
    r0.z = cmp(r0.z < 20);
    r0.y = cb0[r0.y+27].x ? 0.5 : 0.200000003;
    r0.yzw = r0.zzz ? r2.xyz : r0.yyy;
  } else {
    r0.yzw = float3(0.25,0.25,0.25);
  }
  r2.xy = saturate(float2(-20,-1) + r0.xx);
  r1.xyz = r2.xxx * r1.xyz + -r0.yzw;
  o0.xyz = r2.yyy * r1.xyz + r0.yzw;
  o0.w = 1;
  return;
}