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
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(1 < asint(cb0[135].x));
  r0.y = (int)v1.x * 36;
  r0.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r2.x = t0[r0.w].val[0/4];
  r2.y = t0[r0.w].val[0/4+1];
  r2.z = t0[r0.w].val[0/4+2];
  r2.xyz = cb0[70].xyz + r2.xyz;
  r3.xyz = v0.yyy * r1.xyz;
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r1.w].val[0/4];
  r4.y = t0[r1.w].val[0/4+1];
  r4.z = t0[r1.w].val[0/4+2];
  r3.xyz = r0.yzw * v0.xxx + r3.xyz;
  r3.xyz = r4.xyz * v0.zzz + r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r1.w = (int)v2.x + asint(cb1[0].w);
  r2.w = (int)r1.w * asint(cb1[0].y);
  r3.xy = t1.Load(r2.w).xy;
  r2.w = cb0[142].z * cb2[16].y + r3.x;
  r5.x = cb2[17].x * r2.w;
  r2.w = cb0[142].z * cb2[17].y + r3.y;
  r5.y = cb2[17].z * r2.w;
  r2.w = t3.SampleLevel(s0_s, r5.xy, -1).x;
  r5.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,10,11,12));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r6.w = t0[r5.x].val[0/4+3];
  r4.xyz = r6.zzz * r4.xyz;
  r0.yzw = r6.xxx * r0.yzw;
  r1.xyz = r6.yyy * r1.xyz;
  bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.z = (((uint)r1.w << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  r1.w = (uint)r1.w << 1;
  r6.xyz = t2.Load(r1.w).xyz;
  r7.xyzw = t2.Load(r3.z).xyzw;
  r8.xyz = r7.yyy * r1.xyz;
  r8.xyz = r7.xxx * r0.yzw + r8.xyz;
  r8.xyz = r7.zzz * r4.xyz + r8.xyz;
  r9.xyz = r8.xyz * r2.www;
  r2.xyz = r9.xyz * cb2[17].www + r2.xyz;
  r9.xyzw = cb0[1].xyzw * r2.yyyy;
  r9.xyzw = r2.xxxx * cb0[0].xyzw + r9.xyzw;
  r2.xyzw = r2.zzzz * cb0[2].xyzw + r9.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r1.w = 0.00100000005 * r2.w;
  r0.x = r0.x ? r1.w : 0;
  o0.z = r2.z + r0.x;
  o0.xyw = r2.xyw;
  o1.xyzw = r2.xyzw;
  r0.x = mad((int)v1.x, 36, 13);
  r2.x = t0[r0.x].val[0/4];
  r2.y = t0[r0.x].val[0/4+1];
  r2.z = t0[r0.x].val[0/4+2];
  r2.xyz = cb0[113].xyz + r2.xyz;
  r9.w = r2.x;
  r10.x = t0[r5.y].val[0/4+1];
  r10.y = t0[r5.y].val[0/4];
  r10.z = t0[r5.y].val[0/4+2];
  r9.x = r10.y;
  r11.x = t0[r5.z].val[0/4];
  r11.y = t0[r5.z].val[0/4+2];
  r11.z = t0[r5.z].val[0/4+1];
  r5.x = t0[r5.w].val[0/4];
  r5.y = t0[r5.w].val[0/4+1];
  r5.z = t0[r5.w].val[0/4+2];
  r9.y = r11.x;
  r9.z = r5.x;
  r9.x = dot(v0.xyzw, r9.xyzw);
  r10.w = r2.y;
  r11.w = r2.z;
  r11.x = r10.z;
  r10.y = r11.z;
  r10.z = r5.y;
  r11.z = r5.z;
  r9.z = dot(v0.xyzw, r11.xyzw);
  r9.y = dot(v0.xyzw, r10.xyzw);
  r0.x = cb0[139].z * cb2[16].y + r3.x;
  r2.x = cb2[17].x * r0.x;
  r0.x = cb0[139].z * cb2[17].y + r3.y;
  o5.xy = r3.xy;
  r2.y = cb2[17].z * r0.x;
  r0.x = t3.SampleLevel(s0_s, r2.xy, -1).x;
  r2.xyz = r8.xyz * r0.xxx;
  o4.xyz = r8.xyz;
  r2.xyz = r2.xyz * cb2[17].www + r9.xyz;
  r3.xyzw = cb0[92].xyzw * r2.yyyy;
  r3.xyzw = r2.xxxx * cb0[91].xyzw + r3.xyzw;
  r2.xyzw = r2.zzzz * cb0[93].xyzw + r3.xyzw;
  o2.xyzw = cb0[94].xyzw + r2.xyzw;
  r2.xyz = r7.yzx * r6.xyz;
  r2.xyz = r7.xyz * r6.yzx + -r2.xyz;
  r2.xyz = r2.xyz * r7.www;
  r3.xyz = r2.xyz * r7.yzx;
  r2.xyz = r2.zxy * r7.zxy + -r3.xyz;
  r2.xyz = r2.xyz * r7.www;
  o4.w = r7.w * r6.w;
  r1.xyz = r2.yyy * r1.xyz;
  r0.xyz = r2.xxx * r0.yzw + r1.xyz;
  o3.xyz = r2.zzz * r4.xyz + r0.xyz;
  o3.w = 0;
  o5.zw = float2(0,0);
  return;
}