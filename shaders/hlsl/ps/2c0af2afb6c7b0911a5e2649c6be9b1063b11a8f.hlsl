// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[14];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v4.yyyy;
  r0.xyzw = v4.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v4.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xy = -cb0[129].xy + v4.xy;
  r3.zw = cb0[130].zw * r2.xy;
  r2.yzw = -cb0[67].xyz + r1.xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * 0.00280000013 + -0.400000006);
  r0.w = saturate(r0.w * 3 + -1);
  r1.w = cb4[8].x + -cb4[8].y;
  r0.w = r0.w * r1.w + cb4[8].y;
  r0.w = r0.w / cb0[130].x;
  r3.y = r2.x * cb0[130].z + -r0.w;
  r1.w = cb0[142].z * cb4[9].x + v2.x;
  r4.x = cb4[9].w * r1.w;
  r1.w = cb0[142].z * cb4[10].x + v2.y;
  r4.y = cb4[10].y * r1.w;
  r1.w = t2.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r1.w = -0.5 + r1.w;
  r1.w = r1.w + r1.w;
  r4.x = cb4[10].w * r1.w;
  r4.y = cb4[11].x * r1.w;
  r1.w = cb0[142].z * cb4[11].w + v2.x;
  r5.x = cb4[12].z * r1.w;
  r1.w = cb0[142].z * cb4[12].w + v2.y;
  r5.y = cb4[13].x * r1.w;
  r1.w = t3.SampleBias(s2_s, r5.xy, cb0[143].y).x;
  r1.w = saturate(r1.w * 5 + -0.5);
  r5.xyzw = r4.xyxy * r1.wwww + r3.ywzw;
  r5.xyzw = r5.xyzw * cb0[130].xyxy + cb0[129].xyxy;
  r5.xyzw = cb0[132].zwzw * r5.xyzw;
  r5.xyzw = max(cb0[133].xyxy, r5.xyzw);
  r5.xyzw = min(cb0[133].zwzw, r5.xyzw);
  r2.y = t1.Sample(s0_s, r5.xy).x;
  r2.y = r2.y * r2.y;
  r2.y = r2.y * r2.y;
  r2.y = cb0[135].z * r2.y;
  r2.y = 10 * r2.y;
  r3.x = r2.x * cb0[130].z + r0.w;
  r3.xy = r4.xy * r1.ww + r3.xw;
  r3.xy = r3.xy * cb0[130].xy + cb0[129].xy;
  r3.xy = cb0[132].zw * r3.xy;
  r3.xy = max(cb0[133].xy, r3.xy);
  r3.xy = min(cb0[133].zw, r3.xy);
  r0.w = t1.Sample(s0_s, r3.xy).y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = cb0[135].z * r0.w;
  r2.z = 10 * r0.w;
  r0.w = t1.Sample(s0_s, r5.zw).z;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = cb0[135].z * r0.w;
  r2.w = 10 * r0.w;
  r3.xyz = cb4[7].xyz + -r2.yzw;
  r2.xyz = cb4[13].yyy * r3.xyz + r2.yzw;
  r3.xyz = cb1[5].xyz + -r1.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.00499999989 * r0.w;
  r0.w = min(1, r0.w);
  r0.w = r0.w * 5 + -5;
  r0.w = saturate(cb3[2].w * 6 + r0.w);
  r3.w = saturate(cb4[13].w * r0.w);
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
    r5.x = v3.w * r4.w;
    r4.xyz = v3.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v3.xyz;
    r5.x = v3.w;
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