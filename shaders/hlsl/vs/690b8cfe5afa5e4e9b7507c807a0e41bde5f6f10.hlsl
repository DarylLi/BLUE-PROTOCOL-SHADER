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
  float4 cb2[9];
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
  out uint o5 : PRIMITIVE_ID0,
  out float4 o6 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.y = mad((int)v1.x, 36, 2);
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.z = r0.y;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r4.x = t0[r2.y].val[0/4];
  r4.y = t0[r2.y].val[0/4+1];
  r4.z = t0[r2.y].val[0/4+2];
  r1.y = r2.x;
  r1.x = r3.x;
  r1.y = dot(cb2[2].xyz, r1.xyz);
  r5.y = r2.z;
  r5.z = r0.z;
  r5.x = r3.y;
  r1.z = dot(cb2[2].xyz, r5.xyz);
  r5.y = r2.w;
  r5.z = r0.w;
  r5.x = r3.z;
  r1.x = dot(cb2[2].xyz, r5.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = sqrt(r0.x);
  r1.xyz = r1.xyz / r0.xxx;
  r5.xyz = v0.yyy * r2.xzw;
  r5.xyz = r3.xyz * v0.xxx + r5.xyz;
  r5.xyz = r0.yzw * v0.zzz + r5.xyz;
  r6.xyz = cb0[70].xyz + r4.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r6.xyz = -cb0[70].xyz + r5.xyz;
  r7.xyz = r6.xyz + -r4.xyz;
  r0.x = dot(r1.yzx, r7.xyz);
  r4.xyz = r1.yzx * r0.xxx + r4.xyz;
  r7.xyz = r6.xyz + -r4.xyz;
  r8.xyz = r7.yzx * r1.xyz;
  r1.xyz = r1.zxy * r7.zxy + -r8.xyz;
  r8.xy = mad((int2)v1.xx, int2(36,36), int2(4,5));
  r8.y = t0[r8.y].val[0/4];
  r8.z = t0[r8.y].val[0/4+1];
  r8.w = t0[r8.y].val[0/4+2];
  r9.x = t0[r8.x].val[0/4];
  r9.y = t0[r8.x].val[0/4+1];
  r9.z = t0[r8.x].val[0/4+2];
  r9.w = t0[r8.x].val[0/4+3];
  r0.x = abs(r8.y) + abs(r8.z);
  r0.x = r0.x + abs(r8.w);
  r0.x = frac(r0.x);
  r1.w = (int)v2.x + asint(cb1[0].w);
  r2.y = (int)r1.w & asint(cb1[0].x);
  r8.xyzw = t3.Load(r2.y).xyzw;
  r2.y = cb0[142].z * cb2[8].x + r8.w;
  r0.x = r0.x * 0.5 + r2.y;
  r0.x = 6.28318548 * r0.x;
  r0.x = sin(r0.x);
  r2.y = cb2[8].z * r8.z;
  o3.xyzw = r8.zyxw;
  r0.x = r2.y * r0.x;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r8.x);
  r1.xyz = r1.xyz * r0.xxx;
  r1.xyz = r7.xyz * r8.xxx + r1.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r1.xyz = r1.xyz + -r6.xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r4.xyzw = cb0[1].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb0[0].xyzw + r4.xyzw;
  r4.xyzw = r1.zzzz * cb0[2].xyzw + r4.xyzw;
  o6.xyz = r1.xyz;
  r4.xyzw = cb0[3].xyzw + r4.xyzw;
  o0.xy = cb0[364].xy * r4.zz + r4.xy;
  o0.zw = r4.zw;
  r1.xyz = r9.yyy * r2.xzw;
  r0.x = (uint)r1.w << 1;
  r2.xyz = t2.Load(r0.x).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r1.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.w = (int)r1.w * asint(cb1[0].y);
  r4.xy = t1.Load(r1.w).xy;
  o4.xy = r4.xy;
  r4.xyzw = t2.Load(r0.x).xyzw;
  r5.xyz = r4.yzx * r2.xyz;
  r2.xyz = r4.xyz * r2.yzx + -r5.xyz;
  r2.xyz = r2.xyz * r4.www;
  r5.xyz = r2.xyz * r4.yzx;
  r2.xyz = r2.zxy * r4.zxy + -r5.xyz;
  r2.xyz = r2.xyz * r4.www;
  r5.xyz = r2.yyy * r1.xyz;
  r1.xyz = r4.yyy * r1.xyz;
  r3.xyz = r9.xxx * r3.xyz;
  r2.xyw = r2.xxx * r3.xyz + r5.xyz;
  r1.xyz = r4.xxx * r3.xyz + r1.xyz;
  r0.xyz = r9.zzz * r0.yzw;
  o2.w = r4.w * r9.w;
  o2.xyz = r4.zzz * r0.xyz + r1.xyz;
  o1.xyz = r2.zzz * r0.xyz + r2.xyw;
  o1.w = 0;
  o4.zw = float2(0,0);
  o5.x = v1.x;
  o6.w = 1;
  return;
}