// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

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
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyz = t6.SampleBias(s1_s, v2.xy, cb0[143].y).xyz;
  r3.xyz = cb3[1].xyz + -r2.yxz;
  r2.xyz = cb3[2].xxx * r3.xyz + r2.yxz;
  r3.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r3.xyz = r0.www ? r3.xyz : cb0[136].xyz;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r5.xyz = cb0[5].xyw * r1.yyy;
    r5.xyz = r1.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r1.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r6.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r5.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r6.z = cb0[208].z * r1.w;
    r5.xyzw = t1.SampleLevel(s0_s, r6.xyz, 0).xyzw;
    r6.x = v4.w * r5.w;
    r5.xyz = v4.xyz * r5.www + r5.xyz;
  } else {
    r5.xyz = v4.xyz;
    r6.x = v4.w;
  }
  r6.yzw = -cb0[148].xyz + r1.xyz;
  r7.xyz = cb0[150].xyz * r6.yzw;
  r8.xyz = -cb0[149].xyz + r1.xyz;
  r8.xyz = cb0[151].xyz * r8.xyz;
  r6.yzw = r6.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r6.yzw = float3(0.5,0.5,0.5) + -abs(r6.yzw);
  r6.yzw = saturate(float3(6,6,6) * r6.yzw);
  r1.w = r6.y * r6.z;
  r1.w = r1.w * r6.w;
  r7.xyzw = t2.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r8.xyzw = t3.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r7.xyzw = -r8.xyzw + r7.xyzw;
  r7.xyzw = r1.wwww * r7.xyzw + r8.xyzw;
  r6.yzw = float3(0.886227548,0.886227548,0.886227548) * r7.xyz;
  r1.w = cmp(0 < cb2[6].w);
  if (r1.w != 0) {
    r8.xyzw = cb2[1].xyzw * r1.yyyy;
    r8.xyzw = r1.xxxx * cb2[0].xyzw + r8.xyzw;
    r8.xyzw = r1.zzzz * cb2[2].xyzw + r8.xyzw;
    r8.xyzw = cb2[3].xyzw + r8.xyzw;
    r7.xy = r8.xy / r8.ww;
    r9.xyzw = t4.SampleLevel(s0_s, r7.xy, 0).xyzw;
    r8.xyw = t5.SampleLevel(s0_s, r7.xy, 0).yzw;
    r10.xyz = float3(6.28318548,12.566371,18.849556) * r8.zzz;
    sincos(r10.xyz, r10.xyz, r11.xyz);
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r1.w = r9.x * r8.z;
    r9.xyz = r10.xyz * r9.yzw;
    r9.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r9.xyz;
    r2.w = dot(r9.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r8.xyz = r11.xyz * r8.xyw;
    r8.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r8.xyz;
    r2.w = dot(r8.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r8.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r8.xyz = exp2(r8.xyz);
    r8.xyz = min(float3(1,1,1), r8.xyz);
    r9.xy = cmp(r7.xy < cb2[4].xy);
    r7.xy = cmp(cb2[4].zw < r7.xy);
    r7.xy = (int2)r7.xy | (int2)r9.xy;
    r1.w = (int)r7.y | (int)r7.x;
    r7.xyz = cb2[6].xyz * r7.www;
    r8.xyz = float3(1,1,1) + -r8.xyz;
    r8.xyz = r1.www ? float3(0,0,0) : r8.xyz;
    r7.xyz = -r7.xyz * r8.xyz + r6.yzw;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = r7.xyz * r3.xyz;
  } else {
    r7.xyz = r6.yzw * r3.xyz;
  }
  r4.xyz = r0.www ? float3(0,0,0) : r4.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r3.xyz = r3.xyz + -r7.xyz;
  r3.xyz = cb0[145].yyy * r3.xyz + r7.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r1.xyz;
    r6.y = t0[r4.y].val[0/4];
    r6.z = t0[r4.y].val[0/4+1];
    r6.w = t0[r4.y].val[0/4+2];
    r6.yzw = float3(1,1,1) + r6.yzw;
    r4.xyz = cmp(r6.yzw < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r0.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = r3.xyz + r2.xyz;
  r1.xyz = r1.xyz * r6.xxx + r5.xyz;
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
  o0.w = 1;
  return;
}