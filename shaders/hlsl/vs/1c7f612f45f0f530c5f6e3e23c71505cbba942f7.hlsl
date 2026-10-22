// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[26];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
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
  float4 cb0[71];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb2[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t2.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r0.x = (int)r0.x * asint(cb2[0].y);
  r1.yz = t1.Load(r0.x).xy;
  r2.xyzw = t2.Load(r1.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.xyz = r2.xyz * r0.zwy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r3.xyz = r0.xyz * r2.yzx;
  r0.xyz = r0.zxy * r2.zxy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r0.w = (int)v1.x * 36;
  r1.xw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r1.x].val[0/4];
  r3.y = t0[r1.x].val[0/4+1];
  r3.z = t0[r1.x].val[0/4+2];
  r4.x = t0[r1.w].val[0/4];
  r4.y = t0[r1.w].val[0/4+1];
  r4.z = t0[r1.w].val[0/4+2];
  r4.xyz = cb0[70].xyz + r4.xyz;
  r1.xw = mad((int2)v1.xx, int2(36,36), int2(4,5));
  r5.x = t0[r1.x].val[0/4];
  r5.y = t0[r1.x].val[0/4+1];
  r5.z = t0[r1.x].val[0/4+2];
  r5.w = t0[r1.x].val[0/4+3];
  r6.x = t0[r1.w].val[0/4];
  r6.y = t0[r1.w].val[0/4+1];
  r6.z = t0[r1.w].val[0/4+2];
  r7.xyz = r5.yyy * r3.xyz;
  r3.xyz = v0.yyy * r3.xyz;
  r8.xyz = r7.xyz * r0.yyy;
  r7.xyz = r7.xyz * r2.yyy;
  r9.x = t0[r0.w].val[0/4];
  r9.y = t0[r0.w].val[0/4+1];
  r9.z = t0[r0.w].val[0/4+2];
  r0.y = mad((int)v1.x, 36, 2);
  r10.x = t0[r0.y].val[0/4];
  r10.y = t0[r0.y].val[0/4+1];
  r10.z = t0[r0.y].val[0/4+2];
  r11.xyz = r9.xyz * r5.xxx;
  r3.xyz = r9.xyz * v0.xxx + r3.xyz;
  r3.xyz = r10.xyz * v0.zzz + r3.xyz;
  r5.xyz = r10.xyz * r5.zzz;
  o1.w = r5.w * r2.w;
  r3.xyz = r3.xyz + r4.xyz;
  r0.xyw = r0.xxx * r11.xyz + r8.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  r0.xyz = r2.xxx * r11.xyz + r7.xyz;
  r0.xyz = r2.zzz * r5.xyz + r0.xyz;
  o1.xyz = r0.xyz;
  o2.xy = r1.yz;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r1.xy = r1.yz * cb4[24].yw + float2(3,3);
  r0.w = 1 + -r1.z;
  r0.w = r0.w * cb4[21].w + -cb4[21].w;
  r0.w = saturate(cb4[22].z + r0.w);
  r1.x = t3.SampleLevel(s0_s, r1.xy, -1).x;
  r0.xyz = r1.xxx * r0.xyz;
  r1.xyz = -cb0[70].xyz + r3.xyz;
  r1.xyz = r1.xyz + -r6.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.0142857144 * r1.x;
  r1.x = cmp(0 >= r1.x);
  r1.y = log2(r1.y);
  r1.y = cb4[25].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = 0.333333343 * r1.y;
  r1.x = r1.x ? 0 : r1.y;
  r1.yzw = cb4[15].xyz + cb3[8].xyz;
  r1.yzw = cb4[25].yyy * r1.yzw;
  r1.xyz = r1.xxx * r1.yzw;
  r1.w = -1 + cb4[22].w;
  r0.w = r0.w * r1.w + 1;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyzw = cb1[8].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[7].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[9].xyzw + r1.xyzw;
  o5.xyz = r0.xyz;
  r0.xyzw = cb1[10].xyzw + r1.xyzw;
  r1.x = cmp(r0.z < 0);
  r1.y = cmp(0 != cb1[11].x);
  r1.x = r1.x ? r1.y : 0;
  r0.zw = r1.xx ? float2(9.99999997e-007,1) : r0.zw;
  o6.xyw = r0.xyw;
  r0.x = cb1[11].y * r0.z;
  o4.x = r0.x;
  o6.z = r0.x * r0.w;
  o5.w = 1;
  return;
}