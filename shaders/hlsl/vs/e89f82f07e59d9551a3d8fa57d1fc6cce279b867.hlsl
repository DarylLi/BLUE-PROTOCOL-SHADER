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

cbuffer cb3 : register(b3)
{
  float4 cb3[32];
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
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD0,
  out float4 o5 : TEXCOORD1,
  out uint o6 : PRIMITIVE_ID0,
  out float4 o7 : TEXCOORD6,
  out float3 o8 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = mad((int2)v1.xx, int2(36,36), int2(4,18));
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r1.x = t0[r0.x].val[0/4];
  r1.y = t0[r0.x].val[0/4+1];
  r1.z = t0[r0.x].val[0/4+2];
  r1.w = t0[r0.x].val[0/4+3];
  r0.x = r0.y + r0.z;
  r0.x = r0.x + r0.w;
  r0.x = frac(r0.x);
  r0.x = cb0[142].z + r0.x;
  r0.x = cb2[2].x * r0.x;
  r0.x = cb3[21].w * r0.x;
  r0.y = asint(cb1[0].y) + -1;
  r0.yz = min(uint2(0,0), (uint2)r0.yy);
  r0.w = (int)v2.x + asint(cb1[0].w);
  r0.yz = mad(asint(cb1[0].yy), (int2)r0.ww, (int2)r0.yz);
  r2.xy = t1.Load(r0.z).xy;
  r0.yz = t1.Load(r0.y).xy;
  o4.zw = r0.yz;
  r0.y = (int)r0.w * asint(cb1[0].y);
  r0.yz = t1.Load(r0.y).xy;
  r2.zw = r2.xy + -r0.yz;
  o5.xy = r2.xy;
  r2.xy = cb3[23].xx * r2.zw + r0.yz;
  o4.xy = r0.yz;
  r0.yz = cb3[23].yy * r2.xy;
  r0.xy = r0.xx * cb3[22].zw + r0.yz;
  r0.xy = t4.SampleLevel(s0_s, r0.xy, -1).xy;
  r2.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = r0.xy + r0.xy;
  r2.x = dot(r2.xy, r2.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r0.z = sqrt(r2.x);
  r0.xyz = float3(-1,-1,-1) + r0.xyz;
  r2.x = (int)r0.w & asint(cb1[0].x);
  r2.xyzw = t3.Load(r2.x).xyzw;
  r0.xyz = r2.zzz * r0.xyz + float3(0,0,1);
  r3.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb3[23].zzz * r3.xyz + r0.xyz;
  r3.x = cb3[30].w * r0.x;
  r3.yz = cb3[31].xy * r0.yz;
  r0.x = (int)v1.x * 36;
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r3.w = dot(-r0.xyz, -r0.xyz);
  r3.w = sqrt(r3.w);
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.z = mad((int)v1.x, 36, 2);
  r5.x = t0[r4.z].val[0/4];
  r5.y = t0[r4.z].val[0/4+1];
  r5.z = t0[r4.z].val[0/4+2];
  r4.x = t0[r4.x].val[0/4];
  r4.z = t0[r4.x].val[0/4+1];
  r4.w = t0[r4.x].val[0/4+2];
  r6.x = t0[r4.y].val[0/4];
  r6.y = t0[r4.y].val[0/4+1];
  r6.z = t0[r4.y].val[0/4+2];
  r6.xyz = cb0[70].xyz + r6.xyz;
  r4.y = dot(-r4.xzw, -r4.xzw);
  r4.y = sqrt(r4.y);
  r3.w = r4.y + r3.w;
  r4.y = dot(-r5.xyz, -r5.xyz);
  r4.y = sqrt(r4.y);
  r3.w = r4.y + r3.w;
  r3.w = r3.w * 0.333333343 + -1;
  r3.w = cb3[31].z * r3.w + 1;
  r3.xyz = r3.xyz * r3.www;
  r3.xyz = cb3[31].www * r3.xyz;
  r7.xyz = v0.yyy * r4.xzw;
  r4.xyz = r4.xzw * r1.yyy;
  r7.xyz = r0.xyz * v0.xxx + r7.xyz;
  r0.xyz = r0.xyz * r1.xxx;
  r7.xyz = r5.xyz * v0.zzz + r7.xyz;
  r1.xyz = r5.xyz * r1.zzz;
  r5.xyz = r7.xyz + r6.xyz;
  r3.xyz = r3.xyz * r2.zzz + r5.xyz;
  o8.xyz = r5.xyz;
  o3.xyzw = r2.zyxw;
  r2.xyzw = cb0[1].xyzw * r3.yyyy;
  r2.xyzw = r3.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r3.zzzz * cb0[2].xyzw + r2.xyzw;
  o7.xyz = r3.xyz;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  o0.xy = cb0[364].xy * r2.zz + r2.xy;
  o0.zw = r2.zw;
  r2.x = (uint)r0.w << 1;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.xyzw = t2.Load(r0.w).xyzw;
  r2.xyz = t2.Load(r2.x).xyz;
  r5.xyz = r3.yzx * r2.xyz;
  r2.xyz = r3.xyz * r2.yzx + -r5.xyz;
  r2.xyz = r2.xyz * r3.www;
  r5.xyz = r2.xyz * r3.yzx;
  r2.xyz = r2.zxy * r3.zxy + -r5.xyz;
  r2.xyz = r2.xyz * r3.www;
  r5.xyz = r2.yyy * r4.xyz;
  r4.xyz = r3.yyy * r4.xyz;
  r4.xyz = r3.xxx * r0.xyz + r4.xyz;
  r0.xyz = r2.xxx * r0.xyz + r5.xyz;
  o1.xyz = r2.zzz * r1.xyz + r0.xyz;
  o2.xyz = r3.zzz * r1.xyz + r4.xyz;
  o2.w = r3.w * r1.w;
  o1.w = 0;
  o5.zw = float2(0,0);
  o6.x = v1.x;
  o7.w = 1;
  return;
}