// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

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
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : COLOR0,
  out float4 o6 : TEXCOORD0,
  out uint o7 : PRIMITIVE_ID0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb1[0].y) + -1;
  r0.x = min(1, (uint)r0.x);
  r0.y = (int)v2.x + asint(cb1[0].w);
  r0.x = mad(asint(cb1[0].y), (int)r0.y, (int)r0.x);
  r0.xz = t1.Load(r0.x).xy;
  r1.xy = cb2[33].xx * r0.xz;
  o6.zw = r0.xz;
  r2.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,18,10,11));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r0.x = r3.x + r3.y;
  r0.x = r0.x + r3.z;
  r0.x = cb0[142].z + r0.x;
  r0.x = cb2[32].w * r0.x;
  r0.xz = r0.xx * float2(0.100000001,0.100000001) + r1.xy;
  r0.x = t4.SampleLevel(s0_s, r0.xz, -1).x;
  r0.x = r0.x * 2 + -1;
  r0.xzw = cb2[33].yzw * r0.xxx;
  r4.xyz = cb2[34].xxx * r0.xzw;
  r0.x = (int)v1.x * 36;
  r0.z = mad((int)v1.x, 36, 2);
  r5.x = t0[r0.z].val[0/4];
  r5.y = t0[r0.z].val[0/4+1];
  r5.z = t0[r0.z].val[0/4+2];
  r6.z = r5.x;
  r0.zw = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r7.x = t0[r0.x].val[0/4];
  r7.y = t0[r0.x].val[0/4+1];
  r7.z = t0[r0.x].val[0/4+2];
  r8.x = t0[r0.w].val[0/4];
  r8.y = t0[r0.w].val[0/4+1];
  r8.w = t0[r0.w].val[0/4+2];
  r0.x = t0[r0.z].val[0/4];
  r0.z = t0[r0.z].val[0/4+1];
  r0.w = t0[r0.z].val[0/4+2];
  r6.w = r8.x;
  r4.w = 1;
  r6.y = r0.x;
  r6.x = r7.x;
  r6.x = dot(r4.xyzw, r6.xyzw);
  r9.w = r8.y;
  r9.y = r0.z;
  r9.z = r5.y;
  r9.x = r7.y;
  r6.y = dot(r4.xyzw, r9.xyzw);
  r9.xyz = cb0[70].xyz + r8.xyw;
  r8.y = r0.w;
  r8.z = r5.z;
  r8.x = r7.z;
  r6.z = dot(r4.xyzw, r8.xyzw);
  r4.xyz = r6.xyz + -r3.xyz;
  r6.xyz = v0.yyy * r0.xzw;
  r6.xyz = r7.xyz * v0.xxx + r6.xyz;
  r6.xyz = r5.xyz * v0.zzz + r6.xyz;
  r6.xyz = r6.xyz + r9.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r6.xyzw = cb0[1].xyzw * r4.yyyy;
  r6.xyzw = r4.xxxx * cb0[0].xyzw + r6.xyzw;
  r4.xyzw = r4.zzzz * cb0[2].xyzw + r6.xyzw;
  r4.xyzw = cb0[3].xyzw + r4.xyzw;
  r1.z = 0.00100000005 * r4.w;
  r1.w = cmp(1 < asint(cb0[135].x));
  r1.z = r1.w ? r1.z : 0;
  o0.z = r4.z + r1.z;
  o0.xyw = r4.xyw;
  o1.xyzw = r4.xyzw;
  r4.x = t0[r2.z].val[0/4+1];
  r4.y = t0[r2.z].val[0/4];
  r4.z = t0[r2.z].val[0/4+2];
  r6.x = r4.y;
  r8.x = t0[r2.w].val[0/4];
  r8.y = t0[r2.w].val[0/4+2];
  r8.z = t0[r2.w].val[0/4+1];
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r2.w = t0[r2.x].val[0/4+3];
  r6.y = r8.x;
  r9.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(12,13,6,7));
  r10.x = t0[r9.x].val[0/4];
  r10.y = t0[r9.x].val[0/4+1];
  r10.z = t0[r9.x].val[0/4+2];
  r6.z = r10.x;
  r11.x = t0[r9.z].val[0/4];
  r11.y = t0[r9.z].val[0/4+1];
  r11.z = t0[r9.z].val[0/4+2];
  r11.w = t0[r9.z].val[0/4+3];
  r12.x = r11.x;
  r13.x = t0[r9.w].val[0/4];
  r13.y = t0[r9.w].val[0/4+2];
  r13.z = t0[r9.w].val[0/4+1];
  r13.w = t0[r9.w].val[0/4+3];
  r9.x = t0[r9.y].val[0/4];
  r9.y = t0[r9.y].val[0/4+1];
  r9.z = t0[r9.y].val[0/4+2];
  r12.y = r13.x;
  r1.zw = mad((int2)v1.xx, int2(36,36), int2(8,9));
  r14.x = t0[r1.z].val[0/4];
  r14.y = t0[r1.z].val[0/4+1];
  r14.z = t0[r1.z].val[0/4+3];
  r14.w = t0[r1.z].val[0/4+2];
  r15.x = t0[r1.w].val[0/4];
  r15.y = t0[r1.w].val[0/4+1];
  r15.z = t0[r1.w].val[0/4+2];
  r15.w = t0[r1.w].val[0/4+3];
  r12.z = r14.x;
  r12.w = r15.x;
  r3.w = 1;
  r12.x = dot(r3.xyzw, r12.xyzw);
  r16.x = r11.y;
  r16.y = r13.z;
  r16.z = r14.y;
  r16.w = r15.y;
  r12.y = dot(r3.xyzw, r16.xyzw);
  r13.x = r11.z;
  r14.x = r11.w;
  r14.y = r13.w;
  r13.z = r14.w;
  r13.w = r15.z;
  r14.w = r15.w;
  r12.w = dot(r3.xyzw, r14.xyzw);
  r12.z = dot(r3.xyzw, r13.xyzw);
  r6.w = r9.x;
  r3.x = dot(r12.xyzw, r6.xyzw);
  r8.x = r4.z;
  r4.y = r8.z;
  r4.z = r10.y;
  r8.z = r10.z;
  r4.w = r9.y;
  r3.y = dot(r12.xyzw, r4.xyzw);
  r1.z = r3.x + r3.y;
  r8.w = r9.z;
  r9.xyz = cb0[113].xyz + r9.xyz;
  r3.z = dot(r12.xyzw, r8.xyzw);
  r1.z = r3.z + r1.z;
  r1.z = cb0[139].z + r1.z;
  r1.z = cb2[32].w * r1.z;
  r1.xy = r1.zz * float2(0.100000001,0.100000001) + r1.xy;
  r1.x = t4.SampleLevel(s0_s, r1.xy, -1).x;
  r1.x = r1.x * 2 + -1;
  r1.xyz = cb2[33].yzw * r1.xxx;
  r1.xyz = cb2[34].xxx * r1.xyz;
  r1.w = 1;
  r10.x = dot(r1.xyzw, r6.xyzw);
  r10.y = dot(r1.xyzw, r4.xyzw);
  r10.z = dot(r1.xyzw, r8.xyzw);
  r1.xyz = r10.xyz + -r3.xyz;
  r6.w = r9.x;
  r3.x = dot(v0.xyzw, r6.xyzw);
  r4.w = r9.y;
  r8.w = r9.z;
  r3.z = dot(v0.xyzw, r8.xyzw);
  r3.y = dot(v0.xyzw, r4.xyzw);
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyzw = cb0[92].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb0[91].xyzw + r3.xyzw;
  r1.xyzw = r1.zzzz * cb0[93].xyzw + r3.xyzw;
  o2.xyzw = cb0[94].xyzw + r1.xyzw;
  r0.xzw = r2.yyy * r0.xzw;
  r1.x = (uint)r0.y << 1;
  r1.xyz = t2.Load(r1.x).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r0.y << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.xyzw = t2.Load(r1.w).xyzw;
  r4.xyz = r3.yzx * r1.xyz;
  r1.xyz = r3.xyz * r1.yzx + -r4.xyz;
  r1.xyz = r1.xyz * r3.www;
  r4.xyz = r1.xyz * r3.yzx;
  r1.xyz = r1.zxy * r3.zxy + -r4.xyz;
  r1.xyz = r1.xyz * r3.www;
  r4.xyz = r1.yyy * r0.xzw;
  r0.xzw = r3.yyy * r0.xzw;
  r6.xyz = r7.xyz * r2.xxx;
  r1.xyw = r1.xxx * r6.xyz + r4.xyz;
  r0.xzw = r3.xxx * r6.xyz + r0.xzw;
  r2.xyz = r5.xyz * r2.zzz;
  o4.w = r3.w * r2.w;
  o4.xyz = r3.zzz * r2.xyz + r0.xzw;
  o3.xyz = r1.zzz * r2.xyz + r1.xyw;
  o3.w = 0;
  r0.x = (int)r0.y & asint(cb1[0].x);
  r0.y = (int)r0.y * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o6.xy = r0.yz;
  r0.xyzw = t3.Load(r0.x).xyzw;
  o5.xyzw = r0.zyxw;
  o7.x = v1.x;
  return;
}