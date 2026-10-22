// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v0.x >> 2;
  r0.y = (uint)v1.x << 4;
  r0.x = (int)r0.x + (int)r0.y;
  r0.y = (int)r0.x * 5;
  r1.xyzw = mad(int4(5,5,5,5), (int4)r0.xxxx, int4(1,2,3,4));
  r0.x = t0[r0.y].val[0/4];
  r0.y = t0[r0.y].val[0/4+1];
  r0.xy = cb0[1].xx * r0.xy;
  o0.xy = r0.xy;
  r2.x = t0[r1.x].val[0/4];
  r2.y = t0[r1.x].val[0/4+1];
  r2.z = t0[r1.x].val[0/4+2];
  r2.w = t0[r1.x].val[0/4+3];
  o1.xyzw = r2.xyzw;
  r3.x = t0[r1.y].val[0/4];
  r3.y = t0[r1.y].val[0/4+1];
  r3.z = t0[r1.y].val[0/4+2];
  r3.w = t0[r1.y].val[0/4+3];
  o2.xyzw = r3.xyzw;
  r4.x = t0[r1.z].val[0/4];
  r4.y = t0[r1.z].val[0/4+1];
  r4.z = t0[r1.z].val[0/4+2];
  r4.w = t0[r1.z].val[0/4+3];
  r1.x = t0[r1.w].val[0/4];
  r1.y = t0[r1.w].val[0/4+1];
  r1.z = t0[r1.w].val[0/4+2];
  r1.w = t0[r1.w].val[0/4+3];
  o3.xyzw = r4.xyzw;
  o4.xyzw = r1.xyzw;
  r0.z = rcp(r2.w);
  o5.x = -0.5 * r0.z;
  r0.z = rcp(r3.w);
  o5.z = -0.5 * r0.z;
  o5.y = r2.w * 0.5 + 0.5;
  r0.z = max(r3.w, r2.w);
  o5.w = r3.w * 0.5 + 0.5;
  r0.z = max(r0.z, r4.w);
  r0.z = max(r0.z, r1.w);
  r0.z = r0.z * cb0[1].y + 1;
  r0.w = rcp(r4.w);
  o6.y = r4.w * 0.5 + 0.5;
  o6.x = -0.5 * r0.w;
  r0.w = rcp(r1.w);
  o6.w = r1.w * 0.5 + 0.5;
  o6.z = -0.5 * r0.w;
  r0.w = (int)v0.x & -4;
  r0.w = (int)-r0.w + (int)v0.x;
  r1.x = (int)r0.w & 1;
  r0.w = (uint)r0.w >> 1;
  r2.y = (uint)r0.w;
  r2.x = (uint)r1.x;
  r1.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.xy = r0.zz * r1.xy + r0.xy;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = cb0[0].zw * r0.xy;
  o7.x = r0.x * 2 + -1;
  o7.y = -r0.y * 2 + 1;
  o7.zw = float2(0,1);
  return;
}