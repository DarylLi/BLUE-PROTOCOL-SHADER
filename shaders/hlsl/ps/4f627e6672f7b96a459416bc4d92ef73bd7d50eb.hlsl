// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
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

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r0.w = mad((int)v3.x, 36, 4);
  r0.w = t0[r0.w].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v6.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r4.xy = t8.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb4[4].xx * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[4].x * r1.w;
  r1.w = exp2(r1.w);
  r4.z = r2.w ? 0 : r1.w;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r3.xyz, v1.xyz);
  r1.w = cb4[4].y * r0.w;
  r1.w = 6.28318548 * r1.w;
  r4.y = sin(r1.w);
  r5.xy = cb4[4].zw + r0.ww;
  r5.xy = cb4[4].yy * r5.xy;
  r5.xy = float2(6.28318548,6.28318548) * r5.xy;
  r4.zw = sin(r5.xy);
  r4.xyz = float3(1,1,1) + r4.yzw;
  r4.xyz = cb4[2].xyz * r4.xyz;
  r5.xyz = float3(0.5,0.5,0.5) * r4.xyz;
  r4.xyz = -r4.xyz * float3(0.5,0.5,0.5) + cb4[3].xyz;
  r4.xyz = cb4[5].xxx * r4.xyz + r5.xyz;
  r0.w = dot(r0.zxy, r3.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = 0.200000003 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 5 + cb4[5].z;
  r0.w = saturate(-5 + r0.w);
  r0.w = r0.w * 0.949999988 + 0.0500000007;
  r1.w = t9.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r1.w = r1.w * 5 + cb4[6].x;
  r1.w = saturate(-5 + r1.w);
  r3.w = r1.w * r0.w;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r5.xyz = r0.www ? r5.xyz : cb0[136].xyz;
  r1.w = cmp(0 < cb0[215].x);
  r7.xyz = r0.xyx * r0.xyz;
  r8.yw = r0.yy * r0.xz;
  r2.w = r0.z * r0.z + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.xyz;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r0.x = 0.429042608 * r2.w;
  r9.x = 0.886227548;
  r0.y = dot(cb2[6].xyzw, r9.xyzw);
  r0.z = dot(cb2[9].xyzw, r7.xyzw);
  r0.y = r0.y + r0.z;
  r8.x = cb2[12].x * r0.x + r0.y;
  r0.y = dot(cb2[7].xyzw, r9.xyzw);
  r0.z = dot(cb2[10].xyzw, r7.xyzw);
  r0.y = r0.y + r0.z;
  r8.y = cb2[12].y * r0.x + r0.y;
  r0.y = dot(cb2[8].xyzw, r9.xyzw);
  r0.z = dot(cb2[11].xyzw, r7.xyzw);
  r0.y = r0.y + r0.z;
  r8.z = cb2[12].z * r0.x + r0.y;
  r0.xyz = max(float3(0,0,0), r8.xyz);
  r0.xyz = r1.www ? r0.xyz : 0;
  r0.xyz = cb0[157].xyz * r0.xyz;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r2.yyy;
    r7.xyz = r2.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r2.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r8.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r7.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r8.z = cb0[208].z * r1.w;
    r7.xyzw = t1.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v4.w * r7.w;
    r7.xyz = v4.xyz * r7.www + r7.xyz;
  } else {
    r7.xyz = v4.xyz;
    r8.x = v4.w;
  }
  r8.yzw = -cb0[148].xyz + r2.xyz;
  r10.xyz = cb0[150].xyz * r8.yzw;
  r11.xyz = -cb0[149].xyz + r2.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r1.w = r8.y * r8.z;
  r1.w = r1.w * r8.w;
  r12.xyzw = t2.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r13.xyzw = t3.SampleLevel(s0_s, r11.xyz, 0).xyzw;
  r12.xyzw = -r13.xyzw + r12.xyzw;
  r12.xyzw = r1.wwww * r12.xyzw + r13.xyzw;
  r8.yzw = t4.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r10.xyz = t5.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r8.yzw = -r10.xyz + r8.yzw;
  r8.yzw = r1.www * r8.yzw + r10.xyz;
  r1.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r10.xyz = r12.xyz / r1.www;
  r11.yzw = r10.xxx * r8.yzw;
  r13.yzw = r10.yyy * r8.yzw;
  r10.yzw = r10.zzz * r8.yzw;
  r11.x = r12.x;
  r11.x = dot(r11.xyzw, r9.xyzw);
  r13.x = r12.y;
  r11.y = dot(r13.xyzw, r9.xyzw);
  r10.x = r12.z;
  r11.z = dot(r10.xyzw, r9.xyzw);
  r8.yzw = max(float3(0,0,0), r11.xyz);
  r1.w = cmp(0 < cb3[6].w);
  if (r1.w != 0) {
    r9.xyzw = cb3[1].xyzw * r2.yyyy;
    r9.xyzw = r2.xxxx * cb3[0].xyzw + r9.xyzw;
    r9.xyzw = r2.zzzz * cb3[2].xyzw + r9.xyzw;
    r9.xyzw = cb3[3].xyzw + r9.xyzw;
    r9.xy = r9.xy / r9.ww;
    r10.xyzw = t6.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r11.xyz = t7.SampleLevel(s0_s, r9.xy, 0).yzw;
    r12.xyz = float3(6.28318548,12.566371,18.849556) * r9.zzz;
    sincos(r12.xyz, r12.xyz, r13.xyz);
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r1.w = r10.x * r9.z;
    r10.xyz = r12.xyz * r10.yzw;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r2.w = dot(r10.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r10.xyz = r13.xyz * r11.xyz;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r2.w = dot(r10.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r10.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r10.xyz = exp2(r10.xyz);
    r10.xyz = min(float3(1,1,1), r10.xyz);
    r9.zw = cmp(r9.xy < cb3[4].xy);
    r9.xy = cmp(cb3[4].zw < r9.xy);
    r9.xy = (int2)r9.xy | (int2)r9.zw;
    r1.w = (int)r9.y | (int)r9.x;
    r9.xyz = cb3[6].xyz * r12.www;
    r10.xyz = float3(1,1,1) + -r10.xyz;
    r10.xyz = r1.www ? float3(0,0,0) : r10.xyz;
    r9.xyz = -r9.xyz * r10.xyz + r8.yzw;
    r9.xyz = max(float3(0,0,0), r9.xyz);
    r9.xyz = r9.xyz * r5.xyz;
  } else {
    r9.xyz = r8.yzw * r5.xyz;
  }
  r6.xyz = r0.www ? float3(0,0,0) : r6.xyz;
  r6.xyz = r6.xyz + r5.xyz;
  r6.xyz = r6.xyz + -r9.xyz;
  r6.xyz = cb0[145].yyy * r6.xyz + r9.xyz;
  r3.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r8.y = t0[r4.y].val[0/4];
    r8.z = t0[r4.y].val[0/4+1];
    r8.w = t0[r4.y].val[0/4+2];
    r8.yzw = float3(1,1,1) + r8.yzw;
    r4.xyz = cmp(r8.yzw < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r3.xyzw = r0.wwww ? r2.yzwx : r3.xyzw;
    o0.w = r3.w;
  } else {
    o0.w = r3.w;
  }
  r0.xyz = r0.xyz * r5.xyz + r6.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r0.xyz = r0.xyz * r8.xxx + r7.xyz;
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
  return;
}