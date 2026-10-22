// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  float3 v1 : ATTRIBUTE0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)cb0[1].x;
  if (r0.x != 0) {
    r0.y = (uint)r0.x;
    r0.z = 3.14159274 / r0.y;
    r0.z = cos(r0.z);
    r0.z = 1 / r0.z;
    sincos(cb0[1].z, r1.x, r2.x);
    r0.w = cb0[1].w * r2.x;
    r1.x = r1.x / r2.x;
    r1.y = (uint)cb0[1].y;
    r1.z = (int)r0.x * (int)r1.y;
    r1.w = cmp((uint)v0.x < (uint)r1.z);
    if (r1.w != 0) {
      uiDest.x = (uint)v0.x / (uint)r0.x;
      r3.x = (uint)v0.x % (uint)r0.x;
      r2.x = uiDest.x;
      r1.w = (uint)r3.x << 1;
      r1.w = (uint)r1.w;
      r1.w = 3.14159274 * r1.w;
      r1.w = r1.w / r0.y;
      r2.x = (uint)r2.x;
      r2.x = r2.x * r0.w;
      r2.y = (int)r1.y + -1;
      r2.y = (uint)r2.y;
      r2.x = r2.x / r2.y;
      r2.y = r2.x * r1.x;
      r2.y = r2.y * r0.z;
      sincos(r1.w, r3.x, r4.x);
      r1.w = r3.x * r2.y;
      r2.y = r4.x * r2.y;
      r3.xyz = cb0[3].xyz * r1.www;
      r2.xzw = r2.xxx * cb0[2].xyz + r3.xyz;
      r2.xyz = r2.yyy * cb0[4].xyz + r2.xzw;
      r2.xyz = cb0[5].xyz + r2.xyz;
      r2.xyz = cb0[6].xyz + r2.xyz;
    } else {
      r0.w = r1.x * r0.w;
      r1.x = (int)-r1.z + (int)v0.x;
      uiDest.x = (uint)r1.x / (uint)r0.x;
      r1.x = (uint)r1.x % (uint)r0.x;
      r0.x = uiDest.x;
      r0.x = (uint)r0.x;
      r0.x = r0.w * r0.x;
      r0.w = (int)r1.y + -1;
      r0.w = (uint)r0.w;
      r0.x = r0.x / r0.w;
      r0.z = r0.x * r0.z;
      r0.x = r0.x * r0.x;
      r0.x = cb0[1].w * cb0[1].w + -r0.x;
      r0.x = sqrt(r0.x);
      r0.w = (uint)r1.x << 1;
      r0.w = (uint)r0.w;
      r0.w = 3.14159274 * r0.w;
      r0.y = r0.w / r0.y;
      sincos(r0.y, r1.x, r3.x);
      r0.y = r1.x * r0.z;
      r0.z = r3.x * r0.z;
      r1.xyz = cb0[3].xyz * r0.yyy;
      r0.xyw = r0.xxx * cb0[2].xyz + r1.xyz;
      r0.xyz = r0.zzz * cb0[4].xyz + r0.xyw;
      r0.xyz = cb0[5].xyz + r0.xyz;
      r2.xyz = cb0[6].xyz + r0.xyz;
    }
  } else {
    r2.xyz = v1.xyz * cb0[0].www + cb0[0].xyz;
  }
  r0.xyzw = cb1[1].xyzw * r2.yyyy;
  r0.xyzw = r2.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r2.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xyzw = r0.xyzw;
  o1.xyzw = r0.xyzw;
  return;
}