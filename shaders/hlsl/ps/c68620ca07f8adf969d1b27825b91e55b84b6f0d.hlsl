// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[28];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD5,
  float3 v2 : PARTICLE_LIGHTING_OFFSET0,
  float w2 : TEXCOORD6,
  float4 v3 : TANGENTX0,
  float4 v4 : TANGENTZ0,
  float v5 : TEXCOORD8,
  float3 w5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[142].zz + v0.xy;
  r0.xy = float2(100,100) * r0.xy;
  r0.zw = floor(r0.xy);
  r0.xy = frac(r0.xy);
  r0.zw = (int2)r0.zw;
  r0.zw = mad((int2)r0.zw, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r0.z = mad((int)r0.w, 0x3c6ef35f, (int)r0.z);
  r0.w = mad(0x3c6ef35f, (int)r0.z, (int)r0.w);
  r1.x = mad((int)r0.z, (int)r0.w, 0x3c6ef35f);
  r2.x = mad((int)r0.w, (int)r1.x, (int)r0.z);
  r2.y = mad((int)r1.x, (int)r2.x, (int)r0.w);
  r2.z = mad((int)r2.x, (int)r2.y, (int)r1.x);
  r1.xyz = (uint3)r2.xyz >> int3(16,16,16);
  r1.xyz = (uint3)r1.xyz;
  r2.z = 1.52590219e-005;
  r0.zw = v0.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r0.z = t0.SampleBias(s0_s, r0.zw, cb0[143].y).x;
  r0.w = r0.z * 3 + -3;
  r0.z = ceil(r0.z);
  r0.w = saturate(v1.w * 4 + r0.w);
  r2.xy = float2(3,1.5) * r0.ww;
  r1.xyz = r2.zzy * r1.xyz;
  r0.w = r1.z * 1.52590219e-005 + r2.y;
  r0.w = min(r0.w, r2.x);
  r1.z = 1 + -r0.w;
  r1.w = -r1.z * 0.5 + 0.5;
  r1.z = r1.z * 0.5 + 0.5;
  r1.xy = max(r1.xy, r1.ww);
  r1.xy = min(r1.xy, r1.zz);
  r0.xy = r1.xy + -r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = -r0.x * 2 + 1;
  r0.x = max(0, r0.x);
  r0.x = r0.x * 10 + -10;
  r0.x = saturate(r0.w * 10 + r0.x);
  r0.x = r0.x * r0.z + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  oDepth = saturate(w2.x * cb1[27].w + v5.x);
  return;
}