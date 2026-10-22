// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[18];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[365];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.x * asint(cb1[0].y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.xzw = t2.Load(r0.x).xyz;
  r1.xy = t1.Load(r0.y).xy;
  r0.y = cb0[142].z * cb2[16].y + r1.x;
  r1.x = cb0[142].z * cb2[17].y + r1.y;
  r1.y = cb2[17].z * r1.x;
  r1.x = cb2[17].x * r0.y;
  r0.y = t3.SampleLevel(s0_s, r1.xy, -1).x;
  r1.x = mad((int)v1.x, 36, 4);
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r1.w = (int)v1.x * 36;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r4.xyz = r2.xzw * r1.yyy;
  r2.xyz = v0.yyy * r2.xzw;
  r4.xyz = r4.xyz * r0.zzz;
  r5.x = t0[r1.w].val[0/4];
  r5.y = t0[r1.w].val[0/4+1];
  r5.z = t0[r1.w].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r6.x = t0[r0.z].val[0/4];
  r6.y = t0[r0.z].val[0/4+1];
  r6.z = t0[r0.z].val[0/4+2];
  r1.xyw = r5.xyz * r1.xxx;
  r2.xyz = r5.xyz * v0.xxx + r2.xyz;
  r2.xyz = r6.xyz * v0.zzz + r2.xyz;
  r5.xyz = r6.xyz * r1.zzz;
  r2.xyz = r2.xyz + r3.xyz;
  r1.xyz = r0.xxx * r1.xyw + r4.xyz;
  r0.xzw = r0.www * r5.xyz + r1.xyz;
  r0.xyz = r0.xzw * r0.yyy;
  r0.xyz = r0.xyz * cb2[17].www + r2.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}