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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[25];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r0.w = cb2[14].x * cb0[142].z;
  r2.x = cb2[14].w * r0.w;
  r2.y = cb2[15].x * r0.w;
  r2.xy = v2.xy * cb2[15].yy + r2.xy;
  r0.w = t4.SampleBias(s1_s, r2.xy, cb0[143].y).x;
  r0.w = cb2[15].z * r0.w;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[15].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r1.w = cb2[16].x * cb0[142].z;
  r2.x = cb2[16].w * r1.w;
  r2.y = cb2[17].x * r1.w;
  r2.zw = cb2[17].yy + v2.xy;
  r2.zw = cb2[17].zw * r2.zw;
  r2.xy = r2.zw * cb2[18].xx + r2.xy;
  r2.xy = r2.xy + r0.ww;
  r2.xyzw = t5.SampleBias(s2_s, r2.xy, cb0[143].y).xyzw;
  r1.w = cb2[18].y * r2.w;
  r2.xyz = cb2[5].xyz * r2.xyz + -cb2[6].xyz;
  r2.xyz = r1.www * r2.xyz + cb2[6].xyz;
  r1.w = cb2[18].z * cb0[142].z;
  r3.xy = cb2[19].ww + v2.xy;
  r3.xy = cb2[20].xy * r3.xy;
  r3.xy = cb2[18].xx * r3.xy;
  r3.xy = r1.ww * cb2[19].yz + r3.xy;
  r3.xy = r3.xy + r0.ww;
  r3.xyzw = t5.SampleBias(s2_s, r3.xy, cb0[143].y).xyzw;
  r1.w = cb2[20].z * r3.w;
  r3.xyz = cb2[9].xyz * r3.xyz + -r2.xyz;
  r2.xyz = r1.www * r3.xyz + r2.xyz;
  r1.w = cb2[20].w * cb0[142].z;
  r3.xy = cb2[22].xx + v2.xy;
  r3.xy = cb2[22].yz * r3.xy;
  r3.xy = cb2[18].xx * r3.xy;
  r3.xy = r1.ww * cb2[21].zw + r3.xy;
  r3.xy = r3.xy + r0.ww;
  r3.xyzw = t5.SampleBias(s2_s, r3.xy, cb0[143].y).xyzw;
  r0.w = cb2[22].w * r3.w;
  r3.xyz = cb2[12].xyz * r3.xyz + -r2.xyz;
  r2.xyz = r0.www * r3.xyz + r2.xyz;
  r3.xyz = cb2[23].xxx * r2.xyz;
  r4.xyz = -r2.xyz * cb2[23].xxx + cb2[13].xyz;
  r3.xyz = cb2[23].yyy * r4.xyz + r3.xyz;
  r0.w = t6.SampleBias(s3_s, v2.xy, cb0[143].y).x;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[24].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb2[24].y * r0.w);
  r2.xyz = saturate(r2.xyz);
  r4.w = r1.w ? 0 : r0.w;
  r2.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.xyz;
  r2.xyz = r0.www ? r5.xyz : r2.xyz;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r5.xyz = cb0[5].xyw * r1.yyy;
    r5.xyz = r1.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r1.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r7.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r5.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r7.z = cb0[208].z * r1.w;
    r5.xyzw = t1.SampleLevel(s0_s, r7.xyz, 0).xyzw;
    r7.x = v4.w * r5.w;
    r5.xyz = v4.xyz * r5.www + r5.xyz;
  } else {
    r5.xyz = v4.xyz;
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
  r7.yzw = t2.SampleLevel(s0_s, r8.xyz, 0).xyz;
  r8.xyz = t3.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r7.yzw = -r8.xyz + r7.yzw;
  r7.yzw = r1.www * r7.yzw + r8.xyz;
  r7.yzw = r7.yzw * r2.xyz;
  r8.xyz = float3(0.886227548,0.886227548,0.886227548) * r7.yzw;
  r6.xyz = r0.www ? float3(0,0,0) : r6.xyz;
  r2.xyz = r6.xyz + r2.xyz;
  r2.xyz = -r7.yzw * float3(0.886227548,0.886227548,0.886227548) + r2.xyz;
  r2.xyz = cb0[145].yyy * r2.xyz + r8.xyz;
  r4.xyz = max(float3(0,0,0), r3.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r3.x = t0[r3.x].val[0/4];
    r3.z = t0[r3.x].val[0/4+1];
    r3.w = t0[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r1.xyz;
    r6.x = t0[r3.y].val[0/4];
    r6.y = t0[r3.y].val[0/4+1];
    r6.z = t0[r3.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r3.xyz = cmp(r6.xyz < abs(r3.xzw));
    r0.w = (int)r3.y | (int)r3.x;
    r0.w = (int)r3.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.x = 1;
    r4.xyzw = r0.wwww ? r1.yzwx : r4.xyzw;
    o0.w = r4.w;
  } else {
    o0.w = r4.w;
  }
  r1.xyz = r4.xyz + r2.xyz;
  r1.xyz = r1.xyz * r7.xxx + r5.xyz;
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