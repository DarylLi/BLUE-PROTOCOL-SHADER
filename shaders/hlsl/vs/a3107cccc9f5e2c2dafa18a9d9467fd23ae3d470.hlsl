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
  out float4 o1 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = mad((int)v1.x, 36, 18);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r0.x = frac(r0.x);
  r0.x = cb0[142].z + r0.x;
  r0.x = cb2[2].x * r0.x;
  r0.x = cb3[21].w * r0.x;
  r0.y = asint(cb1[0].y) + -1;
  r0.yz = min(uint2(0,0), (uint2)r0.yy);
  r0.w = (int)v2.x + asint(cb1[0].w);
  r0.yz = mad(asint(cb1[0].yy), (int2)r0.ww, (int2)r0.yz);
  r1.xy = t1.Load(r0.z).xy;
  r0.yz = t1.Load(r0.y).xy;
  o1.zw = r0.yz;
  r0.y = (int)r0.w * asint(cb1[0].y);
  r0.z = (int)r0.w & asint(cb1[0].x);
  r0.z = t2.Load(r0.z).z;
  r0.yw = t1.Load(r0.y).xy;
  r1.xy = r1.xy + -r0.yw;
  r1.xy = cb3[23].xx * r1.xy + r0.yw;
  o1.xy = r0.yw;
  r0.yw = cb3[23].yy * r1.xy;
  r0.xy = r0.xx * cb3[22].zw + r0.yw;
  r0.xy = t3.SampleLevel(s0_s, r0.xy, -1).xy;
  r1.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r2.xy = r0.xy + r0.xy;
  r0.x = dot(r1.xy, r1.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r2.z = sqrt(r0.x);
  r0.xyw = float3(-1,-1,-1) + r2.xyz;
  r0.xyw = r0.zzz * r0.xyw + float3(0,0,1);
  r1.xyz = float3(0,0,1) + -r0.xyw;
  r0.xyw = cb3[23].zzz * r1.xyz + r0.xyw;
  r1.x = cb3[30].w * r0.x;
  r1.yz = cb3[31].xy * r0.yw;
  r0.x = (int)v1.x * 36;
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.w = t0[r0.x].val[0/4+2];
  r1.w = dot(-r0.xyw, -r0.xyw);
  r1.w = sqrt(r1.w);
  r2.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r2.z = mad((int)v1.x, 36, 2);
  r3.x = t0[r2.z].val[0/4];
  r3.y = t0[r2.z].val[0/4+1];
  r3.z = t0[r2.z].val[0/4+2];
  r2.x = t0[r2.x].val[0/4];
  r2.z = t0[r2.x].val[0/4+1];
  r2.w = t0[r2.x].val[0/4+2];
  r4.x = t0[r2.y].val[0/4];
  r4.y = t0[r2.y].val[0/4+1];
  r4.z = t0[r2.y].val[0/4+2];
  r4.xyz = cb0[70].xyz + r4.xyz;
  r2.y = dot(-r2.xzw, -r2.xzw);
  r2.xzw = v0.yyy * r2.xzw;
  r0.xyw = r0.xyw * v0.xxx + r2.xzw;
  r0.xyw = r3.xyz * v0.zzz + r0.xyw;
  r2.x = dot(-r3.xyz, -r3.xyz);
  r0.xyw = r0.xyw + r4.xyz;
  r2.xy = sqrt(r2.xy);
  r1.w = r2.y + r1.w;
  r1.w = r1.w + r2.x;
  r1.w = r1.w * 0.333333343 + -1;
  r1.w = cb3[31].z * r1.w + 1;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = cb3[31].www * r1.xyz;
  r0.xyz = r1.xyz * r0.zzz + r0.xyw;
  r1.xyzw = cb0[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r1.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  o0.xy = cb0[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}