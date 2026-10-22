// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r1.w = cb4[14].x * cb0[142].z;
  r3.x = cb4[14].w * r1.w;
  r3.y = cb4[15].x * r1.w;
  r3.xy = v2.xy * cb4[15].yy + r3.xy;
  r1.w = t7.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r1.w = cb4[15].z * r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[15].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r2.w = cb4[16].x * cb0[142].z;
  r3.x = cb4[16].w * r2.w;
  r3.y = cb4[17].x * r2.w;
  r3.zw = cb4[17].yy + v2.xy;
  r3.zw = cb4[17].zw * r3.zw;
  r3.xy = r3.zw * cb4[18].xx + r3.xy;
  r3.xy = r3.xy + r1.ww;
  r3.xyzw = t8.SampleBias(s2_s, r3.xy, cb0[143].y).xyzw;
  r2.w = cb4[18].y * r3.w;
  r3.xyz = cb4[5].xyz * r3.xyz + -cb4[6].xyz;
  r3.xyz = r2.www * r3.xyz + cb4[6].xyz;
  r2.w = cb4[18].z * cb0[142].z;
  r4.xy = cb4[19].ww + v2.xy;
  r4.xy = cb4[20].xy * r4.xy;
  r4.xy = cb4[18].xx * r4.xy;
  r4.xy = r2.ww * cb4[19].yz + r4.xy;
  r4.xy = r4.xy + r1.ww;
  r4.xyzw = t8.SampleBias(s2_s, r4.xy, cb0[143].y).xyzw;
  r2.w = cb4[20].z * r4.w;
  r4.xyz = cb4[9].xyz * r4.xyz + -r3.xyz;
  r3.xyz = r2.www * r4.xyz + r3.xyz;
  r2.w = cb4[20].w * cb0[142].z;
  r4.xy = cb4[22].xx + v2.xy;
  r4.xy = cb4[22].yz * r4.xy;
  r4.xy = cb4[18].xx * r4.xy;
  r4.xy = r2.ww * cb4[21].zw + r4.xy;
  r4.xy = r4.xy + r1.ww;
  r4.xyzw = t8.SampleBias(s2_s, r4.xy, cb0[143].y).xyzw;
  r1.w = cb4[22].w * r4.w;
  r4.xyz = cb4[12].xyz * r4.xyz + -r3.xyz;
  r3.xyz = r1.www * r4.xyz + r3.xyz;
  r4.xyz = cb4[23].xxx * r3.xyz;
  r5.xyz = -r3.xyz * cb4[23].xxx + cb4[13].xyz;
  r4.xyz = cb4[23].yyy * r5.xyz + r4.xyz;
  r1.w = t9.SampleBias(s3_s, v2.xy, cb0[143].y).x;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[24].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb4[24].y * r1.w);
  r3.xyz = saturate(r3.xyz);
  r5.w = r2.w ? 0 : r1.w;
  r6.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r7.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r7.xyz : r6.xyz;
  r2.w = cmp(0 < cb0[215].x);
  r3.w = 0.886227548 * cb2[6].x;
  r4.w = 0.886227548 * cb2[7].x;
  r6.w = 0.886227548 * cb2[8].x;
  r7.x = r2.w ? r3.w : 0;
  r7.y = r2.w ? r4.w : 0;
  r7.z = r2.w ? r6.w : 0;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r0.w = 1;
    r9.xyzw = r2.wwww ? cb2[4].wxyz : r0.wxyz;
    r0.xyz = r9.yzw;
  } else {
    r9.x = 1;
  }
  r10.x = t1[0].val[0/4];
  r10.y = t1[0].val[0/4+1];
  r10.z = t1[0].val[0/4+2];
  r10.w = t1[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t1[1].val[0/4];
  r11.y = t1[1].val[0/4+1];
  r11.z = t1[1].val[0/4+2];
  r11.w = t1[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t1[2].val[0/4];
  r11.y = t1[2].val[0/4+1];
  r11.z = t1[2].val[0/4+2];
  r11.w = t1[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t1[3].val[0/4];
  r12.y = t1[3].val[0/4+1];
  r12.z = t1[3].val[0/4+2];
  r12.w = t1[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t1[4].val[0/4];
  r13.y = t1[4].val[0/4+1];
  r13.z = t1[4].val[0/4+2];
  r13.w = t1[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t1[5].val[0/4];
  r13.y = t1[5].val[0/4+1];
  r13.z = t1[5].val[0/4+2];
  r13.w = t1[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t1[6].val[0/4];
  r0.z = t1[6].val[0/4+1];
  r0.w = t1[6].val[0/4+2];
  r9.yzw = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.xyz = r0.xyz * r9.xxx;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r0.xyz = r0.xyz * r6.xyz;
  r7.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r3.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r7.xyz = cb0[5].xyw * r2.yyy;
    r7.xyz = r2.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r2.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r9.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r7.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r9.z = cb0[208].z * r0.w;
    r7.xyzw = t2.SampleLevel(s0_s, r9.xyz, 0).xyzw;
    r9.x = v4.w * r7.w;
    r7.xyz = v4.xyz * r7.www + r7.xyz;
  } else {
    r7.xyz = v4.xyz;
    r9.x = v4.w;
  }
  r9.yzw = -cb0[148].xyz + r2.xyz;
  r10.xyz = cb0[150].xyz * r9.yzw;
  r11.xyz = -cb0[149].xyz + r2.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r9.yzw = r9.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r9.yzw = float3(0.5,0.5,0.5) + -abs(r9.yzw);
  r9.yzw = saturate(float3(6,6,6) * r9.yzw);
  r0.w = r9.y * r9.z;
  r0.w = r0.w * r9.w;
  r10.xyzw = t3.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r11.xyzw = t4.SampleLevel(s0_s, r11.xyz, 0).xyzw;
  r10.xyzw = -r11.xyzw + r10.xyzw;
  r10.xyzw = r0.wwww * r10.xyzw + r11.xyzw;
  r9.yzw = float3(0.886227548,0.886227548,0.886227548) * r10.xyz;
  r0.w = cmp(0 < cb3[6].w);
  if (r0.w != 0) {
    r11.xyzw = cb3[1].xyzw * r2.yyyy;
    r11.xyzw = r2.xxxx * cb3[0].xyzw + r11.xyzw;
    r11.xyzw = r2.zzzz * cb3[2].xyzw + r11.xyzw;
    r11.xyzw = cb3[3].xyzw + r11.xyzw;
    r10.xy = r11.xy / r11.ww;
    r12.xyzw = t5.SampleLevel(s0_s, r10.xy, 0).xyzw;
    r11.xyw = t6.SampleLevel(s0_s, r10.xy, 0).yzw;
    r13.xyz = float3(6.28318548,12.566371,18.849556) * r11.zzz;
    sincos(r13.xyz, r13.xyz, r14.xyz);
    r14.xyz = float3(1,1,1) + -r14.xyz;
    r0.w = r12.x * r11.z;
    r12.xyz = r13.xyz * r12.yzw;
    r12.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r12.xyz;
    r2.w = dot(r12.xyz, float3(1,1,1));
    r0.w = r0.w * 0.5 + r2.w;
    r11.xyz = r14.xyz * r11.xyw;
    r11.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r11.xyz;
    r2.w = dot(r11.xyz, float3(1,1,1));
    r0.w = r2.w + r0.w;
    r11.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r0.www;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = min(float3(1,1,1), r11.xyz);
    r12.xy = cmp(r10.xy < cb3[4].xy);
    r10.xy = cmp(cb3[4].zw < r10.xy);
    r10.xy = (int2)r10.xy | (int2)r12.xy;
    r0.w = (int)r10.y | (int)r10.x;
    r10.xyz = cb3[6].xyz * r10.www;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r0.www ? float3(0,0,0) : r11.xyz;
    r10.xyz = -r10.xyz * r11.xyz + r9.yzw;
    r10.xyz = max(float3(0,0,0), r10.xyz);
    r10.xyz = r10.xyz * r6.xyz;
  } else {
    r10.xyz = r9.yzw * r6.xyz;
  }
  r8.xyz = r1.www ? float3(0,0,0) : r8.xyz;
  r6.xyz = r8.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r10.xyz;
  r6.xyz = cb0[145].yyy * r6.xyz + r10.xyz;
  r5.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r8.x = t0[r4.y].val[0/4];
    r8.y = t0[r4.y].val[0/4+1];
    r8.z = t0[r4.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r4.xyz = cmp(r8.xyz < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r5.xyzw = r0.wwww ? r2.yzwx : r5.xyzw;
    o0.w = r5.w;
  } else {
    o0.w = r5.w;
  }
  r0.xyz = r0.xyz * r3.xyz + r6.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r0.xyz = r0.xyz * r9.xxx + r7.xyz;
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