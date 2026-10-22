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
  float4 cb4[25];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[11];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[29];
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
  out float o4 : TEXCOORD6,
  out float3 p4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
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
  r1.xyzw = t2.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = mad((int)v1.x, 36, 4);
  r2.x = t0[r2.x].val[0/4];
  r2.y = t0[r2.x].val[0/4+1];
  r2.z = t0[r2.x].val[0/4+2];
  r2.w = t0[r2.x].val[0/4+3];
  r3.x = (int)v1.x * 36;
  r3.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t0[r3.y].val[0/4];
  r4.y = t0[r3.y].val[0/4+1];
  r4.z = t0[r3.y].val[0/4+2];
  r3.y = t0[r3.z].val[0/4];
  r3.z = t0[r3.z].val[0/4+1];
  r3.w = t0[r3.z].val[0/4+2];
  r3.yzw = cb0[70].xyz + r3.yzw;
  r5.xyz = r4.xyz * r2.yyy;
  r6.xyz = r5.xyz * r0.zzz;
  r5.xyz = r5.xyz * r1.yyy;
  r7.x = t0[r3.x].val[0/4+2];
  r7.z = t0[r3.x].val[0/4];
  r7.w = t0[r3.x].val[0/4+1];
  r0.z = mad((int)v1.x, 36, 2);
  r8.x = t0[r0.z].val[0/4];
  r8.y = t0[r0.z].val[0/4+1];
  r8.z = t0[r0.z].val[0/4+2];
  r9.xyz = r7.zwx * r2.xxx;
  r6.xyz = r0.yyy * r9.xyz + r6.xyz;
  r5.xyz = r1.xxx * r9.xyz + r5.xyz;
  r2.xyz = r8.xyz * r2.zzz;
  o1.w = r2.w * r1.w;
  r1.xyz = r1.zzz * r2.xyz + r5.xyz;
  o0.xyz = r0.www * r2.xyz + r6.xyz;
  o1.xyz = r1.xyz;
  r0.y = (int)r0.x * asint(cb2[0].y);
  r0.yz = t1.Load(r0.y).xy;
  o2.xy = r0.yz;
  r0.yz = cb4[12].xy * r0.yz;
  r0.yz = cb0[142].zz * cb4[18].xy + r0.yz;
  r0.y = t3.SampleLevel(s0_s, r0.yz, -1).x;
  o2.zw = float2(0,0);
  o3.x = v1.x;
  r0.z = cb4[24].x + -cb4[24].y;
  r0.z = r0.y * r0.z + cb4[24].y;
  r2.xyz = r1.xyz * r0.zzz;
  r0.z = asint(cb2[0].y) + -1;
  r5.xyz = min(uint3(1,2,3), (uint3)r0.zzz);
  r0.xzw = mad(asint(cb2[0].yyy), (int3)r0.xxx, (int3)r5.xyz);
  r5.xy = t1.Load(r0.x).xy;
  r0.xz = t1.Load(r0.z).xy;
  r6.yz = t1.Load(r0.w).xy;
  r5.z = r0.x;
  r6.x = r0.z;
  r9.y = r4.x;
  r9.z = r8.x;
  r9.x = r7.z;
  r10.y = dot(r5.xyz, r9.xyz);
  r9.y = dot(r6.xyz, r9.xyz);
  r11.y = r4.y;
  r11.z = r8.y;
  r11.x = r7.w;
  r10.z = dot(r5.xyz, r11.xyz);
  r9.z = dot(r6.xyz, r11.xyz);
  r7.y = r4.z;
  r0.xzw = v0.yyy * r4.xyz;
  r0.xzw = r7.zwx * v0.xxx + r0.xzw;
  r0.xzw = r8.xyz * v0.zzz + r0.xzw;
  r7.z = r8.z;
  r0.xzw = r0.xzw + r3.yzw;
  r10.w = dot(r5.xyz, r7.xyz);
  r9.w = dot(r6.xyz, r7.xyz);
  r3.xyz = r10.yzw * cb4[24].zzz + -r2.xyz;
  r2.xyz = r0.yyy * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r9.yzw;
  r3.xyz = -cb0[70].xyz + r0.xzw;
  r4.xyz = cb3[9].xyz + -r3.xyz;
  r3.xyz = cb3[10].xyz + -r3.xyz;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y * 0.333333343 + -50;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r2.w = -r1.w * 0.00666666683 + 1;
  r1.w = r1.w * 0.333333343 + -50;
  r2.w = max(0, r2.w);
  r2.w = r2.w * 50 + -50;
  r2.w = saturate(cb3[2].y * 51.5099983 + r2.w);
  r3.xy = float2(1,1) + -cb3[0].yz;
  r1.w = saturate(r3.x * 51.5099983 + r1.w);
  r0.y = saturate(r3.y * 51 + r0.y);
  r1.w = r1.w * r2.w;
  r0.y = r1.w * r0.y;
  r2.xyz = r0.yyy * r2.xyz + r9.yzw;
  r3.xyz = r9.yzw + -r2.xyz;
  r2.xyz = cb4[24].www * r3.xyz + r2.xyz;
  r0.xyz = r2.xyz + r0.xzw;
  p4.xyz = r0.xyz;
  o4.x = 0;
  r2.x = cb1[23].z;
  r2.y = cb1[24].z;
  r2.z = cb1[25].z;
  r0.w = dot(r2.xyz, r1.xyz);
  r1.x = -abs(r0.w) * abs(r0.w) + 1;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / abs(r0.w);
  r0.w = cmp(0 < abs(r0.w));
  r0.w = r0.w ? r1.x : cb1[27].z;
  r0.w = max(0, r0.w);
  r0.w = min(cb1[27].z, r0.w);
  r0.w = cb1[27].y * r0.w + cb1[27].x;
  r1.xyzw = cb1[20].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[19].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[21].xyzw + r1.xyzw;
  r1.xyzw = cb1[22].xyzw + r1.xyzw;
  r0.x = cmp(r1.z < 0);
  r0.y = cmp(0 < cb1[28].x);
  r0.x = r0.x ? r0.y : 0;
  r0.xy = r0.xx ? float2(9.99999997e-007,1) : r1.zw;
  o5.xy = r1.xy;
  r0.x = r0.x * cb1[27].w + r0.w;
  o5.z = r0.x * r0.y;
  o5.w = r0.y;
  return;
}