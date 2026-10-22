// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[35];
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
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb1[0].y) + -1;
  r0.x = min(1, (uint)r0.x);
  r0.y = (int)v2.x + asint(cb1[0].w);
  r0.x = mad(asint(cb1[0].y), (int)r0.y, (int)r0.x);
  r0.xy = t1.Load(r0.x).xy;
  r0.xy = cb2[33].xx * r0.xy;
  r1.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(18,10,11,12));
  r2.x = t0[r1.x].val[0/4];
  r2.y = t0[r1.x].val[0/4+1];
  r2.z = t0[r1.x].val[0/4+2];
  r0.z = r2.x + r2.y;
  r0.z = r0.z + r2.z;
  r0.z = cb0[142].z + r0.z;
  r0.z = cb2[32].w * r0.z;
  r0.zw = r0.zz * float2(0.100000001,0.100000001) + r0.xy;
  r0.z = t2.SampleLevel(s0_s, r0.zw, -1).x;
  r0.z = r0.z * 2 + -1;
  r3.xyz = cb2[33].yzw * r0.zzz;
  r3.xyz = cb2[34].xxx * r3.xyz;
  r0.z = (int)v1.x * 36;
  r0.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r0.w].val[0/4];
  r4.y = t0[r0.w].val[0/4+1];
  r4.z = t0[r0.w].val[0/4+2];
  r5.z = r4.x;
  r6.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r7.x = t0[r0.z].val[0/4];
  r7.y = t0[r0.z].val[0/4+1];
  r7.z = t0[r0.z].val[0/4+2];
  r8.x = t0[r6.x].val[0/4];
  r8.y = t0[r6.x].val[0/4+2];
  r8.z = t0[r6.x].val[0/4+1];
  r6.x = t0[r6.y].val[0/4];
  r6.y = t0[r6.y].val[0/4+1];
  r6.z = t0[r6.y].val[0/4+2];
  r5.y = r8.x;
  r5.w = r6.x;
  r3.w = 1;
  r5.x = r7.x;
  r5.x = dot(r3.xyzw, r5.xyzw);
  r9.y = r8.z;
  r9.z = r4.y;
  r9.w = r6.y;
  r9.x = r7.y;
  r5.y = dot(r3.xyzw, r9.xyzw);
  r9.xyz = v0.yyy * r8.xzy;
  r7.xyw = r7.xyz * v0.xxx + r9.xyz;
  r8.x = r7.z;
  r4.xyw = r4.xyz * v0.zzz + r7.xyw;
  r8.z = r4.z;
  r8.w = r6.z;
  r6.xyz = cb0[70].xyz + r6.xyz;
  r4.xyz = r6.xyz + r4.xyw;
  r5.z = dot(r3.xyzw, r8.xyzw);
  r3.xyz = r5.xyz + -r2.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r4.xyzw = cb0[1].xyzw * r3.yyyy;
  r4.xyzw = r3.xxxx * cb0[0].xyzw + r4.xyzw;
  r3.xyzw = r3.zzzz * cb0[2].xyzw + r4.xyzw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  r0.z = 0.00100000005 * r3.w;
  r0.w = cmp(1 < asint(cb0[135].x));
  r0.z = r0.w ? r0.z : 0;
  o0.z = r3.z + r0.z;
  o0.xyw = r3.xyw;
  o1.xyzw = r3.xyzw;
  r3.x = t0[r1.y].val[0/4+1];
  r3.y = t0[r1.y].val[0/4];
  r3.z = t0[r1.y].val[0/4+2];
  r4.x = r3.y;
  r5.x = t0[r1.z].val[0/4];
  r5.y = t0[r1.z].val[0/4+2];
  r5.z = t0[r1.z].val[0/4+1];
  r1.x = t0[r1.w].val[0/4];
  r1.y = t0[r1.w].val[0/4+1];
  r1.z = t0[r1.w].val[0/4+2];
  r4.y = r5.x;
  r4.z = r1.x;
  r0.z = mad((int)v1.x, 36, 9);
  r6.x = t0[r0.z].val[0/4];
  r6.y = t0[r0.z].val[0/4+1];
  r6.z = t0[r0.z].val[0/4+2];
  r6.w = t0[r0.z].val[0/4+3];
  r7.w = r6.x;
  r8.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(13,6,7,8));
  r9.x = t0[r8.y].val[0/4];
  r9.y = t0[r8.y].val[0/4+1];
  r9.z = t0[r8.y].val[0/4+2];
  r9.w = t0[r8.y].val[0/4+3];
  r7.x = r9.x;
  r10.x = t0[r8.z].val[0/4];
  r10.y = t0[r8.z].val[0/4+2];
  r10.z = t0[r8.z].val[0/4+1];
  r10.w = t0[r8.z].val[0/4+3];
  r7.y = r10.x;
  r11.x = t0[r8.w].val[0/4];
  r11.y = t0[r8.w].val[0/4+1];
  r11.z = t0[r8.w].val[0/4+3];
  r11.w = t0[r8.w].val[0/4+2];
  r8.x = t0[r8.x].val[0/4];
  r8.y = t0[r8.x].val[0/4+1];
  r8.z = t0[r8.x].val[0/4+2];
  r7.z = r11.x;
  r2.w = 1;
  r7.x = dot(r2.xyzw, r7.xyzw);
  r12.x = r9.y;
  r12.y = r10.z;
  r12.z = r11.y;
  r12.w = r6.y;
  r7.y = dot(r2.xyzw, r12.xyzw);
  r10.x = r9.z;
  r11.x = r9.w;
  r11.y = r10.w;
  r10.z = r11.w;
  r10.w = r6.z;
  r11.w = r6.w;
  r7.w = dot(r2.xyzw, r11.xyzw);
  r7.z = dot(r2.xyzw, r10.xyzw);
  r4.w = r8.x;
  r2.x = dot(r7.xyzw, r4.xyzw);
  r5.x = r3.z;
  r3.y = r5.z;
  r3.z = r1.y;
  r5.z = r1.z;
  r3.w = r8.y;
  r2.y = dot(r7.xyzw, r3.xyzw);
  r0.z = r2.x + r2.y;
  r5.w = r8.z;
  r1.xyz = cb0[113].xyz + r8.xyz;
  r2.z = dot(r7.xyzw, r5.xyzw);
  r0.z = r2.z + r0.z;
  r0.z = cb0[139].z + r0.z;
  r0.z = cb2[32].w * r0.z;
  r0.xy = r0.zz * float2(0.100000001,0.100000001) + r0.xy;
  r0.x = t2.SampleLevel(s0_s, r0.xy, -1).x;
  r0.x = r0.x * 2 + -1;
  r0.xyz = cb2[33].yzw * r0.xxx;
  r0.xyz = cb2[34].xxx * r0.xyz;
  r0.w = 1;
  r6.x = dot(r0.xyzw, r4.xyzw);
  r6.y = dot(r0.xyzw, r3.xyzw);
  r6.z = dot(r0.xyzw, r5.xyzw);
  r0.xyz = r6.xyz + -r2.xyz;
  r4.w = r1.x;
  r2.x = dot(v0.xyzw, r4.xyzw);
  r3.w = r1.y;
  r5.w = r1.z;
  r2.z = dot(v0.xyzw, r5.xyzw);
  r2.y = dot(v0.xyzw, r3.xyzw);
  r0.xyz = r2.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  return;
}