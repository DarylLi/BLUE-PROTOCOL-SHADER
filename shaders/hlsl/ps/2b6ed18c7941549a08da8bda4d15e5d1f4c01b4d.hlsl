// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[14];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xy = -cb0[129].xy + v5.xy;
  r3.zw = cb0[130].zw * r2.xy;
  r2.yzw = -cb0[67].xyz + r1.xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * 0.00280000013 + -0.400000006);
  r0.w = saturate(r0.w * 3 + -1);
  r1.w = cb3[8].x + -cb3[8].y;
  r0.w = r0.w * r1.w + cb3[8].y;
  r0.w = r0.w / cb0[130].x;
  r3.y = r2.x * cb0[130].z + -r0.w;
  r1.w = cb0[142].z * cb3[9].x + v2.x;
  r4.x = cb3[9].w * r1.w;
  r1.w = cb0[142].z * cb3[10].x + v2.y;
  r4.y = cb3[10].y * r1.w;
  r1.w = t3.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r1.w = -0.5 + r1.w;
  r1.w = r1.w + r1.w;
  r4.x = cb3[10].w * r1.w;
  r4.y = cb3[11].x * r1.w;
  r1.w = cb0[142].z * cb3[11].w + v2.x;
  r5.x = cb3[12].z * r1.w;
  r1.w = cb0[142].z * cb3[12].w + v2.y;
  r5.y = cb3[13].x * r1.w;
  r1.w = t4.SampleBias(s2_s, r5.xy, cb0[143].y).x;
  r1.w = saturate(r1.w * 5 + -0.5);
  r5.xyzw = r4.xyxy * r1.wwww + r3.ywzw;
  r5.xyzw = r5.xyzw * cb0[130].xyxy + cb0[129].xyxy;
  r5.xyzw = cb0[132].zwzw * r5.xyzw;
  r5.xyzw = max(cb0[133].xyxy, r5.xyzw);
  r5.xyzw = min(cb0[133].zwzw, r5.xyzw);
  r2.y = t2.Sample(s0_s, r5.xy).x;
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
  r0.w = t2.Sample(s0_s, r3.xy).y;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = cb0[135].z * r0.w;
  r2.z = 10 * r0.w;
  r0.w = t2.Sample(s0_s, r5.zw).z;
  r0.w = r0.w * r0.w;
  r0.w = r0.w * r0.w;
  r0.w = cb0[135].z * r0.w;
  r2.w = 10 * r0.w;
  r3.xyz = cb3[7].xyz + -r2.yzw;
  r2.xyz = cb3[13].yyy * r3.xyz + r2.yzw;
  r0.w = mad((int)v3.x, 36, 5);
  r3.x = t0[r0.w].val[0/4];
  r3.y = t0[r0.w].val[0/4+1];
  r3.z = t0[r0.w].val[0/4+2];
  r4.xyz = r3.xyz + -r1.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.00499999989 * r0.w;
  r0.w = min(1, r0.w);
  r0.w = r0.w * 5 + -5;
  r0.w = saturate(cb2[2].w * 6 + r0.w);
  r4.w = saturate(cb3[13].w * r0.w);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r5.xyz = cb0[5].xyw * r1.yyy;
    r5.xyz = r1.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r1.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r6.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r5.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r6.z = cb0[208].z * r0.w;
    r5.xyzw = t1.SampleLevel(s0_s, r6.xyz, 0).xyzw;
    r6.x = v4.w * r5.w;
    r5.xyz = v4.xyz * r5.www + r5.xyz;
  } else {
    r5.xyz = v4.xyz;
    r6.x = v4.w;
  }
  r4.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.xyz = -r3.xyz + r1.xyz;
    r0.w = mad((int)v3.x, 36, 19);
    r3.x = t0[r0.w].val[0/4];
    r3.y = t0[r0.w].val[0/4+1];
    r3.z = t0[r0.w].val[0/4+2];
    r3.xyz = float3(1,1,1) + r3.xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xyz));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.x = 1;
    r4.xyzw = r0.wwww ? r1.yzwx : r4.xyzw;
    o0.w = r4.w;
  } else {
    o0.w = r4.w;
  }
  r1.xyz = r4.xyz * r6.xxx + r5.xyz;
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