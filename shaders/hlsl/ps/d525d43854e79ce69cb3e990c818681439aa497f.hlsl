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
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r3.xyz = r1.www ? r3.xyz : cb0[136].xyz;
  r5.x = t1[0].val[0/4];
  r5.y = t1[0].val[0/4+1];
  r5.z = t1[0].val[0/4+2];
  r5.w = t1[0].val[0/4+3];
  r0.w = 1;
  r5.x = dot(r5.xyzw, r0.xyzw);
  r6.x = t1[1].val[0/4];
  r6.y = t1[1].val[0/4+1];
  r6.z = t1[1].val[0/4+2];
  r6.w = t1[1].val[0/4+3];
  r5.y = dot(r6.xyzw, r0.xyzw);
  r6.x = t1[2].val[0/4];
  r6.y = t1[2].val[0/4+1];
  r6.z = t1[2].val[0/4+2];
  r6.w = t1[2].val[0/4+3];
  r5.z = dot(r6.xyzw, r0.xyzw);
  r6.xyzw = r0.xyzz * r0.yzzx;
  r7.x = t1[3].val[0/4];
  r7.y = t1[3].val[0/4+1];
  r7.z = t1[3].val[0/4+2];
  r7.w = t1[3].val[0/4+3];
  r7.x = dot(r7.xyzw, r6.xyzw);
  r8.x = t1[4].val[0/4];
  r8.y = t1[4].val[0/4+1];
  r8.z = t1[4].val[0/4+2];
  r8.w = t1[4].val[0/4+3];
  r7.y = dot(r8.xyzw, r6.xyzw);
  r8.x = t1[5].val[0/4];
  r8.y = t1[5].val[0/4+1];
  r8.z = t1[5].val[0/4+2];
  r8.w = t1[5].val[0/4+3];
  r7.z = dot(r8.xyzw, r6.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t1[6].val[0/4];
  r0.z = t1[6].val[0/4+1];
  r0.w = t1[6].val[0/4+2];
  r5.xyz = r7.xyz + r5.xyz;
  r0.xyz = r0.yzw * r0.xxx + r5.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r5.xyz = cb0[5].xyw * r2.yyy;
    r5.xyz = r2.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r2.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r6.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r5.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r6.z = cb0[208].z * r0.w;
    r0.w = t2.SampleLevel(s0_s, r6.xyz, 0).w;
    r0.w = v3.w * r0.w;
  } else {
    r0.w = v3.w;
  }
  r5.xyz = -cb0[148].xyz + r2.xyz;
  r6.xyz = cb0[150].xyz * r5.xyz;
  r7.xyz = -cb0[149].xyz + r2.xyz;
  r7.xyz = cb0[151].xyz * r7.xyz;
  r5.xyz = r5.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r5.xyz = float3(0.5,0.5,0.5) + -abs(r5.xyz);
  r5.xyz = saturate(float3(6,6,6) * r5.xyz);
  r2.w = r5.x * r5.y;
  r2.w = r2.w * r5.z;
  r5.xyzw = t3.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r6.xyzw = t4.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r5.xyzw = -r6.xyzw + r5.xyzw;
  r5.xyzw = r2.wwww * r5.xyzw + r6.xyzw;
  r5.xyz = float3(0.886227548,0.886227548,0.886227548) * r5.xyz;
  r2.w = cmp(0 < cb2[6].w);
  if (r2.w != 0) {
    r6.xyzw = cb2[1].xyzw * r2.yyyy;
    r6.xyzw = r2.xxxx * cb2[0].xyzw + r6.xyzw;
    r6.xyzw = r2.zzzz * cb2[2].xyzw + r6.xyzw;
    r6.xyzw = cb2[3].xyzw + r6.xyzw;
    r6.xy = r6.xy / r6.ww;
    r7.xyzw = t5.SampleLevel(s0_s, r6.xy, 0).xyzw;
    r8.xyz = t6.SampleLevel(s0_s, r6.xy, 0).yzw;
    r9.xyz = float3(6.28318548,12.566371,18.849556) * r6.zzz;
    sincos(r9.xyz, r9.xyz, r10.xyz);
    r10.xyz = float3(1,1,1) + -r10.xyz;
    r2.w = r7.x * r6.z;
    r7.xyz = r9.xyz * r7.yzw;
    r7.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r7.xyz;
    r3.w = dot(r7.xyz, float3(1,1,1));
    r2.w = r2.w * 0.5 + r3.w;
    r7.xyz = r10.xyz * r8.xyz;
    r7.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r7.xyz;
    r3.w = dot(r7.xyz, float3(1,1,1));
    r2.w = r3.w + r2.w;
    r7.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r2.www;
    r7.xyz = exp2(r7.xyz);
    r7.xyz = min(float3(1,1,1), r7.xyz);
    r6.zw = cmp(r6.xy < cb2[4].xy);
    r6.xy = cmp(cb2[4].zw < r6.xy);
    r6.xy = (int2)r6.xy | (int2)r6.zw;
    r2.w = (int)r6.y | (int)r6.x;
    r6.xyz = cb2[6].xyz * r5.www;
    r7.xyz = float3(1,1,1) + -r7.xyz;
    r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
    r6.xyz = -r6.xyz * r7.xyz + r5.xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = r6.xyz * r3.xyz;
  } else {
    r6.xyz = r5.xyz * r3.xyz;
  }
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + r3.xyz;
  r4.xyz = r4.xyz + -r6.xyz;
  r4.xyz = cb0[145].yyy * r4.xyz + r6.xyz;
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r5.x = t0[r5.x].val[0/4];
    r5.z = t0[r5.x].val[0/4+1];
    r5.w = t0[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t0[r5.y].val[0/4];
    r6.y = t0[r5.y].val[0/4+1];
    r6.z = t0[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r2.xyz : 0;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r0.xyz = r0.xyz * r3.xyz + r4.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb1[166].xyz + -cb1[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb1[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  o0.w = 0;
  return;
}