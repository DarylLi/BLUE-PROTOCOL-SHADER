// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb2[4].z + cb1[142].z;
  r0.y = cb2[4].w * r0.x;
  r0.xz = cb2[5].yz * r0.xx;
  r0.xyz = cb2[5].xxx * r0.xyz;
  r0.w = cb2[6].x * r0.y;
  r0.yw = float2(6.28318548,6.28318548) * r0.yw;
  r1.xy = cb2[6].xx * r0.xz;
  r0.xz = float2(6.28318548,6.28318548) * r0.xz;
  r0.xyzw = sin(r0.xyzw);
  r1.xy = float2(6.28318548,6.28318548) * r1.xy;
  r1.xy = sin(r1.xy);
  r0.w = r1.x + r0.w;
  r0.w = r0.w + r1.y;
  r0.w = saturate(cb2[3].w + r0.w);
  r0.w = 0.100000001 * r0.w;
  r0.w = max(0.0599999987, r0.w);
  r0.x = r0.y + r0.x;
  r0.x = r0.x + r0.z;
  r0.x = saturate(cb2[5].w + r0.x);
  r0.x = round(r0.x);
  r0.x = 0.100000001 * r0.x;
  r0.x = min(r0.x, r0.w);
  r0.y = cb2[2].z + cb1[142].z;
  r0.z = cb2[2].w * r0.y;
  r0.yzw = cb2[3].yxz * r0.yzy;
  r0.yw = cb2[3].xx * r0.yw;
  r0.yzw = float3(6.28318548,6.28318548,6.28318548) * r0.yzw;
  r0.yzw = sin(r0.yzw);
  r0.y = r0.z + r0.y;
  r0.y = r0.y + r0.w;
  r0.y = saturate(cb2[3].w + r0.y);
  r0.y = round(r0.y);
  r0.x = r0.y + r0.x;
  r0.x = min(1, r0.x);
  r0.y = cb2[6].y * r0.x;
  r0.xzw = -r0.xxx * cb2[6].yyy + cb2[1].xyz;
  r0.xyz = cb2[6].zzz * r0.xzw + r0.yyy;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.x = dot(r0.xyz, float3(0.333299994,0.333299994,0.333299994));
  r0.x = -cb0[10].y + r0.x;
  r0.yz = cb1[132].zw * v0.xy;
  r0.y = t0.SampleLevel(s0_s, r0.yz, 0).x;
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = r0.yyyy * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r0.yzw = r1.xyz / r1.www;
  r0.yzw = -cb1[70].xyz + r0.yzw;
  r0.yzw = cb1[67].xyz + -r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.y = cb0[10].x + -r0.y;
  r0.z = 0.200000003 * cb0[10].x;
  r0.y = saturate(r0.y / r0.z);
  r0.x = r0.y * r0.x;
  r0.x = cb0[1].y * r0.x + cb0[10].y;
  r0.zw = sqrt(r0.xx);
  r0.xy = float2(1,1);
  r1.xyzw = r0.wwww + -r0.yyww;
  o0.xyzw = cb0[10].zzzz * r1.xyzw + r0.xyzw;
  return;
}