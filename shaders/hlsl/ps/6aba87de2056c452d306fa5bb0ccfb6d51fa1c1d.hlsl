// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[168];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation float4 v3 : COLOR2,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xy = float2(0.5,0.5) + -v2.xy;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r2.xy = r2.xy / r0.ww;
  r0.w = cb0[142].z * cb3[9].z + v2.x;
  r3.x = r0.w * cb3[10].y + v3.w;
  r0.w = cb0[142].z * cb3[10].z + v2.y;
  r3.y = r0.w * cb3[10].w + v3.w;
  r0.w = t1.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r2.xy = r2.xy * r0.ww;
  r2.xy = r2.xy * cb3[11].yy + v2.xy;
  r2.xy = float2(-0.5,-0.5) + r2.xy;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r0.w = -r0.w * 2 + 1;
  r1.w = cb3[11].z * r0.w;
  r1.w = r1.w * r1.w;
  r1.w = 1.44269514 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 / r1.w;
  r2.x = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r1.w = 1 + -r1.w;
  r0.w = r0.w ? r1.w : 0;
  r2.w = r0.w ? r2.x : 0;
  r0.w = r2.w * 5 + cb3[12].x;
  r0.w = saturate(-5 + r0.w);
  r3.xyz = -cb3[7].xyz + cb3[6].xyz;
  r3.xyz = r0.www * r3.xyz + cb3[7].xyz;
  r4.xyz = cb3[8].xyz + -r3.xyz;
  r3.xyz = cb3[12].yyy * r4.xyz + r3.xyz;
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r4.xyz = cb0[5].xyw * r1.yyy;
    r4.xyz = r1.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r1.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r5.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r4.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r5.z = cb0[208].z * r0.w;
    r4.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v4.w * r4.w;
    r4.xyz = v4.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v4.xyz;
    r5.x = v4.w;
  }
  r2.xyz = max(float3(0,0,0), r3.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xyz = -cb1[5].xyz + r1.xyz;
    r5.yzw = float3(1,1,1) + cb1[19].xyz;
    r3.xyz = cmp(r5.yzw < abs(r3.xyz));
    r0.w = (int)r3.y | (int)r3.x;
    r0.w = (int)r3.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.x = 1;
    r2.xyzw = r0.wwww ? r1.yzwx : r2.xyzw;
    o0.w = r2.w;
  } else {
    o0.w = r2.w;
  }
  r1.xyz = r2.xyz * r5.xxx + r4.xyz;
  r2.xyz = cb0[135].yyy * r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r0.w);
  r0.xyzw = r1.wwww * r0.xyzw;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r0.x = dot(r0.xyz, cb0[358].xyz);
  r0.x = -1 + r0.x;
  r0.x = -abs(r0.x) * 0.5 + 1;
  r0.x = max(0, r0.x);
  r3.xyz = cb2[166].xyz + -cb2[165].xyz;
  r0.xyz = r0.xxx * r3.xyz + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r0.xyz = -cb2[167].xyz + r0.xyz;
  r0.xyz = r1.www * r0.xyz + cb2[167].xyz;
  r0.xyz = -r1.xyz * cb0[135].yyy + r0.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}