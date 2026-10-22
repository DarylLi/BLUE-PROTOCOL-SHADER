// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out uint o2 : PRIMITIVE_ID0,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb0[0].w);
  r0.y = (uint)r0.x << 1;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t1.Load(r0.x).xyzw;
  r0.xyz = t1.Load(r0.y).xyz;
  r2.xyz = r1.yzx * r0.xyz;
  r0.xyz = r1.xyz * r0.yzx + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x * 36;
  r2.x = mad((int)v1.x, 36, 1);
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 4);
  r3.x = t0[r2.w].val[0/4];
  r3.y = t0[r2.w].val[0/4+1];
  r3.z = t0[r2.w].val[0/4+2];
  r3.w = t0[r2.w].val[0/4+3];
  r2.xyz = r3.yyy * r2.xyz;
  r4.xyz = r2.xyz * r0.yyy;
  r2.xyz = r2.xyz * r1.yyy;
  r5.x = t0[r0.w].val[0/4];
  r5.y = t0[r0.w].val[0/4+1];
  r5.z = t0[r0.w].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r6.x = t0[r0.y].val[0/4];
  r6.y = t0[r0.y].val[0/4+1];
  r6.z = t0[r0.y].val[0/4+2];
  r6.xyz = r6.xyz * r3.zzz;
  r3.xyz = r5.xyz * r3.xxx;
  o1.w = r3.w * r1.w;
  r0.xyw = r0.xxx * r3.xyz + r4.xyz;
  o0.xyz = r0.zzz * r6.xyz + r0.xyw;
  r0.xyz = r1.xxx * r3.xyz + r2.xyz;
  o1.xyz = r1.zzz * r6.xyz + r0.xyz;
  o0.w = 0;
  o2.x = v1.x;
  r0.xy = cmp((int2)v2.xx == int2(2,1));
  r0.x = (int)r0.y | (int)r0.x;
  o3.xy = r0.xy ? float2(1,-3) : float2(-3,1);
  o3.zw = float2(0.5,1);
  return;
}