// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[168];
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
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v4.yyyy;
  r0.xyzw = v4.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v4.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r3.xyz = float3(0.449999988,0.449999988,0.449999988) * r2.xyz;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r2.xyz = r0.www ? r2.xyz : cb0[136].xyz;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r4.xyz = cb0[5].xyw * r1.yyy;
    r4.xyz = r1.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r1.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r5.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r4.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r5.z = cb0[208].z * r1.w;
    r1.w = t1.SampleLevel(s0_s, r5.xyz, 0).w;
    r1.w = v3.w * r1.w;
  } else {
    r1.w = v3.w;
  }
  r4.xyz = -cb0[148].xyz + r1.xyz;
  r5.xyz = cb0[150].xyz * r4.xyz;
  r6.xyz = -cb0[149].xyz + r1.xyz;
  r6.xyz = cb0[151].xyz * r6.xyz;
  r4.xyz = r4.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r4.xyz = float3(0.5,0.5,0.5) + -abs(r4.xyz);
  r4.xyz = saturate(float3(6,6,6) * r4.xyz);
  r2.w = r4.x * r4.y;
  r2.w = r2.w * r4.z;
  r4.xyzw = t2.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r5.xyzw = t3.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r4.xyzw = -r5.xyzw + r4.xyzw;
  r4.xyzw = r2.wwww * r4.xyzw + r5.xyzw;
  r4.xyz = float3(0.886227548,0.886227548,0.886227548) * r4.xyz;
  r2.w = cmp(0 < cb2[6].w);
  if (r2.w != 0) {
    r5.xyzw = cb2[1].xyzw * r1.yyyy;
    r5.xyzw = r1.xxxx * cb2[0].xyzw + r5.xyzw;
    r5.xyzw = r1.zzzz * cb2[2].xyzw + r5.xyzw;
    r5.xyzw = cb2[3].xyzw + r5.xyzw;
    r5.xy = r5.xy / r5.ww;
    r6.xyzw = t4.SampleLevel(s0_s, r5.xy, 0).xyzw;
    r7.xyz = t5.SampleLevel(s0_s, r5.xy, 0).yzw;
    r8.xyz = float3(6.28318548,12.566371,18.849556) * r5.zzz;
    sincos(r8.xyz, r8.xyz, r9.xyz);
    r9.xyz = float3(1,1,1) + -r9.xyz;
    r2.w = r6.x * r5.z;
    r6.xyz = r8.xyz * r6.yzw;
    r6.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r6.xyz;
    r3.w = dot(r6.xyz, float3(1,1,1));
    r2.w = r2.w * 0.5 + r3.w;
    r6.xyz = r9.xyz * r7.xyz;
    r6.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r6.xyz;
    r3.w = dot(r6.xyz, float3(1,1,1));
    r2.w = r3.w + r2.w;
    r6.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r2.www;
    r6.xyz = exp2(r6.xyz);
    r6.xyz = min(float3(1,1,1), r6.xyz);
    r5.zw = cmp(r5.xy < cb2[4].xy);
    r5.xy = cmp(cb2[4].zw < r5.xy);
    r5.xy = (int2)r5.xy | (int2)r5.zw;
    r2.w = (int)r5.y | (int)r5.x;
    r5.xyz = cb2[6].xyz * r4.www;
    r6.xyz = float3(1,1,1) + -r6.xyz;
    r6.xyz = r2.www ? float3(0,0,0) : r6.xyz;
    r5.xyz = -r5.xyz * r6.xyz + r4.xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = r5.xyz * r2.xyz;
  } else {
    r5.xyz = r4.xyz * r2.xyz;
  }
  r3.xyz = r0.www ? float3(0,0,0) : r3.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r5.xyz;
  r2.xyz = cb0[145].yyy * r2.xyz + r5.xyz;
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r3.x = t0[r3.x].val[0/4];
    r3.z = t0[r3.x].val[0/4+1];
    r3.w = t0[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r1.xyz;
    r4.x = t0[r3.y].val[0/4];
    r4.y = t0[r3.y].val[0/4+1];
    r4.z = t0[r3.y].val[0/4+2];
    r4.xyz = float3(1,1,1) + r4.xyz;
    r3.xyz = cmp(r4.xyz < abs(r3.xzw));
    r0.w = (int)r3.y | (int)r3.x;
    r0.w = (int)r3.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r0.www ? r1.xyz : 0;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = r1.xyz * r1.www;
  r2.xyz = cb0[135].yyy * r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r0.w);
  r0.xyzw = r1.wwww * r0.xyzw;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r0.x = dot(r0.xyz, cb0[358].xyz);
  r0.x = -1 + r0.x;
  r0.x = -abs(r0.x) * 0.5 + 1;
  r0.x = max(0, r0.x);
  r3.xyz = cb1[166].xyz + -cb1[165].xyz;
  r0.xyz = r0.xxx * r3.xyz + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r0.xyz = -cb1[167].xyz + r0.xyz;
  r0.xyz = r1.www * r0.xyz + cb1[167].xyz;
  r0.xyz = -r1.xyz * cb0[135].yyy + r0.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  o0.w = 0;
  return;
}