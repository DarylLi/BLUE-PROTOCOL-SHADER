// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v6.yyyy;
  r0.xyzw = v6.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v6.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyzw = t2.Sample(s1_s, v3.xy).xyzw;
  r3.xyzw = v2.xyzw * r2.xyzw;
  r2.xyz = -v2.xyz * r2.xyz + cb2[1].xyz;
  r2.xyz = cb2[4].xxx * r2.xyz + r3.xyz;
  r0.w = cmp(cb0[31].w < 1);
  r1.w = 1000000 + cb0[65].w;
  r1.w = cb0[65].z * r1.w;
  r1.w = 1 / r1.w;
  r2.w = cb0[30].z * 1000000 + cb0[31].z;
  r0.w = r0.w ? r1.w : r2.w;
  r1.w = cb2[4].w + -r0.w;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r0.w = cmp(cb2[4].w >= r0.w);
  r0.w = r0.w ? 1.000000 : 0;
  r0.w = r1.w ? r0.w : 1;
  r3.w = saturate(r3.w * r0.w);
  r0.w = cmp(0 < cb1[150].w);
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
    r4.xyzw = t1.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v5.w * r4.w;
    r4.xyz = v5.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v5.xyz;
    r5.x = v5.w;
  }
  r3.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r2.x = t0[r2.x].val[0/4];
    r2.z = t0[r2.x].val[0/4+1];
    r2.w = t0[r2.x].val[0/4+2];
    r2.xzw = -r2.xzw + r1.xyz;
    r5.y = t0[r2.y].val[0/4];
    r5.z = t0[r2.y].val[0/4+1];
    r5.w = t0[r2.y].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r2.xyz = cmp(r5.yzw < abs(r2.xzw));
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
  return;
}