// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
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
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v5.z;
  r0.y = 1;
  r0.xy = v5.ww * r0.xy;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.z = cb1[18].x + cb1[18].y;
  r0.z = cb1[18].z + r0.z;
  r0.z = frac(r0.z);
  r0.zw = v3.xy + r0.zz;
  r0.zw = float2(10,10) * r0.zw;
  r3.xy = cmp(r0.zw >= -r0.zw);
  r0.zw = frac(abs(r0.zw));
  r0.zw = r3.xy ? r0.zw : -r0.zw;
  r0.z = r0.w * r0.z;
  r0.z = max(cb4[6].x, r0.z);
  r0.z = min(1, r0.z);
  r0.z = -1 + r0.z;
  r0.z = cb4[6].y * r0.z + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[6].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.w = max(cb4[6].x, v2.x);
  r0.w = min(1, r0.w);
  r0.w = -1 + r0.w;
  r0.w = cb4[6].w * r0.w + 1;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[6].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r0.z = r0.z * r0.w;
  r0.w = cmp(cb0[31].w < 1);
  r1.w = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = 1 / r0.x;
  r0.x = r1.w + r0.x;
  r0.x = r0.w ? r0.y : r0.x;
  r0.y = r0.x / cb4[7].x;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb4[7].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb4[7].z * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r0.w ? 1 : r0.y;
  r3.xyz = cb4[2].xyz * r0.yyy;
  r0.yzw = r3.xyz * r0.zzz;
  r3.xyz = cb4[7].www * r0.yzw;
  r0.yzw = -r0.yzw * cb4[7].www + cb4[3].xyz;
  r0.yzw = cb4[8].xxx * r0.yzw + r3.xyz;
  r1.w = cb4[8].y * cb3[1].w;
  r2.w = cb4[8].z + r0.x;
  r3.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r3.z = cb3[1].w * 0.617499948 + -r0.x;
  r3.y = saturate(r3.z / r3.y);
  r3.z = -cb3[1].w * 0.649999976 + 8000;
  r3.x = r3.y * r3.z + r3.x;
  r2.w = r2.w / r3.x;
  r0.x = r0.x / cb4[8].z;
  r3.x = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.w = r1.w ? r2.w : r0.x;
  r0.x = r3.x ? r1.w : r0.x;
  r1.w = cmp(9.99999975e-006 < abs(cb4[8].y));
  r2.w = 1 + cb4[8].y;
  r1.w = r1.w ? r2.w : 1.39999998;
  r3.xyz = -cb0[129].xxy + v5.xxy;
  r2.w = r3.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.w = -r2.w + r1.w;
  r3.xw = cb0[152].xx + r3.yz;
  r3.xw = (uint2)r3.xw;
  r2.w = (uint)r3.w << 1;
  r2.w = (int)r2.w + (int)r3.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r3.xy = float2(0.015625,0.015625) * r3.yz;
  r3.x = t3.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r2.w = r3.x + r2.w;
  r2.w = 0.166666672 * r2.w;
  r0.x = r0.x * r1.w + r2.w;
  r0.x = saturate(-0.5 + r0.x);
  r3.w = saturate(v2.y * r0.x);
  r0.x = cmp(0.00100000005 < abs(v2.w));
  r4.xy = floor(v5.xy);
  r1.w = dot(r4.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.w = cmp(v2.w < 0);
  r4.x = 1 + v2.w;
  r4.x = cmp(r1.w < r4.x);
  r1.w = cmp(v2.w < r1.w);
  r1.w = r2.w ? r4.x : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.x = r0.x ? r1.w : 0;
  if (r0.x != 0) discard;
  r4.xyz = saturate(cb4[5].xyz);
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.x = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r0.xxx ? r5.xyz : r4.xyz;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r5.xyz = cb0[5].xyw * r2.yyy;
    r5.xyz = r2.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r2.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r7.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r5.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r7.z = cb0[208].z * r1.w;
    r1.w = t0.SampleLevel(s0_s, r7.xyz, 0).w;
    r1.w = v4.w * r1.w;
  } else {
    r1.w = v4.w;
  }
  r5.xyz = -cb0[148].xyz + r2.xyz;
  r7.xyz = cb0[150].xyz * r5.xyz;
  r8.xyz = -cb0[149].xyz + r2.xyz;
  r8.xyz = cb0[151].xyz * r8.xyz;
  r5.xyz = r5.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r5.xyz = float3(0.5,0.5,0.5) + -abs(r5.xyz);
  r5.xyz = saturate(float3(6,6,6) * r5.xyz);
  r2.w = r5.x * r5.y;
  r2.w = r2.w * r5.z;
  r5.xyz = t1.SampleLevel(s0_s, r7.xyz, 0).xyz;
  r7.xyz = t2.SampleLevel(s0_s, r8.xyz, 0).xyz;
  r5.xyz = -r7.xyz + r5.xyz;
  r5.xyz = r2.www * r5.xyz + r7.xyz;
  r5.xyz = r5.xyz * r4.xyz;
  r7.xyz = float3(0.886227548,0.886227548,0.886227548) * r5.xyz;
  r6.xyz = r0.xxx ? float3(0,0,0) : r6.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r4.xyz = -r5.xyz * float3(0.886227548,0.886227548,0.886227548) + r4.xyz;
  r4.xyz = cb0[145].yyy * r4.xyz + r7.xyz;
  r3.xyz = max(float3(0,0,0), r0.yzw);
  r0.x = cmp(0 < cb0[140].x);
  if (r0.x != 0) {
    r0.xyz = -cb1[5].xyz + r2.xyz;
    r5.xyz = float3(1,1,1) + cb1[19].xyz;
    r0.xyz = cmp(r5.xyz < abs(r0.xyz));
    r0.x = (int)r0.y | (int)r0.x;
    r0.x = (int)r0.z | (int)r0.x;
    r0.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r0.y = 0.00200000009 * r0.y;
    r0.y = frac(r0.y);
    r0.y = cmp(0.5 < r0.y);
    r2.yzw = r0.yyy ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r3.xyzw = r0.xxxx ? r2.yzwx : r3.xyzw;
  }
  r0.xyz = r4.xyz + r3.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.xyz = r0.xyz * r3.www;
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
  r1.w = cb2[163].x * r3.w;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = r1.www * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  o0.w = 0;
  return;
}