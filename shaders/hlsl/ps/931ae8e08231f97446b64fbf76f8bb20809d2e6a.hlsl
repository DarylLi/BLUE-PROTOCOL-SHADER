// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v4.xy * v4.zw;
  r0.xyz = t0.Sample(s0_s, r0.xy).xyz;
  r1.xyz = cb1[1].xyz + -r0.xyz;
  r0.xyz = cb1[2].xxx * r1.xyz + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.w = 1;
  r0.xyzw = v1.xyzw * r0.xyzw;
  r1.x = cmp(cb0[3].x != 0.000000);
  r2.xyzw = saturate(cb0[4].xyzw);
  r2.xyzw = r2.xyzw * r0.xyzw;
  r0.xyzw = r1.xxxx ? r2.xyzw : r0.xyzw;
  r1.x = cb0[5].x + cb0[5].z;
  r1.x = cmp(r1.x >= v2.x);
  if (r1.x != 0) {
    r1.x = cb0[5].y + cb0[5].w;
    r1.x = cmp(r1.x >= v2.y);
    if (r1.x != 0) {
      r1.x = cmp(v2.x >= cb0[5].x);
      if (r1.x != 0) {
        r1.x = cmp(v2.y >= cb0[5].y);
        if (r1.x != 0) {
          r1.xy = cmp(float2(0,0) < cb0[6].xy);
          r1.zw = -cb0[5].xy + v2.xy;
          r2.xy = cmp(r1.zw >= float2(0,0));
          r2.zw = saturate(r1.zw / cb0[6].xy);
          r2.x = r2.x ? r2.z : 1;
          r3.xy = -cb0[6].xy + cb0[5].zw;
          r1.zw = -r3.xy + r1.zw;
          r3.xy = cmp(cb0[6].xy >= r1.zw);
          r1.zw = saturate(r1.zw / cb0[6].xy);
          r1.zw = float2(1,1) + -r1.zw;
          r1.z = min(r2.x, r1.z);
          r1.z = r3.x ? r1.z : r2.x;
          r1.x = r1.x ? r1.z : 1;
          r1.z = min(r1.x, r2.w);
          r1.z = r2.y ? r1.z : r1.x;
          r1.w = min(r1.z, r1.w);
          r1.z = r3.y ? r1.w : r1.z;
          r1.x = r1.y ? r1.z : r1.x;
          r1.y = r1.x + r1.x;
          r1.z = 1 + -r1.x;
          r1.xy = r1.xy * r1.xz;
          r1.x = saturate(r1.y * cb0[6].z + r1.x);
        } else {
          r1.x = 1;
        }
      } else {
        r1.x = 1;
      }
    } else {
      r1.x = 1;
    }
  } else {
    r1.x = 1;
  }
  o0.w = r1.x * r0.w;
  r1.xy = cmp(cb0[1].wy != float2(1,1));
  r2.xyz = float3(-0.25,-0.25,-0.25) + r0.xyz;
  r2.xyz = saturate(r2.xyz * cb0[1].www + float3(0.25,0.25,0.25));
  r0.xyz = r1.xxx ? r2.xyz : r0.xyz;
  r1.xzw = log2(r0.xyz);
  r1.xzw = cb0[1].xxx * r1.xzw;
  r2.xyz = exp2(r1.xzw);
  r3.xyz = float3(12.9200001,12.9200001,12.9200001) * r2.xyz;
  r2.xyz = cmp(r2.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
  r1.xzw = float3(0.416666657,0.416666657,0.416666657) * r1.xzw;
  r1.xzw = exp2(r1.xzw);
  r1.xzw = r1.xzw * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  r1.xzw = r2.xyz ? r1.xzw : r3.xyz;
  o0.xyz = r1.yyy ? r1.xzw : r0.xyz;
  return;
}