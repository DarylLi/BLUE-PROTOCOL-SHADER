// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[211];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float3 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r0.x = t1.Load(r0.xyz).x;
  r0.y = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = 1 / r0.x;
  r0.x = r0.y + r0.x;
  r0.y = dot(v1.xyz, v1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v1.xyz * r0.yyy;
  r1.xyz = r0.yzw * r0.xxx;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r0.z = dot(r1.xyz, cb0[60].xyz);
  r0.y = r0.y / r0.z;
  r0.y = cb0[210].z * r0.y;
  r0.y = max(0, r0.y);
  r0.z = min(cb1[0].z, cb0[67].z);
  r1.z = cb0[67].z + -r0.z;
  r1.w = r0.w * r0.x + r1.z;
  r0.x = dot(r1.xyw, r1.xyw);
  r0.w = rsqrt(r0.x);
  r0.x = r0.x * r0.w;
  r0.y = max(cb1[0].w, r0.y);
  r1.z = cmp(0 < r0.y);
  r2.x = r0.y * r0.w;
  r0.z = r2.x * r1.w + r0.z;
  r2.x = -r2.x * r1.w + r1.w;
  r0.y = -r0.y * r0.w + 1;
  r0.y = r0.y * r0.x;
  r2.y = -cb1[3].y + r0.z;
  r2.y = cb1[0].y * r2.y;
  r2.y = max(-127, r2.y);
  r2.y = exp2(-r2.y);
  r2.y = cb1[3].x * r2.y;
  r0.z = -cb1[1].w + r0.z;
  r0.z = cb1[1].y * r0.z;
  r0.z = max(-127, r0.z);
  r0.z = exp2(-r0.z);
  r0.z = cb1[1].z * r0.z;
  r2.y = r1.z ? r2.y : cb1[0].x;
  r0.z = r1.z ? r0.z : cb1[1].x;
  r0.y = r1.z ? r0.y : r0.x;
  r1.z = r1.z ? r2.x : r1.w;
  r2.x = cb1[0].y * r1.z;
  r2.x = max(-127, r2.x);
  r2.z = exp2(-r2.x);
  r2.z = 1 + -r2.z;
  r2.z = r2.z / r2.x;
  r2.w = -r2.x * 0.240226507 + 0.693147182;
  r2.x = cmp(0.00999999978 < abs(r2.x));
  r2.x = r2.x ? r2.z : r2.w;
  r1.z = cb1[1].y * r1.z;
  r1.z = max(-127, r1.z);
  r2.z = exp2(-r1.z);
  r2.z = 1 + -r2.z;
  r2.z = r2.z / r1.z;
  r2.w = -r1.z * 0.240226507 + 0.693147182;
  r1.z = cmp(0.00999999978 < abs(r1.z));
  r1.z = r1.z ? r2.z : r2.w;
  r0.z = r1.z * r0.z;
  r0.z = r2.y * r2.x + r0.z;
  r1.z = r0.z * r0.y;
  r2.xy = cmp(float2(0,0) < cb1[3].zw);
  if (r2.x != 0) {
    r2.x = saturate(r0.x * cb1[7].x + cb1[7].y);
    r2.zw = float2(1,-1) * cb1[6].yx;
    r3.x = dot(r1.xy, r2.zw);
    r3.y = dot(r1.xy, cb1[6].xy);
    r3.z = r1.w;
    r4.xyz = t0.SampleLevel(s0_s, r3.xyz, 0).xyz;
    r3.xyz = t0.SampleLevel(s0_s, r3.xyz, cb1[7].z).xyz;
    r4.xyz = r4.xyz + -r3.xyz;
    r2.xzw = r2.xxx * r4.xyz + r3.xyz;
    r2.xzw = cb1[2].xyz * r2.xzw;
  } else {
    r2.xzw = cb1[2].xyz;
  }
  r3.x = cmp(cb1[4].w >= 0);
  r3.y = cmp(cb1[3].z == 0.000000);
  r3.x = r3.y ? r3.x : 0;
  if (r3.x != 0) {
    r1.xyw = r1.xyw * r0.www;
    r0.w = saturate(dot(r1.xyw, cb1[4].xyz));
    r0.w = log2(r0.w);
    r0.w = cb1[5].w * r0.w;
    r0.w = exp2(r0.w);
    r1.xyw = cb1[5].xyz * r0.www;
    r0.y = -cb1[4].w + r0.y;
    r0.y = max(0, r0.y);
    r0.y = r0.z * r0.y;
    r0.y = exp2(-r0.y);
    r0.y = min(1, r0.y);
    r0.y = 1 + -r0.y;
    r3.xyz = r1.xyw * r0.yyy;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r0.y = exp2(-r1.z);
  r0.y = min(1, r0.y);
  r3.w = max(cb1[2].w, r0.y);
  r0.x = cmp(cb1[3].w < r0.x);
  r0.x = r0.x ? r2.y : 0;
  r0.xyzw = r0.xxxx ? float4(0,0,0,1) : r3.xyzw;
  r1.x = 1 + -r0.w;
  r0.xyz = r2.xzw * r1.xxx + r0.xyz;
  r1.x = cmp(0 != cb0[184].x);
  r1.x = r1.x ? cb0[184].y : cb0[135].y;
  o0.xyz = r1.xxx * r0.xyz;
  o0.w = r0.w;
  return;
}