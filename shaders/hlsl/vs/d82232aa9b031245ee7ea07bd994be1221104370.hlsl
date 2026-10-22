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
  float4 cb3[13];
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
  out float4 o3 : TEXCOORD0,
  out uint o4 : PRIMITIVE_ID0,
  out float4 o5 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r0.x = cb3[9].y * r0.x;
  r0.y = asint(cb1[0].y) + -1;
  r0.y = min(2, (uint)r0.y);
  r0.z = (int)v2.x + asint(cb1[0].w);
  r0.y = mad(asint(cb1[0].y), (int)r0.z, (int)r0.y);
  r0.yw = t1.Load(r0.y).xy;
  r2.x = (int)r0.z * asint(cb1[0].y);
  r2.xy = t1.Load(r2.x).xy;
  r0.yw = -r2.xy + r0.yw;
  r0.yw = cb3[10].zz * r0.yw + r2.xy;
  o3.xy = r2.xy;
  r0.yw = cb3[10].ww * r0.yw;
  r0.xy = r0.xx * cb3[10].xy + r0.yw;
  r0.xy = t4.SampleLevel(s0_s, r0.xy, -1).xy;
  r2.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r3.xy = r0.xy + r0.xy;
  r0.x = dot(r2.xy, r2.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.xyw = float3(-1,-1,-1) + r3.xyz;
  r2.x = (int)r0.z & asint(cb1[0].x);
  r2.x = t3.Load(r2.x).z;
  r0.xyw = r2.xxx * r0.xyw + float3(0,0,1);
  r2.yzw = float3(0,0,1) + -r0.xyw;
  r0.xyw = cb3[11].xxx * r2.yzw + r0.xyw;
  r0.xyw = cb3[11].yzw * r0.xyw;
  r2.y = (int)v1.x * 36;
  r2.y = t0[r2.y].val[0/4];
  r2.z = t0[r2.y].val[0/4+1];
  r2.w = t0[r2.y].val[0/4+2];
  r3.x = dot(-r2.yzw, -r2.yzw);
  r3.x = sqrt(r3.x);
  r3.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.w = mad((int)v1.x, 36, 2);
  r4.x = t0[r3.w].val[0/4];
  r4.y = t0[r3.w].val[0/4+1];
  r4.z = t0[r3.w].val[0/4+2];
  r5.x = t0[r3.y].val[0/4];
  r5.y = t0[r3.y].val[0/4+1];
  r5.z = t0[r3.y].val[0/4+2];
  r3.y = t0[r3.z].val[0/4];
  r3.z = t0[r3.z].val[0/4+1];
  r3.w = t0[r3.z].val[0/4+2];
  r3.yzw = cb0[70].xyz + r3.yzw;
  r4.w = dot(-r5.xyz, -r5.xyz);
  r4.w = sqrt(r4.w);
  r3.x = r4.w + r3.x;
  r4.w = dot(-r4.xyz, -r4.xyz);
  r4.w = sqrt(r4.w);
  r3.x = r4.w + r3.x;
  r3.x = r3.x * 0.333333343 + -1;
  r3.x = cb3[12].x * r3.x + 1;
  r0.xyw = r3.xxx * r0.xyw;
  r0.xyw = cb3[12].yyy * r0.xyw;
  r6.xyz = v0.yyy * r5.xyz;
  r5.xyz = r5.xyz * r1.yyy;
  r6.xyz = r2.yzw * v0.xxx + r6.xyz;
  r2.yzw = r2.yzw * r1.xxx;
  r6.xyz = r4.xyz * v0.zzz + r6.xyz;
  r1.xyz = r4.xyz * r1.zzz;
  r3.xyz = r6.xyz + r3.yzw;
  r0.xyw = r0.xyw * r2.xxx + r3.xyz;
  r3.xyzw = cb0[1].xyzw * r0.yyyy;
  r3.xyzw = r0.xxxx * cb0[0].xyzw + r3.xyzw;
  r3.xyzw = r0.wwww * cb0[2].xyzw + r3.xyzw;
  o5.xyz = r0.xyw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  o0.xy = cb0[364].xy * r3.zz + r3.xy;
  o0.zw = r3.zw;
  r0.x = (uint)r0.z << 1;
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.y = (((uint)r0.z << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r3.xyzw = t2.Load(r0.y).xyzw;
  r0.xyz = t2.Load(r0.x).xyz;
  r4.xyz = r3.yzx * r0.xyz;
  r0.xyz = r3.xyz * r0.yzx + -r4.xyz;
  r0.xyz = r0.xyz * r3.www;
  r4.xyz = r0.xyz * r3.yzx;
  r0.xyz = r0.zxy * r3.zxy + -r4.xyz;
  r0.xyz = r0.xyz * r3.www;
  r4.xyz = r0.yyy * r5.xyz;
  r5.xyz = r3.yyy * r5.xyz;
  r5.xyz = r3.xxx * r2.yzw + r5.xyz;
  r0.xyw = r0.xxx * r2.yzw + r4.xyz;
  o1.xyz = r0.zzz * r1.xyz + r0.xyw;
  o2.xyz = r3.zzz * r1.xyz + r5.xyz;
  o2.w = r3.w * r1.w;
  o1.w = 0;
  o3.zw = float2(0,0);
  o4.x = v1.x;
  o5.w = 1;
  return;
}