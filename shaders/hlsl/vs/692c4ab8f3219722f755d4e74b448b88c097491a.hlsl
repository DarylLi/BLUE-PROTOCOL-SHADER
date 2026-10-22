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
  out uint o5 : PRIMITIVE_ID0,
  out float4 o6 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r5.xz = t1.Load(r5.x).xy;
  r5.w = t1.Load(r5.y).x;
  r2.x = dot(r5.xzw, r2.xyz);
  r6.y = r0.z;
  r6.z = r4.y;
  r6.x = r3.y;
  r2.y = dot(r5.xzw, r6.xyz);
  r6.y = r0.w;
  r6.z = r4.z;
  r6.x = r3.z;
  r2.z = dot(r5.xzw, r6.xyz);
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb0[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb0[2].xyzw + r2.xyzw;
  o6.xyz = r1.xyz;
  r1.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r1.zz + r1.xy;
  o0.zw = r1.zw;
  r1.x = mad((int)v1.x, 36, 4);
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r1.w = t0[r1.x].val[0/4+3];
  r0.yzw = r1.yyy * r0.yzw;
  r1.y = (uint)r0.x << 1;
  r2.xyz = t2.Load(r1.y).xyz;
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.y = (((uint)r0.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r5.xyzw = t2.Load(r1.y).xyzw;
  r6.xyz = r5.yzx * r2.xyz;
  r2.xyz = r5.xyz * r2.yzx + -r6.xyz;
  r2.xyz = r2.xyz * r5.www;
  r6.xyz = r2.xyz * r5.yzx;
  r2.xyz = r2.zxy * r5.zxy + -r6.xyz;
  r2.xyz = r2.xyz * r5.www;
  r6.xyz = r2.yyy * r0.yzw;
  r0.yzw = r5.yyy * r0.yzw;
  r3.xyz = r3.xyz * r1.xxx;
  r2.xyw = r2.xxx * r3.xyz + r6.xyz;
  r0.yzw = r5.xxx * r3.xyz + r0.yzw;
  r1.xyz = r4.xyz * r1.zzz;
  o2.w = r5.w * r1.w;
  o2.xyz = r5.zzz * r1.xyz + r0.yzw;
  o1.xyz = r2.zzz * r1.xyz + r2.xyw;
  o1.w = 0;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r0.x = (int)r0.x * asint(cb1[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o4.xy = r0.xz;
  r0.xyzw = t3.Load(r0.y).xyzw;
  o3.xyzw = r0.zyxw;
  o4.zw = float2(0,0);
  o5.x = v1.x;
  o6.w = 1;
  return;
}