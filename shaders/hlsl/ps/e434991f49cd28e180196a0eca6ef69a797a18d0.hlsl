// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[198];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t3.SampleLevel(s0_s, v0.xy, 0).zw;
  r0.y = 255 * r0.y;
  r0.y = round(r0.y);
  r0.y = (uint)r0.y;
  r0.y = (int)r0.y & 15;
  r0.yz = cmp((int2)r0.yy != int2(0,14));
  r0.y = r0.z ? r0.y : 0;
  if (r0.y != 0) {
    r0.yzw = t2.SampleLevel(s0_s, v0.xy, 0).xyz;
    r1.x = t1.SampleLevel(s0_s, v0.xy, 0).x;
    r1.y = r1.x * cb0[65].x + cb0[65].y;
    r1.x = r1.x * cb0[65].z + -cb0[65].w;
    r1.x = 1 / r1.x;
    r1.x = r1.y + r1.x;
    r0.yzw = r0.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r1.y = dot(r0.yzw, r0.yzw);
    r1.y = rsqrt(r1.y);
    r0.yzw = r1.yyy * r0.yzw;
    r1.yzw = v1.xyz * r1.xxx;
    r2.xyz = v1.xyz * r1.xxx + cb0[67].xyz;
    r2.w = -1;
    r1.x = dot(cb1[0].xyzw, r2.xyzw);
    r1.x = saturate(abs(r1.x) * cb1[7].x + cb1[7].y);
    r1.x = 1 + -r1.x;
    r3.xyz = -cb1[1].xyz + r2.xyz;
    r2.w = dot(r3.xyz, cb1[2].xyz);
    r2.w = cb1[2].w + -abs(r2.w);
    r2.w = saturate(cb1[7].x * r2.w);
    r3.x = dot(r3.xyz, cb1[3].xyz);
    r3.x = cb1[3].w + -abs(r3.x);
    r3.x = saturate(cb1[7].x * r3.x);
    r2.w = r3.x * r2.w;
    r1.x = r2.w * r1.x;
    r2.w = dot(cb1[0].xyz, r0.yzw);
    r2.w = saturate(r2.w * cb1[8].x + cb1[8].y);
    r0.x = -0.200000003 + r0.x;
    r0.x = saturate(10 * r0.x);
    r0.x = 1 + -r0.x;
    r1.x = r2.w * r1.x;
    r0.x = r1.x * r0.x;
    r1.x = cmp(0 < r0.x);
    if (r1.x != 0) {
      r1.x = dot(r1.yzw, r1.yzw);
      r1.x = rsqrt(r1.x);
      r1.xyz = r1.yzw * r1.xxx;
      r1.w = dot(r1.xyz, -cb1[0].xyz);
      r1.w = r1.w + r1.w;
      r1.xyz = cb1[0].xyz * r1.www + r1.xyz;
      r3.xyz = cb1[5].xyz * r0.zzz;
      r3.xyz = r0.yyy * cb1[4].xyz + r3.xyz;
      r0.yzw = r0.www * cb1[6].xyz + r3.xyz;
      r1.w = dot(r1.xyz, r0.yzw);
      r1.w = r1.w + r1.w;
      r0.yzw = r0.yzw * -r1.www + r1.xyz;
      r0.yzw = r0.yzw * cb1[7].zzz + r2.xyz;
      r0.yzw = cb0[70].xyz + r0.yzw;
      r1.xyz = cb0[13].xyz * r0.zzz;
      r1.xyz = r0.yyy * cb0[12].xyz + r1.xyz;
      r0.yzw = r0.www * cb0[14].xyz + r1.xyz;
      r0.yzw = cb0[15].xyz + r0.yzw;
      r1.x = asuint(cb0[197].w) << 2;
      r1.yzw = cb1[r1.x+10].xyw * r0.zzz;
      r1.yzw = r0.yyy * cb1[r1.x+9].xyw + r1.yzw;
      r0.yzw = r0.www * cb1[r1.x+11].xyw + r1.yzw;
      r0.yzw = cb1[r1.x+12].xyw + r0.yzw;
      r1.x = cb1[19].z ? cb0[197].w : 0;
      r0.yz = r0.yz / r0.ww;
      r0.yz = max(-cb1[19].xy, r0.yz);
      r0.yz = min(cb1[19].xy, r0.yz);
      r0.yz = r0.yz * cb1[r1.x+17].xy + cb1[r1.x+17].zw;
      r1.xyzw = t0.SampleLevel(s1_s, r0.yz, 0).xyzw;
      r0.w = r1.w * r0.x;
    } else {
      r1.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.xyz = cb0[135].yyy * r1.xyz;
    o0.xyzw = r0.xyzw;
  } else {
    o0.xyzw = float4(0,0,0,0);
  }
  return;
}