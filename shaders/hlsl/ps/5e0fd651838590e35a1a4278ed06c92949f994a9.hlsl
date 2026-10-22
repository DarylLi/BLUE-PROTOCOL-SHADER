// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[141];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v2.x;
  r0.yz = float2(0,0);
  r1.xyz = cb2[1].xyz + -r0.xzz;
  r0.xyz = cb2[2].xxx * r1.xyz + r0.xyz;
  r0.w = cmp(0.00100000005 < abs(v3.w));
  r1.xy = floor(v4.xy);
  r1.x = dot(r1.xy, float2(347.834503,3343.28369));
  r1.x = cos(r1.x);
  r1.x = 1000 * r1.x;
  r1.x = frac(r1.x);
  r1.y = cmp(v3.w < 0);
  r1.z = 1 + v3.w;
  r1.z = cmp(r1.x < r1.z);
  r1.x = cmp(v3.w < r1.x);
  r1.x = r1.y ? r1.z : r1.x;
  r1.x = cmp((int)r1.x == 0);
  r0.w = r0.w ? r1.x : 0;
  if (r0.w != 0) discard;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r1.xyzw = cb0[45].xyzw * v4.yyyy;
    r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
    r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
    r1.xyzw = cb0[47].xyzw + r1.xyzw;
    r1.xyz = r1.xyz / r1.www;
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r2.xyz = -cb1[5].xyz + r1.xyz;
    r3.xyz = float3(1,1,1) + cb1[19].xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xyz));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r1.xyz : r0.xyz;
  }
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}