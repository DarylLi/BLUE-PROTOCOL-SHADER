// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[43];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[27].xy * v0.xy;
  r0.xy = (int2)r0.xy;
  r1.xy = (int2)r0.xy ^ int2(2,2);
  r1.xy = (int2)r1.xy & int2(0x80000000,0x80000000);
  r1.zw = max((int2)-r0.xy, (int2)r0.xy);
  r1.zw = (uint2)r1.zw >> int2(1,1);
  r2.xy = -(int2)r1.zw;
  r1.xy = r1.xy ? r2.xy : r1.zw;
  r1.x = (int)r1.y + (int)r1.x;
  r1.y = (int)r1.x & 0x80000000;
  r1.x = max((int)-r1.x, (int)r1.x);
  r1.x = (int)r1.x & 1;
  r1.z = -(int)r1.x;
  r1.x = r1.y ? r1.z : r1.x;
  r1.x = (int)r1.x;
  r1.x = r1.x * 0.560000002 + 0.200000003;
  r1.y = 1 + -r1.x;
  r1.z = asuint(cb0[42].x);
  r1.x = saturate(r1.z * r1.y + r1.x);
  r1.y = 1 + -r1.x;
  r1.zw = v0.xy * cb0[41].xy + cb0[41].zw;
  r1.zw = -cb1[152].zw * cb0[34].zw + r1.zw;
  r1.zw = max(cb0[40].xy, r1.zw);
  r1.zw = min(cb0[40].zw, r1.zw);
  r1.z = t3.SampleLevel(s1_s, r1.zw, 0).x;
  r0.zw = float2(0,0);
  r0.z = t1.Load(r0.xyz).x;
  r2.xyzw = t0.Load(r0.xyw).xyzw;
  r0.x = r1.z + -r0.z;
  r0.y = cmp(0 < r0.z);
  r0.x = saturate(-r0.x * 20000 + 1);
  r0.z = r0.x * r1.y + r1.x;
  r0.x = r0.x * 0.300000012 + 0.699999988;
  r0.x = r0.z * r0.x;
  r0.z = cmp(asint(cb0[42].y) != 0);
  r0.y = r0.z ? r0.y : 0;
  r0.y = r0.y ? 1 : r2.w;
  r0.z = max(9.99999975e-005, r0.y);
  r1.xyz = r2.xyz / r0.zzz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(0.454545468,0.454545468,0.454545468) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * r0.yyy;
  r0.y = 1 + -r0.y;
  r0.xzw = r1.xyz * r0.xxx;
  r1.xyz = t2.Sample(s0_s, v0.xy).xyz;
  o0.xyz = r1.xyz * r0.yyy + r0.xzw;
  o0.w = 0;
  return;
}