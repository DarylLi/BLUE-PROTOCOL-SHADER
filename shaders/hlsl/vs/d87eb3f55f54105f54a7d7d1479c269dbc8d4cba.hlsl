// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD4,
  out uint o4 : PRIMITIVE_ID0,
  out uint p4 : LIGHTMAP_ID0,
  out float4 o5 : SV_POSITION0)
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
  r2.yzw = cb0[70].xyz + r2.yzw;
  r4.xyz = mad((int3)v1.xxx, int3(36,36,36), int3(4,18,24));
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
  o1.w = r5.w * r1.w;
  o1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r7.xyz;
  o2.zw = float2(0,0);
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.yz = t2.Load(r0.y).xy;
  o2.xy = r0.yz;
  r0.w = t0[r4.z].val[12/4];
  r1.x = t0[r4.y].val[0/4];
  r1.y = t0[r4.y].val[0/4+1];
  r1.z = t0[r4.y].val[0/4+2];
  r0.w = (int)r0.w + asint(cb1[1].y);
  r4.xy = mad((int2)r0.ww, int2(15,15), int2(2,3));
  p4.x = r0.w;
  r5.x = t1[r4.x].val[0/4];
  r5.y = t1[r4.x].val[0/4+1];
  r5.z = t1[r4.x].val[0/4+2];
  r5.w = t1[r4.x].val[0/4+3];
  r4.x = t1[r4.y].val[0/4];
  r4.y = t1[r4.y].val[0/4+1];
  r4.z = t1[r4.y].val[0/4+2];
  r4.w = t1[r4.y].val[0/4+3];
  r0.w = mad(asint(cb1[0].y), (int)r0.x, asint(cb1[0].z));
  r6.xy = t2.Load(r0.w).xy;
  o3.xy = r6.xy * r5.xy + r5.zw;
  o3.zw = r6.xy * r4.xy + r4.zw;
  o4.x = v1.x;
  r0.w = r1.x + r1.y;
  r0.w = r0.w + r1.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r0.w = cb3[9].y * r0.w;
  r1.x = asint(cb1[0].y) + -1;
  r1.x = min(2, (uint)r1.x);
  r1.x = mad(asint(cb1[0].y), (int)r0.x, (int)r1.x);
  r0.x = (int)r0.x & asint(cb1[0].x);
  r0.x = t4.Load(r0.x).z;
  r1.xy = t2.Load(r1.x).xy;
  r1.xy = r1.xy + -r0.yz;
  r0.yz = cb3[10].zz * r1.xy + r0.yz;
  r0.yz = cb3[10].ww * r0.yz;
  r0.yz = r0.ww * cb3[10].xy + r0.yz;
  r0.yz = t5.SampleLevel(s0_s, r0.yz, -1).xy;
  r1.xy = r0.yz + r0.yz;
  r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r1.z = sqrt(r0.y);
  r0.yzw = float3(-1,-1,-1) + r1.xyz;
  r0.yzw = r0.xxx * r0.yzw + float3(0,0,1);
  r1.xyz = float3(0,0,1) + -r0.yzw;
  r0.yzw = cb3[11].xxx * r1.xyz + r0.yzw;
  r0.yzw = cb3[11].yzw * r0.yzw;
  r1.x = dot(-r3.xyz, -r3.xyz);
  r1.yzw = v0.yyy * r3.xyz;
  r1.yzw = r8.xyz * v0.xxx + r1.yzw;
  r2.x = dot(-r8.xyz, -r8.xyz);
  r2.x = sqrt(r2.x);
  r1.yzw = r9.xyz * v0.zzz + r1.yzw;
  r3.x = dot(-r9.xyz, -r9.xyz);
  r3.x = sqrt(r3.x);
  r1.yzw = r1.yzw + r2.yzw;
  r1.x = sqrt(r1.x);
  r1.x = r2.x + r1.x;
  r1.x = r1.x + r3.x;
  r1.x = r1.x * 0.333333343 + -1;
  r1.x = cb3[12].x * r1.x + 1;
  r0.yzw = r1.xxx * r0.yzw;
  r0.yzw = cb3[12].yyy * r0.yzw;
  r0.xyz = r0.yzw * r0.xxx + r1.yzw;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o5.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}