// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 cb3[7];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v4.z;
  r0.y = 1;
  r0.xy = v4.ww * r0.xy;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.z = cb1[18].x + cb1[18].y;
  r0.z = cb1[18].z + r0.z;
  r0.z = frac(r0.z);
  r0.zw = v2.xy + r0.zz;
  r0.zw = float2(10,10) * r0.zw;
  r3.xy = cmp(r0.zw >= -r0.zw);
  r0.zw = frac(abs(r0.zw));
  r0.zw = r3.xy ? r0.zw : -r0.zw;
  r0.z = r0.w * r0.z;
  r0.z = max(cb5[6].x, r0.z);
  r0.z = min(1, r0.z);
  r0.z = -1 + r0.z;
  r0.z = cb5[6].y * r0.z + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb5[6].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.w = saturate(cb5[6].x);
  r0.w = -1 + r0.w;
  r0.w = cb5[6].w * r0.w + 1;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[6].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r0.z = r0.z * r0.w;
  r0.w = cmp(cb0[31].w < 1);
  r1.w = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = 1 / r0.x;
  r0.x = r1.w + r0.x;
  r0.x = r0.w ? r0.y : r0.x;
  r0.y = r0.x / cb5[7].x;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb5[7].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb5[7].z * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r0.w ? 1 : r0.y;
  r3.xyz = cb5[2].xyz * r0.yyy;
  r0.yzw = r3.xyz * r0.zzz;
  r3.xyz = cb5[7].www * r0.yzw;
  r0.yzw = -r0.yzw * cb5[7].www + cb5[3].xyz;
  r0.yzw = cb5[8].xxx * r0.yzw + r3.xyz;
  r1.w = cb5[8].y * cb4[1].w;
  r2.w = cb5[8].z + r0.x;
  r3.xy = float2(0.649999976,0.487499982) * cb4[1].ww;
  r3.z = cb4[1].w * 0.617499948 + -r0.x;
  r3.y = saturate(r3.z / r3.y);
  r3.z = -cb4[1].w * 0.649999976 + 8000;
  r3.x = r3.y * r3.z + r3.x;
  r2.w = r2.w / r3.x;
  r0.x = r0.x / cb5[8].z;
  r3.x = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.w = r1.w ? r2.w : r0.x;
  r0.x = r3.x ? r1.w : r0.x;
  r1.w = cmp(9.99999975e-006 < abs(cb5[8].y));
  r2.w = 1 + cb5[8].y;
  r1.w = r1.w ? r2.w : 1.39999998;
  r3.xyz = -cb0[129].xxy + v4.xxy;
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
  r3.x = t9.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r2.w = r3.x + r2.w;
  r2.w = 0.166666672 * r2.w;
  r0.x = r0.x * r1.w + r2.w;
  r3.w = saturate(-0.5 + r0.x);
  r4.xyz = saturate(cb5[5].xyz);
  r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
  r5.xyz = cb0[213].xyz * r5.xyz;
  r6.xyz = (int3)r5.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.x = 1 + cb0[213].w;
  r5.xyz = r5.xyz / r6.www;
  r5.xyz = frac(r5.xyz);
  r5.xyz = cb0[213].www * r5.xyz;
  r5.xyz = r6.xyz * r0.xxx + r5.xyz;
  r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
  r5.xyz = cb0[214].xyz * r5.xyz;
  r6.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.x = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r7.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.xxx ? r7.xyz : r6.xyz;
  r7.xyz = t1.SampleLevel(s0_s, r5.xyz, 0).xyz;
  r7.xyz = float3(0.886227548,0.886227548,0.886227548) * r7.xyz;
  r7.xyz = max(float3(0,0,0), r7.xyz);
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r5.xyz = t2.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.w = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r1.w);
    r2.w = max(9.99999975e-005, r1.w);
    r5.xyz = r5.xyz / r2.www;
  } else {
    r9.xyz = v1.zxy * v0.yzx;
    r9.xyz = v1.yzx * v0.zxy + -r9.xyz;
    r9.xyz = v1.www * r9.xyz;
    r10.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = rsqrt(r2.w);
    r10.xyz = r10.xyz * r2.www;
    r9.xyz = r10.yyy * r9.xyz;
    r9.xyz = r10.xxx * v0.xyz + r9.xyz;
    r9.xyz = r10.zzz * v1.xyz + r9.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r5.xyz = r9.xyz * r2.www;
    r1.w = 1;
  }
  r9.x = t3[0].val[0/4];
  r9.y = t3[0].val[0/4+1];
  r9.z = t3[0].val[0/4+2];
  r9.w = t3[0].val[0/4+3];
  r5.w = 1;
  r9.x = dot(r9.xyzw, r5.xyzw);
  r10.x = t3[1].val[0/4];
  r10.y = t3[1].val[0/4+1];
  r10.z = t3[1].val[0/4+2];
  r10.w = t3[1].val[0/4+3];
  r9.y = dot(r10.xyzw, r5.xyzw);
  r10.x = t3[2].val[0/4];
  r10.y = t3[2].val[0/4+1];
  r10.z = t3[2].val[0/4+2];
  r10.w = t3[2].val[0/4+3];
  r9.z = dot(r10.xyzw, r5.xyzw);
  r10.xyzw = r5.xyzz * r5.yzzx;
  r11.x = t3[3].val[0/4];
  r11.y = t3[3].val[0/4+1];
  r11.z = t3[3].val[0/4+2];
  r11.w = t3[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t3[4].val[0/4];
  r12.y = t3[4].val[0/4+1];
  r12.z = t3[4].val[0/4+2];
  r12.w = t3[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t3[5].val[0/4];
  r12.y = t3[5].val[0/4+1];
  r12.z = t3[5].val[0/4+2];
  r12.w = t3[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r2.w = r5.y * r5.y;
  r2.w = r5.x * r5.x + -r2.w;
  r5.x = t3[6].val[0/4];
  r5.y = t3[6].val[0/4+1];
  r5.z = t3[6].val[0/4+2];
  r9.xyz = r11.xyz + r9.xyz;
  r5.xyz = r5.xyz * r2.www + r9.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r1.www;
  r5.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r5.xyz;
  r5.xyz = r5.xyz * r6.xyz;
  r7.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r4.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r2.yyy;
    r7.xyz = r2.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r2.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r9.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r7.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r9.z = cb0[208].z * r1.w;
    r1.w = t4.SampleLevel(s0_s, r9.xyz, 0).w;
    r1.w = v3.w * r1.w;
  } else {
    r1.w = v3.w;
  }
  r7.xyz = -cb0[148].xyz + r2.xyz;
  r9.xyz = cb0[150].xyz * r7.xyz;
  r10.xyz = -cb0[149].xyz + r2.xyz;
  r10.xyz = cb0[151].xyz * r10.xyz;
  r7.xyz = r7.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r7.xyz = float3(0.5,0.5,0.5) + -abs(r7.xyz);
  r7.xyz = saturate(float3(6,6,6) * r7.xyz);
  r2.w = r7.x * r7.y;
  r2.w = r2.w * r7.z;
  r7.xyzw = t5.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r9.xyzw = t6.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r7.xyzw = -r9.xyzw + r7.xyzw;
  r7.xyzw = r2.wwww * r7.xyzw + r9.xyzw;
  r7.xyz = float3(0.886227548,0.886227548,0.886227548) * r7.xyz;
  r2.w = cmp(0 < cb3[6].w);
  if (r2.w != 0) {
    r9.xyzw = cb3[1].xyzw * r2.yyyy;
    r9.xyzw = r2.xxxx * cb3[0].xyzw + r9.xyzw;
    r9.xyzw = r2.zzzz * cb3[2].xyzw + r9.xyzw;
    r9.xyzw = cb3[3].xyzw + r9.xyzw;
    r9.xy = r9.xy / r9.ww;
    r10.xyzw = t7.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r11.xyz = t8.SampleLevel(s0_s, r9.xy, 0).yzw;
    r12.xyz = float3(6.28318548,12.566371,18.849556) * r9.zzz;
    sincos(r12.xyz, r12.xyz, r13.xyz);
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r2.w = r10.x * r9.z;
    r10.xyz = r12.xyz * r10.yzw;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r4.w = dot(r10.xyz, float3(1,1,1));
    r2.w = r2.w * 0.5 + r4.w;
    r10.xyz = r13.xyz * r11.xyz;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r4.w = dot(r10.xyz, float3(1,1,1));
    r2.w = r4.w + r2.w;
    r10.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r2.www;
    r10.xyz = exp2(r10.xyz);
    r10.xyz = min(float3(1,1,1), r10.xyz);
    r9.zw = cmp(r9.xy < cb3[4].xy);
    r9.xy = cmp(cb3[4].zw < r9.xy);
    r9.xy = (int2)r9.xy | (int2)r9.zw;
    r2.w = (int)r9.y | (int)r9.x;
    r9.xyz = cb3[6].xyz * r7.www;
    r10.xyz = float3(1,1,1) + -r10.xyz;
    r10.xyz = r2.www ? float3(0,0,0) : r10.xyz;
    r9.xyz = -r9.xyz * r10.xyz + r7.xyz;
    r9.xyz = max(float3(0,0,0), r9.xyz);
    r9.xyz = r9.xyz * r6.xyz;
  } else {
    r9.xyz = r7.xyz * r6.xyz;
  }
  r7.xyz = r0.xxx ? float3(0,0,0) : r8.xyz;
  r6.xyz = r7.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r9.xyz;
  r6.xyz = cb0[145].yyy * r6.xyz + r9.xyz;
  r3.xyz = max(float3(0,0,0), r0.yzw);
  r0.x = cmp(0 < cb0[140].x);
  if (r0.x != 0) {
    r0.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r0.xyz = cmp(r7.xyz < abs(r0.xyz));
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
  r0.xyz = r5.xyz * r4.xyz + r6.xyz;
  r0.xyz = r0.xyz + r3.xyz;
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