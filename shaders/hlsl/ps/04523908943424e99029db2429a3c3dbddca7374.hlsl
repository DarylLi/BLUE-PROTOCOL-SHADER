// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2DMS<float4,2> t1 : register(t1);

Texture2DMS<float4,2> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[27].xy * v0.xy;
  r0.xy = (int2)r0.xy;
  r1.xyz = t2.Sample(s0_s, v0.xy).xyz;
  r1.w = cmp(asint(cb0[42].y) != 0);
  r0.zw = float2(0,0);
  r2.xyz = float3(0,0,0);
  r3.xyz = float3(0,0,0);
  while (true) {
    r3.w = cmp((uint)r3.z >= 2);
    if (r3.w != 0) break;
    r4.xyzw = t0.Load(r0.xy, r3.z).xyzw;
    r3.w = t1.Load(r0.xy, r3.z).x;
    r5.x = cmp(0 < r3.w);
    r5.x = r1.w ? r5.x : 0;
    r4.w = r5.x ? 1 : r4.w;
    r5.x = cmp(0 != r4.w);
    r6.y = max(r3.y, r3.w);
    r2.w = r3.x;
    r4.xyzw = r2.xyzw + r4.xyzw;
    r2.xyz = r5.xxx ? r4.xyz : r2.xyz;
    r6.x = r4.w;
    r3.x = r2.w;
    r3.xy = r5.xx ? r6.xy : r3.xy;
    r3.z = (int)r3.z + 1;
  }
  r2.xyz = float3(0.5,0.5,0.5) * r2.xyz;
  r0.z = 0.5 * r3.x;
  r0.w = max(9.99999975e-005, r0.z);
  r2.xyz = r2.xyz / r0.www;
  r2.xyz = log2(r2.xyz);
  r2.xyz = float3(0.454545468,0.454545468,0.454545468) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * r0.zzz;
  r0.zw = v0.xy * cb0[41].xy + cb0[41].zw;
  r0.zw = -cb1[152].zw * cb0[34].zw + r0.zw;
  r0.zw = max(cb0[40].xy, r0.zw);
  r0.zw = min(cb0[40].zw, r0.zw);
  r0.z = t3.SampleLevel(s1_s, r0.zw, 0).x;
  r0.z = r0.z + -r3.y;
  r0.z = saturate(-r0.z * 20000 + 1);
  r3.yz = (int2)r0.xy ^ int2(2,2);
  r0.xy = max((int2)-r0.xy, (int2)r0.xy);
  r0.xy = (uint2)r0.xy >> int2(1,1);
  r4.xy = -(int2)r0.xy;
  r3.yz = (int2)r3.yz & int2(0x80000000,0x80000000);
  r0.xy = r3.yz ? r4.xy : r0.xy;
  r0.x = (int)r0.y + (int)r0.x;
  r0.y = (int)r0.x & 0x80000000;
  r0.x = max((int)-r0.x, (int)r0.x);
  r0.x = (int)r0.x & 1;
  r0.w = -(int)r0.x;
  r0.x = r0.y ? r0.w : r0.x;
  r0.x = (int)r0.x;
  r0.x = r0.x * 0.560000002 + 0.200000003;
  r0.y = asuint(cb0[42].x);
  r0.w = 1 + -r0.x;
  r0.x = saturate(r0.y * r0.w + r0.x);
  r0.y = r0.z * 0.300000012 + 0.699999988;
  r0.w = 1 + -r0.x;
  r0.x = r0.z * r0.w + r0.x;
  r0.z = -r3.x * 0.5 + 1;
  r0.x = r0.x * r0.y;
  r0.xyw = r2.xyz * r0.xxx;
  o0.xyz = r1.xyz * r0.zzz + r0.xyw;
  o0.w = 0;
  return;
}