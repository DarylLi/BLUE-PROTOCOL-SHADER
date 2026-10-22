// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[29];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v4.xy;
  r2.xyz = r1.xyx * cb0[130].zwz + float3(-0.5,-0.5,-0.469999999);
  r3.xy = v4.ww * r2.xy;
  r3.zw = v4.zw;
  r4.xyw = float3(2,-2,1);
  r4.z = v4.w;
  r3.xyzw = r4.xyzw * r3.xyzw;
  r4.xyzw = cb0[45].xyzw * v4.yyyy;
  r4.xyzw = v4.xxxx * cb0[44].xyzw + r4.xyzw;
  r4.xyzw = v4.zzzz * cb0[46].xyzw + r4.xyzw;
  r4.xyzw = cb0[47].xyzw + r4.xyzw;
  r2.xyw = r4.xyz / r4.www;
  r4.xyz = -cb0[70].xyz + r2.xyw;
  r0.w = dot(-r2.xyw, -r2.xyw);
  r0.w = rsqrt(r0.w);
  r5.xyz = -r2.xyw * r0.www;
  r1.zw = cb4[17].yw * float2(0.0199999996,0.0199999996) + float2(-0.00999999978,-0.00999999978);
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.xyz, r5.xyz);
  r0.xyzw = r6.xyxy * r1.zzww + v2.xyxy;
  r0.y = t2.SampleBias(s2_s, r0.xy, cb0[143].y).x;
  r0.z = t2.SampleBias(s2_s, r0.zw, cb0[143].y).y;
  r0.z = cb4[18].x * r0.z;
  r0.y = r0.y * cb4[17].z + r0.z;
  r0.zw = cb4[18].yw * float2(0.0199999996,0.0199999996) + float2(-0.00999999978,-0.00999999978);
  r5.xyzw = r6.xyxy * r0.zzww + v2.xyxy;
  r0.z = t2.SampleBias(s2_s, r5.xy, cb0[143].y).z;
  r0.y = r0.z * cb4[18].z + r0.y;
  r0.z = t2.SampleBias(s2_s, r5.zw, cb0[143].y).w;
  r0.y = saturate(r0.z * cb4[19].x + r0.y);
  r0.z = max(cb4[19].y, r0.y);
  r5.xyz = cb4[4].xyz * r0.zzz;
  r0.x = cb4[19].w + r0.x;
  r0.w = cb4[20].x + -cb4[20].y;
  r0.x = saturate(r0.x * r0.w + cb4[20].y);
  r5.xyz = r5.xyz * r0.xxx;
  r0.xzw = r0.zzz * cb4[6].xyz + -r5.xyz;
  r0.xzw = r0.yyy * r0.xzw + r5.xyz;
  r0.xzw = r0.xzw * cb4[20].zzz + -cb4[7].xyz;
  r0.xzw = cb4[20].www * r0.xzw + cb4[7].xyz;
  r5.xyz = cb4[8].xyz + -r0.xzw;
  r0.xzw = cb4[21].xxx * r5.xyz + r0.xzw;
  r5.xyz = -cb0[67].xyz + r4.xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = sqrt(r1.z);
  r1.z = saturate(r1.z / cb4[21].y);
  r1.z = min(cb4[21].z, r1.z);
  r1.w = cb4[21].w * cb0[142].z;
  r5.xy = cb4[10].xy * v2.xy;
  r5.xy = r1.ww * cb4[22].zw + r5.xy;
  r4.w = t3.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r4.w = max(cb4[12].x, r4.w);
  r5.xy = cb4[14].xy * v2.xy;
  r5.xy = r1.ww * cb4[24].xy + r5.xy;
  r5.x = t3.SampleBias(s3_s, r5.xy, cb0[143].y).y;
  r5.x = max(cb4[12].x, r5.x);
  r4.w = r5.x * r4.w;
  r5.xy = cb4[16].xy * v2.xy;
  r5.xy = r1.ww * cb4[25].zw + r5.xy;
  r5.xyz = t3.SampleBias(s3_s, r5.xy, cb0[143].y).xyz;
  r5.xyz = max(cb4[12].xyz, r5.xyz);
  r5.xyz = r5.xyz * r4.www;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.z = max(r1.z, r1.w);
  r1.w = r1.z * r0.y;
  r4.w = max(cb4[26].z, r1.z);
  r1.z = max(cb4[27].x, r1.z);
  r1.z = r1.z + -r4.w;
  r1.z = r0.y * r1.z + r4.w;
  r0.y = max(cb4[27].y, r0.y);
  r0.y = r1.z * r0.y + -r1.w;
  r0.y = cb4[20].w * r0.y + r1.w;
  r0.y = cb4[27].z * r0.y;
  r1.zw = r3.xy / r3.ww;
  r1.zw = r1.zw * cb0[66].xy + cb0[66].wz;
  r1.z = t1.SampleLevel(s1_s, r1.zw, 0).x;
  r1.w = r1.z * cb0[65].x + cb0[65].y;
  r1.z = r1.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r1.z = r1.w + r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r3.x = r3.z * cb0[65].x + cb0[65].y;
  r3.y = r3.z * cb0[65].z + -cb0[65].w;
  r3.y = 1 / r3.y;
  r3.x = r3.x + r3.y;
  r1.w = r1.w ? r3.w : r3.x;
  r1.z = r1.z + -r1.w;
  r1.z = saturate(r1.z / cb4[28].x);
  r0.y = r1.z * r0.y;
  r1.z = cb4[28].y * cb3[1].w;
  r3.x = cb4[28].z + r1.w;
  r3.yz = float2(0.649999976,0.487499982) * cb3[1].ww;
  r3.w = cb3[1].w * 0.617499948 + -r1.w;
  r3.z = saturate(r3.w / r3.z);
  r3.w = -cb3[1].w * 0.649999976 + 8000;
  r3.y = r3.z * r3.w + r3.y;
  r3.x = r3.x / r3.y;
  r1.w = r1.w / cb4[28].z;
  r3.y = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.z = r1.z ? r3.x : r1.w;
  r1.z = r3.y ? r1.z : r1.w;
  r1.w = cmp(9.99999975e-006 < abs(cb4[28].y));
  r3.x = 1 + cb4[28].y;
  r1.w = r1.w ? r3.x : 1.39999998;
  r2.z = 4.93230057 * r2.z;
  r2.z = cos(r2.z);
  r2.z = 0.899999976 + r2.z;
  r2.z = saturate(0.555555582 * r2.z);
  r1.w = -r2.z + r1.w;
  r3.xy = cb0[152].xx + r1.xy;
  r3.xy = (uint2)r3.xy;
  r2.z = (uint)r3.y << 1;
  r2.z = (int)r2.z + (int)r3.x;
  r2.z = (uint)r2.z % 5;
  r2.z = (uint)r2.z;
  r1.xy = float2(0.015625,0.015625) * r1.xy;
  r1.x = t4.SampleBias(s4_s, r1.xy, cb0[143].y).x;
  r1.x = r2.z + r1.x;
  r1.x = 0.166666672 * r1.x;
  r1.x = r1.z * r1.w + r1.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.w = saturate(r1.x * r0.y);
  r0.y = cmp(0 < cb2[150].w);
  if (r0.y != 0) {
    r3.xyz = cb0[5].xyw * r4.yyy;
    r3.xyz = r4.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r4.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r5.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.y = r3.z * cb0[209].x + cb0[209].y;
    r0.y = log2(r0.y);
    r0.y = cb0[209].z * r0.y;
    r5.z = cb0[208].z * r0.y;
    r3.xyzw = t0.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v3.w * r3.w;
    r3.xyz = v3.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v3.xyz;
    r5.x = v3.w;
  }
  r1.xyz = max(float3(0,0,0), r0.xzw);
  r0.x = cmp(0 < cb0[140].x);
  if (r0.x != 0) {
    r0.xyz = -cb1[5].xyz + r4.xyz;
    r5.yzw = float3(1,1,1) + cb1[19].xyz;
    r0.xyz = cmp(r5.yzw < abs(r0.xyz));
    r0.x = (int)r0.y | (int)r0.x;
    r0.x = (int)r0.z | (int)r0.x;
    r0.y = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r0.y = 0.00200000009 * r0.y;
    r0.y = frac(r0.y);
    r0.y = cmp(0.5 < r0.y);
    r4.yzw = r0.yyy ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r1.xyzw = r0.xxxx ? r4.yzwx : r1.xyzw;
    o0.w = r1.w;
  } else {
    o0.w = r1.w;
  }
  r0.xyz = r1.xyz * r5.xxx + r3.xyz;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r2.xyw, r2.xyw);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r2.xyw * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb2[166].xyz + -cb2[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb2[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}