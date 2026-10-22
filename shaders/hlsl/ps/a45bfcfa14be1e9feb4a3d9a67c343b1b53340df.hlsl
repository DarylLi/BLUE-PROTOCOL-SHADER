// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[134];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
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

  r0.xyzw = t1.Sample(s1_s, float2(0,0)).xyzw;
  r1.xyzw = v1.xyzw * r0.xyzw;
  r0.xyz = -v1.xyz * r0.xyz + cb2[1].xyz;
  r0.xyz = cb2[4].xxx * r0.xyz + r1.xyz;
  r1.xy = -cb1[129].xy + v0.xy;
  r1.xy = r1.xy * cb1[130].zw + -cb2[3].xy;
  r1.xy = r1.xy * cb1[130].xy + cb1[129].xy;
  r1.xy = cb1[132].zw * r1.xy;
  r1.xy = max(cb1[133].xy, r1.xy);
  r1.xy = min(cb1[133].zw, r1.xy);
  r0.w = t0.SampleLevel(s0_s, r1.xy, 0).x;
  r1.x = r0.w * cb1[65].x + cb1[65].y;
  r0.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.w = r1.x + r0.w;
  r1.x = cmp(cb1[31].w < 1);
  r1.y = cb1[65].w + r0.w;
  r1.y = cb1[65].z * r1.y;
  r1.y = 1 / r1.y;
  r0.w = r0.w * cb1[30].z + cb1[31].z;
  r0.w = r1.x ? r1.y : r0.w;
  r1.x = cb2[4].w + -r0.w;
  r1.x = cmp(9.99999975e-006 < abs(r1.x));
  r0.w = cmp(cb2[4].w >= r0.w);
  r0.w = r0.w ? 1.000000 : 0;
  r0.w = r1.x ? r0.w : 1;
  r1.w = saturate(r1.w * r0.w);
  r1.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyzw = v1.xyzw * r1.xyzw;
  r1.x = t2.Sample(s2_s, v4.xy).w;
  r1.y = w3.y + -r1.x;
  r1.y = w3.x * r1.y;
  r1.x = cmp(r1.x >= 0.5);
  r1.x = r1.x ? 1.000000 : 0;
  r1.z = cb0[4].x + -cb0[4].y;
  r1.x = r1.x * r1.z + cb0[4].y;
  r1.x = w3.x * r1.x;
  r1.yz = float2(1.5,0.5) * r1.yx;
  r1.x = r1.x * 0.5 + 1;
  r1.x = r1.y / r1.x;
  r1.x = min(1, abs(r1.x));
  r1.x = log2(r1.x);
  r1.x = cb0[4].z * r1.x;
  r1.x = exp2(r1.x);
  r1.x = 1 + -r1.x;
  r1.y = min(1, r1.z);
  r1.y = sqrt(r1.y);
  r1.x = r1.x * r1.y;
  r1.w = saturate(dot(cb0[5].ww, r1.xx));
  r1.xyz = cb0[5].xyz * r0.xyz;
  r0.x = 1.5;
  r0.xyzw = r0.xxxw * r1.xyzw;
  r1.x = cmp(cb0[3].x != 0.000000);
  r2.xyzw = saturate(cb0[6].xyzw);
  r2.xyzw = r2.xyzw * r0.xyzw;
  r0.xyzw = r1.xxxx ? r2.xyzw : r0.xyzw;
  r1.x = cb0[7].x + cb0[7].z;
  r1.x = cmp(r1.x >= v2.x);
  if (r1.x != 0) {
    r1.x = cb0[7].y + cb0[7].w;
    r1.x = cmp(r1.x >= v2.y);
    if (r1.x != 0) {
      r1.x = cmp(v2.x >= cb0[7].x);
      if (r1.x != 0) {
        r1.x = cmp(v2.y >= cb0[7].y);
        if (r1.x != 0) {
          r1.xy = cmp(float2(0,0) < cb0[8].xy);
          r1.zw = -cb0[7].xy + v2.xy;
          r2.xy = cmp(r1.zw >= float2(0,0));
          r2.zw = saturate(r1.zw / cb0[8].xy);
          r2.x = r2.x ? r2.z : 1;
          r3.xy = -cb0[8].xy + cb0[7].zw;
          r1.zw = -r3.xy + r1.zw;
          r3.xy = cmp(cb0[8].xy >= r1.zw);
          r1.zw = saturate(r1.zw / cb0[8].xy);
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
          r1.x = saturate(r1.y * cb0[8].z + r1.x);
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