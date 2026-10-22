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
  float4 cb2[10];
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
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -9.99999997e-007 + cb2[6].w;
  r0.x = cmp(9.99999975e-006 < abs(r0.x));
  r0.y = cmp(cb2[6].w >= 9.99999997e-007);
  r0.yzw = r0.yyy ? cb2[5].zxy : float3(0,1,0);
  r0.xyz = r0.xxx ? r0.yzw : float3(0,1,0);
  r1.xyz = float3(0,1,0) * r0.xyz;
  r1.xyz = r0.zxy * float3(1,0,0) + -r1.xyz;
  r1.xyz = cb2[8].www * r1.xyz;
  r2.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(8,9,23,24));
  r0.w = t0[r2.w].val[8/4];
  r1.w = t0[r2.z].val[8/4];
  r0.w = -r1.w + r0.w;
  r3.w = t0[r2.y].val[8/4];
  r3.z = t0[r2.x].val[8/4];
  r2.w = 1;
  r4.x = (int)v1.x * 36;
  r4.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r5.x = t0[r4.y].val[0/4];
  r5.y = t0[r4.y].val[0/4+1];
  r5.z = t0[r4.y].val[0/4+2];
  r4.y = t0[r4.z].val[0/4];
  r4.z = t0[r4.z].val[0/4+1];
  r4.w = t0[r4.z].val[0/4+2];
  r6.xyz = v0.yyy * r5.xyz;
  r7.x = t0[r4.x].val[0/4];
  r7.y = t0[r4.x].val[0/4+1];
  r7.z = t0[r4.x].val[0/4+2];
  r4.x = mad((int)v1.x, 36, 2);
  r8.x = t0[r4.x].val[0/4];
  r8.y = t0[r4.x].val[0/4+1];
  r8.z = t0[r4.x].val[0/4+2];
  r6.xyz = r7.xyz * v0.xxx + r6.xyz;
  r6.xyz = r8.xyz * v0.zzz + r6.xyz;
  r9.xyz = cb0[70].xyz + r4.yzw;
  r6.xyz = r9.xyz + r6.xyz;
  r2.xyz = -cb0[70].xyz + r6.xyz;
  r9.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,21,6,7));
  r3.x = t0[r9.z].val[8/4];
  r3.y = t0[r9.w].val[8/4];
  r2.w = dot(r2.xyzw, r3.xyzw);
  r1.w = r2.w + -r1.w;
  r0.w = r1.w / r0.w;
  r0.w = -cb2[7].w + r0.w;
  r0.w = saturate(r0.w / cb2[8].x);
  r0.w = r0.w * r0.w;
  r1.w = cb2[8].y * r0.w;
  r1.w = cb0[142].z * cb2[7].z + -r1.w;
  r9.zw = float2(-1,0) * r1.ww;
  r9.zw = r4.yz * cb2[7].yy + r9.zw;
  r10.xyz = t3.SampleLevel(s0_s, r9.zw, -1).xyz;
  r10.xyz = float3(-0.5,-0.5,-0.5) + r10.xyz;
  r9.zw = r10.xy + r10.xy;
  r1.w = r10.z * 2 + 1;
  r1.w = cb2[8].z * r1.w;
  r1.xyz = r9.www * r1.xyz;
  r1.xyz = r0.yzx * r9.zzz + r1.xyz;
  r1.xyz = cb2[9].xxx * r1.xyz;
  r0.xyz = r0.yzx * r1.www + r1.xyz;
  r1.xyz = r2.xyz + -r4.yzw;
  r0.xyz = r0.xyz * r0.www + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.y = sqrt(r1.x);
  r0.xyz = r0.xyz / r1.yyy;
  r1.y = cmp(r1.x >= 9.99999997e-007);
  r1.x = -9.99999997e-007 + r1.x;
  r1.x = cmp(9.99999975e-006 < abs(r1.x));
  r0.xyz = r1.yyy ? r0.xyz : 0;
  r0.xyz = r1.xxx ? r0.xyz : 0;
  r0.xyz = r0.www * r0.xyz + r4.yzw;
  r1.xyz = -cb0[67].xyz + r4.yzw;
  r0.xyz = r0.xyz + -r2.xyz;
  r0.w = dot(-r8.xyz, -r8.xyz);
  r4.z = sqrt(r0.w);
  r0.w = dot(-r7.xyz, -r7.xyz);
  r4.x = sqrt(r0.w);
  r0.w = dot(-r5.xyz, -r5.xyz);
  r4.y = sqrt(r0.w);
  r0.xyz = r4.xyz * r0.xyz;
  r4.x = t0[r9.x].val[0/4];
  r4.y = t0[r9.x].val[0/4+1];
  r4.z = t0[r9.x].val[0/4+2];
  r9.x = t0[r9.y].val[0/4];
  r9.y = t0[r9.y].val[0/4+1];
  r9.z = t0[r9.y].val[0/4+2];
  r7.xyz = r7.xyz * r4.xxx;
  r4.xyw = r5.xyz * r4.yyy;
  r5.xyz = r8.xyz * r4.zzz;
  r0.w = (int)v2.x + asint(cb1[0].w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = (int)r0.w * asint(cb1[0].y);
  r8.xy = t1.Load(r0.w).xy;
  o1.xy = r8.xy;
  r8.xyz = t2.Load(r1.w).xyz;
  r4.xyz = r8.yyy * r4.xyw;
  r4.xyz = r8.xxx * r7.xyz + r4.xyz;
  r4.xyz = r8.zzz * r5.xyz + r4.xyz;
  r0.w = dot(r4.xyz, r3.xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r1.w);
  r1.xyz = r1.xyz / r1.www;
  r1.w = dot(r9.xyz, r1.xyz);
  r1.xyz = -r9.xyz * r1.www + r1.xyz;
  r1.w = r1.w * r1.w;
  r1.w = r1.w * r1.w;
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r2.w);
  r1.xyz = r1.xyz / r2.www;
  r1.x = dot(r1.xyz, r4.xyz);
  r1.xw = r1.xw * r1.xw;
  r0.w = -r1.x * cb2[6].z + r0.w;
  r1.x = cb2[6].z * r1.x;
  r0.w = r1.w * r0.w + r1.x;
  r0.w = 0.0199999996 + r0.w;
  r1.xy = saturate(r0.ww);
  r0.w = cmp(r1.y >= 0.100000001);
  o1.zw = r1.xy;
  r0.xyz = r0.www ? r0.xyz : -r2.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}