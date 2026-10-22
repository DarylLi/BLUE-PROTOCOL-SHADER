// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out uint o3 : PRIMITIVE_ID0,
  out float4 o4 : TEXCOORD6,
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
  r5.xyz = cb0[70].xyz + r5.xyz;
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
  o1.xyz = r1.zzz * r3.xyz + r6.xyz;
  o0.xyz = r0.www * r3.xyz + r7.xyz;
  o2.zw = float2(0,0);
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o2.xy = r0.yz;
  o3.x = v1.x;
  r0.w = cb0[142].z * cb3[14].z + r0.y;
  r1.y = cb3[15].y * r0.w;
  r0.w = floor(r1.y);
  r0.w = (int)r0.w;
  r0.w = mad((int)r0.w, 0x0019660d, 0xd17070a0);
  r1.z = mad(0x3c6ef35f, (int)r0.w, 0x3c6ef35f);
  r1.w = mad((int)r0.w, (int)r1.z, 0x3c6ef35f);
  r0.w = mad((int)r1.z, (int)r1.w, (int)r0.w);
  r1.z = mad((int)r1.w, (int)r0.w, (int)r1.z);
  r0.w = mad((int)r0.w, (int)r1.z, (int)r1.w);
  r0.w = (uint)r0.w >> 16;
  r0.w = (uint)r0.w;
  r0.w = r0.w * 1.52590223e-006 + 0.100000001;
  r1.z = cb0[142].z * cb3[15].z + r0.z;
  r1.z = cb3[15].w * r1.z;
  r1.x = cb0[142].z * r0.w + r1.z;
  r0.w = t3.SampleLevel(s0_s, r1.xy, -1).x;
  r1.x = -0.5 + r0.w;
  r0.w = r0.w * cb3[17].z + -cb3[17].z;
  r0.w = saturate(cb3[18].y + r0.w);
  r0.w = 1 + -r0.w;
  r1.x = dot(r1.xx, cb3[16].yy);
  r0.yz = r1.xx + r0.yz;
  r0.yz = -cb3[7].xy + r0.yz;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / cb3[18].z;
  r0.yw = float2(1,1) + -r0.yw;
  r0.z = cb3[18].w * r0.y;
  r0.z = r0.z * r0.z;
  r0.z = 1.44269514 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = 1 / r0.z;
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * 0.899999976 + 1;
  r1.x = cmp(r0.y >= 0);
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = r1.x ? r0.z : 1;
  r0.y = r0.y ? r0.z : 1;
  r0.y = -r0.w * r0.y + 1;
  r0.y = 1 + -r0.y;
  r0.z = asint(cb1[0].y) + -1;
  r0.zw = min(uint2(0,0), (uint2)r0.zz);
  r0.xz = mad(asint(cb1[0].yy), (int2)r0.xx, (int2)r0.zw);
  r1.x = t1.Load(r0.x).y;
  r1.yz = t1.Load(r0.z).xy;
  r3.y = r4.x;
  r3.z = r9.x;
  r3.x = r8.x;
  r3.x = dot(r1.xyz, r3.xyz);
  r6.y = r4.w;
  r6.z = r9.y;
  r6.x = r8.y;
  r3.y = dot(r1.xyz, r6.xyz);
  r0.xzw = v0.yyy * r4.xwz;
  r0.xzw = r8.xyz * v0.xxx + r0.xzw;
  r4.x = r8.z;
  r0.xzw = r9.xyz * v0.zzz + r0.xzw;
  r4.w = r9.z;
  r3.z = dot(r1.xyz, r4.xzw);
  r0.xzw = r0.xzw + r5.xyz;
  r1.xyz = cb3[21].yyy * r3.xyz;
  r1.xyz = r0.yyy * r1.xyz + -r3.xyz;
  r4.xyz = -cb0[70].xyz + r0.xzw;
  r2.xyz = -r4.xyz + r2.xyz;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.00499999989 * r0.y;
  r0.y = min(1, r0.y);
  r0.y = r0.y * 5 + -5;
  r0.y = saturate(cb2[2].w * 6 + r0.y);
  r1.xyz = r0.yyy * r1.xyz + r3.xyz;
  r0.xyz = r1.xyz + r0.xzw;
  o4.xyz = r0.xyz;
  o4.w = 1;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o5.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}