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
  float4 cb3[14];
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
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v6.yyyy;
  r0.xyzw = v6.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v6.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xy = t8.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r3.xyz = cb3[11].www * cb3[3].xyz;
  r0.w = cb3[12].y + -cb3[12].z;
  r0.w = saturate(r2.y * r0.w + cb3[12].z);
  r2.w = saturate(cb3[13].y * r2.x);
  r4.xyz = saturate(cb3[6].xyz);
  r1.w = saturate(cb3[12].x);
  r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
  r5.xyz = cb0[213].xyz * r5.xyz;
  r6.xyz = (int3)r5.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r3.w = 1 + cb0[213].w;
  r5.xyz = r5.xyz / r6.www;
  r5.xyz = frac(r5.xyz);
  r5.xyz = cb0[213].www * r5.xyz;
  r5.xyz = r6.xyz * r3.www + r5.xyz;
  r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
  r5.xyz = cb0[214].xyz * r5.xyz;
  r3.w = 0.0799999982 * r0.w;
  r6.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r6.xyz = r1.www * r6.xyz + r3.www;
  r7.xyz = -r4.xyz * r1.www + r4.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r6.xyz = r0.www ? r6.xyz : r7.xyz;
  r5.xyz = t1.SampleLevel(s0_s, r5.xyz, 0).xyz;
  r5.xyz = float3(0.886227548,0.886227548,0.886227548) * r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[157].xyz * r5.xyz;
  r5.xyz = r5.xyz * r6.xyz;
  r5.xyz = float3(0.318309873,0.318309873,0.318309873) * r5.xyz;
  r7.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r4.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r1.yyy;
    r7.xyz = r1.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r1.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r9.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r7.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r9.z = cb0[208].z * r1.w;
    r7.xyzw = t3.SampleLevel(s0_s, r9.xyz, 0).xyzw;
    r9.x = v4.w * r7.w;
    r7.xyz = v4.xyz * r7.www + r7.xyz;
  } else {
    r7.xyz = v4.xyz;
    r9.x = v4.w;
  }
  r9.yzw = -cb0[148].xyz + r1.xyz;
  r10.xyz = cb0[150].xyz * r9.yzw;
  r11.xyz = -cb0[149].xyz + r1.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r9.yzw = r9.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r9.yzw = float3(0.5,0.5,0.5) + -abs(r9.yzw);
  r9.yzw = saturate(float3(6,6,6) * r9.yzw);
  r1.w = r9.y * r9.z;
  r1.w = r1.w * r9.w;
  r10.xyzw = t4.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r11.xyzw = t5.SampleLevel(s0_s, r11.xyz, 0).xyzw;
  r10.xyzw = -r11.xyzw + r10.xyzw;
  r10.xyzw = r1.wwww * r10.xyzw + r11.xyzw;
  r9.yzw = float3(0.886227548,0.886227548,0.886227548) * r10.xyz;
  r1.w = cmp(0 < cb2[6].w);
  if (r1.w != 0) {
    r11.xyzw = cb2[1].xyzw * r1.yyyy;
    r11.xyzw = r1.xxxx * cb2[0].xyzw + r11.xyzw;
    r11.xyzw = r1.zzzz * cb2[2].xyzw + r11.xyzw;
    r11.xyzw = cb2[3].xyzw + r11.xyzw;
    r10.xy = r11.xy / r11.ww;
    r12.xyzw = t6.SampleLevel(s0_s, r10.xy, 0).xyzw;
    r11.xyw = t7.SampleLevel(s0_s, r10.xy, 0).yzw;
    r13.xyz = float3(6.28318548,12.566371,18.849556) * r11.zzz;
    sincos(r13.xyz, r13.xyz, r14.xyz);
    r14.xyz = float3(1,1,1) + -r14.xyz;
    r1.w = r12.x * r11.z;
    r12.xyz = r13.xyz * r12.yzw;
    r12.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r12.xyz;
    r3.w = dot(r12.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r3.w;
    r11.xyz = r14.xyz * r11.xyw;
    r11.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r11.xyz;
    r3.w = dot(r11.xyz, float3(1,1,1));
    r1.w = r3.w + r1.w;
    r11.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = min(float3(1,1,1), r11.xyz);
    r12.xy = cmp(r10.xy < cb2[4].xy);
    r10.xy = cmp(cb2[4].zw < r10.xy);
    r10.xy = (int2)r10.xy | (int2)r12.xy;
    r1.w = (int)r10.y | (int)r10.x;
    r10.xyz = cb2[6].xyz * r10.www;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r1.www ? float3(0,0,0) : r11.xyz;
    r10.xyz = -r10.xyz * r11.xyz + r9.yzw;
    r10.xyz = max(float3(0,0,0), r10.xyz);
    r10.xyz = r10.xyz * r6.xyz;
  } else {
    r10.xyz = r9.yzw * r6.xyz;
  }
  r8.xyz = r0.www ? float3(0,0,0) : r8.xyz;
  r6.xyz = r8.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r10.xyz;
  r6.xyz = cb0[145].yyy * r6.xyz + r10.xyz;
  r2.xyz = max(float3(0,0,0), r3.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r3.x = t2[r3.x].val[0/4];
    r3.z = t2[r3.x].val[0/4+1];
    r3.w = t2[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r1.xyz;
    r8.x = t2[r3.y].val[0/4];
    r8.y = t2[r3.y].val[0/4+1];
    r8.z = t2[r3.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r3.xyz = cmp(r8.xyz < abs(r3.xzw));
    r0.w = (int)r3.y | (int)r3.x;
    r0.w = (int)r3.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.x = 1;
    r2.xyzw = r0.wwww ? r1.yzwx : r2.xyzw;
    o0.w = r2.w;
  } else {
    o0.w = r2.w;
  }
  r1.xyz = r5.xyz * r4.xyz + r6.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r1.xyz = r1.xyz * r9.xxx + r7.xyz;
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