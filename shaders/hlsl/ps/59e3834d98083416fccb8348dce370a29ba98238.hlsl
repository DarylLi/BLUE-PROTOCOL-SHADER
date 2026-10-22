// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  r0.yz = cmp((int2)r0.xx == int2(5,9));
  r0.w = (int)r0.z | (int)r0.y;
  if (r0.w == 0) {
    o0.xyzw = t4.Sample(s1_s, v0.xy).xyzw;
    return;
  }
  r1.xyz = t1.SampleLevel(s0_s, v0.xy, 0).xyz;
  r0.w = t2.SampleLevel(s0_s, v0.xy, 0).x;
  r2.xyzw = cmp((int4)r0.xxxx == int4(2,3,4,6));
  r1.w = (int)r2.y | (int)r2.x;
  r1.w = (int)r2.z | (int)r1.w;
  r0.y = (int)r0.y | (int)r1.w;
  r0.y = (int)r2.w | (int)r0.y;
  r2.xyzw = cmp((int4)r0.xxxx == int4(7,8,12,13));
  r0.x = (int)r0.y | (int)r2.x;
  r0.x = (int)r2.y | (int)r0.x;
  r0.x = (int)r2.z | (int)r0.x;
  r0.x = (int)r2.w | (int)r0.x;
  r0.x = (int)r0.z | (int)r0.x;
  r0.x = (int)r0.w & (int)r0.x;
  r2.xyzw = t5.Sample(s1_s, v0.xy).xyzw;
  r0.y = max(9.99999975e-006, r2.w);
  r0.yzw = r2.xyz / r0.yyy;
  r2.xyzw = t4.SampleLevel(s1_s, v0.xy, 0).xyzw;
  r1.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = saturate(r2.w / r1.w);
  r2.w = 1 + -r1.w;
  r3.xyz = r2.xyz * r1.www;
  r4.xyz = r2.xyz * r2.www;
  r0.x = r0.x * 255 + 0.5;
  r5.y = (uint)r0.x;
  r5.xzw = float3(0,0,0);
  r5.xyz = t3.Load(r5.xyz).xyz;
  r0.xyz = -r2.xyz * r1.www + r0.yzw;
  r0.xyz = r5.xyz * r0.xyz + r3.xyz;
  o0.xyz = r0.xyz * r1.xyz + r4.xyz;
  o0.w = 0;
  return;
}