// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[25];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[11];
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
  out float4 o2 : TEXCOORD0,
  out uint o3 : PRIMITIVE_ID0,
  out uint p3 : SV_RenderTargetArrayIndex0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : TEXCOORD6,
  out float3 o6 : TEXCOORD8,
  out float4 o7 : SV_POSITION0)
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
  r2.x = mad((int)v1.x, 36, 4);
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r2.w = t0[r2.x].val[0/4+3];
  r3.x = (int)v1.x * 36;
  r3.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t0[r3.y].val[0/4];
  r4.y = t0[r3.y].val[0/4+2];
  r4.z = t0[r3.y].val[0/4+1];
  r3.y = t0[r3.z].val[0/4];
  r3.z = t0[r3.z].val[0/4+1];
  r3.w = t0[r3.z].val[0/4+2];
  r3.yzw = cb1[70].xyz + r3.yzw;
  r5.xyz = r4.xzy * r2.yyy;
  r6.xyz = r5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r3.x].val[0/4];
  r7.y = t0[r3.x].val[0/4+1];
  r7.z = t0[r3.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.z].val[0/4];
  r8.y = t0[r0.z].val[0/4+1];
  r8.z = t0[r0.z].val[0/4+2];
  r9.xyz = r7.xyz * r2.xxx;
  r6.xyz = r0.yyy * r9.xyz + r6.xyz;
  r5.xyz = r1.xxx * r9.xyz + r5.xyz;
  r2.xyz = r8.xyz * r2.zzz;
  o1.w = r2.w * r1.w;
  r1.xyz = r1.zzz * r2.xyz + r5.xyz;
  o0.xyz = r0.www * r2.xyz + r6.xyz;
  o1.xyz = r1.xyz;
  r0.y = (int)r0.x * asint(cb3[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o2.xy = r0.yz;
  r0.yz = cb5[12].xy * r0.yz;
  r0.yz = cb1[142].zz * cb5[18].xy + r0.yz;
  r0.y = t3.SampleLevel(s0_s, r0.yz, -1).x;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.z = cb5[24].x + -cb5[24].y;
  r0.z = r0.y * r0.z + cb5[24].y;
  r2.xyz = r1.xyz * r0.zzz;
  o6.xyz = r1.xyz;
  r0.z = asint(cb3[0].y) + -1;
  r1.xyz = min(uint3(1,2,3), (uint3)r0.zzz);
  r0.xzw = mad(asint(cb3[0].yyy), (int3)r0.xxx, (int3)r1.xyz);
  r1.xy = t1.Load(r0.x).xy;
  r0.xz = t1.Load(r0.z).xy;
  r5.yz = t1.Load(r0.w).xy;
  r1.z = r0.x;
  r5.x = r0.z;
  r6.y = r4.x;
  r6.z = r8.x;
  r6.x = r7.x;
  r9.x = dot(r1.xyz, r6.xyz);
  r6.x = dot(r5.xyz, r6.xyz);
  r10.y = r4.z;
  r10.z = r8.y;
  r10.x = r7.y;
  r9.y = dot(r1.xyz, r10.xyz);
  r6.y = dot(r5.xyz, r10.xyz);
  r0.xzw = v0.yyy * r4.xzy;
  r0.xzw = r7.xyz * v0.xxx + r0.xzw;
  r4.x = r7.z;
  r0.xzw = r8.xyz * v0.zzz + r0.xzw;
  r4.z = r8.z;
  r0.xzw = r0.xzw + r3.yzw;
  r9.z = dot(r1.xyz, r4.xyz);
  r6.z = dot(r5.xyz, r4.xyz);
  r1.xyz = r9.xyz * cb5[24].zzz + -r2.xyz;
  r1.xyz = r0.yyy * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz + -r6.xyz;
  r2.xyz = -cb1[70].xyz + r0.xzw;
  r3.xyz = cb4[9].xyz + -r2.xyz;
  r2.xyz = cb4[10].xyz + -r2.xyz;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y * 0.333333343 + -50;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r2.x = -r1.w * 0.00666666683 + 1;
  r1.w = r1.w * 0.333333343 + -50;
  r2.x = max(0, r2.x);
  r2.x = r2.x * 50 + -50;
  r2.x = saturate(cb4[2].y * 51.5099983 + r2.x);
  r2.yz = float2(1,1) + -cb4[0].yz;
  r1.w = saturate(r2.y * 51.5099983 + r1.w);
  r0.y = saturate(r2.z * 51 + r0.y);
  r1.w = r1.w * r2.x;
  r0.y = r1.w * r0.y;
  r1.xyz = r0.yyy * r1.xyz + r6.xyz;
  r2.xyz = r6.xyz + -r1.xyz;
  r1.xyz = cb5[24].www * r2.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xzw;
  o4.xyz = r0.xyz;
  r0.w = asuint(cb0[1].x) << 2;
  r1.xyzw = cb2[r0.w+30].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb2[r0.w+29].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb2[r0.w+31].xyzw + r1.xyzw;
  r0.xyzw = cb2[r0.w+32].xyzw + r1.xyzw;
  o5.xyzw = r0.xyzw;
  o7.xyzw = r0.xyzw;
  p3.x = cb0[1].x;
  return;
}