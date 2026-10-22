// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb1[0].y) + -1;
  r0.xyz = min(uint3(1,2,3), (uint3)r0.xxx);
  r0.w = (int)v2.x + asint(cb1[0].w);
  r0.xyz = mad(asint(cb1[0].yyy), (int3)r0.www, (int3)r0.xyz);
  r1.xy = t1.Load(r0.x).xy;
  r0.xy = t1.Load(r0.y).xy;
  r2.yz = t1.Load(r0.z).xy;
  r1.z = r0.x;
  r2.x = r0.y;
  r0.x = (int)v1.x * 36;
  r0.y = mad((int)v1.x, 36, 2);
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r3.z = r0.y;
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r5.x = t0[r0.x].val[0/4];
  r5.y = t0[r0.x].val[0/4+1];
  r5.z = t0[r0.x].val[0/4+2];
  r4.x = t0[r4.x].val[0/4];
  r4.z = t0[r4.x].val[0/4+2];
  r4.w = t0[r4.x].val[0/4+1];
  r6.x = t0[r4.y].val[0/4];
  r6.y = t0[r4.y].val[0/4+1];
  r6.z = t0[r4.y].val[0/4+2];
  r6.xyz = cb0[70].xyz + r6.xyz;
  r3.y = r4.x;
  r3.x = r5.x;
  r7.x = dot(r1.xyz, r3.xyz);
  r3.x = dot(r2.xyz, r3.xyz);
  r8.y = r4.w;
  r8.z = r0.z;
  r8.x = r5.y;
  r7.y = dot(r1.xyz, r8.xyz);
  r3.y = dot(r2.xyz, r8.xyz);
  r8.xyz = v0.yyy * r4.xwz;
  r5.xyw = r5.xyz * v0.xxx + r8.xyz;
  r4.x = r5.z;
  r0.xyz = r0.yzw * v0.zzz + r5.xyw;
  r4.w = r0.w;
  r0.xyz = r0.xyz + r6.xyz;
  r7.z = dot(r1.xyz, r4.xzw);
  r3.z = dot(r2.xyz, r4.xzw);
  r1.xyz = -cb2[5].www * r3.xyz + r7.xyz;
  r2.xyz = cb2[5].www * r3.xyz;
  r1.xyz = cb2[6].yyy * r1.xyz + r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}