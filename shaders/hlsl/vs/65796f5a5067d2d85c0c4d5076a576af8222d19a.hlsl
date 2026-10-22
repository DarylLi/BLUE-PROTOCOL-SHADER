// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  out float4 o2 : TEXCOORD0,
  out uint o3 : PRIMITIVE_ID0,
  out float4 o4 : TEXCOORD6,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = mad((int)v1.x, 36, 4);
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r2.w = t0[r2.x].val[0/4+3];
  r3.x = (int)v1.x * 36;
  r3.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t0[r3.y].val[0/4];
  r4.y = t0[r3.y].val[0/4+2];
  r4.z = t0[r3.y].val[0/4+1];
  r3.y = t0[r3.z].val[0/4];
  r3.z = t0[r3.z].val[0/4+1];
  r3.w = t0[r3.z].val[0/4+2];
  r3.yzw = cb0[70].xyz + r3.yzw;
  r5.xyz = r4.xzy * r2.yyy;
  r6.xyz = r5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r3.x].val[0/4];
  r7.y = t0[r3.x].val[0/4+1];
  r7.z = t0[r3.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.z].val[0/4];
  r8.y = t0[r0.z].val[0/4+1];
  r8.z = t0[r0.z].val[0/4+2];
  r9.xyz = r7.xyz * r2.xxx;
  r6.xyz = r0.yyy * r9.xyz + r6.xyz;
  r5.xyz = r1.xxx * r9.xyz + r5.xyz;
  r2.xyz = r8.xyz * r2.zzz;
  o1.w = r2.w * r1.w;
  o1.xyz = r1.zzz * r2.xyz + r5.xyz;
  o0.xyz = r0.www * r2.xyz + r6.xyz;
  r0.y = (int)r0.x * asint(cb2[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o2.xy = r0.yz;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.y = asint(cb2[0].y) + -1;
  r0.yzw = min(uint3(0,0,0), (uint3)r0.yyy);
  r0.xyz = mad(asint(cb2[0].yyy), (int3)r0.xxx, (int3)r0.yzw);
  r1.xy = t1.Load(r0.x).xy;
  r0.xy = t1.Load(r0.y).xy;
  r2.yz = t1.Load(r0.z).xy;
  r1.z = r0.x;
  r2.x = r0.y;
  r0.y = r4.x;
  r0.z = r8.x;
  r0.x = r7.x;
  r5.x = dot(r1.xyz, r0.xyz);
  r0.x = dot(r2.xyz, r0.xyz);
  r6.y = r4.z;
  r6.z = r8.y;
  r6.x = r7.y;
  r5.y = dot(r1.xyz, r6.xyz);
  r0.y = dot(r2.xyz, r6.xyz);
  r6.xyz = v0.yyy * r4.xzy;
  r6.xyz = r7.xyz * v0.xxx + r6.xyz;
  r4.x = r7.z;
  r6.xyz = r8.xyz * v0.zzz + r6.xyz;
  r4.z = r8.z;
  r3.xyz = r6.xyz + r3.yzw;
  r5.z = dot(r1.xyz, r4.xyz);
  r0.z = dot(r2.xyz, r4.xyz);
  r1.xyz = -cb3[6].www * r0.xyz + r5.xyz;
  r0.xyz = cb3[6].www * r0.xyz;
  r0.xyz = cb3[7].yyy * r1.xyz + r0.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb1[8].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[7].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[9].xyzw + r1.xyzw;
  o5.xyz = r0.xyz;
  r0.xyzw = cb1[10].xyzw + r1.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 != cb1[11].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o4.x = r0.z;
  o6.xyzw = r0.xyzw;
  o5.w = 1;
  return;
}