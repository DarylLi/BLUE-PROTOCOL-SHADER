// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.y = mad((int)v1.x, 36, 2);
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.z = r0.y;
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r4.x = t0[r2.y].val[0/4];
  r4.y = t0[r2.y].val[0/4+1];
  r4.z = t0[r2.y].val[0/4+2];
  r1.y = r2.x;
  r1.x = r3.x;
  r1.y = dot(cb2[2].xyz, r1.xyz);
  r5.y = r2.z;
  r5.z = r0.z;
  r5.x = r3.y;
  r1.z = dot(cb2[2].xyz, r5.xyz);
  r5.y = r2.w;
  r5.z = r0.w;
  r5.x = r3.z;
  r1.x = dot(cb2[2].xyz, r5.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = sqrt(r0.x);
  r1.xyz = r1.xyz / r0.xxx;
  r5.xyz = v0.yyy * r2.xzw;
  r5.xyz = r3.xyz * v0.xxx + r5.xyz;
  r5.xyz = r0.yzw * v0.zzz + r5.xyz;
  r6.xyz = cb0[70].xyz + r4.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r6.xyz = -cb0[70].xyz + r5.xyz;
  r7.xyz = r6.xyz + -r4.xyz;
  r0.x = dot(r1.yzx, r7.xyz);
  r4.xyz = r1.yzx * r0.xxx + r4.xyz;
  r7.xyz = r6.xyz + -r4.xyz;
  r8.xyz = r7.yzx * r1.xyz;
  r1.xyz = r1.zxy * r7.zxy + -r8.xyz;
  r8.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,5,10,11));
  r9.x = t0[r8.y].val[0/4];
  r9.y = t0[r8.y].val[0/4+1];
  r9.z = t0[r8.y].val[0/4+2];
  r0.x = abs(r9.x) + abs(r9.y);
  r0.x = r0.x + abs(r9.z);
  r0.x = frac(r0.x);
  r1.w = (int)v2.x + asint(cb1[0].w);
  r2.y = (int)r1.w & asint(cb1[0].x);
  r9.xyzw = t3.Load(r2.y).xyzw;
  r2.y = cb0[142].z * cb2[8].x + r9.w;
  r2.y = r0.x * 0.5 + r2.y;
  r2.y = 6.28318548 * r2.y;
  r2.y = sin(r2.y);
  r3.w = cb2[8].z * r9.z;
  r2.y = r3.w * r2.y;
  r2.y = 6.28318548 * r2.y;
  sincos(r2.y, r10.x, r11.x);
  r1.xyz = r10.xxx * r1.xyz;
  r1.xyz = r7.xyz * r11.xxx + r1.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r1.xyz = r1.xyz + -r6.xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r4.xyzw = cb0[1].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb0[0].xyzw + r4.xyzw;
  r4.xyzw = r1.zzzz * cb0[2].xyzw + r4.xyzw;
  r4.xyzw = cb0[3].xyzw + r4.xyzw;
  r1.x = 0.00100000005 * r4.w;
  r1.y = cmp(1 < asint(cb0[135].x));
  r1.x = r1.y ? r1.x : 0;
  o0.z = r4.z + r1.x;
  o0.xyw = r4.xyw;
  o1.xyzw = r4.xyzw;
  r1.xy = mad((int2)v1.xx, int2(36,36), int2(12,13));
  r4.x = t0[r1.y].val[0/4];
  r4.y = t0[r1.y].val[0/4+1];
  r4.z = t0[r1.y].val[0/4+2];
  r1.x = t0[r1.x].val[0/4];
  r1.y = t0[r1.x].val[0/4+1];
  r1.z = t0[r1.x].val[0/4+2];
  r5.xyz = cb0[113].xyz + r4.xyz;
  r6.w = r5.x;
  r7.x = t0[r8.z].val[0/4+1];
  r7.y = t0[r8.z].val[0/4];
  r7.z = t0[r8.z].val[0/4+2];
  r6.x = r7.y;
  r10.x = t0[r8.w].val[0/4];
  r10.y = t0[r8.w].val[0/4+2];
  r10.z = t0[r8.w].val[0/4+1];
  r8.x = t0[r8.x].val[0/4];
  r8.y = t0[r8.x].val[0/4+1];
  r8.z = t0[r8.x].val[0/4+2];
  r8.w = t0[r8.x].val[0/4+3];
  r6.y = r10.x;
  r6.z = r1.x;
  r11.x = dot(v0.xyzw, r6.xyzw);
  r6.y = dot(cb2[2].xyz, r6.xyz);
  r10.x = r7.z;
  r7.y = r10.z;
  r7.z = r1.y;
  r10.z = r1.z;
  r7.w = r5.y;
  r10.w = r5.z;
  r11.z = dot(v0.xyzw, r10.xyzw);
  r6.x = dot(cb2[2].xyz, r10.xyz);
  r11.y = dot(v0.xyzw, r7.xyzw);
  r6.z = dot(cb2[2].xyz, r7.xyz);
  r1.xyz = -cb0[113].xyz + r11.xyz;
  r5.xyz = r1.xyz + -r4.xyz;
  r2.y = dot(r6.xyz, r6.xyz);
  r2.y = sqrt(r2.y);
  r6.xyz = r6.xyz / r2.yyy;
  r2.y = dot(r6.yzx, r5.xyz);
  r4.xyz = r6.yzx * r2.yyy + r4.xyz;
  r5.xyz = -r4.xyz + r1.xyz;
  r7.xyz = r6.xyz * r5.yzx;
  r6.xyz = r6.zxy * r5.zxy + -r7.xyz;
  r2.y = cb0[139].z * cb2[8].x + r9.w;
  o5.xyzw = r9.zyxw;
  r0.x = r0.x * 0.5 + r2.y;
  r0.x = 6.28318548 * r0.x;
  r0.x = sin(r0.x);
  r0.x = r0.x * r3.w;
  r0.x = 6.28318548 * r0.x;
  sincos(r0.x, r0.x, r7.x);
  r6.xyz = r6.xyz * r0.xxx;
  r5.xyz = r5.xyz * r7.xxx + r6.xyz;
  r4.xyz = r5.xyz + r4.xyz;
  r1.xyz = r4.xyz + -r1.xyz;
  r1.xyz = r11.xyz + r1.xyz;
  r4.xyzw = cb0[92].xyzw * r1.yyyy;
  r4.xyzw = r1.xxxx * cb0[91].xyzw + r4.xyzw;
  r4.xyzw = r1.zzzz * cb0[93].xyzw + r4.xyzw;
  o2.xyzw = cb0[94].xyzw + r4.xyzw;
  r1.xyz = r8.yyy * r2.xzw;
  r0.x = (uint)r1.w << 1;
  r2.xyz = t2.Load(r0.x).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r1.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.w = (int)r1.w * asint(cb1[0].y);
  r4.xy = t1.Load(r1.w).xy;
  o6.xy = r4.xy;
  r4.xyzw = t2.Load(r0.x).xyzw;
  r5.xyz = r4.yzx * r2.xyz;
  r2.xyz = r4.xyz * r2.yzx + -r5.xyz;
  r2.xyz = r2.xyz * r4.www;
  r5.xyz = r2.xyz * r4.yzx;
  r2.xyz = r2.zxy * r4.zxy + -r5.xyz;
  r2.xyz = r2.xyz * r4.www;
  r5.xyz = r2.yyy * r1.xyz;
  r1.xyz = r4.yyy * r1.xyz;
  r3.xyz = r8.xxx * r3.xyz;
  r2.xyw = r2.xxx * r3.xyz + r5.xyz;
  r1.xyz = r4.xxx * r3.xyz + r1.xyz;
  r0.xyz = r8.zzz * r0.yzw;
  o4.w = r4.w * r8.w;
  o4.xyz = r4.zzz * r0.xyz + r1.xyz;
  o3.xyz = r2.zzz * r0.xyz + r2.xyw;
  o3.w = 0;
  o6.zw = float2(0,0);
  o7.x = v1.x;
  return;
}