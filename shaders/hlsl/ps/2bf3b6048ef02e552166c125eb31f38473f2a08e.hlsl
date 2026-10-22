// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[160];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v0.y * v0.y;
  r0.yz = float2(70,-84.1572113) * r0.xx;
  r0.x = r0.x * 70 + 6360;
  r0.w = 1.5 * v0.x;
  sincos(r0.w, r1.x, r2.x);
  r0.w = r1.x / r2.x;
  r0.w = r0.w * 0.0815520659 + -0.150000006;
  r1.x = r0.x * r0.x;
  r1.y = r0.w * r0.w + -1;
  r1.yz = r1.xx * r1.yy + float2(41357760,40449600);
  r1.yw = sqrt(r1.yz);
  r1.y = -r0.x * r0.w + r1.y;
  r1.z = cmp(r1.z >= 0);
  r1.w = -r0.x * r0.w + -r1.w;
  r2.x = cmp(r1.w >= 0);
  r1.w = min(r1.y, r1.w);
  r1.w = r2.x ? r1.w : r1.y;
  r1.y = r1.z ? r1.w : r1.y;
  r1.y = 0.00200000009 * r1.y;
  r0.y = -r0.y / cb0[159].z;
  r0.y = 1.44269502 * r0.y;
  r0.y = exp2(r0.y);
  r1.z = 0;
  r1.w = r0.y;
  r2.x = 1;
  while (true) {
    r2.y = cmp(500 < (int)r2.x);
    if (r2.y != 0) break;
    r2.y = (int)r2.x;
    r2.y = r2.y * r1.y;
    r2.z = r2.y * r2.y + r1.x;
    r2.y = r2.y * r0.x;
    r2.y = dot(r2.yy, r0.ww);
    r2.y = r2.z + r2.y;
    r2.y = sqrt(r2.y);
    r2.y = -6360 + r2.y;
    r2.y = -r2.y / cb0[159].z;
    r2.y = 1.44269502 * r2.y;
    r3.y = exp2(r2.y);
    r2.y = r3.y + r1.w;
    r2.y = r2.y * r1.y;
    r3.x = r2.y * 0.5 + r1.z;
    r2.x = (int)r2.x + 1;
    r1.zw = r3.xy;
  }
  r0.y = 6360 / r0.x;
  r0.y = -r0.y * r0.y + 1;
  r0.y = sqrt(r0.y);
  r0.y = cmp(r0.w < -r0.y);
  r2.xyz = float3(0.00579999993,0.0135000004,0.0331000015) * r1.zzz;
  r2.xyz = r0.yyy ? float3(5800000,13500000,33100002) : r2.xyz;
  r0.z = exp2(r0.z);
  r1.z = 0;
  r1.w = r0.z;
  r2.w = 1;
  while (true) {
    r3.x = cmp(500 < (int)r2.w);
    if (r3.x != 0) break;
    r3.x = (int)r2.w;
    r3.x = r3.x * r1.y;
    r3.y = r3.x * r3.x + r1.x;
    r3.x = r3.x * r0.x;
    r3.x = dot(r3.xx, r0.ww);
    r3.x = r3.y + r3.x;
    r3.x = sqrt(r3.x);
    r3.x = -6360 + r3.x;
    r3.x = -1.20224583 * r3.x;
    r3.y = exp2(r3.x);
    r3.z = r3.y + r1.w;
    r3.z = r3.z * r1.y;
    r3.x = r3.z * 0.5 + r1.z;
    r2.w = (int)r2.w + 1;
    r1.zw = r3.xy;
  }
  r0.x = 0.00444444455 * r1.z;
  r0.x = r0.y ? 4444444.5 : r0.x;
  r0.xyz = r2.xyz + r0.xxx;
  r0.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r0.xyz;
  o0.xyz = exp2(r0.xyz);
  o0.w = 0;
  return;
}