// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[9];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.z = cb1[18].x + cb1[18].y;
  r1.z = cb1[18].z + r1.z;
  r1.z = frac(r1.z);
  r1.zw = v3.xy + r1.zz;
  r1.zw = float2(10,10) * r1.zw;
  r4.xy = cmp(r1.zw >= -r1.zw);
  r1.zw = frac(abs(r1.zw));
  r1.zw = r4.xy ? r1.zw : -r1.zw;
  r1.z = r1.w * r1.z;
  r1.z = max(cb5[6].x, r1.z);
  r1.z = min(1, r1.z);
  r1.z = -1 + r1.z;
  r1.z = cb5[6].y * r1.z + 1;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = max(cb5[6].x, v2.x);
  r1.w = min(1, r1.w);
  r1.w = -1 + r1.w;
  r1.w = cb5[6].w * r1.w + 1;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[6].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.z = r1.z * r1.w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = r1.x / cb5[7].x;
  r1.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb5[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb5[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.w ? 1 : r1.y;
  r4.xyz = cb5[2].xyz * r1.yyy;
  r1.yzw = r4.xyz * r1.zzz;
  r4.xyz = cb5[7].www * r1.yzw;
  r1.yzw = -r1.yzw * cb5[7].www + cb5[3].xyz;
  r1.yzw = cb5[8].xxx * r1.yzw + r4.xyz;
  r2.w = cb5[8].y * cb4[1].w;
  r3.w = cb5[8].z + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb4[1].ww;
  r4.z = cb4[1].w * 0.617499948 + -r1.x;
  r4.y = saturate(r4.z / r4.y);
  r4.z = -cb4[1].w * 0.649999976 + 8000;
  r4.x = r4.y * r4.z + r4.x;
  r3.w = r3.w / r4.x;
  r1.x = r1.x / cb5[8].z;
  r4.x = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r2.w = r2.w ? r3.w : r1.x;
  r1.x = r4.x ? r2.w : r1.x;
  r2.w = cmp(9.99999975e-006 < abs(cb5[8].y));
  r3.w = 1 + cb5[8].y;
  r2.w = r2.w ? r3.w : 1.39999998;
  r4.xyz = -cb0[129].xxy + v6.xxy;
  r3.w = r4.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.w = -r3.w + r2.w;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r3.w = (uint)r4.w << 1;
  r3.w = (int)r3.w + (int)r4.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r4.xy = float2(0.015625,0.015625) * r4.yz;
  r4.x = t4.SampleBias(s2_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.w + r3.w;
  r1.x = saturate(-0.5 + r1.x);
  r4.w = saturate(v2.y * r1.x);
  r1.x = cmp(0.00100000005 < abs(v2.w));
  r5.xy = floor(v6.xy);
  r2.w = dot(r5.xy, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.w = cmp(v2.w < 0);
  r5.x = 1 + v2.w;
  r5.x = cmp(r2.w < r5.x);
  r2.w = cmp(v2.w < r2.w);
  r2.w = r3.w ? r5.x : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r1.x = r1.x ? r2.w : 0;
  if (r1.x != 0) discard;
  r5.xyz = saturate(cb5[5].xyz);
  r6.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r7.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.xxx ? r7.xyz : r6.xyz;
  r7.xy = float2(1,0.5) * v4.xy;
  r7.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s1_s, r7.xy).xyzw;
  r7.xyzw = t3.Sample(s1_s, r7.zw).xyzw;
  r2.w = r7.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb3[4].w + cb3[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb3[4].xyz + cb3[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r7.xyzw = r7.xyzw * cb3[5].xyzw + cb3[7].xyzw;
  r0.w = 1;
  r0.x = dot(r7.xyzw, r0.xyzw);
  r0.x = max(0, r0.x);
  r0.x = r2.w * r0.x;
  r0.xyz = r0.xxx * r9.xyz;
  r0.xyz = cb0[157].xyz * r0.xyz;
  r0.xyz = r0.xyz * r6.xyz;
  r7.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r5.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r7.xyz = cb0[5].xyw * r3.yyy;
    r7.xyz = r3.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r3.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r9.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r7.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r9.z = cb0[208].z * r0.w;
    r0.w = t0.SampleLevel(s0_s, r9.xyz, 0).w;
    r0.w = v5.w * r0.w;
  } else {
    r0.w = v5.w;
  }
  r7.xyz = -cb0[148].xyz + r3.xyz;
  r9.xyz = cb0[150].xyz * r7.xyz;
  r10.xyz = -cb0[149].xyz + r3.xyz;
  r10.xyz = cb0[151].xyz * r10.xyz;
  r7.xyz = r7.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r7.xyz = float3(0.5,0.5,0.5) + -abs(r7.xyz);
  r7.xyz = saturate(float3(6,6,6) * r7.xyz);
  r2.w = r7.x * r7.y;
  r2.w = r2.w * r7.z;
  r7.xyz = t1.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r9.xyz = t2.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r7.xyz = -r9.xyz + r7.xyz;
  r7.xyz = r2.www * r7.xyz + r9.xyz;
  r7.xyz = r7.xyz * r6.xyz;
  r9.xyz = float3(0.886227548,0.886227548,0.886227548) * r7.xyz;
  r8.xyz = r1.xxx ? float3(0,0,0) : r8.xyz;
  r6.xyz = r8.xyz + r6.xyz;
  r6.xyz = -r7.xyz * float3(0.886227548,0.886227548,0.886227548) + r6.xyz;
  r6.xyz = cb0[145].yyy * r6.xyz + r9.xyz;
  r4.xyz = max(float3(0,0,0), r1.yzw);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r1.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r1.xyz = cmp(r7.xyz < abs(r1.xyz));
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r1.z | (int)r1.x;
    r1.y = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r3.yzw = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r3.x = 1;
    r4.xyzw = r1.xxxx ? r3.yzwx : r4.xyzw;
  }
  r0.xyz = r0.xyz * r5.xyz + r6.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * r4.www;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r2.xyz * r1.www;
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
  r1.w = cb2[163].x * r4.w;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = r1.www * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  o0.w = 0;
  return;
}