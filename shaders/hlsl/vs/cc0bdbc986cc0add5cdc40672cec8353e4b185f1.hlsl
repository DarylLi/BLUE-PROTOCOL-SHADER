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
  float4 cb2[96];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r1.w = 0.00100000005 * r2.w;
  r3.w = cmp(1 < asint(cb0[135].x));
  r1.w = r3.w ? r1.w : 0;
  o0.z = r2.z + r1.w;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r1.w = mad((int)v1.x, 36, 13);
  r2.x = t0[r1.w].val[0/4];
  r2.y = t0[r1.w].val[0/4+1];
  r2.z = t0[r1.w].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r5.w = r2.y;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(31,10,11,12));
  r7.x = t0[r6.y].val[0/4+2];
  r7.y = t0[r6.y].val[0/4];
  r7.z = t0[r6.y].val[0/4+1];
  r5.x = r7.z;
  r8.x = t0[r6.z].val[0/4+1];
  r8.y = t0[r6.z].val[0/4];
  r8.z = t0[r6.z].val[0/4+2];
  r5.y = r8.x;
  r6.y = t0[r6.w].val[0/4];
  r6.z = t0[r6.w].val[0/4+1];
  r6.w = t0[r6.w].val[0/4+2];
  r9.x = t0[r6.x].val[0/4];
  r9.y = t0[r6.x].val[0/4+1];
  r9.z = t0[r6.x].val[0/4+2];
  r9.w = t0[r6.x].val[0/4+3];
  r5.z = r6.z;
  r1.w = dot(v0.xyzw, r5.xyzw);
  r5.xyzw = cb0[92].xyzw * r1.wwww;
  r8.w = r2.x;
  r7.w = r2.z;
  r8.x = r7.y;
  r7.y = r8.z;
  r8.z = r6.y;
  r7.z = r6.w;
  r1.w = dot(v0.xyzw, r7.xyzw);
  r2.x = dot(v0.xyzw, r8.xyzw);
  r2.xyzw = r2.xxxx * cb0[91].xyzw + r5.xyzw;
  r2.xyzw = r1.wwww * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r1.w = (int)v2.x + asint(cb1[0].w);
  r2.x = (uint)r1.w << 1;
  r2.xyz = t2.Load(r2.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.xyzw = t2.Load(r2.w).xyzw;
  r6.xyz = r5.yzx * r2.xyz;
  r2.xyz = r5.xyz * r2.yzx + -r6.xyz;
  r2.xyz = r2.xyz * r5.www;
  r6.xyz = r2.xyz * r5.yzx;
  r2.xyz = r2.zxy * r5.zxy + -r6.xyz;
  r2.xyz = r2.xyz * r5.www;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,28,29,30));
  r7.x = t0[r6.x].val[0/4];
  r7.y = t0[r6.x].val[0/4+1];
  r7.z = t0[r6.x].val[0/4+2];
  r7.w = t0[r6.x].val[0/4+3];
  r1.xyz = r7.yyy * r1.xyz;
  r8.xyz = r2.yyy * r1.xyz;
  r1.xyz = r5.yyy * r1.xyz;
  r3.xyz = r7.xxx * r3.xyz;
  r2.xyw = r2.xxx * r3.xyz + r8.xyz;
  r1.xyz = r5.xxx * r3.xyz + r1.xyz;
  r3.xyz = r7.zzz * r4.xyz;
  o4.w = r7.w * r5.w;
  o4.xyz = r5.zzz * r3.xyz + r1.xyz;
  o3.xyz = r2.zzz * r3.xyz + r2.xyw;
  o3.w = 0;
  r1.x = (int)r1.w & asint(cb1[0].x);
  r2.xyzw = t3.Load(r1.x).xyzw;
  o5.xyzw = r2.zyxw;
  r1.x = asint(cb1[0].y) + -1;
  r1.x = min(1, (uint)r1.x);
  r1.x = mad(asint(cb1[0].y), (int)r1.w, (int)r1.x);
  r1.y = (int)r1.w * asint(cb1[0].y);
  r1.yz = t1.Load(r1.y).xy;
  o6.xy = cb2[54].xy + r1.yz;
  r1.xy = t1.Load(r1.x).xy;
  o6.zw = r1.xy;
  r1.w = r9.x;
  r2.x = t0[r6.y].val[0/4];
  r2.y = t0[r6.y].val[0/4+1];
  r2.z = t0[r6.y].val[0/4+2];
  r2.w = t0[r6.y].val[0/4+3];
  r1.x = r2.x;
  r3.x = t0[r6.z].val[0/4];
  r3.y = t0[r6.z].val[0/4+2];
  r3.z = t0[r6.z].val[0/4+1];
  r3.w = t0[r6.z].val[0/4+3];
  r4.x = t0[r6.w].val[0/4];
  r4.y = t0[r6.w].val[0/4+1];
  r4.z = t0[r6.w].val[0/4+3];
  r4.w = t0[r6.w].val[0/4+2];
  r1.y = r3.x;
  r1.z = r4.x;
  r0.w = 1;
  r1.x = dot(r0.xyzw, r1.xyzw);
  r5.x = r2.y;
  r5.y = r3.z;
  r5.z = r4.y;
  r5.w = r9.y;
  r1.y = dot(r0.xyzw, r5.xyzw);
  r3.x = r2.z;
  r4.x = r2.w;
  r4.y = r3.w;
  r3.z = r4.w;
  r3.w = r9.z;
  r4.w = r9.w;
  r1.w = dot(r0.xyzw, r4.xyzw);
  r1.z = dot(r0.xyzw, r3.xyzw);
  r0.xyz = r1.xyz / r1.www;
  r0.w = cb2[95].z + -r0.z;
  o7.xyzw = r0.xyww;
  o8.x = v1.x;
  return;
}