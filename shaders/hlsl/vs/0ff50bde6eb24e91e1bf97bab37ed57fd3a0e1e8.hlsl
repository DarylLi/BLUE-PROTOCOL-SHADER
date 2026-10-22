// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[48];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
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
  out float4 o5 : TEXCOORD15,
  out float4 o6 : COLOR0,
  out uint o7 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z * cb2[29].w + cb2[30].y;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r0.x = 1 + r0.x;
  r0.y = 1 + r1.x;
  r0.z = -r0.x * 0.5 + 1;
  r0.x = 0.5 * r0.x;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb2[46].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r0.z = r0.z ? 1 : r0.w;
  r0.w = r0.y * 0.5 + -0.5;
  r0.y = cmp(r0.y >= 1);
  r0.y = r0.y ? 1.000000 : 0;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.y = r0.w ? r0.y : 1;
  r0.w = cmp(r0.y >= 0.5);
  r0.y = -0.5 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = r0.w ? r0.x : r0.z;
  r0.x = r0.y ? r0.z : r0.x;
  r0.z = cb2[47].x * r0.x;
  r0.w = (int)v1.x * 36;
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r1.x].val[0/4];
  r1.z = t0[r1.x].val[0/4+1];
  r1.w = t0[r1.x].val[0/4+2];
  r2.x = t0[r1.y].val[0/4];
  r2.y = t0[r1.y].val[0/4+1];
  r2.z = t0[r1.y].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = v0.yyy * r1.xzw;
  r4.x = t0[r0.w].val[0/4];
  r4.y = t0[r0.w].val[0/4+1];
  r4.z = t0[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.w].val[0/4];
  r5.y = t0[r0.w].val[0/4+1];
  r5.z = t0[r0.w].val[0/4+2];
  r3.xyz = r4.xyz * v0.xxx + r3.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.xy = float2(0,0);
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.y = 0.00100000005 * r0.w;
  r2.x = cmp(1 < asint(cb0[135].x));
  r1.y = r2.x ? r1.y : 0;
  o0.z = r1.y + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.x = cb0[139].z * cb2[29].w + cb2[30].y;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r2.x);
  r0.x = 1 + r0.x;
  r0.y = 1 + r2.x;
  r0.z = -r0.x * 0.5 + 1;
  r0.x = 0.5 * r0.x;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb2[46].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r0.z = r0.z ? 1 : r0.w;
  r0.w = r0.y * 0.5 + -0.5;
  r0.y = cmp(r0.y >= 1);
  r0.y = r0.y ? 1.000000 : 0;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.y = r0.w ? r0.y : 1;
  r0.w = cmp(r0.y >= 0.5);
  r0.y = -0.5 + r0.y;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = r0.w ? r0.x : r0.z;
  r0.x = r0.y ? r0.z : r0.x;
  r0.z = cb2[47].x * r0.x;
  r0.xy = float2(0,0);
  r0.w = mad((int)v1.x, 36, 13);
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r3.w = r2.x;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r7.x = t0[r6.y].val[0/4+1];
  r7.y = t0[r6.y].val[0/4];
  r7.z = t0[r6.y].val[0/4+2];
  r3.x = r7.y;
  r8.x = t0[r6.z].val[0/4];
  r8.y = t0[r6.z].val[0/4+2];
  r8.z = t0[r6.z].val[0/4+1];
  r3.y = r8.x;
  r6.y = t0[r6.w].val[0/4];
  r6.z = t0[r6.w].val[0/4+1];
  r6.w = t0[r6.w].val[0/4+2];
  r9.x = t0[r6.x].val[0/4];
  r9.y = t0[r6.x].val[0/4+1];
  r9.z = t0[r6.x].val[0/4+2];
  r9.w = t0[r6.x].val[0/4+3];
  r3.z = r6.y;
  r3.x = dot(v0.xyzw, r3.xyzw);
  r7.w = r2.y;
  r8.w = r2.z;
  r8.x = r7.z;
  r7.y = r8.z;
  r7.z = r6.z;
  r8.z = r6.w;
  r3.z = dot(v0.xyzw, r8.xyzw);
  r3.y = dot(v0.xyzw, r7.xyzw);
  r0.xyz = r3.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyz = r9.xxx * r4.xyz;
  r1.xyz = r9.yyy * r1.xzw;
  r0.w = (int)v2.x + asint(cb1[0].w);
  r1.w = (uint)r0.w << 1;
  r2.xyz = t1.Load(r1.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = (int)r0.w & asint(cb1[0].x);
  r3.xyzw = t2.Load(r0.w).xyzw;
  o6.xyzw = r3.zyxw;
  r3.xyzw = t1.Load(r1.w).xyzw;
  r4.xyz = r3.yzx * r2.xyz;
  r2.xyz = r3.xyz * r2.yzx + -r4.xyz;
  r2.xyz = r2.xyz * r3.www;
  r4.xyz = r2.xyz * r3.yzx;
  r2.xyz = r2.zxy * r3.zxy + -r4.xyz;
  r2.xyz = r2.xyz * r3.www;
  r4.xyz = r2.yyy * r1.xyz;
  r1.xyz = r3.yyy * r1.xyz;
  r1.xyz = r3.xxx * r0.xyz + r1.xyz;
  r0.xyz = r2.xxx * r0.xyz + r4.xyz;
  r2.xyw = r9.zzz * r5.xyz;
  r4.w = r3.w * r9.w;
  r4.xyz = r3.zzz * r2.xyw + r1.xyz;
  o3.xyz = r2.zzz * r2.xyw + r0.xyz;
  o3.w = 0;
  o4.xyzw = r4.xyzw;
  o5.xyzw = r4.xyzw;
  o7.x = v1.x;
  return;
}