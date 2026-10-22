// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[8];
};
StructuredBuffer<t0_t> t0 : register(t0);

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

  r0.x = t0[v0.x].val[0/4];
  r0.y = t0[v0.x].val[0/4+1];
  r0.z = t0[v0.x].val[0/4+2];
  r0.w = t0[v0.x].val[0/4+3];
  r1.x = t0[v0.x].val[16/4];
  r1.y = t0[v0.x].val[16/4+1];
  r1.z = t0[v0.x].val[16/4+2];
  r1.w = t0[v0.x].val[16/4+3];
  r0.xyz = v1.xxx ? r1.xyz : r0.xyz;
  r2.xyzw = cb0[5].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[4].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[6].xyzw + r2.xyzw;
  o0.xyzw = cb0[7].xyzw + r2.xyzw;
  r0.x = (uint)r0.w >> 24;
  r2.x = (uint)r0.x;
  if (8 == 0) r0.x = 0; else if (8+16 < 32) {   r0.x = (uint)r0.w << (32-(8 + 16)); r0.x = (uint)r0.x >> (32-8);  } else r0.x = (uint)r0.w >> 16;
  if (8 == 0) r0.y = 0; else if (8+8 < 32) {   r0.y = (uint)r0.w << (32-(8 + 8)); r0.y = (uint)r0.y >> (32-8);  } else r0.y = (uint)r0.w >> 8;
  r0.z = (int)r0.w & 255;
  r2.yzw = (uint3)r0.xyz;
  r0.xyzw = float4(0.00392156886,0.00392156886,0.00392156886,0.00392156886) * r2.xyzw;
  r1.x = (uint)r1.w >> 24;
  r2.x = (uint)r1.x;
  if (8 == 0) r1.x = 0; else if (8+16 < 32) {   r1.x = (uint)r1.w << (32-(8 + 16)); r1.x = (uint)r1.x >> (32-8);  } else r1.x = (uint)r1.w >> 16;
  if (8 == 0) r1.y = 0; else if (8+8 < 32) {   r1.y = (uint)r1.w << (32-(8 + 8)); r1.y = (uint)r1.y >> (32-8);  } else r1.y = (uint)r1.w >> 8;
  r1.z = (int)r1.w & 255;
  r2.yzw = (uint3)r1.xyz;
  r1.xyzw = float4(0.00392156886,0.00392156886,0.00392156886,0.00392156886) * r2.xyzw;
  o1.xyzw = v1.xxxx ? r1.xyzw : r0.xyzw;
  return;
}