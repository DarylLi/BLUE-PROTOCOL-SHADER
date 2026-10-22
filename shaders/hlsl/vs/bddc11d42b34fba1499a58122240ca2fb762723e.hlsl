// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[7];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[1];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[53];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[227];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD8,
  out uint o6 : SV_RenderTargetArrayIndex0,
  out float4 o7 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = asint(cb5[0].yxyx) + int4(-1,0,0,-1);
  r0.xyzw = max(asint(cb4[0].yxyx), (int4)r0.xyzw);
  r1.xyzw = asint(cb4[0].wzwz) + asint(cb4[0].yxyx);
  r1.xyzw = (int4)r1.xyzw + int4(-1,-1,-1,-1);
  r0.xyzw = min((int4)r1.zwzw, (int4)r0.xyzw);
  r0.xyzw = (int4)r0.xyzw + asint(-cb4[0].yxyx);
  r0.xy = mad((int2)r0.xz, asint(cb4[0].zz), (int2)r0.yw);
  r0.x = t0.Load(r0.x).x;
  r0.y = t0.Load(r0.y).x;
  r0.zw = asint(-cb4[0].yx) + asint(cb5[0].yx);
  r0.z = mad((int)r0.z, asint(cb4[0].z), (int)r0.w);
  r0.w = t0.Load(r0.z).x;
  r0.z = t1.Load(r0.z).x;
  r2.x = asint(cb1[226].x);
  r0.w = r2.x + r0.w;
  r2.y = asint(cb5[1].x);
  r0.w = min(r2.y, r0.w);
  r0.x = max(r0.x, r0.w);
  r0.x = r0.x + r2.x;
  r3.x = min(r0.x, r2.y);
  r0.x = max(r0.y, r0.w);
  r0.x = r0.x + r2.x;
  r3.y = min(r0.x, r2.y);
  r4.xyzw = asint(cb5[0].yxyx) + int4(0,1,1,0);
  r4.xyzw = max(asint(cb4[0].yxyx), (int4)r4.xyzw);
  r1.xyzw = min((int4)r4.xyzw, (int4)r1.xyzw);
  r1.xyzw = (int4)r1.xyzw + asint(-cb4[0].yxyx);
  r0.xy = mad((int2)r1.xz, asint(cb4[0].zz), (int2)r1.yw);
  r0.x = t0.Load(r0.x).x;
  r0.y = t0.Load(r0.y).x;
  r0.xy = max(r0.xy, r0.ww);
  r0.xy = r0.xy + r2.xx;
  r3.zw = min(r0.xy, r2.yy);
  r0.x = floor(r0.w);
  r0.x = (uint)r0.x;
  r0.y = asuint(cb5[0].z) >> (int)r0.x;
  r0.x = (uint)r0.x;
  r0.y = (int)r0.y + -1;
  r0.y = (int)r0.y;
  r0.y = rcp(r0.y);
  r1.xy = v0.yx * r0.yy + v0.wz;
  r0.y = asint(cb5[0].w);
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
  r2.x = cb5[5].x * r0.x;
  r3.x = cb5[5].x * r0.x + -1;
  r0.x = 0.5 * r2.x;
  r0.x = max(2, r0.x);
  r3.y = -1 + r0.x;
  r2.xy = cb5[5].yy * r3.xy;
  r1.xyzw = r1.xyzw / r2.xxyy;
  r2.xy = r1.zw * cb5[3].xy + cb5[3].zw;
  r2.xy = v0.zw * cb5[6].zz + r2.xy;
  r0.x = 1 + r0.w;
  r2.xyzw = t3.SampleLevel(s1_s, r2.xy, r0.x).xyzw;
  r0.x = r0.x + -r0.z;
  r0.z = r0.w + -r0.z;
  r2.x = dot(r2.xy, float2(65280,255));
  r2.y = dot(r2.zw, float2(65280,255));
  r2.xy = float2(-32768,-32768) + r2.xy;
  r3.xy = float2(0.00390625,0.00390625) * r2.xy;
  r2.xy = r3.xy + r1.zw;
  r1.zw = r1.zw * cb5[2].xy + cb5[2].zw;
  r1.zw = cb5[2].xy * float2(0.5,0.5) + r1.zw;
  r1.zw = v0.zw * cb5[6].xy + r1.zw;
  r3.xyzw = t2.SampleLevel(s0_s, r1.zw, r0.x).xyzw;
  r1.zw = r1.xy * cb5[3].xy + cb5[3].zw;
  r1.zw = v0.zw * cb5[6].zz + r1.zw;
  r4.xyzw = t3.SampleLevel(s1_s, r1.zw, r0.w).xyzw;
  r0.x = dot(r4.xy, float2(65280,255));
  r0.w = dot(r4.zw, float2(65280,255));
  r0.xw = float2(-32768,-32768) + r0.xw;
  r4.xy = float2(0.00390625,0.00390625) * r0.xw;
  r4.xy = r4.xy + r1.xy;
  r0.xw = r1.xy * cb5[2].xy + cb5[2].zw;
  r0.xw = cb5[2].xy * float2(0.5,0.5) + r0.xw;
  r0.xw = v0.zw * cb5[6].xy + r0.xw;
  r1.xyzw = t2.SampleLevel(s0_s, r0.xw, r0.z).xyzw;
  r0.x = dot(r3.xy, float2(65280,255));
  r0.zw = r3.zw + -r1.zw;
  r0.zw = r0.yy * r0.zw + r1.zw;
  r1.x = dot(r1.xy, float2(65280,255));
  r1.x = -32768 + r1.x;
  r4.z = 0.0078125 * r1.x;
  r0.zw = r0.zw * float2(2,2) + float2(-1,-1);
  r0.x = -32768 + r0.x;
  r2.z = 0.0078125 * r0.x;
  r1.xyz = -r4.xyz + r2.xyz;
  r1.xyz = r0.yyy * r1.xyz + r4.xyz;
  r0.xy = cb5[5].zw + r1.xy;
  o0.xy = v0.zw * cb5[6].ww + r0.xy;
  r0.xy = r1.xy * cb5[2].xy + cb5[2].zw;
  r0.xy = cb5[2].xy * float2(0.5,0.5) + r0.xy;
  o1.zw = v0.zw * cb5[6].xy + r0.xy;
  r0.xy = r1.xy * cb5[3].xy + cb5[3].zw;
  o1.xy = v0.zw * cb5[6].zz + r0.xy;
  o2.xyzw = float4(0,0,0,0);
  r2.xy = cb5[6].ww * v0.zw;
  r2.z = 0;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  o3.xyz = r1.xyz;
  r0.x = asuint(cb0[1].x) << 2;
  r2.xyzw = cb3[r0.x+30].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[r0.x+29].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb3[r0.x+31].xyzw + r2.xyzw;
  r1.xyzw = cb3[r0.x+32].xyzw + r1.xyzw;
  o4.xyzw = r1.xyzw;
  o7.xyzw = r1.xyzw;
  r0.x = dot(r0.zw, r0.zw);
  o5.xy = r0.zw;
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  o5.z = sqrt(r0.x);
  o6.x = cb0[1].x;
  return;
}