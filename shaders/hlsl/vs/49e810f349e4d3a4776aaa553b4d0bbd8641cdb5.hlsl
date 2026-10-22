// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD15,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD4,
  out uint o5 : PRIMITIVE_ID0,
  out uint p5 : LIGHTMAP_ID0,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,21,6,7));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r3.xyz;
  r7.xyz = r6.xyz * r0.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r2.x].val[0/4];
  r8.y = t0[r2.x].val[0/4+1];
  r8.z = t0[r2.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.z].val[0/4];
  r9.y = t0[r0.z].val[0/4+1];
  r9.z = t0[r0.z].val[0/4+2];
  r10.xyz = r8.xyz * r5.xxx;
  r7.xyz = r0.yyy * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  r10.w = r5.w * r1.w;
  r10.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r7.xyz;
  o1.xyzw = r10.xyzw;
  o2.xyzw = r10.xyzw;
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.x = mad(asint(cb1[0].y), (int)r0.x, asint(cb1[0].z));
  r0.xz = t2.Load(r0.x).xy;
  r0.yw = t2.Load(r0.y).xy;
  o3.xy = r0.yw;
  r1.xyz = -cb0[67].xyz + r2.yzw;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r1.xyz = r1.xyz / r0.yyy;
  r5.x = t0[r4.y].val[0/4];
  r5.y = t0[r4.y].val[0/4+1];
  r5.z = t0[r4.y].val[0/4+2];
  r0.y = dot(r5.xyz, r1.xyz);
  r1.xyz = -r5.xyz * r0.yyy + r1.xyz;
  r0.y = r0.y * r0.y;
  r0.y = r0.y * r0.y;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz / r0.www;
  r0.w = dot(r1.xyz, r10.xyz);
  r0.yw = r0.yw * r0.yw;
  r1.x = t0[r4.z].val[8/4];
  r1.y = t0[r4.w].val[8/4];
  r4.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(8,9,23,24));
  r1.z = t0[r4.x].val[8/4];
  r2.x = dot(r10.xyz, r1.xyz);
  r2.x = -r0.w * cb2[6].z + r2.x;
  r0.w = cb2[6].z * r0.w;
  r0.y = r0.y * r2.x + r0.w;
  r0.y = 0.0199999996 + r0.y;
  r0.yw = saturate(r0.yy);
  o3.zw = r0.yw;
  r0.y = cmp(r0.w >= 0.100000001);
  r4.x = t0[r4.w].val[8/4];
  r4.w = t0[r4.w].val[8/4+1];
  r0.w = (int)r4.w + asint(cb1[1].y);
  r2.x = mad((int)r0.w, 15, 2);
  p5.x = r0.w;
  r5.x = t1[r2.x].val[0/4];
  r5.y = t1[r2.x].val[0/4+1];
  r5.z = t1[r2.x].val[0/4+2];
  r5.w = t1[r2.x].val[0/4+3];
  o4.xy = r0.xz * r5.xy + r5.zw;
  o4.zw = float2(0,0);
  o5.x = v1.x;
  r1.w = t0[r4.y].val[8/4];
  r0.x = t0[r4.z].val[8/4];
  r5.w = 1;
  r4.yzw = v0.yyy * r3.xyz;
  r0.z = dot(-r3.xyz, -r3.xyz);
  r3.y = sqrt(r0.z);
  r4.yzw = r8.xyz * v0.xxx + r4.yzw;
  r0.z = dot(-r8.xyz, -r8.xyz);
  r3.x = sqrt(r0.z);
  r4.yzw = r9.xyz * v0.zzz + r4.yzw;
  r0.z = dot(-r9.xyz, -r9.xyz);
  r3.z = sqrt(r0.z);
  r6.xyz = cb0[70].xyz + r2.yzw;
  r4.yzw = r6.xyz + r4.yzw;
  r5.xyz = -cb0[70].xyz + r4.yzw;
  r0.z = dot(r5.xyzw, r1.xyzw);
  r0.z = r0.z + -r0.x;
  r0.x = r4.x + -r0.x;
  r0.x = r0.z / r0.x;
  r0.x = -cb2[7].w + r0.x;
  r0.x = saturate(r0.x / cb2[8].x);
  r0.x = r0.x * r0.x;
  r0.z = cb2[8].y * r0.x;
  r0.z = cb0[142].z * cb2[7].z + -r0.z;
  r0.zw = float2(-1,0) * r0.zz;
  r0.zw = r2.yz * cb2[7].yy + r0.zw;
  r1.xyz = t4.SampleLevel(s0_s, r0.zw, -1).xyz;
  r1.xyz = float3(-0.5,-0.5,-0.5) + r1.xyz;
  r0.z = r1.z * 2 + 1;
  r1.xy = r1.xy + r1.xy;
  r0.z = cb2[8].z * r0.z;
  r0.w = -9.99999997e-007 + cb2[6].w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.z = cmp(cb2[6].w >= 9.99999997e-007);
  r6.xyz = r1.zzz ? cb2[5].zxy : float3(0,1,0);
  r6.xyz = r0.www ? r6.xyz : float3(0,1,0);
  r7.xyz = float3(0,1,0) * r6.xyz;
  r7.xyz = r6.zxy * float3(1,0,0) + -r7.xyz;
  r7.xyz = cb2[8].www * r7.xyz;
  r1.yzw = r7.xyz * r1.yyy;
  r1.xyz = r6.yzx * r1.xxx + r1.yzw;
  r1.xyz = cb2[9].xxx * r1.xyz;
  r1.xyz = r6.yzx * r0.zzz + r1.xyz;
  r6.xyz = r5.xyz + -r2.yzw;
  r0.xzw = r1.xyz * r0.xxx + r6.xyz;
  r1.x = dot(r6.xyz, r6.xyz);
  r1.y = dot(r0.xzw, r0.xzw);
  r1.xz = sqrt(r1.xy);
  r0.xzw = r0.xzw / r1.zzz;
  r1.z = cmp(r1.y >= 9.99999997e-007);
  r1.y = -9.99999997e-007 + r1.y;
  r1.y = cmp(9.99999975e-006 < abs(r1.y));
  r0.xzw = r1.zzz ? r0.xzw : 0;
  r0.xzw = r1.yyy ? r0.xzw : 0;
  r0.xzw = r1.xxx * r0.xzw + r2.yzw;
  r0.xzw = r0.xzw + -r5.xyz;
  r0.xzw = r0.xzw * r3.xyz;
  r0.xyz = r0.yyy ? r0.xzw : -r5.xyz;
  r0.xyz = r4.yzw + r0.xyz;
  o7.xyz = r4.yzw;
  o6.xyz = r0.xyz;
  o6.w = 1;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o8.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}