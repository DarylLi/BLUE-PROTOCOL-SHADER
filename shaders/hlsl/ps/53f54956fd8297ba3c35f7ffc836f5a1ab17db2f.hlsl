// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[19];
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
  float4 v3 : COLOR1,
  nointerpolation float4 v4 : COLOR2,
  float v5 : PARTICLE_TIME0,
  float4 v6 : TEXCOORD7,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v7.yyyy;
  r1.xyzw = v7.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v7.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.w = v8.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.w = v5.x * cb3[13].z + v2.x;
  r4.x = r0.w * cb3[14].y + v4.w;
  r0.w = v5.x * cb3[14].z + v2.y;
  r4.y = r0.w * cb3[14].w + v4.w;
  r0.w = t1.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r1.w = r0.w * 5 + cb3[15].y;
  r1.w = saturate(-5 + r1.w);
  r4.xyz = -cb3[8].xyz + cb3[7].xyz;
  r4.xyz = r1.www * r4.xyz + cb3[8].xyz;
  r1.w = -0.5 + r0.w;
  r1.w = r1.w + r1.w;
  r5.x = cb3[15].w * r1.w;
  r5.y = cb3[16].x * r1.w;
  r5.xy = v2.xy + r5.xy;
  r1.w = r5.y * 5 + cb3[16].z;
  r1.w = saturate(-5 + r1.w);
  r4.xyz = -cb3[9].xyz + r4.xyz;
  r4.xyz = r1.www * r4.xyz + cb3[9].xyz;
  r6.xyz = cb3[10].xyz + -r4.xyz;
  r4.xyz = cb3[16].www * r6.xyz + r4.xyz;
  r1.w = r5.y * cb3[17].y + -cb3[17].y;
  r1.w = saturate(cb3[17].w + r1.w);
  r0.x = dot(r0.xyz, r3.xyz);
  r0.y = r0.w * cb3[18].y + -cb3[18].y;
  r0.y = saturate(cb3[18].y * v3.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.x = r1.w * r0.x;
  r5.zw = float2(1,1) + -r5.xy;
  r0.yzw = saturate(r5.xzw * float3(5,5,5) + float3(-0.5,-0.5,-0.5));
  r0.y = r0.y * r0.z;
  r0.y = r0.y * r0.w;
  r0.w = saturate(r0.x * r0.y);
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
    r5.x = v6.w * r3.w;
    r3.xyz = v6.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v6.xyz;
    r5.x = v6.w;
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