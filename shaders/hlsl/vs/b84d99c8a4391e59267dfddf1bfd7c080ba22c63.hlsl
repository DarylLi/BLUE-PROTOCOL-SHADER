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
  float4 cb2[101];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[136];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : TEXCOORD0,
  out float4 o7 : TEXCOORD1,
  out uint o8 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.w = 0.00100000005 * r0.w;
  r2.x = cmp(1 < asint(cb0[135].x));
  r1.w = r2.x ? r1.w : 0;
  o0.z = r1.w + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(10,11,12,13));
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r5.w = r2.y;
  r6.x = t0[r0.x].val[0/4+2];
  r6.y = t0[r0.x].val[0/4];
  r6.z = t0[r0.x].val[0/4+1];
  r5.x = r6.z;
  r7.x = t0[r0.y].val[0/4+1];
  r7.y = t0[r0.y].val[0/4];
  r7.z = t0[r0.y].val[0/4+2];
  r0.x = t0[r0.z].val[0/4];
  r0.y = t0[r0.z].val[0/4+1];
  r0.z = t0[r0.z].val[0/4+2];
  r5.y = r7.x;
  r5.z = r0.y;
  r0.y = dot(v0.xyzw, r5.xyzw);
  r5.xyzw = cb0[92].xyzw * r0.yyyy;
  r7.w = r2.x;
  r6.w = r2.z;
  r7.x = r6.y;
  r6.y = r7.z;
  r7.z = r0.x;
  r6.z = r0.z;
  r0.x = dot(v0.xyzw, r6.xyzw);
  r0.y = dot(v0.xyzw, r7.xyzw);
  r2.xyzw = r0.yyyy * cb0[91].xyzw + r5.xyzw;
  r0.xyzw = r0.xxxx * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r2.xyzw = t2.Load(r1.w).xyzw;
  r5.xyz = r2.yzx * r0.yzw;
  r0.yzw = r2.xyz * r0.zwy + -r5.xyz;
  r0.yzw = r0.yzw * r2.www;
  r5.xyz = r0.yzw * r2.yzx;
  r0.yzw = r0.wyz * r2.zxy + -r5.xyz;
  r0.yzw = r0.yzw * r2.www;
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,28,29,30));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r6.w = t0[r5.x].val[0/4+3];
  r1.xyz = r6.yyy * r1.xyz;
  r7.xyz = r1.xyz * r0.zzz;
  r1.xyz = r2.yyy * r1.xyz;
  r3.xyz = r6.xxx * r3.xyz;
  r7.xyz = r0.yyy * r3.xyz + r7.xyz;
  r1.xyz = r2.xxx * r3.xyz + r1.xyz;
  r3.xyz = r6.zzz * r4.xyz;
  o4.w = r6.w * r2.w;
  o4.xyz = r2.zzz * r3.xyz + r1.xyz;
  o3.xyz = r0.www * r3.xyz + r7.xyz;
  o3.w = 0;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t3.Load(r0.y).xyzw;
  o5.xyzw = r1.zyxw;
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o6.xy = r0.yz;
  r0.y = asint(cb1[0].y) + -1;
  r0.yz = min(uint2(0,0), (uint2)r0.yy);
  r0.xy = mad(asint(cb1[0].yy), (int2)r0.xx, (int2)r0.yz);
  r0.xz = t1.Load(r0.x).xy;
  r0.y = t1.Load(r0.y).y;
  o7.y = r0.y;
  o6.zw = r0.xz;
  r0.x = t0[r5.y].val[0/4+1];
  r0.y = t0[r5.y].val[0/4];
  r0.z = t0[r5.y].val[0/4+2];
  r0.w = t0[r5.y].val[0/4+3];
  r1.xw = r0.yw;
  r2.x = t0[r5.z].val[0/4];
  r2.y = t0[r5.z].val[0/4+2];
  r2.z = t0[r5.z].val[0/4+1];
  r2.w = t0[r5.z].val[0/4+3];
  r3.x = t0[r5.w].val[0/4];
  r3.y = t0[r5.w].val[0/4+1];
  r3.z = t0[r5.w].val[0/4+2];
  r3.w = t0[r5.w].val[0/4+3];
  r1.y = r2.x;
  r1.z = r3.x;
  r4.xyz = v0.xyz;
  r4.w = 1;
  r1.z = dot(r4.xyzw, r1.xyzw);
  r2.x = r0.z;
  r0.yw = r2.zw;
  r0.z = r3.y;
  r2.zw = r3.zw;
  r1.x = dot(r4.xyzw, r2.xyzw);
  r1.w = dot(r4.xyzw, r0.xyzw);
  r0.xyz = cb2[91].xxx * r1.xzw;
  r0.w = dot(cb2[59].xyz, v0.xyz);
  r0.w = r0.w + r0.w;
  r1.xyz = cb2[100].zzz * v0.zxy;
  r1.xyz = cb2[59].zxy * r0.www + r1.xyz;
  r2.xyz = cb2[59].yzx * v0.xyz;
  r2.xyz = cb2[59].xyz * v0.yzx + -r2.xyz;
  r1.xyz = r2.xyz * cb2[100].www + r1.xyz;
  r1.xyz = cb2[61].zxy + r1.xyz;
  o7.xzw = r1.xyz * cb2[90].www + r0.xyz;
  o8.x = v1.x;
  return;
}