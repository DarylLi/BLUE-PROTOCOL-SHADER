// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : ORIGINAL_POSITION0,
  float2 v3 : TEXCOORD0,
  float2 w3 : TEXCOORD2,
  float4 v4 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.Sample(s0_s, v4.xy).w;
  r0.x = v1.w * r0.x;
  r0.y = cb0[3].x + cb0[3].z;
  r0.y = cmp(r0.y >= v2.x);
  if (r0.y != 0) {
    r0.y = cb0[3].y + cb0[3].w;
    r0.y = cmp(r0.y >= v2.y);
    if (r0.y != 0) {
      r0.y = cmp(v2.x >= cb0[3].x);
      if (r0.y != 0) {
        r0.y = cmp(v2.y >= cb0[3].y);
        if (r0.y != 0) {
          r0.yz = cmp(float2(0,0) < cb0[4].xy);
          r1.xy = -cb0[3].xy + v2.xy;
          r1.zw = cmp(r1.xy >= float2(0,0));
          r2.xy = saturate(r1.xy / cb0[4].xy);
          r0.w = r1.z ? r2.x : 1;
          r2.xz = -cb0[4].xy + cb0[3].zw;
          r1.xy = -r2.xz + r1.xy;
          r2.xz = cmp(cb0[4].xy >= r1.xy);
          r1.xy = saturate(r1.xy / cb0[4].xy);
          r1.xy = float2(1,1) + -r1.xy;
          r1.x = min(r1.x, r0.w);
          r0.w = r2.x ? r1.x : r0.w;
          r0.y = r0.y ? r0.w : 1;
          r0.w = min(r0.y, r2.y);
          r0.w = r1.w ? r0.w : r0.y;
          r1.x = min(r0.w, r1.y);
          r0.w = r2.z ? r1.x : r0.w;
          r0.y = r0.z ? r0.w : r0.y;
          r0.z = r0.y + r0.y;
          r0.w = 1 + -r0.y;
          r0.yz = r0.yz * r0.yw;
          r0.y = saturate(r0.z * cb0[4].z + r0.y);
        } else {
          r0.y = 1;
        }
      } else {
        r0.y = 1;
      }
    } else {
      r0.y = 1;
    }
  } else {
    r0.y = 1;
  }
  r0.x = r0.x * r0.y;
  r0.yz = cmp(cb0[0].wy != float2(1,1));
  r1.xyz = float3(-0.25,-0.25,-0.25) + v1.xyz;
  r1.xyz = saturate(r1.xyz * cb0[0].www + float3(0.25,0.25,0.25));
  r1.xyz = r0.yyy ? r1.xyz : v1.xyz;
  r2.xyz = log2(r1.xyz);
  r2.xyz = cb0[0].xxx * r2.xyz;
  r3.xyz = exp2(r2.xyz);
  r4.xyz = float3(12.9200001,12.9200001,12.9200001) * r3.xyz;
  r3.xyz = cmp(r3.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
  r2.xyz = float3(0.416666657,0.416666657,0.416666657) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r2.xyz = r3.xyz ? r2.xyz : r4.xyz;
  o0.xyz = r0.zzz ? r2.xyz : r1.xyz;
  r0.y = r0.x * -2 + 1;
  o0.w = cb0[0].z * r0.y + r0.x;
  return;
}