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
  float4 cb3[14];
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
  out float4 o3 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x * 36;
  r0.yz = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r1.z = t0[r0.y].val[0/4+2];
  r0.y = t0[r0.z].val[0/4];
  r0.z = t0[r0.z].val[0/4+1];
  r0.w = t0[r0.z].val[0/4+2];
  r0.yzw = cb0[70].xyz + r0.yzw;
  r2.xyz = v0.yyy * r1.xyz;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r1.y = t0[r0.x].val[0/4];
  r1.z = t0[r0.x].val[0/4+1];
  r1.w = t0[r0.x].val[0/4+2];
  r0.x = mad((int)v1.x, 36, 2);
  r3.x = t0[r0.x].val[0/4];
  r3.y = t0[r0.x].val[0/4+1];
  r3.z = t0[r0.x].val[0/4+2];
  r2.xyz = r1.yzw * v0.xxx + r2.xyz;
  r0.x = dot(-r1.yzw, -r1.yzw);
  r0.x = sqrt(r0.x);
  r0.x = r0.x + r1.x;
  r1.xyz = r3.xyz * v0.zzz + r2.xyz;
  r1.w = dot(-r3.xyz, -r3.xyz);
  r1.w = sqrt(r1.w);
  r0.x = r1.w + r0.x;
  r0.x = r0.x * 0.333333343 + -1;
  r0.x = cb3[12].w * r0.x + 1;
  r0.yzw = r1.xyz + r0.yzw;
  r1.x = asint(cb1[0].y) + -1;
  r1.xy = min(uint2(1,2), (uint2)r1.xx);
  r1.z = (int)v2.x + asint(cb1[0].w);
  r1.xy = mad(asint(cb1[0].yy), (int2)r1.zz, (int2)r1.xy);
  r1.yw = t1.Load(r1.y).xy;
  r2.xy = t1.Load(r1.x).xy;
  o3.zw = r2.xy;
  r1.x = (int)r1.z * asint(cb1[0].y);
  r1.z = (int)r1.z & asint(cb1[0].x);
  r1.z = t2.Load(r1.z).z;
  r2.xy = t1.Load(r1.x).xy;
  r1.xy = -r2.xy + r1.yw;
  r1.xy = cb3[7].xx * r1.xy + r2.xy;
  o3.xy = r2.xy;
  r1.xy = cb3[7].yy * r1.xy;
  r2.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(18,10,11,12));
  r3.x = t0[r2.x].val[0/4];
  r3.y = t0[r2.x].val[0/4+1];
  r3.z = t0[r2.x].val[0/4+2];
  r1.w = r3.x + r3.y;
  r1.w = r1.w + r3.z;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb2[2].x * r1.w;
  r1.w = cb3[5].w * r1.w;
  r4.xy = r1.ww * cb3[6].zw + r1.xy;
  r4.xy = t3.SampleLevel(s0_s, r4.xy, -1).xy;
  r4.zw = r4.xy * float2(2,2) + float2(-1,-1);
  r5.xy = r4.xy + r4.xy;
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r4.xyz = float3(-1,-1,-1) + r5.xyz;
  r4.xyz = r1.zzz * r4.xyz + float3(0,0,1);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[7].zzz * r5.xyz + r4.xyz;
  r4.xyz = cb3[12].xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.xxx;
  r4.xyz = cb3[13].xxx * r4.xyz;
  r0.xyz = r4.xyz * r1.zzz + r0.yzw;
  r4.xyzw = cb0[1].xyzw * r0.yyyy;
  r4.xyzw = r0.xxxx * cb0[0].xyzw + r4.xyzw;
  r0.xyzw = r0.zzzz * cb0[2].xyzw + r4.xyzw;
  r0.xyzw = cb0[3].xyzw + r0.xyzw;
  r1.w = 0.00100000005 * r0.w;
  r2.x = cmp(1 < asint(cb0[135].x));
  r1.w = r2.x ? r1.w : 0;
  o0.z = r1.w + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  r0.x = t0[r2.y].val[0/4+2];
  r0.y = t0[r2.y].val[0/4];
  r0.z = t0[r2.y].val[0/4+1];
  r4.x = r0.y;
  r2.x = t0[r2.z].val[0/4];
  r2.y = t0[r2.z].val[0/4+1];
  r2.z = t0[r2.z].val[0/4+2];
  r5.x = t0[r2.w].val[0/4];
  r5.y = t0[r2.w].val[0/4+1];
  r5.z = t0[r2.w].val[0/4+2];
  r4.y = r2.x;
  r4.z = r5.x;
  r1.w = mad((int)v1.x, 36, 9);
  r6.x = t0[r1.w].val[0/4];
  r6.y = t0[r1.w].val[0/4+1];
  r6.z = t0[r1.w].val[0/4+2];
  r6.w = t0[r1.w].val[0/4+3];
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
  r3.w = 1;
  r7.x = dot(r3.xyzw, r7.xyzw);
  r12.x = r9.y;
  r12.y = r10.z;
  r12.z = r11.y;
  r12.w = r6.y;
  r7.y = dot(r3.xyzw, r12.xyzw);
  r10.x = r9.z;
  r11.x = r9.w;
  r11.y = r10.w;
  r10.z = r11.w;
  r10.w = r6.z;
  r11.w = r6.w;
  r7.w = dot(r3.xyzw, r11.xyzw);
  r7.z = dot(r3.xyzw, r10.xyzw);
  r4.w = r8.x;
  r1.w = dot(r7.xyzw, r4.xyzw);
  r3.w = r8.y;
  r3.x = r0.z;
  r3.y = r2.y;
  r3.z = r5.y;
  r2.w = dot(r7.xyzw, r3.xyzw);
  r1.w = r2.w + r1.w;
  r0.w = r8.z;
  r6.xyz = cb0[113].xyz + r8.xyz;
  r2.w = dot(-r0.xyz, -r0.xyz);
  r0.y = r2.z;
  r2.x = dot(-r2.xyz, -r2.xyz);
  r2.xw = sqrt(r2.xw);
  r2.x = r2.w + r2.x;
  r0.z = r5.z;
  r2.y = dot(-r5.xyz, -r5.xyz);
  r2.y = sqrt(r2.y);
  r2.x = r2.x + r2.y;
  r2.x = r2.x * 0.333333343 + -1;
  r2.x = cb3[12].w * r2.x + 1;
  r2.y = dot(r7.xyzw, r0.xyzw);
  r1.w = r2.y + r1.w;
  r1.w = frac(r1.w);
  r1.w = cb0[139].z + r1.w;
  r1.w = cb2[2].x * r1.w;
  r1.w = cb3[5].w * r1.w;
  r1.xy = r1.ww * cb3[6].zw + r1.xy;
  r1.xy = t3.SampleLevel(s0_s, r1.xy, -1).xy;
  r2.yz = r1.xy * float2(2,2) + float2(-1,-1);
  r5.xy = r1.xy + r1.xy;
  r1.x = dot(r2.yz, r2.yz);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r5.z = sqrt(r1.x);
  r1.xyw = float3(-1,-1,-1) + r5.xyz;
  r1.xyw = r1.zzz * r1.xyw + float3(0,0,1);
  r2.yzw = float3(0,0,1) + -r1.xyw;
  r1.xyw = cb3[7].zzz * r2.yzw + r1.xyw;
  r1.xyw = cb3[12].xyz * r1.xyw;
  r1.xyw = r1.xyw * r2.xxx;
  r1.xyw = cb3[13].xxx * r1.xyw;
  r4.w = r6.x;
  r2.x = dot(v0.xyzw, r4.xyzw);
  r3.w = r6.y;
  r0.w = r6.z;
  r2.z = dot(v0.xyzw, r0.xyzw);
  r2.y = dot(v0.xyzw, r3.xyzw);
  r0.xyz = r1.xyw * r1.zzz + r2.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  return;
}