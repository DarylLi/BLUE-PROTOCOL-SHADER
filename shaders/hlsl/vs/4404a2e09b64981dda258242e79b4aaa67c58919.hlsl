// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_InstanceID0,
  uint v1 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, vertex_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v0.x * 7;
  r0.x = t0.Load(r0.x).x;
  r1.xy = mad((int2)v0.xx, int2(7,7), int2(5,6));
  r1.w = t0.Load(r1.x).x;
  r0.w = t0.Load(r1.y).x;
  r2.xyzw = mad((int4)v0.xxxx, int4(7,7,7,7), int4(1,2,3,4));
  r1.x = t0.Load(r2.z).x;
  r1.z = t0.Load(r2.w).x;
  r0.y = t0.Load(r2.x).x;
  r0.z = t0.Load(r2.y).x;
  r0.xyz = v1.xxx ? r1.xzw : r0.xyz;
  r1.xyzw = cb0[5].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[4].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb0[6].xyzw + r1.xyzw;
  o0.xyzw = cb0[7].xyzw + r1.xyzw;
  r0.x = (uint)r0.w >> 24;
  r0.x = (uint)r0.x;
  o1.x = 0.00392156886 * r0.x;
  if (8 == 0) r0.x = 0; else if (8+16 < 32) {   r0.x = (uint)r0.w << (32-(8 + 16)); r0.x = (uint)r0.x >> (32-8);  } else r0.x = (uint)r0.w >> 16;
  if (8 == 0) r0.y = 0; else if (8+8 < 32) {   r0.y = (uint)r0.w << (32-(8 + 8)); r0.y = (uint)r0.y >> (32-8);  } else r0.y = (uint)r0.w >> 8;
  r0.z = (int)r0.w & 255;
  r0.xyz = (uint3)r0.xyz;
  o1.yzw = float3(0.00392156886,0.00392156886,0.00392156886) * r0.xyz;
  return;
}