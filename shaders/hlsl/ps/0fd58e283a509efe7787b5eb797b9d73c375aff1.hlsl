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

cbuffer cb5 : register(b5)
{
  float4 cb5[7];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
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

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.w = v5.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r4.xy = t8.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb5[4].xx * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[4].x * r1.w;
  r1.w = exp2(r1.w);
  r4.z = r2.w ? 0 : r1.w;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r4.xyz = r0.xyz * r0.www;
  r1.w = dot(r3.xyz, v1.xyz);
  r2.w = cb5[4].y * r1.w;
  r2.w = 6.28318548 * r2.w;
  r5.y = sin(r2.w);
  r6.xy = cb5[4].zw + r1.ww;
  r6.xy = cb5[4].yy * r6.xy;
  r6.xy = float2(6.28318548,6.28318548) * r6.xy;
  r5.zw = sin(r6.xy);
  r5.xyz = float3(1,1,1) + r5.yzw;
  r5.xyz = cb5[2].xyz * r5.xyz;
  r6.xyz = float3(0.5,0.5,0.5) * r5.xyz;
  r5.xyz = -r5.xyz * float3(0.5,0.5,0.5) + cb5[3].xyz;
  r5.xyz = cb5[5].xxx * r5.xyz + r6.xyz;
  r1.w = dot(r4.xyz, r3.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = 0.200000003 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 5 + cb5[5].z;
  r1.w = saturate(-5 + r1.w);
  r1.w = r1.w * 0.949999988 + 0.0500000007;
  r2.w = t9.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r2.w = r2.w * 5 + cb5[6].x;
  r2.w = saturate(-5 + r2.w);
  r3.w = r2.w * r1.w;
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r6.xyz = r1.www ? r6.xyz : cb0[136].xyz;
  r2.w = cmp(0 < cb0[215].x);
  r8.xyz = r4.yzy * r4.yzx;
  r9.yw = r4.zz * r4.yx;
  r5.w = r4.x * r4.x + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r5.w = 0.429042608 * r5.w;
  r10.x = 0.886227548;
  r6.w = dot(cb3[6].xyzw, r10.xyzw);
  r7.w = dot(cb3[9].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.x = cb3[12].x * r5.w + r6.w;
  r6.w = dot(cb3[7].xyzw, r10.xyzw);
  r7.w = dot(cb3[10].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.y = cb3[12].y * r5.w + r6.w;
  r6.w = dot(cb3[8].xyzw, r10.xyzw);
  r7.w = dot(cb3[11].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.z = cb3[12].z * r5.w + r6.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r2.www ? r8.xyz : 0;
  r5.w = cmp(cb0[186].y != 0.000000);
  if (r5.w != 0) {
    r4.w = 1;
    r9.xyzw = r2.wwww ? cb3[4].wxyz : r4.wxyz;
    r2.w = 1 + -r9.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r0.www + -r9.yzw;
    r0.xyz = r2.www * r0.xyz + r9.yzw;
    r0.w = saturate(dot(r9.yzw, r4.xyz));
    r5.w = 1 + -r0.w;
    r9.y = r2.w * r5.w + r0.w;
    r4.xyz = r0.xyz;
  } else {
    r9.xy = float2(1,1);
  }
  r0.x = t0[0].val[0/4];
  r0.y = t0[0].val[0/4+1];
  r0.z = t0[0].val[0/4+2];
  r0.w = t0[0].val[0/4+3];
  r4.w = 1;
  r0.x = dot(r0.xyzw, r4.xyzw);
  r11.x = t0[1].val[0/4];
  r11.y = t0[1].val[0/4+1];
  r11.z = t0[1].val[0/4+2];
  r11.w = t0[1].val[0/4+3];
  r0.y = dot(r11.xyzw, r4.xyzw);
  r11.x = t0[2].val[0/4];
  r11.y = t0[2].val[0/4+1];
  r11.z = t0[2].val[0/4+2];
  r11.w = t0[2].val[0/4+3];
  r0.z = dot(r11.xyzw, r4.xyzw);
  r11.xyzw = r4.xyzz * r4.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.w = r4.y * r4.y;
  r0.w = r4.x * r4.x + -r0.w;
  r4.x = t0[6].val[0/4];
  r4.y = t0[6].val[0/4+1];
  r4.z = t0[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r4.xyz * r0.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r4.xyz = cb0[5].xyw * r2.yyy;
    r4.xyz = r2.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r2.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r8.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r4.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r8.z = cb0[208].z * r0.w;
    r4.xyzw = t1.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v3.w * r4.w;
    r4.xyz = v3.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v3.xyz;
    r8.x = v3.w;
  }
  r8.yzw = -cb0[148].xyz + r2.xyz;
  r9.xyz = cb0[150].xyz * r8.yzw;
  r11.xyz = -cb0[149].xyz + r2.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r0.w = r8.y * r8.z;
  r0.w = r0.w * r8.w;
  r12.xyzw = t2.SampleLevel(s0_s, r9.xyz, 0).xyzw;
  r13.xyzw = t3.SampleLevel(s0_s, r11.xyz, 0).xyzw;
  r12.xyzw = -r13.xyzw + r12.xyzw;
  r12.xyzw = r0.wwww * r12.xyzw + r13.xyzw;
  r8.yzw = t4.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r9.xyz = t5.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r8.yzw = -r9.xyz + r8.yzw;
  r8.yzw = r0.www * r8.yzw + r9.xyz;
  r0.w = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = 9.99999975e-006 + r0.w;
  r9.xyz = r12.xyz / r0.www;
  r11.yzw = r9.xxx * r8.yzw;
  r13.yzw = r9.yyy * r8.yzw;
  r9.yzw = r9.zzz * r8.yzw;
  r11.x = r12.x;
  r11.x = dot(r11.xyzw, r10.xyzw);
  r13.x = r12.y;
  r11.y = dot(r13.xyzw, r10.xyzw);
  r9.x = r12.z;
  r11.z = dot(r9.xyzw, r10.xyzw);
  r8.yzw = max(float3(0,0,0), r11.xyz);
  r0.w = cmp(0 < cb4[6].w);
  if (r0.w != 0) {
    r9.xyzw = cb4[1].xyzw * r2.yyyy;
    r9.xyzw = r2.xxxx * cb4[0].xyzw + r9.xyzw;
    r9.xyzw = r2.zzzz * cb4[2].xyzw + r9.xyzw;
    r9.xyzw = cb4[3].xyzw + r9.xyzw;
    r9.xy = r9.xy / r9.ww;
    r10.xyzw = t6.SampleLevel(s0_s, r9.xy, 0).xyzw;
    r11.xyz = t7.SampleLevel(s0_s, r9.xy, 0).yzw;
    r12.xyz = float3(6.28318548,12.566371,18.849556) * r9.zzz;
    sincos(r12.xyz, r12.xyz, r13.xyz);
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r0.w = r10.x * r9.z;
    r10.xyz = r12.xyz * r10.yzw;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r2.w = dot(r10.xyz, float3(1,1,1));
    r0.w = r0.w * 0.5 + r2.w;
    r10.xyz = r13.xyz * r11.xyz;
    r10.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r10.xyz;
    r2.w = dot(r10.xyz, float3(1,1,1));
    r0.w = r2.w + r0.w;
    r10.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r0.www;
    r10.xyz = exp2(r10.xyz);
    r10.xyz = min(float3(1,1,1), r10.xyz);
    r9.zw = cmp(r9.xy < cb4[4].xy);
    r9.xy = cmp(cb4[4].zw < r9.xy);
    r9.xy = (int2)r9.xy | (int2)r9.zw;
    r0.w = (int)r9.y | (int)r9.x;
    r9.xyz = cb4[6].xyz * r12.www;
    r10.xyz = float3(1,1,1) + -r10.xyz;
    r10.xyz = r0.www ? float3(0,0,0) : r10.xyz;
    r9.xyz = -r9.xyz * r10.xyz + r8.yzw;
    r9.xyz = max(float3(0,0,0), r9.xyz);
    r9.xyz = r9.xyz * r6.xyz;
  } else {
    r9.xyz = r8.yzw * r6.xyz;
  }
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r7.xyz = r7.xyz + r6.xyz;
  r7.xyz = r7.xyz + -r9.xyz;
  r7.xyz = cb0[145].yyy * r7.xyz + r9.xyz;
  r3.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r8.yzw = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r8.yzw < abs(r5.xyz));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
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
  r0.xyz = r0.xyz * r6.xyz + r7.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r0.xyz = r0.xyz * r8.xxx + r4.xyz;
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
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}