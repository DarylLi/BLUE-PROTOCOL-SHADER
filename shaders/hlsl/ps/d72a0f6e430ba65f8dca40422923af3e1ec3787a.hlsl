// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
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
  r0.y = w3.y + -r0.x;
  r0.y = w3.x * r0.y;
  r0.x = cmp(r0.x >= 0.5);
  r0.x = r0.x ? 1.000000 : 0;
  r0.z = cb0[2].x + -cb0[2].y;
  r0.x = r0.x * r0.z + cb0[2].y;
  r0.x = w3.x * r0.x;
  r0.yz = float2(1.5,0.5) * r0.yx;
  r0.x = r0.x * 0.5 + 1;
  r0.x = r0.y / r0.x;
  r0.x = min(1, abs(r0.x));
  r0.x = log2(r0.x);
  r0.x = cb0[2].z * r0.x;
  r0.x = exp2(r0.x);
  r0.x = 1 + -r0.x;
  r0.y = min(1, r0.z);
  r0.y = sqrt(r0.y);
  r0.x = r0.x * r0.y;
  r0.w = saturate(dot(cb0[3].ww, r0.xx));
  r0.xyz = cb0[3].xyz * v1.xyz;
  r1.x = 1.5;
  r1.w = v1.w;
  r0.xyzw = r1.xxxw * r0.xyzw;
  r1.xyzw = saturate(cb0[4].xyzw);
  r2.xyzw = r1.xyzw * r0.xyzw;
  r0.w = cb0[5].x + cb0[5].z;
  r0.w = cmp(r0.w >= v2.x);
  if (r0.w != 0) {
    r0.w = cb0[5].y + cb0[5].w;
    r0.w = cmp(r0.w >= v2.y);
    if (r0.w != 0) {
      r0.w = cmp(v2.x >= cb0[5].x);
      if (r0.w != 0) {
        r0.w = cmp(v2.y >= cb0[5].y);
        if (r0.w != 0) {
          r3.xy = cmp(float2(0,0) < cb0[6].xy);
          r3.zw = -cb0[5].xy + v2.xy;
          r4.xy = cmp(r3.zw >= float2(0,0));
          r4.zw = saturate(r3.zw / cb0[6].xy);
          r0.w = r4.x ? r4.z : 1;
          r4.xz = -cb0[6].xy + cb0[5].zw;
          r3.zw = -r4.xz + r3.zw;
          r4.xz = cmp(cb0[6].xy >= r3.zw);
          r3.zw = saturate(r3.zw / cb0[6].xy);
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
          r0.w = saturate(r1.w * cb0[6].z + r0.w);
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