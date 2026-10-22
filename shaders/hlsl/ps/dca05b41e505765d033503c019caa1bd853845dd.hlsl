// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r4.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(18,4,6,5));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r1.z = r5.x + r5.y;
  r1.z = r1.z + r5.z;
  r1.z = frac(r1.z);
  r1.zw = v2.xy + r1.zz;
  r1.zw = float2(10,10) * r1.zw;
  r5.xy = cmp(r1.zw >= -r1.zw);
  r1.zw = frac(abs(r1.zw));
  r1.zw = r5.xy ? r1.zw : -r1.zw;
  r1.z = r1.w * r1.z;
  r1.z = max(cb3[6].x, r1.z);
  r1.z = min(1, r1.z);
  r1.z = -1 + r1.z;
  r1.z = cb3[6].y * r1.z + 1;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = saturate(cb3[6].x);
  r1.w = -1 + r1.w;
  r1.w = cb3[6].w * r1.w + 1;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[6].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.z = r1.z * r1.w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = r1.x / cb3[7].x;
  r1.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.w ? 1 : r1.y;
  r5.xyz = cb3[2].xyz * r1.yyy;
  r1.yzw = r5.xyz * r1.zzz;
  r5.xyz = cb3[7].www * r1.yzw;
  r1.yzw = -r1.yzw * cb3[7].www + cb3[3].xyz;
  r1.yzw = cb3[8].xxx * r1.yzw + r5.xyz;
  r2.w = cb3[8].y * cb2[1].w;
  r3.w = cb3[8].z + r1.x;
  r5.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r4.x = cb2[1].w * 0.617499948 + -r1.x;
  r4.x = saturate(r4.x / r5.y);
  r5.y = -cb2[1].w * 0.649999976 + 8000;
  r4.x = r4.x * r5.y + r5.x;
  r3.w = r3.w / r4.x;
  r1.x = r1.x / cb3[8].z;
  r4.x = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r2.w = r2.w ? r3.w : r1.x;
  r1.x = r4.x ? r2.w : r1.x;
  r2.w = cmp(9.99999975e-006 < abs(cb3[8].y));
  r3.w = 1 + cb3[8].y;
  r2.w = r2.w ? r3.w : 1.39999998;
  r5.xyz = -cb0[129].xxy + v6.xxy;
  r3.w = r5.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r2.w = -r3.w + r2.w;
  r5.xw = cb0[152].xx + r5.yz;
  r5.xw = (uint2)r5.xw;
  r3.w = (uint)r5.w << 1;
  r3.w = (int)r3.w + (int)r5.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r5.xy = float2(0.015625,0.015625) * r5.yz;
  r4.x = t6.SampleBias(s2_s, r5.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.w + r3.w;
  r5.w = saturate(-0.5 + r1.x);
  r6.xyz = saturate(cb3[5].xyz);
  r7.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r9.xyz = float3(0.449999988,0.449999988,0.449999988) * r8.xyz;
  r8.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.xxx ? r8.xyz : r7.xyz;
  r8.xy = float2(1,0.5) * v3.xy;
  r8.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t5.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t5.Sample(s1_s, r8.zw).xyzw;
  r2.w = r8.w * 0.00392156886 + r10.w;
  r2.w = -0.00196078443 + r2.w;
  r11.x = t1[r4.y].val[0/4];
  r11.y = t1[r4.y].val[0/4+1];
  r11.z = t1[r4.y].val[0/4+2];
  r11.w = t1[r4.y].val[0/4+3];
  r12.x = t1[r4.z].val[0/4];
  r12.y = t1[r4.z].val[0/4+1];
  r12.z = t1[r4.z].val[0/4+2];
  r12.w = t1[r4.z].val[0/4+3];
  r2.w = r2.w * r11.w + r12.w;
  r4.xyz = r10.xyz * r10.xyz;
  r4.xyz = r4.xyz * r11.xyz + r12.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r10.x = t1[r4.w].val[0/4];
  r10.y = t1[r4.w].val[0/4+1];
  r10.z = t1[r4.w].val[0/4+2];
  r10.w = t1[r4.w].val[0/4+3];
  r3.w = mad((int)w4.x, 15, 7);
  r11.x = t1[r3.w].val[0/4];
  r11.y = t1[r3.w].val[0/4+1];
  r11.z = t1[r3.w].val[0/4+2];
  r11.w = t1[r3.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r11.xyzw;
  r0.w = 1;
  r0.x = dot(r8.xyzw, r0.xyzw);
  r0.x = max(0, r0.x);
  r0.x = r2.w * r0.x;
  r0.xyz = r0.xxx * r4.xyz;
  r0.xyz = cb0[157].xyz * r0.xyz;
  r0.xyz = r0.xyz * r7.xyz;
  r4.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r6.xyz = cb0[5].xyw * r3.yyy;
    r6.xyz = r3.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r3.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r8.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r6.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r8.z = cb0[208].z * r0.w;
    r0.w = t2.SampleLevel(s0_s, r8.xyz, 0).w;
    r0.w = v5.w * r0.w;
  } else {
    r0.w = v5.w;
  }
  r6.xyz = -cb0[148].xyz + r3.xyz;
  r8.xyz = cb0[150].xyz * r6.xyz;
  r10.xyz = -cb0[149].xyz + r3.xyz;
  r10.xyz = cb0[151].xyz * r10.xyz;
  r6.xyz = r6.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r6.xyz = float3(0.5,0.5,0.5) + -abs(r6.xyz);
  r6.xyz = saturate(float3(6,6,6) * r6.xyz);
  r2.w = r6.x * r6.y;
  r2.w = r2.w * r6.z;
  r6.xyz = t3.SampleLevel(s0_s, r8.xyz, 0).xyz;
  r8.xyz = t4.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r6.xyz = -r8.xyz + r6.xyz;
  r6.xyz = r2.www * r6.xyz + r8.xyz;
  r6.xyz = r6.xyz * r7.xyz;
  r8.xyz = float3(0.886227548,0.886227548,0.886227548) * r6.xyz;
  r9.xyz = r1.xxx ? float3(0,0,0) : r9.xyz;
  r7.xyz = r9.xyz + r7.xyz;
  r6.xyz = -r6.xyz * float3(0.886227548,0.886227548,0.886227548) + r7.xyz;
  r6.xyz = cb0[145].yyy * r6.xyz + r8.xyz;
  r5.xyz = max(float3(0,0,0), r1.yzw);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r1.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
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
    r5.xyzw = r1.xxxx ? r3.yzwx : r5.xyzw;
  }
  r0.xyz = r0.xyz * r4.xyz + r6.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * r5.www;
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
  r1.w = cb1[163].x * r5.w;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = r1.www * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  o0.w = 0;
  return;
}