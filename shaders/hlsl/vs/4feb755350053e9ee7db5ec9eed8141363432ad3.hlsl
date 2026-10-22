// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[29];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
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
  out float o3 : TEXCOORD6,
  out float p3 : TEXCOORD8,
  out float3 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb2[0].w);
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
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r3.xyz = cb0[70].xyz + r3.xyz;
  r2.y = mad((int)v1.x, 36, 4);
  r4.x = t0[r2.y].val[0/4];
  r4.y = t0[r2.y].val[0/4+1];
  r4.z = t0[r2.y].val[0/4+2];
  r4.w = t0[r2.y].val[0/4+3];
  r5.xyz = r4.yyy * r2.xzw;
  r2.xyz = v0.yyy * r2.xzw;
  r6.xyz = r5.xyz * r0.yyy;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r0.w].val[0/4];
  r7.y = t0[r0.w].val[0/4+1];
  r7.z = t0[r0.w].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.y].val[0/4];
  r8.y = t0[r0.y].val[0/4+1];
  r8.z = t0[r0.y].val[0/4+2];
  r9.xyz = r7.xyz * r4.xxx;
  r2.xyz = r7.xyz * v0.xxx + r2.xyz;
  r2.xyz = r8.xyz * v0.zzz + r2.xyz;
  r4.xyz = r8.xyz * r4.zzz;
  o1.w = r4.w * r1.w;
  r2.xyz = r2.xyz + r3.xyz;
  r0.xyw = r0.xxx * r9.xyz + r6.xyz;
  o0.xyz = r0.zzz * r4.xyz + r0.xyw;
  r0.xyz = r1.xxx * r9.xyz + r5.xyz;
  r0.xyz = r1.zzz * r4.xyz + r0.xyz;
  o0.w = 0;
  o1.xyz = r0.xyz;
  o2.x = v1.x;
  r1.x = cb1[23].z;
  r1.y = cb1[24].z;
  r1.z = cb1[25].z;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = -abs(r0.x) * abs(r0.x) + 1;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.y : cb1[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb1[27].z, r0.x);
  p3.x = cb1[27].y * r0.x + cb1[27].x;
  r0.xyzw = cb1[20].xyzw * r2.yyyy;
  r0.xyzw = r2.xxxx * cb1[19].xyzw + r0.xyzw;
  r0.xyzw = r2.zzzz * cb1[21].xyzw + r0.xyzw;
  o4.xyz = r2.xyz;
  r0.xyzw = cb1[22].xyzw + r0.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 < cb1[28].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o3.x = r0.z;
  o5.xyzw = r0.xyzw;
  return;
}