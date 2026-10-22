// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[131];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asuint(cb0[37].xy);
  r0.xy = v0.xy + -r0.xy;
  r0.zw = cb0[38].zw * r0.xy;
  r1.xyz = t0.Sample(s0_s, r0.zw).xyz;
  r1.w = cmp(cb2[4].x == 0.000000);
  if (r1.w != 0) {
    r2.xyz = r1.xyz;
    r2.w = 0;
  } else {
    r2.w = cb2[4].y;
  }
  if (r1.w == 0) {
    r3.xy = cb2[4].xx / cb1[130].xy;
    r1.w = (uint)r2.w;
    r1.w = (uint)r1.w;
    r4.xyz = float3(0,0,0);
    r3.z = 0;
    while (true) {
      r3.w = (int)r3.z;
      r3.w = cmp(r3.w >= r2.w);
      if (r3.w != 0) break;
      r3.w = (uint)r3.z;
      r3.w = r3.w / r1.w;
      r3.w = frac(r3.w);
      r4.w = reversebits((uint)r3.z);
      r4.w = (int)r4.w ^ 0;
      r4.w = (uint)r4.w;
      r4.w = 2.32830644e-010 * r4.w;
      r3.w = 6.28318548 * r3.w;
      r4.w = sqrt(r4.w);
      r4.w = 1 + -r4.w;
      r4.w = sqrt(r4.w);
      sincos(r3.w, r5.x, r6.x);
      r6.x = r6.x * r4.w;
      r6.y = r5.x * r4.w;
      r5.xy = saturate(r6.xy * r3.xy + r0.zw);
      r5.xyz = t0.Sample(s0_s, r5.xy).xyz;
      r4.xyz = r5.xyz + r4.xyz;
      r3.z = (int)r3.z + 1;
    }
    r2.xyz = r4.xyz / r2.www;
  }
  r0.xy = r0.xy * cb0[38].zw + float2(-0.5,-0.5);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.y = cb2[4].w + -cb2[4].z;
  r0.x = -cb2[4].z + r0.x;
  r0.y = 1 / r0.y;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = -r0.y * r0.x + 1;
  r3.xyz = r2.xyz / r0.xxx;
  r3.xyz = r3.xyz + -r2.xyz;
  r2.xyz = cb2[5].xxx * r3.xyz + r2.xyz;
  r0.x = dot(r2.xzy, float3(1,1,2));
  r3.x = dot(r2.xz, float2(2,-2));
  r3.y = dot(r2.xzy, float3(-1,-1,2));
  r2.xy = r3.xy / r0.xx;
  r0.y = dot(cb2[2].xzy, float3(1,1,2));
  r3.x = dot(cb2[2].xz, float2(2,-2));
  r3.y = dot(cb2[2].xzy, float3(-1,-1,2));
  r2.zw = r3.xy / r0.yy;
  r2.xy = r2.xy + -r2.zw;
  r2.xy = -cb2[5].yy + abs(r2.xy);
  r2.xy = cb2[5].zz * r2.xy;
  r1.w = saturate(max(r2.x, r2.y));
  r1.w = 1 + -r1.w;
  r0.y = log2(r0.y);
  r2.x = cb2[5].w + r0.y;
  r0.x = log2(r0.x);
  r2.x = r2.x + -r0.x;
  r2.x = saturate(cb2[6].x * r2.x);
  r0.y = -cb2[5].w + r0.y;
  r0.x = r0.x + -r0.y;
  r0.x = saturate(cb2[6].x * r0.x);
  r0.x = r2.x * r0.x;
  r0.x = -r1.w * r0.x + 1;
  r0.y = 1 / cb2[6].y;
  r0.y = -2 + r0.y;
  r1.w = 1 + -r0.x;
  r0.y = r0.y * r1.w + 1;
  r0.x = r0.x / r0.y;
  r0.y = cb2[7].y + -cb2[7].x;
  r0.x = -cb2[7].x + r0.x;
  r0.y = 1 / r0.y;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r0.y * r0.x;
  r0.y = t1.Sample(s1_s, r0.zw).w;
  r0.x = r0.x * r0.y;
  r0.yzw = r1.xyz * r0.xxx;
  r1.xyz = -r1.xyz * r0.xxx + cb2[3].xyz;
  r0.yzw = cb2[7].zzz * r1.xyz + r0.yzw;
  o0.w = saturate(r0.x);
  o0.xyz = max(float3(0,0,0), r0.yzw);
  return;
}