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
  float4 cb4[15];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
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
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xy = -cb0[129].xy + v4.xy;
  r5.zw = cb0[130].zw * r4.xy;
  r4.yzw = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r4.yzw, r4.yzw);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * 0.00280000013 + -0.400000006);
  r0.w = saturate(r0.w * 3 + -1);
  r1.w = cb4[8].x + -cb4[8].y;
  r0.w = r0.w * r1.w + cb4[8].y;
  r0.w = r0.w / cb0[130].x;
  r5.y = r4.x * cb0[130].z + -r0.w;
  r1.w = cb0[142].z * cb4[9].x + v2.x;
  r6.x = cb4[9].w * r1.w;
  r1.w = cb0[142].z * cb4[10].x + v2.y;
  r6.y = cb4[10].y * r1.w;
  r1.w = t2.SampleBias(s1_s, r6.xy, cb0[143].y).x;
  r1.w = -0.5 + r1.w;
  r1.w = r1.w + r1.w;
  r6.x = cb4[10].w * r1.w;
  r6.y = cb4[11].x * r1.w;
  r1.w = cb0[142].z * cb4[11].w + v2.x;
  r7.x = cb4[12].z * r1.w;
  r1.w = cb0[142].z * cb4[12].w + v2.y;
  r7.y = cb4[13].x * r1.w;
  r1.w = t3.SampleBias(s2_s, r7.xy, cb0[143].y).x;
  r1.w = saturate(r1.w * 5 + -0.5);
  r7.xyzw = r6.xyxy * r1.wwww + r5.ywzw;
  r7.xyzw = r7.xyzw * cb0[130].xyxy + cb0[129].xyxy;
  r7.xyzw = cb0[132].zwzw * r7.xyzw;
  r7.xyzw = max(cb0[133].xyxy, r7.xyzw);
  r7.xyzw = min(cb0[133].zwzw, r7.xyzw);
  r2.w = t1.Sample(s0_s, r7.xy).x;
  r2.w = r2.w * r2.w;
  r2.w = r2.w * r2.w;
  r2.w = cb0[135].z * r2.w;
  r4.y = 10 * r2.w;
  r5.x = r4.x * cb0[130].z + r0.w;
  r5.xy = r6.xy * r1.ww + r5.xw;
  r5.xy = r5.xy * cb0[130].xy + cb0[129].xy;
  r5.xy = cb0[132].zw * r5.xy;
  r5.xy = max(cb0[133].xy, r5.xy);
  r5.xy = min(cb0[133].zw, r5.xy);
  r0.w = t1.Sample(s0_s, r5.xy).y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = cb0[135].z * r0.w;
  r4.z = 10 * r0.w;
  r0.w = t1.Sample(s0_s, r7.zw).z;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = cb0[135].z * r0.w;
  r4.w = 10 * r0.w;
  r5.xyz = cb4[7].xyz + -r4.yzw;
  r4.xyz = cb4[13].yyy * r5.xyz + r4.yzw;
  r5.xyz = cb3[9].xyz + -r2.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.00666666683 * r0.w;
  r0.w = min(1, r0.w);
  r0.w = r0.w * 50 + -50;
  r1.w = 1 + -cb3[2].y;
  r0.w = saturate(r1.w * 51.5099983 + r0.w);
  r0.w = 1 + -r0.w;
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = r0.x * cb4[13].w + -cb4[13].w;
  r0.x = saturate(cb4[14].y + r0.x);
  r0.y = cb4[14].z * cb3[3].x;
  r0.x = r0.x * r0.y;
  r0.w = saturate(r0.w * r0.x);
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r5.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r3.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r5.z = cb0[208].z * r1.w;
    r3.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v3.w * r3.w;
    r3.xyz = v3.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v3.xyz;
    r5.x = v3.w;
  }
  r0.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xyz = -cb1[5].xyz + r2.xyz;
    r5.yzw = float3(1,1,1) + cb1[19].xyz;
    r4.xyz = cmp(r5.yzw < abs(r4.xyz));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r0.xyzw = r1.wwww ? r2.yzwx : r0.xyzw;
    o0.w = r0.w;
  } else {
    o0.w = r0.w;
  }
  r0.xyz = r0.xyz * r5.xxx + r3.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb2[166].xyz + -cb2[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb2[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}