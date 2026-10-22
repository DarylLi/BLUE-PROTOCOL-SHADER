// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[42];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : TEXCOORD1,
  out float4 o6 : TEXCOORD2,
  out uint o7 : PRIMITIVE_ID0,
  out float4 o8 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r1.z = t0[r0.y].val[0/4+2];
  r0.y = t0[r0.z].val[0/4];
  r0.z = t0[r0.z].val[0/4+1];
  r0.w = t0[r0.z].val[0/4+2];
  r0.yzw = cb0[70].xyz + r0.yzw;
  r2.xyz = v0.yyy * r1.xyz;
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r4.x = t0[r0.x].val[0/4];
  r4.y = t0[r0.x].val[0/4+1];
  r4.z = t0[r0.x].val[0/4+2];
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r0.xyz = r2.xyz + r0.yzw;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  o8.xyz = r0.xyz;
  r0.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.x = mad((int)v1.x, 36, 4);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.w = t0[r0.x].val[0/4+3];
  r2.xyz = r4.xyz * r0.zzz;
  r3.xyz = r3.xyz * r0.xxx;
  r0.xyz = r1.xyz * r0.yyy;
  r1.x = (int)v2.x + asint(cb1[0].w);
  r1.y = (uint)r1.x << 1;
  r1.yzw = t2.Load(r1.y).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r1.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r4.xyzw = t2.Load(r2.w).xyzw;
  r5.xyz = r4.yzx * r1.yzw;
  r1.yzw = r4.xyz * r1.zwy + -r5.xyz;
  r1.yzw = r1.yzw * r4.www;
  r5.xyz = r1.yzw * r4.yzx;
  r1.yzw = r1.wyz * r4.zxy + -r5.xyz;
  r1.yzw = r1.yzw * r4.www;
  r5.xyz = r1.zzz * r0.xyz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * r3.xyz + r0.xyz;
  r3.xyz = r1.yyy * r3.xyz + r5.xyz;
  o1.xyz = r1.www * r2.xyz + r3.xyz;
  o2.xyz = r4.zzz * r2.xyz + r0.xyz;
  o1.w = 0;
  o2.w = r4.w * r0.w;
  r0.x = (int)r1.x & asint(cb1[0].x);
  r0.xyzw = t3.Load(r0.x).xyzw;
  o3.xyzw = r0.zyxw;
  r0.x = asint(cb1[0].y) + -1;
  r0.x = min(1, (uint)r0.x);
  r0.x = mad(asint(cb1[0].y), (int)r1.x, (int)r0.x);
  r0.y = (int)r1.x * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o4.xy = cb2[41].xy + r0.yz;
  r0.xy = t1.Load(r0.x).xy;
  o4.zw = r0.xy;
  o5.w = r4.x;
  o6.xy = r4.yz;
  o5.xyz = v0.xyz;
  o6.zw = float2(0,0);
  o7.x = v1.x;
  o8.w = 1;
  return;
}