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
  float4 cb3[25];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
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
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD0,
  out uint o4 : PRIMITIVE_ID0,
  out float4 o5 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+2];
  r0.w = t0[r0.y].val[0/4+1];
  r1.xyz = cb0[70].xyz + r1.xyz;
  r2.xyz = v0.yyy * r0.ywz;
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r4.x = t0[r0.x].val[0/4];
  r4.y = t0[r0.x].val[0/4+1];
  r4.z = t0[r0.x].val[0/4+2];
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r5.xyz = cb2[9].xyz + -r2.xyz;
  r2.xyz = cb2[10].xyz + -r2.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = r0.x * 0.333333343 + -50;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r2.x = -r1.w * 0.00666666683 + 1;
  r1.w = r1.w * 0.333333343 + -50;
  r2.x = max(0, r2.x);
  r2.x = r2.x * 50 + -50;
  r2.x = saturate(cb2[2].y * 51.5099983 + r2.x);
  r2.yz = float2(1,1) + -cb2[0].yz;
  r1.w = saturate(r2.y * 51.5099983 + r1.w);
  r0.x = saturate(r2.z * 51 + r0.x);
  r1.w = r1.w * r2.x;
  r0.x = r1.w * r0.x;
  r1.w = cb3[24].x + -cb3[24].y;
  r2.x = (int)v2.x + asint(cb1[0].w);
  r2.y = (int)r2.x * asint(cb1[0].y);
  r2.yz = t1.Load(r2.y).xy;
  r5.xy = cb3[12].xy * r2.yz;
  o3.xy = r2.yz;
  r2.yz = cb0[142].zz * cb3[18].xy + r5.xy;
  r2.y = t3.SampleLevel(s0_s, r2.yz, -1).x;
  r1.w = r2.y * r1.w + cb3[24].y;
  r2.z = mad((int)v1.x, 36, 4);
  r5.x = t0[r2.z].val[0/4];
  r5.y = t0[r2.z].val[0/4+1];
  r5.z = t0[r2.z].val[0/4+2];
  r5.w = t0[r2.z].val[0/4+3];
  r6.xyz = r5.zzz * r4.xyz;
  r7.xyz = r5.xxx * r3.xyz;
  r5.xyz = r5.yyy * r0.ywz;
  bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.z = (((uint)r2.x << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  r8.xyzw = t2.Load(r2.z).xyzw;
  r9.xyz = r8.yyy * r5.xyz;
  r9.xyz = r8.xxx * r7.xyz + r9.xyz;
  r9.xyz = r8.zzz * r6.xyz + r9.xyz;
  r10.xyz = r9.xyz * r1.www;
  o2.xyz = r9.xyz;
  r9.y = r0.y;
  r9.z = r4.x;
  r1.w = asint(cb1[0].y) + -1;
  r11.xyz = min(uint3(1,2,3), (uint3)r1.www);
  r11.xyz = mad(asint(cb1[0].yyy), (int3)r2.xxx, (int3)r11.xyz);
  r1.w = (uint)r2.x << 1;
  r2.xzw = t2.Load(r1.w).xyz;
  r12.xy = t1.Load(r11.x).xy;
  r9.x = r3.x;
  r3.xw = t1.Load(r11.y).xy;
  r11.yz = t1.Load(r11.z).xy;
  r12.z = r3.x;
  r11.x = r3.w;
  r13.x = dot(r12.xyz, r9.xyz);
  r9.x = dot(r11.xyz, r9.xyz);
  r14.y = r0.w;
  r14.z = r4.y;
  r0.w = r4.z;
  r14.x = r3.y;
  r0.y = r3.z;
  r13.y = dot(r12.xyz, r14.xyz);
  r9.y = dot(r11.xyz, r14.xyz);
  r9.z = dot(r11.xyz, r0.yzw);
  r13.z = dot(r12.xyz, r0.yzw);
  r0.yzw = r13.xyz * cb3[24].zzz + -r10.xyz;
  r0.yzw = r2.yyy * r0.yzw + r10.xyz;
  r0.yzw = r0.yzw + -r9.xyz;
  r0.xyz = r0.xxx * r0.yzw + r9.xyz;
  r3.xyz = r9.xyz + -r0.xyz;
  r0.xyz = cb3[24].www * r3.xyz + r0.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o5.xyz = r0.xyz;
  r0.xyzw = cb0[3].xyzw + r1.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  r0.xyz = r8.yzx * r2.xzw;
  r0.xyz = r8.xyz * r2.zwx + -r0.xyz;
  r0.xyz = r0.xyz * r8.www;
  r1.xyz = r0.xyz * r8.yzx;
  r0.xyz = r0.zxy * r8.zxy + -r1.xyz;
  r0.xyz = r0.xyz * r8.www;
  o2.w = r8.w * r5.w;
  r1.xyz = r0.yyy * r5.xyz;
  r0.xyw = r0.xxx * r7.xyz + r1.xyz;
  o1.xyz = r0.zzz * r6.xyz + r0.xyw;
  o1.w = 0;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  o5.w = 1;
  return;
}