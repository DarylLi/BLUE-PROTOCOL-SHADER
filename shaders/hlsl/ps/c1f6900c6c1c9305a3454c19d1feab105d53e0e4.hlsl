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

  r0.xy = cmp(v4.zw == float2(0,0));
  r0.x = r0.y ? r0.x : 0;
  r0.y = cmp(0 < v4.z);
  r1.yz = float2(1,1);
  r1.xw = v4.zw;
  r0.zw = r0.yy ? r1.xy : r1.zw;
  r1.xz = r0.yy ? cb0[1].xy : float2(0,1);
  r1.yw = r0.yy ? float2(0,1) : cb0[1].zw;
  r0.yz = v4.xy * r0.zw;
  r0.yz = frac(r0.yz);
  r1.zw = r1.zw + -r1.xy;
  r0.yz = r0.yz * r1.zw + r1.xy;
  r0.xy = r0.xx ? v4.xy : r0.yz;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r0.xyzw = v1.xyzw * r0.xyzw;
  r1.xyzw = saturate(cb0[2].xyzw);
  r2.xyzw = r1.xyzw * r0.xyzw;
  r0.w = cb0[3].x + cb0[3].z;
  r0.w = cmp(r0.w >= v2.x);
  if (r0.w != 0) {
    r0.w = cb0[3].y + cb0[3].w;
    r0.w = cmp(r0.w >= v2.y);
    if (r0.w != 0) {
      r0.w = cmp(v2.x >= cb0[3].x);
      if (r0.w != 0) {
        r0.w = cmp(v2.y >= cb0[3].y);
        if (r0.w != 0) {
          r3.xy = cmp(float2(0,0) < cb0[4].xy);
          r3.zw = -cb0[3].xy + v2.xy;
          r4.xy = cmp(r3.zw >= float2(0,0));
          r4.zw = saturate(r3.zw / cb0[4].xy);
          r0.w = r4.x ? r4.z : 1;
          r4.xz = -cb0[4].xy + cb0[3].zw;
          r3.zw = -r4.xz + r3.zw;
          r4.xz = cmp(cb0[4].xy >= r3.zw);
          r3.zw = saturate(r3.zw / cb0[4].xy);
          r3.zw = float2(1,1) + -r3.zw;
          r1.w = min(r3.z, r0.w);
          r0.w = r4.x ? r1.w : r0.w;
          r0.w = r3.x ? r0.w : 1;
          r1.w = min(r0.w, r4.w);
          r1.w = r4.y ? r1.w : r0.w;
          r3.x = min(r1.w, r3.w);
          r1.w = r4.z ? r3.x : r1.w;
          r0.w = r3.y ? r1.w : r0.w;
          r1.w = r0.w + r0.w;
          r3.x = 1 + -r0.w;
          r1.w = r3.x * r1.w;
          r0.w = r0.w * r0.w;
          r0.w = saturate(r1.w * cb0[4].z + r0.w);
        } else {
          r0.w = 1;
        }
      } else {
        r0.w = 1;
      }
    } else {
      r0.w = 1;
    }
  } else {
    r0.w = 1;
  }
  r0.w = r2.w * r0.w;
  r3.xy = cmp(cb0[0].wy != float2(1,1));
  r0.xyz = r0.xyz * r1.xyz + float3(-0.25,-0.25,-0.25);
  r0.xyz = saturate(r0.xyz * cb0[0].www + float3(0.25,0.25,0.25));
  r0.xyz = r3.xxx ? r0.xyz : r2.xyz;
  r1.xyz = log2(r0.xyz);
  r1.xyz = cb0[0].xxx * r1.xyz;
  r2.xyz = exp2(r1.xyz);
  r3.xzw = float3(12.9200001,12.9200001,12.9200001) * r2.xyz;
  r2.xyz = cmp(r2.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
  r1.xyz = float3(0.416666657,0.416666657,0.416666657) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r1.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r1.xyz = r2.xyz ? r1.xyz : r3.xzw;
  o0.xyz = r3.yyy ? r1.xyz : r0.xyz;
  r0.x = r0.w * -2 + 1;
  o0.w = cb0[0].z * r0.x + r0.w;
  return;
}