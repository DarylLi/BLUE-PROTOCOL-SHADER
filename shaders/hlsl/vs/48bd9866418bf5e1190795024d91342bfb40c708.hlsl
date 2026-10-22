// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  out uint o7 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.xyz = cb0[70].xyz + r1.xyz;
  r2.xyz = v0.yyy * r0.yzw;
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r4.x = t0[r0.x].val[0/4];
  r4.y = t0[r0.x].val[0/4+1];
  r4.z = t0[r0.x].val[0/4+2];
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.y = r0.y;
  r2.z = r4.x;
  r2.x = r3.x;
  r0.x = asint(cb1[0].y) + -1;
  r5.xy = min(uint2(1,2), (uint2)r0.xx);
  r0.x = (int)v2.x + asint(cb1[0].w);
  r5.xy = mad(asint(cb1[0].yy), (int2)r0.xx, (int2)r5.xy);
  r5.w = t1.Load(r5.y).x;
  r5.yz = t1.Load(r5.x).xy;
  r2.x = dot(r5.yzw, r2.xyz);
  r6.y = r0.z;
  r6.z = r4.y;
  r6.x = r3.y;
  r2.y = dot(r5.yzw, r6.xyz);
  r6.y = r0.w;
  r6.z = r4.z;
  r6.x = r3.z;
  r2.z = dot(r5.yzw, r6.xyz);
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb0[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[2].xyzw + r2.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r2.x = 0.00100000005 * r1.w;
  r2.y = cmp(1 < asint(cb0[135].x));
  r2.x = r2.y ? r2.x : 0;
  o0.z = r2.x + r1.z;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.x = mad((int)v1.x, 36, 13);
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r1.xyz = cb0[113].xyz + r1.xyz;
  r2.w = r1.x;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r7.x = t0[r6.y].val[0/4+1];
  r7.y = t0[r6.y].val[0/4];
  r7.z = t0[r6.y].val[0/4+2];
  r2.x = r7.y;
  r8.x = t0[r6.z].val[0/4];
  r8.y = t0[r6.z].val[0/4+2];
  r8.z = t0[r6.z].val[0/4+1];
  r2.y = r8.x;
  r6.y = t0[r6.w].val[0/4];
  r6.z = t0[r6.w].val[0/4+1];
  r6.w = t0[r6.w].val[0/4+2];
  r9.x = t0[r6.x].val[0/4];
  r9.y = t0[r6.x].val[0/4+1];
  r9.z = t0[r6.x].val[0/4+2];
  r9.w = t0[r6.x].val[0/4+3];
  r2.z = r6.y;
  r10.x = dot(v0.xyzw, r2.xyzw);
  r2.x = dot(r5.yzw, r2.xyz);
  r7.w = r1.y;
  r8.w = r1.z;
  r8.x = r7.z;
  r7.y = r8.z;
  r7.z = r6.z;
  r8.z = r6.w;
  r10.y = dot(v0.xyzw, r7.xyzw);
  r2.y = dot(r5.yzw, r7.xyz);
  r2.z = dot(r5.yzw, r8.xyz);
  r10.z = dot(v0.xyzw, r8.xyzw);
  r1.xyz = r10.xyz + r2.xyz;
  o6.zw = r5.yz;
  r2.xyzw = cb0[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r0.yzw = r9.yyy * r0.yzw;
  r1.x = (uint)r0.x << 1;
  r1.xyz = t2.Load(r1.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r2.xyzw = t2.Load(r1.w).xyzw;
  r5.xyz = r2.yzx * r1.xyz;
  r1.xyz = r2.xyz * r1.yzx + -r5.xyz;
  r1.xyz = r1.xyz * r2.www;
  r5.xyz = r1.xyz * r2.yzx;
  r1.xyz = r1.zxy * r2.zxy + -r5.xyz;
  r1.xyz = r1.xyz * r2.www;
  r5.xyz = r1.yyy * r0.yzw;
  r0.yzw = r2.yyy * r0.yzw;
  r3.xyz = r9.xxx * r3.xyz;
  r1.xyw = r1.xxx * r3.xyz + r5.xyz;
  r0.yzw = r2.xxx * r3.xyz + r0.yzw;
  r3.xyz = r9.zzz * r4.xyz;
  o4.w = r2.w * r9.w;
  o4.xyz = r2.zzz * r3.xyz + r0.yzw;
  o3.xyz = r1.zzz * r3.xyz + r1.xyw;
  o3.w = 0;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o6.xy = r0.xz;
  r0.xyzw = t3.Load(r0.y).xyzw;
  o5.xyzw = r0.zyxw;
  o7.x = v1.x;
  return;
}