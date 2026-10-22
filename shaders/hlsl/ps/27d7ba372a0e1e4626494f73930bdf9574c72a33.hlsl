// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.z = mad((int)v3.x, 36, 18);
  r4.x = t0[r1.z].val[0/4];
  r4.y = t0[r1.z].val[0/4+1];
  r4.z = t0[r1.z].val[0/4+2];
  r1.z = r4.x + r4.y;
  r1.z = r1.z + r4.z;
  r1.z = frac(r1.z);
  r1.zw = v2.xy + r1.zz;
  r1.zw = float2(10,10) * r1.zw;
  r4.xy = cmp(r1.zw >= -r1.zw);
  r1.zw = frac(abs(r1.zw));
  r1.zw = r4.xy ? r1.zw : -r1.zw;
  r1.z = r1.w * r1.z;
  r1.z = max(cb4[6].x, r1.z);
  r1.z = min(1, r1.z);
  r1.z = -1 + r1.z;
  r1.z = cb4[6].y * r1.z + 1;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = saturate(cb4[6].x);
  r1.w = -1 + r1.w;
  r1.w = cb4[6].w * r1.w + 1;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[6].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.z = r1.z * r1.w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = r1.x / cb4[7].x;
  r1.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb4[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.w ? 1 : r1.y;
  r4.xyz = cb4[2].xyz * r1.yyy;
  r1.yzw = r4.xyz * r1.zzz;
  r4.xyz = cb4[7].www * r1.yzw;
  r1.yzw = -r1.yzw * cb4[7].www + cb4[3].xyz;
  r1.yzw = cb4[8].xxx * r1.yzw + r4.xyz;
  r2.w = cb4[8].y * cb3[1].w;
  r3.w = cb4[8].z + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r4.z = cb3[1].w * 0.617499948 + -r1.x;
  r4.y = saturate(r4.z / r4.y);
  r4.z = -cb3[1].w * 0.649999976 + 8000;
  r4.x = r4.y * r4.z + r4.x;
  r3.w = r3.w / r4.x;
  r1.x = r1.x / cb4[8].z;
  r4.x = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r2.w = r2.w ? r3.w : r1.x;
  r1.x = r4.x ? r2.w : r1.x;
  r2.w = cmp(9.99999975e-006 < abs(cb4[8].y));
  r3.w = 1 + cb4[8].y;
  r2.w = r2.w ? r3.w : 1.39999998;
  r4.xyz = -cb0[129].xxy + v5.xxy;
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
  r4.x = t7.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.w + r3.w;
  r4.w = saturate(-0.5 + r1.x);
  r5.xyz = saturate(cb4[5].xyz);
  r6.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r7.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.xxx ? r7.xyz : r6.xyz;
  r7.x = t1[0].val[0/4];
  r7.y = t1[0].val[0/4+1];
  r7.z = t1[0].val[0/4+2];
  r7.w = t1[0].val[0/4+3];
  r0.w = 1;
  r7.x = dot(r7.xyzw, r0.xyzw);
  r9.x = t1[1].val[0/4];
  r9.y = t1[1].val[0/4+1];
  r9.z = t1[1].val[0/4+2];
  r9.w = t1[1].val[0/4+3];
  r7.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t1[2].val[0/4];
  r9.y = t1[2].val[0/4+1];
  r9.z = t1[2].val[0/4+2];
  r9.w = t1[2].val[0/4+3];
  r7.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t1[3].val[0/4];
  r10.y = t1[3].val[0/4+1];
  r10.z = t1[3].val[0/4+2];
  r10.w = t1[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t1[4].val[0/4];
  r11.y = t1[4].val[0/4+1];
  r11.z = t1[4].val[0/4+2];
  r11.w = t1[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t1[5].val[0/4];
  r11.y = t1[5].val[0/4+1];
  r11.z = t1[5].val[0/4+2];
  r11.w = t1[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t1[6].val[0/4];
  r0.z = t1[6].val[0/4+1];
  r0.w = t1[6].val[0/4+2];
  r7.xyz = r10.xyz + r7.xyz;
  r0.xyz = r0.yzw * r0.xxx + r7.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.xyz = r0.xyz * r6.xyz;
  r7.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r5.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r0.w = cmp(0 < cb1[150].w);
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
    r0.w = t2.SampleLevel(s0_s, r9.xyz, 0).w;
    r0.w = v4.w * r0.w;
  } else {
    r0.w = v4.w;
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
  r7.xyzw = t3.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r9.xyzw = t4.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r7.xyzw = -r9.xyzw + r7.xyzw;
  r7.xyzw = r2.wwww * r7.xyzw + r9.xyzw;
  r7.xyz = float3(0.886227548,0.886227548,0.886227548) * r7.xyz;
  r2.w = cmp(0 < cb2[6].w);
  if (r2.w != 0) {
    r9.xyzw = cb2[1].xyzw * r3.yyyy;
    r9.xyzw = r3.xxxx * cb2[0].xyzw + r9.xyzw;
    r9.xyzw = r3.zzzz * cb2[2].xyzw + r9.xyzw;
    r9.xyzw = cb2[3].xyzw + r9.xyzw;
    r9.xy = r9.xy / r9.ww;
    r10.xyzw = t5.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r11.xyz = t6.SampleLevel(s0_s, r9.xy, 0).yzw;
    r12.xyz = float3(6.28318548,12.566371,18.849556) * r9.zzz;
    sincos(r12.xyz, r12.xyz, r13.xyz);
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r2.w = r10.x * r9.z;
    r10.xyz = r12.xyz * r10.yzw;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r3.w = dot(r10.xyz, float3(1,1,1));
    r2.w = r2.w * 0.5 + r3.w;
    r10.xyz = r13.xyz * r11.xyz;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r3.w = dot(r10.xyz, float3(1,1,1));
    r2.w = r3.w + r2.w;
    r10.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r2.www;
    r10.xyz = exp2(r10.xyz);
    r10.xyz = min(float3(1,1,1), r10.xyz);
    r9.zw = cmp(r9.xy < cb2[4].xy);
    r9.xy = cmp(cb2[4].zw < r9.xy);
    r9.xy = (int2)r9.xy | (int2)r9.zw;
    r2.w = (int)r9.y | (int)r9.x;
    r9.xyz = cb2[6].xyz * r7.www;
    r10.xyz = float3(1,1,1) + -r10.xyz;
    r10.xyz = r2.www ? float3(0,0,0) : r10.xyz;
    r9.xyz = -r9.xyz * r10.xyz + r7.xyz;
    r9.xyz = max(float3(0,0,0), r9.xyz);
    r9.xyz = r9.xyz * r6.xyz;
  } else {
    r9.xyz = r7.xyz * r6.xyz;
  }
  r7.xyz = r1.xxx ? float3(0,0,0) : r8.xyz;
  r6.xyz = r7.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r9.xyz;
  r6.xyz = cb0[145].yyy * r6.xyz + r9.xyz;
  r4.xyz = max(float3(0,0,0), r1.yzw);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r1.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r1.x = t0[r1.x].val[0/4];
    r1.z = t0[r1.x].val[0/4+1];
    r1.w = t0[r1.x].val[0/4+2];
    r1.xzw = r3.xyz + -r1.xzw;
    r7.x = t0[r1.y].val[0/4];
    r7.y = t0[r1.y].val[0/4+1];
    r7.z = t0[r1.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r1.xyz = cmp(r7.xyz < abs(r1.xzw));
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
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb1[166].xyz + -cb1[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb1[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb1[167].xyz;
  r1.w = cb1[163].x * r4.w;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = r1.www * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  o0.w = 0;
  return;
}