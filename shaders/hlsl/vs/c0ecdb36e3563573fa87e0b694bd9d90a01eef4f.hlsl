// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[64];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[131];
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
  out float4 o4 : TEXCOORD6,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb2[0].w);
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
  r2.x = (int)v1.x * 36;
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r2.yzw = cb0[70].xyz + r2.yzw;
  r3.w = mad((int)v1.x, 36, 4);
  r4.x = t0[r3.w].val[0/4];
  r4.y = t0[r3.w].val[0/4+1];
  r4.z = t0[r3.w].val[0/4+2];
  r4.w = t0[r3.w].val[0/4+3];
  r5.xyz = r4.yyy * r3.xyz;
  r3.xyz = v0.yyy * r3.xyz;
  r6.xyz = r5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r2.x].val[0/4];
  r7.y = t0[r2.x].val[0/4+1];
  r7.z = t0[r2.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.z].val[0/4];
  r8.y = t0[r0.z].val[0/4+1];
  r8.z = t0[r0.z].val[0/4+2];
  r9.xyz = r7.xyz * r4.xxx;
  r3.xyz = r7.xyz * v0.xxx + r3.xyz;
  r3.xyz = r8.xyz * v0.zzz + r3.xyz;
  r4.xyz = r8.xyz * r4.zzz;
  o1.w = r4.w * r1.w;
  r2.xyz = r3.xyz + r2.yzw;
  r3.xyz = r0.yyy * r9.xyz + r6.xyz;
  o0.xyz = r0.www * r4.xyz + r3.xyz;
  r0.yzw = r1.xxx * r9.xyz + r5.xyz;
  r0.yzw = r1.zzz * r4.xyz + r0.yzw;
  o1.xyz = r0.yzw;
  r1.x = (int)r0.x * asint(cb2[0].y);
  r0.x = (int)r0.x & asint(cb2[0].x);
  r1.yz = t3.Load(r0.x).yz;
  r1.xw = t1.Load(r1.x).xy;
  o2.xy = r1.xw;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.x = dot(r0.yzw, r0.yzw);
  r0.x = sqrt(r0.x);
  r0.xyz = r0.yzw / r0.xxx;
  r0.w = cb0[130].x / cb0[130].y;
  r0.w = 1.77777779 / r0.w;
  r0.w = max(1, r0.w);
  r1.x = 0.763943851 * cb0[128].x;
  r0.w = r1.x * r0.w;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyz = cb0[67].xyz + -r3.xyz;
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r1.x);
  r4.xy = r1.xx * r0.ww + -cb3[60].zw;
  r3.xyz = r3.xyz / r1.xxx;
  r0.w = saturate(r4.x / cb3[61].x);
  r1.x = saturate(r4.y / cb3[62].y);
  r1.w = cb3[61].y + -cb3[61].z;
  r0.w = r0.w * r1.w + cb3[61].z;
  r0.w = cb3[62].z * r1.x + r0.w;
  r0.w = cb3[63].x * r0.w;
  r0.xyz = -r0.xyz * r0.www;
  r0.w = 1 + -r1.y;
  r1.x = cb3[63].y * r1.z;
  r1.yzw = r3.xyz * r0.www;
  r1.yzw = cb3[63].zzz * r1.yzw;
  r0.xyz = r0.xyz * r1.xxx + r1.yzw;
  r0.xyz = r2.xyz + r0.xyz;
  r1.xyzw = cb1[8].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[7].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[9].xyzw + r1.xyzw;
  o5.xyz = r0.xyz;
  r0.xyzw = cb1[10].xyzw + r1.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 != cb1[11].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o4.x = r0.z;
  o6.xyzw = r0.xyzw;
  o5.w = 1;
  return;
}