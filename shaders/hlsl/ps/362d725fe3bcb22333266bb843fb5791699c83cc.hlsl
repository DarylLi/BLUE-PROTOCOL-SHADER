// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(0.5,0.5) * cb0[0].xy;
  r0.xy = v1.xy * cb0[0].xy + -r0.xy;
  r0.zw = -cb0[4].zw + r0.xy;
  r0.zw = r0.zw / cb0[4].xy;
  r1.xyz = r0.zzw * r0.zzw;
  r1.xyz = r1.xyz + r1.zyz;
  r1.w = r1.x * cb0[1].z + cb0[1].y;
  r1.w = r1.x * r1.w + cb0[1].x;
  r1.w = r1.x * r1.w + 1;
  r1.xy = r1.xx + r1.yz;
  r2.xy = cb0[2].xy * r0.zz;
  r1.z = dot(r2.xx, r0.ww);
  r2.x = dot(r2.yy, r0.ww);
  r1.y = cb0[2].x * r1.y + r2.x;
  r1.x = cb0[2].y * r1.x + r1.z;
  r2.x = r0.z * r1.w + r1.x;
  r2.y = r0.w * r1.w + r1.y;
  r0.zw = cb0[3].xy * r2.xy + cb0[3].zw;
  r1.xy = r0.zw + -r0.xy;
  r1.zw = v0.xy + -r0.xy;
  o0.xyzw = cb0[5].xxxx * r1.xyzw + cb0[5].yyyy;
  return;
}