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
  float4 cb3[26];
}

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
  float4 cb0[136];
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
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0,
  out uint o6 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r2.xyz = -cb0[70].xyz + r0.xyz;
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,5,10,11));
  r6.x = t0[r5.y].val[0/4];
  r6.y = t0[r5.y].val[0/4+1];
  r6.z = t0[r5.y].val[0/4+2];
  r2.xyz = -r6.xyz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r1.w = 0.0142857144 * r0.w;
  r0.w = cmp(0 >= r0.w);
  r1.w = log2(r1.w);
  r1.w = cb3[25].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 0.333333343 * r1.w;
  r0.w = r0.w ? 0 : r1.w;
  r1.w = -1 + cb3[22].w;
  r2.x = (int)v2.x + asint(cb1[0].w);
  r2.y = (int)r2.x * asint(cb1[0].y);
  r2.yz = t1.Load(r2.y).xy;
  r2.w = 1 + -r2.z;
  r2.w = r2.w * cb3[21].w + -cb3[21].w;
  r2.w = saturate(cb3[22].z + r2.w);
  r1.w = r2.w * r1.w + 1;
  r7.xy = cb3[24].yw * r2.yz;
  o5.xy = r2.yz;
  r2.y = t3.SampleLevel(s0_s, r7.xy, -1).x;
  r7.x = t0[r5.x].val[0/4];
  r7.y = t0[r5.x].val[0/4+1];
  r7.z = t0[r5.x].val[0/4+2];
  r7.w = t0[r5.x].val[0/4+3];
  r4.xyz = r7.zzz * r4.xyz;
  r3.xyz = r7.xxx * r3.xyz;
  r1.xyz = r7.yyy * r1.xyz;
  bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.z = (((uint)r2.x << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  r2.x = (uint)r2.x << 1;
  r7.xyz = t2.Load(r2.x).xyz;
  r8.xyzw = t2.Load(r2.z).xyzw;
  r2.xzw = r8.yyy * r1.xyz;
  r2.xzw = r8.xxx * r3.xyz + r2.xzw;
  r2.xzw = r8.zzz * r4.xyz + r2.xzw;
  r9.xyz = r2.xzw * r2.yyy;
  o4.xyz = r2.xzw;
  r2.xyz = r9.xyz * r1.www;
  r9.xyz = cb3[15].xyz + cb2[8].xyz;
  r9.xyz = cb3[25].yyy * r9.xyz;
  r10.xyz = r0.www * r9.xyz + r2.xyz;
  r0.xyz = r10.xyz + r0.xyz;
  r10.xyzw = cb0[1].xyzw * r0.yyyy;
  r10.xyzw = r0.xxxx * cb0[0].xyzw + r10.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r10.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.w = 0.00100000005 * r0.w;
  r2.w = cmp(1 < asint(cb0[135].x));
  r1.w = r2.w ? r1.w : 0;
  o0.z = r1.w + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.x = t0[r5.z].val[0/4+1];
  r0.y = t0[r5.z].val[0/4];
  r0.z = t0[r5.z].val[0/4+2];
  r5.x = t0[r5.w].val[0/4];
  r5.y = t0[r5.w].val[0/4+2];
  r5.z = t0[r5.w].val[0/4+1];
  r10.x = r0.y;
  r10.y = r5.x;
  r11.xy = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r11.y = t0[r11.y].val[0/4];
  r11.z = t0[r11.y].val[0/4+1];
  r11.w = t0[r11.y].val[0/4+2];
  r12.x = t0[r11.x].val[0/4];
  r12.y = t0[r11.x].val[0/4+1];
  r12.z = t0[r11.x].val[0/4+2];
  r11.xyz = cb0[113].xyz + r11.yzw;
  r10.w = r11.x;
  r10.z = r12.x;
  r10.x = dot(v0.xyzw, r10.xyzw);
  r0.w = r11.y;
  r5.w = r11.z;
  r5.x = r0.z;
  r0.y = r5.z;
  r0.z = r12.y;
  r5.z = r12.z;
  r10.z = dot(v0.xyzw, r5.xyzw);
  r10.y = dot(v0.xyzw, r0.xyzw);
  r0.xyz = -cb0[113].xyz + r10.xyz;
  r0.xyz = r0.xyz + -r6.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 0.0142857144 * r0.x;
  r0.x = cmp(0 >= r0.x);
  r0.y = log2(r0.y);
  r0.y = cb3[25].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = 0.333333343 * r0.y;
  r0.x = r0.x ? 0 : r0.y;
  r0.xyz = r0.xxx * r9.xyz + r2.xyz;
  r0.xyz = r10.xyz + r0.xyz;
  r2.xyzw = cb0[92].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[91].xyzw + r2.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r2.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  r0.xyz = r8.yzx * r7.xyz;
  r0.xyz = r8.xyz * r7.yzx + -r0.xyz;
  r0.xyz = r0.xyz * r8.www;
  r2.xyz = r0.xyz * r8.yzx;
  r0.xyz = r0.zxy * r8.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r8.www;
  o4.w = r8.w * r7.w;
  r1.xyz = r0.yyy * r1.xyz;
  r0.xyw = r0.xxx * r3.xyz + r1.xyz;
  o3.xyz = r0.zzz * r4.xyz + r0.xyw;
  o3.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  return;
}