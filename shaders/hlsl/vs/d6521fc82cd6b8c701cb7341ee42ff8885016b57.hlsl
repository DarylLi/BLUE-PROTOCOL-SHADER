// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[29];
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
  out float2 o0 : TEXCOORD0,
  out float p0 : TEXCOORD6,
  out float p0 : TEXCOORD8,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = asint(cb4[0].yxyx) + int4(-1,0,0,-1);
  r0.xyzw = max(asint(cb3[0].yxyx), (int4)r0.xyzw);
  r1.xyzw = asint(cb3[0].wzwz) + asint(cb3[0].yxyx);
  r1.xyzw = (int4)r1.xyzw + int4(-1,-1,-1,-1);
  r0.xyzw = min((int4)r1.zwzw, (int4)r0.xyzw);
  r0.xyzw = (int4)r0.xyzw + asint(-cb3[0].yxyx);
  r0.xy = mad((int2)r0.xz, asint(cb3[0].zz), (int2)r0.yw);
  r0.x = t0.Load(r0.x).x;
  r0.y = t0.Load(r0.y).x;
  r0.zw = asint(-cb3[0].yx) + asint(cb4[0].yx);
  r0.z = mad((int)r0.z, asint(cb3[0].z), (int)r0.w);
  r0.w = t0.Load(r0.z).x;
  r0.z = t1.Load(r0.z).x;
  r2.x = asint(cb0[226].x);
  r0.w = r2.x + r0.w;
  r2.y = asint(cb4[1].x);
  r0.w = min(r2.y, r0.w);
  r0.x = max(r0.x, r0.w);
  r0.x = r0.x + r2.x;
  r3.x = min(r0.x, r2.y);
  r0.x = max(r0.y, r0.w);
  r0.x = r0.x + r2.x;
  r3.y = min(r0.x, r2.y);
  r4.xyzw = asint(cb4[0].yxyx) + int4(0,1,1,0);
  r4.xyzw = max(asint(cb3[0].yxyx), (int4)r4.xyzw);
  r1.xyzw = min((int4)r4.xyzw, (int4)r1.xyzw);
  r1.xyzw = (int4)r1.xyzw + asint(-cb3[0].yxyx);
  r0.xy = mad((int2)r1.xz, asint(cb3[0].zz), (int2)r1.yw);
  r0.x = t0.Load(r0.x).x;
  r0.y = t0.Load(r0.y).x;
  r0.xy = max(r0.xy, r0.ww);
  r0.xy = r0.xy + r2.xx;
  r3.zw = min(r0.xy, r2.yy);
  r0.x = floor(r0.w);
  r0.x = (uint)r0.x;
  r0.y = asuint(cb4[0].z) >> (int)r0.x;
  r0.x = (uint)r0.x;
  r0.y = (int)r0.y + -1;
  r0.y = (int)r0.y;
  r0.y = rcp(r0.y);
  r1.xy = v0.yx * r0.yy + v0.wz;
  r0.y = asint(cb4[0].w);
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
  r0.xyz = r0.wyw + -r0.xwz;
  r0.x = exp2(-r0.x);
  r1.xy = v0.xy * r0.xx;
  r1.xy = floor(r1.xy);
  r1.zw = float2(0.5,0.5) * r1.xy;
  r1.zw = floor(r1.zw);
  r0.x = exp2(-r0.w);
  r0.w = cb4[5].x * r0.x;
  r2.x = cb4[5].x * r0.x + -1;
  r0.x = 0.5 * r0.w;
  r0.x = max(2, r0.x);
  r2.y = -1 + r0.x;
  r0.xw = cb4[5].yy * r2.xy;
  r2.xy = r1.zw / r0.ww;
  r1.xy = r1.xy / r0.xx;
  r0.xw = r2.xy * cb4[2].xy + cb4[2].zw;
  r0.xw = cb4[2].xy * float2(0.5,0.5) + r0.xw;
  r0.xw = v0.zw * cb4[6].xy + r0.xw;
  r1.w = 1 + r0.z;
  r3.xyzw = t2.SampleLevel(s0_s, r0.xw, r1.w).xyzw;
  r0.xw = r1.xy * cb4[2].xy + cb4[2].zw;
  r0.xw = cb4[2].xy * float2(0.5,0.5) + r0.xw;
  r0.xw = v0.zw * cb4[6].xy + r0.xw;
  r4.xyzw = t2.SampleLevel(s0_s, r0.xw, r0.z).xyzw;
  r0.xz = -r4.zw + r3.zw;
  r0.w = dot(r3.xy, float2(65280,255));
  r0.w = -32768 + r0.w;
  r2.z = 0.0078125 * r0.w;
  r0.xz = r0.yy * r0.xz + r4.zw;
  r0.w = dot(r4.xy, float2(65280,255));
  r0.w = -32768 + r0.w;
  r1.z = 0.0078125 * r0.w;
  r3.xy = r0.xz * float2(2,2) + float2(-1,-1);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r4.x = cb2[23].z;
  r4.y = cb2[24].z;
  r4.z = cb2[25].z;
  r0.x = dot(r4.xyz, r3.xyz);
  r0.z = -abs(r0.x) * abs(r0.x) + 1;
  r0.z = max(0, r0.z);
  r0.z = sqrt(r0.z);
  r0.z = r0.z / abs(r0.x);
  r0.x = cmp(0 < abs(r0.x));
  r0.x = r0.x ? r0.z : cb2[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb2[27].z, r0.x);
  p0.x = cb2[27].y * r0.x + cb2[27].x;
  r0.xzw = r2.xyz + -r1.xyz;
  r0.xyz = r0.yyy * r0.xzw + r1.xyz;
  r1.xy = cb4[5].zw + r0.xy;
  o0.xy = v0.zw * cb4[6].ww + r1.xy;
  r1.xy = cb4[6].ww * v0.zw;
  r1.z = 0;
  r1.xyz = r1.xyz + r0.xyz;
  r2.xyz = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb1[3].xyz + cb0[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = cb2[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb2[19].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb2[21].xyzw + r2.xyzw;
  o3.xyz = r1.xyz;
  r1.xyzw = cb2[22].xyzw + r2.xyzw;
  r0.z = cmp(r1.z < 0);
  r0.w = cmp(0 < cb2[28].x);
  r0.z = r0.z ? r0.w : 0;
  r0.zw = r0.zz ? float2(9.99999997e-007,1) : r1.zw;
  o4.xy = r1.xy;
  p0.x = r0.z;
  o4.zw = r0.zw;
  r0.zw = r0.xy * cb4[2].xy + cb4[2].zw;
  r0.xy = r0.xy * cb4[3].xy + cb4[3].zw;
  o1.xy = v0.zw * cb4[6].zz + r0.xy;
  r0.xy = cb4[2].xy * float2(0.5,0.5) + r0.zw;
  o1.zw = v0.zw * cb4[6].xy + r0.xy;
  o2.xyzw = float4(0,0,0,0);
  return;
}