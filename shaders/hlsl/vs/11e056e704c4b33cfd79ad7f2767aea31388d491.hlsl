// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[41];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out float4 o5 : TEXCOORD4,
  out uint o6 : PRIMITIVE_ID0,
  out uint p6 : LIGHTMAP_ID0,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD7,
  out float4 o9 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.w = 0;
  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t3.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t3.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t0[r2.y].val[0/4];
  r3.y = t0[r2.y].val[0/4+1];
  r3.z = t0[r2.y].val[0/4+2];
  r2.y = t0[r2.z].val[0/4];
  r2.z = t0[r2.z].val[0/4+1];
  r2.w = t0[r2.z].val[0/4+2];
  r2.yzw = cb0[70].xyz + r2.yzw;
  r4.xyz = mad((int3)v1.xxx, int3(36,36,36), int3(4,18,24));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r5.w = t0[r4.x].val[0/4+3];
  r6.xyz = r5.yyy * r3.xyz;
  r7.xyz = r6.xyz * r0.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r8.x = t0[r2.x].val[0/4];
  r8.y = t0[r2.x].val[0/4+1];
  r8.z = t0[r2.x].val[0/4+2];
  r0.z = mad((int)v1.x, 36, 2);
  r9.x = t0[r0.z].val[0/4];
  r9.y = t0[r0.z].val[0/4+1];
  r9.z = t0[r0.z].val[0/4+2];
  r10.xyz = r8.xyz * r5.xxx;
  r7.xyz = r0.yyy * r10.xyz + r7.xyz;
  r6.xyz = r1.xxx * r10.xyz + r6.xyz;
  r5.xyz = r9.xyz * r5.zzz;
  o1.w = r5.w * r1.w;
  o1.xyz = r1.zzz * r5.xyz + r6.xyz;
  o0.xyz = r0.www * r5.xyz + r7.xyz;
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t4.Load(r0.y).xyzw;
  o2.xyzw = r1.zyxw;
  r0.y = asint(cb1[0].y) + -1;
  r0.yz = min(uint2(0,0), (uint2)r0.yy);
  r0.yz = mad(asint(cb1[0].yy), (int2)r0.xx, (int2)r0.yz);
  r0.yw = t2.Load(r0.y).xy;
  r1.xy = t2.Load(r0.z).xy;
  o3.zw = r0.yw;
  r0.y = (int)r0.x * asint(cb1[0].y);
  r0.x = mad(asint(cb1[0].y), (int)r0.x, asint(cb1[0].z));
  r0.xz = t2.Load(r0.x).xy;
  r0.yw = t2.Load(r0.y).xy;
  o3.xy = r0.yw;
  o4.xy = r1.xy;
  r1.xy = r1.xy + -r0.yw;
  r0.yw = cb3[27].ww * r1.xy + r0.yw;
  r0.yw = cb3[28].xx * r0.yw;
  o4.zw = float2(0,0);
  r1.x = t0[r4.z].val[12/4];
  r4.x = t0[r4.y].val[0/4];
  r4.y = t0[r4.y].val[0/4+1];
  r4.z = t0[r4.y].val[0/4+2];
  r1.x = (int)r1.x + asint(cb1[1].y);
  r1.y = mad((int)r1.x, 15, 2);
  p6.x = r1.x;
  r5.x = t1[r1.y].val[0/4];
  r5.y = t1[r1.y].val[0/4+1];
  r5.z = t1[r1.y].val[0/4+2];
  r5.w = t1[r1.y].val[0/4+3];
  o5.xy = r0.xz * r5.xy + r5.zw;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  r0.x = r4.x + r4.y;
  r0.x = r0.x + r4.z;
  r0.x = frac(r0.x);
  r0.x = cb0[142].z + r0.x;
  r0.x = cb2[2].x * r0.x;
  r0.x = cb3[26].z * r0.x;
  r0.xy = r0.xx * cb3[27].yz + r0.yw;
  r0.xy = t5.SampleLevel(s0_s, r0.xy, -1).xy;
  r4.xy = r0.xy + r0.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r0.xyz = float3(-1,-1,-1) + r4.xyz;
  r0.xyz = r1.zzz * r0.xyz + float3(0,0,1);
  r1.xyw = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb3[28].yyy * r1.xyw + r0.xyz;
  r0.xyz = cb3[39].yzw * r0.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r1.xyw = v0.yyy * r3.xyz;
  r1.xyw = r8.xyz * v0.xxx + r1.xyw;
  r2.x = dot(-r8.xyz, -r8.xyz);
  r2.x = sqrt(r2.x);
  r1.xyw = r9.xyz * v0.zzz + r1.xyw;
  r3.x = dot(-r9.xyz, -r9.xyz);
  r3.x = sqrt(r3.x);
  r1.xyw = r1.xyw + r2.yzw;
  r0.w = sqrt(r0.w);
  r0.w = r2.x + r0.w;
  r0.w = r0.w + r3.x;
  r0.w = r0.w * 0.333333343 + -1;
  r0.w = cb3[40].x * r0.w + 1;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = cb3[40].yyy * r0.xyz;
  r0.xyz = r0.xyz * r1.zzz + r1.xyw;
  o8.xyz = r1.xyw;
  o7.xyz = r0.xyz;
  o7.w = 1;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  o9.xyzw = cb0[3].xyzw + r0.xyzw;
  return;
}