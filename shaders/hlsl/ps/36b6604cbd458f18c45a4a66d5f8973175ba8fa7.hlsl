// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r0.x = t0.Load(r0.xyz).x;
  r0.w = (uint)r0.x;
  r1.x = (uint)cb0[2].x;
  r1.y = 1 + -r0.w;
  r1.y = 64 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = -1 + r1.y;
  r1.y = 5.42101086e-020 * r1.y;
  r1.y = r1.y * r1.y;
  r1.y = r1.y * r1.y;
  r2.y = r1.y * r1.y;
  r1.y = log2(r2.y);
  r1.y = 0.25 * r1.y;
  r2.x = exp2(r1.y);
  r1.y = r2.y * r2.y;
  r2.z = r1.y * r1.y;
  r1.yz = cmp((int2)r1.xx == int2(1,2));
  r3.xyz = r0.www * float3(-0.788235307,-0.541176438,-0.466666639) + float3(1,1,1);
  r0.xyz = r1.zzz ? r3.xyz : r0.www;
  r2.w = 0;
  r2.xyzw = r1.yyyy ? r2.xyzw : r0.xyzw;
  r0.xyzw = r1.xxxx ? r2.xyzw : r0.wwww;
  r1.x = (int)cb0[2].z;
  switch (r1.x) {
    case 0 :    r1.xyzw = float4(1,0,0,0);
    break;
    case 1 :    r1.xyzw = float4(0,1,0,0);
    break;
    case 2 :    r1.xyzw = float4(0,0,1,0);
    break;
    case 3 :    r1.xyzw = float4(0,0,0,1);
    break;
    default :
    r1.xyzw = float4(0,0,0,0);
    break;
  }
  r0.w = dot(r0.xyzw, r1.xyzw);
  r0.w = r0.w * cb0[0].y + cb0[0].z;
  r0.xyz = r0.xyz * cb0[0].xxx + r0.www;
  r1.xyz = cb0[0].www * r0.xyz;
  r2.xyz = saturate(r1.xyz);
  r2.xyz = -r0.xyz * cb0[0].www + r2.xyz;
  r1.xyz = cb0[1].yyy * r2.xyz + r1.xyz;
  r0.yzw = cmp(r0.xyz < float3(0,0,0));
  r0.y = (int)r0.z | (int)r0.y;
  r0.y = (int)r0.w | (int)r0.y;
  r0.yzw = r0.yyy ? float3(1,0,0) : r1.xyz;
  r0.x = (int)r0.x & 0x7f800000;
  r0.x = cmp((int)r0.x != 0x7f800000);
  r0.xyz = r0.xxx ? r0.yzw : float3(0,0,1);
  r0.xyz = r0.xyz + -r1.xyz;
  o0.xyz = cb0[1].xxx * r0.xyz + r1.xyz;
  o0.w = 0;
  return;
}