// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

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
  out float o0 : TEXCOORD6,
  out float p0 : TEXCOORD8,
  out float4 o1 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb2[0].y) + -1;
  r0.xyz = min(uint3(1,2,3), (uint3)r0.xxx);
  r0.w = (int)v2.x + asint(cb2[0].w);
  r0.xyz = mad(asint(cb2[0].yyy), (int3)r0.www, (int3)r0.xyz);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.xyz = t2.Load(r0.w).xyz;
  r2.xy = t1.Load(r0.x).xy;
  r0.xy = t1.Load(r0.y).xy;
  r3.yz = t1.Load(r0.z).xy;
  r2.z = r0.x;
  r3.x = r0.y;
  r0.x = (int)v1.x * 36;
  r0.y = mad((int)v1.x, 36, 2);
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r4.z = r0.y;
  r5.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r6.x = t0[r0.x].val[0/4];
  r6.y = t0[r0.x].val[0/4+1];
  r6.z = t0[r0.x].val[0/4+2];
  r5.x = t0[r5.x].val[0/4];
  r5.z = t0[r5.x].val[0/4+1];
  r5.w = t0[r5.x].val[0/4+2];
  r7.x = t0[r5.y].val[0/4];
  r7.y = t0[r5.y].val[0/4+1];
  r7.z = t0[r5.y].val[0/4+2];
  r7.xyz = cb0[70].xyz + r7.xyz;
  r4.y = r5.x;
  r4.x = r6.x;
  r8.x = dot(r2.xyz, r4.xyz);
  r4.x = dot(r3.xyz, r4.xyz);
  r9.y = r5.z;
  r9.z = r0.z;
  r9.x = r6.y;
  r8.y = dot(r2.xyz, r9.xyz);
  r4.y = dot(r3.xyz, r9.xyz);
  r9.y = r5.w;
  r9.z = r0.w;
  r9.x = r6.z;
  r8.z = dot(r2.xyz, r9.xyz);
  r4.z = dot(r3.xyz, r9.xyz);
  r2.xyz = -cb3[5].www * r4.xyz + r8.xyz;
  r3.xyz = cb3[5].www * r4.xyz;
  r2.xyz = cb3[6].yyy * r2.xyz + r3.xyz;
  r3.xyz = v0.yyy * r5.xzw;
  r3.xyz = r6.xyz * v0.xxx + r3.xyz;
  r3.xyz = r0.yzw * v0.zzz + r3.xyz;
  r3.xyz = r3.xyz + r7.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyzw = cb1[20].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb1[19].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb1[21].xyzw + r3.xyzw;
  r2.xyzw = cb1[22].xyzw + r2.xyzw;
  r0.x = cmp(r2.z < 0);
  r1.w = cmp(0 < cb1[28].x);
  r0.x = r0.x ? r1.w : 0;
  r2.zw = r0.xx ? float2(9.99999997e-007,1) : r2.zw;
  o0.x = r2.z;
  o1.xyzw = r2.xyzw;
  r0.x = mad((int)v1.x, 36, 4);
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r3.xyz = r5.xzw * r2.yyy;
  r3.xyz = r3.xyz * r1.yyy;
  r2.xyw = r6.xyz * r2.xxx;
  r0.xyz = r2.zzz * r0.yzw;
  r1.xyw = r1.xxx * r2.xyw + r3.xyz;
  r0.xyz = r1.zzz * r0.xyz + r1.xyw;
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
  p0.x = cb1[27].y * r0.x + cb1[27].x;
  return;
}