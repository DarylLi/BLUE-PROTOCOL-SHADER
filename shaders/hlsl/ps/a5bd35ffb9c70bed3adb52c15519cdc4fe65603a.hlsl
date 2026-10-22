// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[16];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
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
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
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
  r2.xyz = cb3[0].xxx * v3.xyz;
  r3.xyz = -v3.xyz * cb3[0].xxx + cb4[1].xyz;
  r2.xyz = cb4[8].xxx * r3.xyz + r2.xyz;
  r0.w = cb0[142].z * cb4[8].w + v2.x;
  r3.x = cb4[9].z * r0.w;
  r0.w = cb0[142].z * cb4[9].w + v2.y;
  r3.y = cb4[10].x * r0.w;
  r0.w = t1.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r0.w = -0.5 + r0.w;
  r0.w = r0.w + r0.w;
  r3.xy = r0.ww * cb4[10].zw + v2.xy;
  r1.w = t2.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r1.w = r1.w * cb4[11].y + -cb4[11].y;
  r1.w = saturate(cb4[11].z + r1.w);
  r2.w = 1 + -v2.x;
  r2.w = saturate(-cb4[11].w + r2.w);
  r2.w = 1 + -r2.w;
  r3.x = cb0[142].z * cb4[12].z + v2.x;
  r3.z = cb0[142].z * cb4[13].z + v2.y;
  r3.xy = cb4[13].yw * r3.xz;
  r3.z = 6.28318548 * cb0[142].z;
  r3.z = sin(r3.z);
  r3.z = 1 + r3.z;
  r3.z = cb4[14].z * r3.z;
  r3.z = r3.z * 0.5 + cb4[14].y;
  r4.x = r3.z * r0.w;
  r4.y = 0;
  r3.xy = r4.xy + r3.xy;
  r0.w = t2.SampleBias(s2_s, r3.xy, cb0[143].y).y;
  r0.w = r0.w * cb4[14].w + -cb4[14].w;
  r0.w = saturate(cb4[15].x + r0.w);
  r3.x = saturate(v2.x * cb4[15].y + -cb4[11].w);
  r3.x = 1 + -r3.x;
  r0.w = r3.x * r0.w;
  r0.w = r2.w * r0.w + r1.w;
  r3.w = min(1, r0.w);
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
  r3.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.xyz = -cb1[5].xyz + r1.xyz;
    r5.yzw = float3(1,1,1) + cb1[19].xyz;
    r2.xyz = cmp(r5.yzw < abs(r2.xyz));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.x = 1;
    r3.xyzw = r0.wwww ? r1.yzwx : r3.xyzw;
    o0.w = r3.w;
  } else {
    o0.w = r3.w;
  }
  r1.xyz = r3.xyz * r5.xxx + r4.xyz;
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