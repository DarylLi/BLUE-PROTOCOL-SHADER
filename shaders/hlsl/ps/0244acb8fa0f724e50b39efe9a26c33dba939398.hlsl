// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[152];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[0].x;
  r0.yz = v0.xy / cb1[r0.x+150].xy;
  r0.yz = cb1[r0.x+148].xy + r0.yz;
  r1.xy = -cb1[r0.x+150].ww * float2(0.5,0.5) + r0.yz;
  r0.y = (uint)v2.x;
  r0.y = 0.5 + r0.y;
  r1.z = r0.y * cb1[r0.x+150].w + cb1[r0.x+148].z;
  r0.x = cb1[r0.x+150].w * 0.5;
  r0.yzw = cb0[1].yzx + -r1.yzx;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r2.xyz = r0.wyz * r0.xxx;
  r0.yzw = float3(-0.488602996,0.488602996,-0.488602996) * r0.yzw;
  r1.w = dot(abs(r2.xyz), float3(1,1,1));
  r1.xyz = r1.xyz + r1.www;
  r1.xyz = cb0[1].xyz + -r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.xyz = r1.xyz / cb0[1].www;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = min(1, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = log2(r1.x);
  r1.x = cb0[2].w * r1.x;
  r1.x = exp2(r1.x);
  r1.y = cb0[1].w * cb0[1].w;
  r1.y = r1.w / r1.y;
  r1.z = 1 + r1.w;
  r1.z = 1 / r1.z;
  r1.y = -r1.y * r1.y + 1;
  r1.y = max(0, r1.y);
  r1.y = r1.y * r1.y;
  r1.y = r1.z * r1.y;
  r1.z = cmp(cb0[2].w == 0.000000);
  r1.x = r1.z ? r1.y : r1.x;
  r1.xyz = cb0[2].xyz * r1.xxx;
  r1.w = 0.318309873 * r1.x;
  r0.x = 0.0897936225;
  r2.xyzw = r1.xwww * r0.xyzw;
  o0.x = r2.x;
  r3.xyzw = float4(1,0.318309873,0.318309873,0.318309873) * r1.yyyy;
  r1.xyzw = float4(1,0.318309873,0.318309873,0.318309873) * r1.zzzz;
  r1.xyzw = r1.xywz * r0.xywz;
  r0.xyzw = r3.xzyw * r0.xzyw;
  o0.y = r0.x;
  o0.z = r1.x;
  o0.w = 0;
  r3.x = r2.y;
  r3.y = r0.z;
  r3.z = r1.y;
  o1.x = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.x = r2.z;
  r1.x = r2.w;
  r1.y = r0.w;
  r0.z = r1.w;
  o1.z = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  o1.y = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  o1.w = 0;
  return;
}