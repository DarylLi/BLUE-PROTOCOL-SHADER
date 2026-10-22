// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[53];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out uint o4 : PRIMITIVE_ID0,
  out uint p4 : SV_RenderTargetArrayIndex0,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD8,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb3[0].w);
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
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(4,5));
  r3.x = t0[r2.x].val[0/4];
  r3.y = t0[r2.x].val[0/4+1];
  r3.z = t0[r2.x].val[0/4+2];
  r3.w = t0[r2.x].val[0/4+3];
  r2.x = t0[r2.y].val[0/4];
  r2.y = t0[r2.y].val[0/4+1];
  r2.z = t0[r2.y].val[0/4+2];
  r2.w = (int)v1.x * 36;
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t0[r4.x].val[0/4];
  r4.z = t0[r4.x].val[0/4+2];
  r4.w = t0[r4.x].val[0/4+1];
  r5.x = t0[r4.y].val[0/4];
  r5.y = t0[r4.y].val[0/4+1];
  r5.z = t0[r4.y].val[0/4+2];
  r6.xyz = r4.xwz * r3.yyy;
  r7.xyz = r6.xyz * r0.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r2.w].val[0/4];
  r8.y = t0[r2.w].val[0/4+1];
  r8.z = t0[r2.w].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.z].val[0/4];
  r9.y = t0[r0.z].val[0/4+1];
  r9.z = t0[r0.z].val[0/4+2];
  r10.xyz = r8.xyz * r3.xxx;
  r7.xyz = r0.yyy * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r3.xyz = r9.xyz * r3.zzz;
  o1.w = r3.w * r1.w;
  r1.xyz = r1.zzz * r3.xyz + r6.xyz;
  o0.xyz = r0.www * r3.xyz + r7.xyz;
  o1.xyz = r1.xyz;
  o7.xyz = r1.xyz;
  r0.y = (int)r0.x & asint(cb3[0].x);
  r0.x = (int)r0.x * asint(cb3[0].y);
  r0.xz = t1.Load(r0.x).xy;
  o3.xy = r0.xz;
  r0.xyzw = t3.Load(r0.y).xyzw;
  o2.xyzw = r0.zyxw;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  r1.y = r4.x;
  r1.z = r9.x;
  r1.x = r8.x;
  r1.y = dot(cb4[2].xyz, r1.xyz);
  r3.y = r4.w;
  r3.z = r9.y;
  r3.x = r8.y;
  r1.z = dot(cb4[2].xyz, r3.xyz);
  r3.xyz = v0.yyy * r4.xwz;
  r3.xyz = r8.xyz * v0.xxx + r3.xyz;
  r4.x = r8.z;
  r3.xyz = r9.xyz * v0.zzz + r3.xyz;
  r4.w = r9.z;
  r1.x = dot(cb4[2].xyz, r4.xzw);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = sqrt(r0.x);
  r1.xyz = r1.xyz / r0.xxx;
  r4.xyz = cb1[70].xyz + r5.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r4.xyz = -cb1[70].xyz + r3.xyz;
  r6.xyz = r4.xyz + -r5.xyz;
  r0.x = dot(r1.yzx, r6.xyz);
  r5.xyz = r1.yzx * r0.xxx + r5.xyz;
  r6.xyz = -r5.xyz + r4.xyz;
  r7.xyz = r6.yzx * r1.xyz;
  r1.xyz = r1.zxy * r6.zxy + -r7.xyz;
  r0.x = abs(r2.x) + abs(r2.y);
  r0.x = r0.x + abs(r2.z);
  r0.x = frac(r0.x);
  r0.y = cb1[142].z * cb4[8].x + r0.w;
  r0.z = cb4[8].z * r0.z;
  r0.x = r0.x * 0.5 + r0.y;
  r0.x = 6.28318548 * r0.x;
  r0.x = sin(r0.x);
  r0.x = r0.x * r0.z;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r2.x);
  r0.xyz = r1.xyz * r0.xxx;
  r0.xyz = r6.xyz * r2.xxx + r0.xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  o5.xyz = r0.xyz;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb2[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[r0.w+31].xyzw + r1.xyzw;
  r0.xyzw = cb2[r0.w+32].xyzw + r1.xyzw;
  o6.xyzw = r0.xyzw;
  o8.xyzw = r0.xyzw;
  p4.x = cb0[1].x;
  return;
}