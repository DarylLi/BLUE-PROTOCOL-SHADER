// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[18];
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
  out float4 o3 : TEXCOORD0)
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
  r0.w = (int)v2.x + asint(cb1[0].w);
  r1.w = (int)r0.w * asint(cb1[0].y);
  r2.xy = t1.Load(r1.w).xy;
  r1.w = cb0[142].z * cb2[16].y + r2.x;
  r5.x = cb2[17].x * r1.w;
  r1.w = cb0[142].z * cb2[17].y + r2.y;
  o3.xy = r2.xy;
  r5.y = cb2[17].z * r1.w;
  r1.w = t3.SampleLevel(s0_s, r5.xy, -1).x;
  r2.x = mad((int)v1.x, 36, 4);
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r2.w = t0[r2.x].val[0/4+3];
  r4.xyz = r4.xyz * r2.zzz;
  r3.xyz = r3.xyz * r2.xxx;
  r1.xyz = r2.yyy * r1.xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.x = (((uint)r0.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.w = (uint)r0.w << 1;
  r5.xyz = t2.Load(r0.w).xyz;
  r6.xyzw = t2.Load(r2.x).xyzw;
  r2.xyz = r6.yyy * r1.xyz;
  r2.xyz = r6.xxx * r3.xyz + r2.xyz;
  r2.xyz = r6.zzz * r4.xyz + r2.xyz;
  r7.xyz = r2.xyz * r1.www;
  o2.xyz = r2.xyz;
  r0.xyz = r7.xyz * cb2[17].www + r0.xyz;
  r7.xyzw = cb0[1].xyzw * r0.yyyy;
  r7.xyzw = r0.xxxx * cb0[0].xyzw + r7.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r7.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.xyz = r6.yzx * r5.xyz;
  r0.xyz = r6.xyz * r5.yzx + -r0.xyz;
  r0.xyz = r0.xyz * r6.www;
  r2.xyz = r0.xyz * r6.yzx;
  r0.xyz = r0.zxy * r6.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r6.www;
  o2.w = r6.w * r2.w;
  r1.xyz = r0.yyy * r1.xyz;
  r0.xyw = r0.xxx * r3.xyz + r1.xyz;
  o1.xyz = r0.zzz * r4.xyz + r0.xyw;
  o1.w = 0;
  o3.zw = float2(0,0);
  return;
}