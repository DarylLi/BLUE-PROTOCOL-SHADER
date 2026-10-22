// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyz = t8.SampleBias(s1_s, v2.xy, cb0[143].y).xyz;
  r3.xyz = cb3[1].xyz + -r2.yxz;
  r2.xyz = cb3[2].xxx * r3.xyz + r2.yxz;
  r3.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
  r3.xyz = cb0[213].xyz * r3.xyz;
  r4.xyz = (int3)r3.xyz;
  r4.w = 0;
  r4.xyzw = t0.Load(r4.xyzw).xyzw;
  r4.xyzw = (uint4)r4.xyzw;
  r0.w = 1 + cb0[213].w;
  r3.xyz = r3.xyz / r4.www;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cb0[213].www * r3.xyz;
  r3.xyz = r4.xyz * r0.www + r3.xyz;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = cb0[214].xyz * r3.xyz;
  r4.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r5.xyz = float3(0.449999988,0.449999988,0.449999988) * r4.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r4.xyz = r0.www ? r4.xyz : cb0[136].xyz;
  r3.xyz = t1.SampleLevel(s0_s, r3.xyz, 0).xyz;
  r3.xyz = float3(0.886227548,0.886227548,0.886227548) * r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = cb0[157].xyz * r3.xyz;
  r3.xyz = r3.xyz * r4.xyz;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r1.yyy;
    r6.xyz = r1.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r1.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r7.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r6.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r7.z = cb0[208].z * r1.w;
    r6.xyzw = t3.SampleLevel(s0_s, r7.xyz, 0).xyzw;
    r7.x = v4.w * r6.w;
    r6.xyz = v4.xyz * r6.www + r6.xyz;
  } else {
    r6.xyz = v4.xyz;
    r7.x = v4.w;
  }
  r7.yzw = -cb0[148].xyz + r1.xyz;
  r8.xyz = cb0[150].xyz * r7.yzw;
  r9.xyz = -cb0[149].xyz + r1.xyz;
  r9.xyz = cb0[151].xyz * r9.xyz;
  r7.yzw = r7.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r7.yzw = float3(0.5,0.5,0.5) + -abs(r7.yzw);
  r7.yzw = saturate(float3(6,6,6) * r7.yzw);
  r1.w = r7.y * r7.z;
  r1.w = r1.w * r7.w;
  r8.xyzw = t4.SampleLevel(s0_s, r8.xyz, 0).xyzw;
  r9.xyzw = t5.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r8.xyzw = -r9.xyzw + r8.xyzw;
  r8.xyzw = r1.wwww * r8.xyzw + r9.xyzw;
  r7.yzw = float3(0.886227548,0.886227548,0.886227548) * r8.xyz;
  r1.w = cmp(0 < cb2[6].w);
  if (r1.w != 0) {
    r9.xyzw = cb2[1].xyzw * r1.yyyy;
    r9.xyzw = r1.xxxx * cb2[0].xyzw + r9.xyzw;
    r9.xyzw = r1.zzzz * cb2[2].xyzw + r9.xyzw;
    r9.xyzw = cb2[3].xyzw + r9.xyzw;
    r8.xy = r9.xy / r9.ww;
    r10.xyzw = t6.SampleLevel(s0_s, r8.xy, 0).xyzw;
    r9.xyw = t7.SampleLevel(s0_s, r8.xy, 0).yzw;
    r11.xyz = float3(6.28318548,12.566371,18.849556) * r9.zzz;
    sincos(r11.xyz, r11.xyz, r12.xyz);
    r12.xyz = float3(1,1,1) + -r12.xyz;
    r1.w = r10.x * r9.z;
    r10.xyz = r11.xyz * r10.yzw;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r2.w = dot(r10.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r9.xyz = r12.xyz * r9.xyw;
    r9.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r9.xyz;
    r2.w = dot(r9.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r9.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r9.xyz = exp2(r9.xyz);
    r9.xyz = min(float3(1,1,1), r9.xyz);
    r10.xy = cmp(r8.xy < cb2[4].xy);
    r8.xy = cmp(cb2[4].zw < r8.xy);
    r8.xy = (int2)r8.xy | (int2)r10.xy;
    r1.w = (int)r8.y | (int)r8.x;
    r8.xyz = cb2[6].xyz * r8.www;
    r9.xyz = float3(1,1,1) + -r9.xyz;
    r9.xyz = r1.www ? float3(0,0,0) : r9.xyz;
    r8.xyz = -r8.xyz * r9.xyz + r7.yzw;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = r8.xyz * r4.xyz;
  } else {
    r8.xyz = r7.yzw * r4.xyz;
  }
  r5.xyz = r0.www ? float3(0,0,0) : r5.xyz;
  r4.xyz = r5.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r8.xyz;
  r4.xyz = cb0[145].yyy * r4.xyz + r8.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t2[r5.x].val[0/4];
    r5.z = t2[r5.x].val[0/4+1];
    r5.w = t2[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r1.xyz;
    r7.y = t2[r5.y].val[0/4];
    r7.z = t2[r5.y].val[0/4+1];
    r7.w = t2[r5.y].val[0/4+2];
    r7.yzw = float3(1,1,1) + r7.yzw;
    r5.xyz = cmp(r7.yzw < abs(r5.xzw));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r0.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = r3.xyz * float3(0.318309873,0.318309873,0.318309873) + r4.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r1.xyz = r1.xyz * r7.xxx + r6.xyz;
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