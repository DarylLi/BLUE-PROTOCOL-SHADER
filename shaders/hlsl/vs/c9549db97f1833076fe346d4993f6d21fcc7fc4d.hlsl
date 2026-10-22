// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[227];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = asint(cb3[0].yxyx) + int4(-1,0,0,-1);
  r0.xyzw = max(asint(cb2[0].yxyx), (int4)r0.xyzw);
  r1.xyzw = asint(cb2[0].wzwz) + asint(cb2[0].yxyx);
  r1.xyzw = (int4)r1.xyzw + int4(-1,-1,-1,-1);
  r0.xyzw = min((int4)r1.zwzw, (int4)r0.xyzw);
  r0.xyzw = (int4)r0.xyzw + asint(-cb2[0].yxyx);
  r0.xy = mad((int2)r0.xz, asint(cb2[0].zz), (int2)r0.yw);
  r0.x = t0.Load(r0.x).x;
  r0.y = t0.Load(r0.y).x;
  r0.zw = asint(-cb2[0].yx) + asint(cb3[0].yx);
  r0.z = mad((int)r0.z, asint(cb2[0].z), (int)r0.w);
  r0.w = t0.Load(r0.z).x;
  r0.z = t1.Load(r0.z).x;
  r2.x = asint(cb0[226].x);
  r0.w = r2.x + r0.w;
  r2.y = asint(cb3[1].x);
  r0.w = min(r2.y, r0.w);
  r0.x = max(r0.x, r0.w);
  r0.x = r0.x + r2.x;
  r3.x = min(r0.x, r2.y);
  r0.x = max(r0.y, r0.w);
  r0.x = r0.x + r2.x;
  r3.y = min(r0.x, r2.y);
  r4.xyzw = asint(cb3[0].yxyx) + int4(0,1,1,0);
  r4.xyzw = max(asint(cb2[0].yxyx), (int4)r4.xyzw);
  r1.xyzw = min((int4)r4.xyzw, (int4)r1.xyzw);
  r1.xyzw = (int4)r1.xyzw + asint(-cb2[0].yxyx);
  r0.xy = mad((int2)r1.xz, asint(cb2[0].zz), (int2)r1.yw);
  r0.x = t0.Load(r0.x).x;
  r0.y = t0.Load(r0.y).x;
  r0.xy = max(r0.xy, r0.ww);
  r0.xy = r0.xy + r2.xx;
  r3.zw = min(r0.xy, r2.yy);
  r0.x = floor(r0.w);
  r0.x = (uint)r0.x;
  r0.y = asuint(cb3[0].z) >> (int)r0.x;
  r0.x = (uint)r0.x;
  r0.y = (int)r0.y + -1;
  r0.y = (int)r0.y;
  r0.y = rcp(r0.y);
  r1.xy = v0.yx * r0.yy + v0.wz;
  r0.y = asint(cb3[0].w);
  r1.xy = r1.xy / r0.yy;
  r1.zw = float2(1,1) + -r1.yx;
  r2.xyzw = -r1.xyzw * float4(2,2,2,2) + float4(1,1,1,1);
  r4.xyzw = r1.xyzw + r1.xyzw;
  r2.xyzw = r2.xyzw * r3.xyzw;
  r2.xyzw = r4.xyzw * r0.wwww + r2.xyzw;
  r0.y = cmp(r1.y < r1.x);
  r0.w = r1.y + r1.x;
  r0.w = cmp(1 < r0.w);
  r1.xy = r0.yy ? r2.wy : r2.zx;
  r0.y = r0.w ? r1.x : r1.y;
  r0.w = floor(r0.y);
  r0.xy = r0.wy + -r0.xw;
  r0.x = exp2(-r0.x);
  r1.xy = v0.xy * r0.xx;
  r1.xy = floor(r1.xy);
  r1.zw = float2(0.5,0.5) * r1.xy;
  r1.zw = floor(r1.zw);
  r0.x = exp2(-r0.w);
  r2.x = cb3[5].x * r0.x;
  r3.x = cb3[5].x * r0.x + -1;
  r0.x = 0.5 * r2.x;
  r0.x = max(2, r0.x);
  r3.y = -1 + r0.x;
  r2.xy = cb3[5].yy * r3.xy;
  r1.xyzw = r1.xyzw / r2.xxyy;
  r2.xy = r1.zw * cb3[3].xy + cb3[3].zw;
  r2.xy = v0.zw * cb3[6].zz + r2.xy;
  r0.x = 1 + r0.w;
  r2.xyzw = t3.SampleLevel(s1_s, r2.xy, r0.x).xyzw;
  r0.x = r0.x + -r0.z;
  r0.z = r0.w + -r0.z;
  r2.x = dot(r2.xy, float2(65280,255));
  r2.y = dot(r2.zw, float2(65280,255));
  r2.xy = float2(-32768,-32768) + r2.xy;
  r3.xy = float2(0.00390625,0.00390625) * r2.xy;
  r2.xy = r3.xy + r1.zw;
  r1.zw = r1.zw * cb3[2].xy + cb3[2].zw;
  r1.zw = cb3[2].xy * float2(0.5,0.5) + r1.zw;
  r1.zw = v0.zw * cb3[6].xy + r1.zw;
  r1.zw = t2.SampleLevel(s0_s, r1.zw, r0.x).xy;
  r0.x = dot(r1.zw, float2(65280,255));
  r0.x = -32768 + r0.x;
  r2.z = 0.0078125 * r0.x;
  r1.zw = r1.xy * cb3[3].xy + cb3[3].zw;
  r1.zw = v0.zw * cb3[6].zz + r1.zw;
  r3.xyzw = t3.SampleLevel(s1_s, r1.zw, r0.w).xyzw;
  r0.x = dot(r3.xy, float2(65280,255));
  r0.w = dot(r3.zw, float2(65280,255));
  r0.xw = float2(-32768,-32768) + r0.xw;
  r3.xy = float2(0.00390625,0.00390625) * r0.xw;
  r3.xy = r3.xy + r1.xy;
  r0.xw = r1.xy * cb3[2].xy + cb3[2].zw;
  r0.xw = cb3[2].xy * float2(0.5,0.5) + r0.xw;
  r0.xw = v0.zw * cb3[6].xy + r0.xw;
  r0.xz = t2.SampleLevel(s0_s, r0.xw, r0.z).xy;
  r0.x = dot(r0.xz, float2(65280,255));
  r0.x = -32768 + r0.x;
  r3.z = 0.0078125 * r0.x;
  r0.xzw = -r3.xyz + r2.xyz;
  r0.xyz = r0.yyy * r0.xzw + r3.xyz;
  r1.xy = cb3[6].ww * v0.zw;
  r1.z = 0;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb1[3].xyz + cb0[70].xyz;
  r1.xyz = r1.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[0].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb0[2].xyzw + r2.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r0.w = 0.00100000005 * r1.w;
  r2.x = cmp(1 < asint(cb0[135].x));
  r0.w = r2.x ? r0.w : 0;
  o0.z = r1.z + r0.w;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.xyz = cb1[3].xyz + cb0[113].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb0[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb0[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb0[93].xyzw + r1.xyzw;
  o2.xyzw = cb0[94].xyzw + r0.xyzw;
  return;
}