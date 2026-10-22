// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
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
  r0.w = t2.SampleLevel(s0_s, r1.xy, -1).x;
  r1.x = -0.5 + r0.w;
  r0.w = r0.w * cb3[17].z + -cb3[17].z;
  r0.w = saturate(cb3[18].y + r0.w);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r1.x = dot(r1.xx, cb3[16].yy);
  r1.xy = r1.xx + r0.yz;
  r1.xy = -cb3[7].xy + r1.xy;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb3[18].z;
  r1.x = 1 + -r1.x;
  r1.y = cb3[18].w * r1.x;
  r1.y = r1.y * r1.y;
  r1.y = 1.44269514 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = 1 / r1.y;
  r1.y = 1 + -r1.y;
  r1.y = -r1.y * 0.899999976 + 1;
  r1.z = cmp(r1.x >= 0);
  r1.x = cmp(9.99999975e-006 < abs(r1.x));
  r1.y = r1.z ? r1.y : 1;
  r1.x = r1.x ? r1.y : 1;
  r0.w = -r0.w * r1.x + 1;
  r0.w = 1 + -r0.w;
  r1.x = asint(cb1[0].y) + -1;
  r1.xy = min(uint2(2,3), (uint2)r1.xx);
  r1.xy = mad(asint(cb1[0].yy), (int2)r0.xx, (int2)r1.xy);
  r1.x = t1.Load(r1.x).y;
  r1.zw = t1.Load(r1.y).xy;
  r0.x = (int)v1.x * 36;
  r1.y = mad((int)v1.x, 36, 2);
  r2.x = t0[r1.y].val[0/4];
  r2.y = t0[r1.y].val[0/4+1];
  r2.z = t0[r1.y].val[0/4+2];
  r3.z = r2.x;
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r5.x = t0[r0.x].val[0/4];
  r5.y = t0[r0.x].val[0/4+1];
  r5.z = t0[r0.x].val[0/4+2];
  r4.x = t0[r4.x].val[0/4];
  r4.z = t0[r4.x].val[0/4+2];
  r4.w = t0[r4.x].val[0/4+1];
  r6.x = t0[r4.y].val[0/4];
  r6.y = t0[r4.y].val[0/4+1];
  r6.z = t0[r4.y].val[0/4+2];
  r6.xyz = cb0[70].xyz + r6.xyz;
  r3.y = r4.x;
  r3.x = r5.x;
  r3.x = dot(r1.xzw, r3.xyz);
  r7.y = r4.w;
  r7.z = r2.y;
  r7.x = r5.y;
  r3.y = dot(r1.xzw, r7.xyz);
  r7.xyz = v0.yyy * r4.xwz;
  r5.xyw = r5.xyz * v0.xxx + r7.xyz;
  r4.x = r5.z;
  r2.xyw = r2.xyz * v0.zzz + r5.xyw;
  r4.w = r2.z;
  r3.z = dot(r1.xzw, r4.xzw);
  r2.xyz = r2.xyw + r6.xyz;
  r4.xyz = cb3[21].yyy * r3.xyz;
  r4.xyz = r0.www * r4.xyz + -r3.xyz;
  r5.xyz = -cb0[70].xyz + r2.xyz;
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(5,10,11,12));
  r7.x = t0[r6.x].val[0/4];
  r7.y = t0[r6.x].val[0/4+1];
  r7.z = t0[r6.x].val[0/4+2];
  r5.xyz = r7.xyz + -r5.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.00499999989 * r0.x;
  r0.x = min(1, r0.x);
  r0.x = r0.x * 5 + -5;
  r0.x = saturate(cb2[2].w * 6 + r0.x);
  r3.xyz = r0.xxx * r4.xyz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyzw = cb0[1].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb0[0].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb0[2].xyzw + r3.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r0.x = 0.00100000005 * r2.w;
  r0.w = cmp(1 < asint(cb0[135].x));
  r0.x = r0.w ? r0.x : 0;
  o0.z = r2.z + r0.x;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r0.x = cb0[139].z * cb3[14].z + r0.y;
  r2.y = cb3[15].y * r0.x;
  r0.x = floor(r2.y);
  r0.x = (int)r0.x;
  r0.x = mad((int)r0.x, 0x0019660d, 0xd17070a0);
  r0.w = mad(0x3c6ef35f, (int)r0.x, 0x3c6ef35f);
  r1.y = mad((int)r0.x, (int)r0.w, 0x3c6ef35f);
  r0.x = mad((int)r0.w, (int)r1.y, (int)r0.x);
  r0.w = mad((int)r1.y, (int)r0.x, (int)r0.w);
  r0.x = mad((int)r0.x, (int)r0.w, (int)r1.y);
  r0.x = (uint)r0.x >> 16;
  r0.x = (uint)r0.x;
  r0.x = r0.x * 1.52590223e-006 + 0.100000001;
  r0.w = cb0[139].z * cb3[15].z + r0.z;
  r0.w = cb3[15].w * r0.w;
  r2.x = cb0[139].z * r0.x + r0.w;
  r0.x = t2.SampleLevel(s0_s, r2.xy, -1).x;
  r0.w = -0.5 + r0.x;
  r0.x = r0.x * cb3[17].z + -cb3[17].z;
  r0.x = saturate(cb3[18].y + r0.x);
  r0.x = 1 + -r0.x;
  r0.w = dot(r0.ww, cb3[16].yy);
  r2.xy = r0.yz + r0.ww;
  o3.xy = r0.yz;
  r0.yz = -cb3[7].xy + r2.xy;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / cb3[18].z;
  r0.xy = float2(1,1) + -r0.xy;
  r0.z = cb3[18].w * r0.y;
  r0.z = r0.z * r0.z;
  r0.z = 1.44269514 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = 1 / r0.z;
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * 0.899999976 + 1;
  r0.w = cmp(r0.y >= 0);
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = r0.w ? r0.z : 1;
  r0.y = r0.y ? r0.z : 1;
  r0.x = -r0.x * r0.y + 1;
  r0.x = 1 + -r0.x;
  r2.x = t0[r6.y].val[0/4+1];
  r2.y = t0[r6.y].val[0/4];
  r2.z = t0[r6.y].val[0/4+2];
  r3.x = r2.y;
  r4.x = t0[r6.z].val[0/4];
  r4.y = t0[r6.z].val[0/4+2];
  r4.z = t0[r6.z].val[0/4+1];
  r0.y = t0[r6.w].val[0/4];
  r0.z = t0[r6.w].val[0/4+1];
  r0.w = t0[r6.w].val[0/4+2];
  r3.y = r4.x;
  r3.z = r0.y;
  r5.x = dot(r1.xzw, r3.xyz);
  r4.x = r2.z;
  r2.y = r4.z;
  r2.z = r0.z;
  r4.z = r0.w;
  r5.y = dot(r1.xzw, r2.xyz);
  r5.z = dot(r1.xzw, r4.xyz);
  r0.yzw = cb3[21].yyy * r5.xyz;
  r0.xyz = r0.xxx * r0.yzw + -r5.xyz;
  r0.w = mad((int)v1.x, 36, 13);
  r1.x = t0[r0.w].val[0/4];
  r1.y = t0[r0.w].val[0/4+1];
  r1.z = t0[r0.w].val[0/4+2];
  r1.xyz = cb0[113].xyz + r1.xyz;
  r3.w = r1.x;
  r3.x = dot(v0.xyzw, r3.xyzw);
  r2.w = r1.y;
  r4.w = r1.z;
  r3.z = dot(v0.xyzw, r4.xyzw);
  r3.y = dot(v0.xyzw, r2.xyzw);
  r1.xyz = -cb0[113].xyz + r3.xyz;
  r1.xyz = r7.xyz + -r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.00499999989 * r0.w;
  r0.w = min(1, r0.w);
  r1.x = 6 * cb2[2].w;
  r0.w = r0.w * 5 + r1.x;
  r0.w = saturate(-5 + r0.w);
  r0.xyz = r0.www * r0.xyz + r5.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  o3.zw = float2(0,0);
  return;
}