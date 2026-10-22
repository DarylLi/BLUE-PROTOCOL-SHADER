// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[185];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cb0[27].z ? 0 : r0.x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    if (-1 != 0) discard;
    o0.xyzw = float4(0,0,0,1);
    return;
  } else {
    r0.y = cmp(0 >= cb2[8].w);
    if (r0.y != 0) {
      if (-1 != 0) discard;
      o0.xyzw = float4(0,0,0,1);
      return;
    }
  }
  r0.x = max(9.99999996e-013, r0.x);
  r1.xyzw = cb1[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb1[44].xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb1[46].xyzw + r1.xyzw;
  r0.xyzw = cb1[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb1[70].xyz + r0.xyz;
  r1.xyz = cb1[5].xyw * r0.yyy;
  r1.xyz = r0.xxx * cb1[4].xyw + r1.xyz;
  r1.xyz = r0.zzz * cb1[6].xyw + r1.xyz;
  r1.xyz = cb1[7].xyw + r1.xyz;
  r2.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[172].xyz;
  r0.w = cmp(0 != cb1[184].x);
  r0.w = r0.w ? cb1[184].y : cb1[135].y;
  r0.w = cb1[135].z * r0.w;
  r1.xy = r1.xy / r1.zz;
  r1.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r0.xyz = r0.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r2.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = -cb0[26].y + r0.x;
  r0.x = max(0, r0.x);
  r0.x = cb2[3].w * r0.x;
  r0.x = cb2[3].y * r0.x;
  r1.z = sqrt(r0.x);
  r0.x = cb2[3].x * r1.z;
  r0.y = cmp(r0.x < 0.707106769);
  r0.x = dot(r0.xx, r0.xx);
  r0.x = min(1, r0.x);
  r0.x = r0.y ? r0.x : 1;
  r1.xyzw = t1.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r1.xyz = r1.xyz * r0.xxx;
  r0.y = 1 + -r1.w;
  r0.x = -r0.x * r0.y + 1;
  r0.yzw = r1.xyz * r0.www;
  o0.xyz = min(float3(32256,32256,32256), r0.yzw);
  o0.w = dot(r0.xxx, float3(0.333333343,0.333333343,0.333333343));
  return;
}