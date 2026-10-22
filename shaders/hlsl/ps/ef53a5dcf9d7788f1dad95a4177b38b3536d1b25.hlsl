// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
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

  r0.x = v5.z;
  r0.y = 1;
  r0.xy = v5.ww * r0.xy;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.zw = cb3[7].xz * v2.xy + cb3[7].yw;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = 1 / r0.x;
  r0.x = r2.w + r0.x;
  r0.x = r1.w ? r0.y : r0.x;
  r0.x = r0.x / cb3[8].y;
  r0.y = cmp(0 >= r0.x);
  r0.x = log2(r0.x);
  r0.x = cb3[8].z * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(1, r0.x);
  r0.x = cb3[8].w * r0.x;
  r0.x = max(1, r0.x);
  r0.x = r0.y ? 1 : r0.x;
  r3.xy = r0.zw / cb3[9].zz;
  r4.x = cb3[9].w + r3.x;
  r4.y = cb3[10].x + r3.y;
  r3.xyz = t4.SampleBias(s1_s, r4.xy, cb0[143].y).xyz;
  r0.y = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r4.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb3[9].y, r5.x, r6.x);
  r4.xyz = r5.xxx * r4.xyz;
  r3.xyz = r3.xyz * r6.xxx + r4.xyz;
  r3.xyz = r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb3[2].xyz * r3.xyz;
  r0.y = mad((int)v3.x, 36, 18);
  r4.x = t0[r0.y].val[0/4];
  r4.y = t0[r0.y].val[0/4+1];
  r4.z = t0[r0.y].val[0/4+2];
  r0.y = r4.x + r4.y;
  r0.y = r0.y + r4.z;
  r0.y = frac(r0.y);
  r0.y = cb0[142].z + r0.y;
  r0.y = cb2[2].x * r0.y;
  r0.y = cb3[10].z * r0.y;
  r4.xy = v2.zw + -v2.xy;
  r4.xy = cb3[11].ww * r4.xy + v2.xy;
  r4.xy = cb3[12].xx * r4.xy;
  r4.xy = r0.yy * cb3[11].yz + r4.xy;
  r0.y = t5.SampleBias(s2_s, r4.xy, cb0[143].y).x;
  r1.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[12].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r1.w ? 0 : r0.y;
  r1.w = cb3[12].z * r0.y;
  r1.w = cb0[142].z * cb3[10].y + r1.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * cb3[13].x + cb3[12].w;
  r1.w = max(cb3[13].z, r1.w);
  r1.w = min(cb3[13].y, r1.w);
  r1.w = cb3[13].w * r1.w;
  r1.w = cb2[3].y * r1.w;
  r0.y = r1.w * r0.y;
  r3.xyz = r3.xyz * r0.yyy;
  r4.xyz = r3.xyz * r0.xxx;
  r3.xyz = -r0.xxx * r3.xyz + cb3[4].xyz;
  r3.xyz = cb3[14].xxx * r3.xyz + r4.xyz;
  r4.xyzw = t6.SampleBias(s3_s, r0.zw, cb0[143].y).xyzw;
  r0.x = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.xxx + -r4.xyz;
  r5.xyz = cb3[14].www * r5.xyz + r4.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[14].z, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb3[6].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r0.x = t7.SampleBias(s4_s, r0.zw, cb0[143].y).y;
  r0.yzw = min(float3(1,1,1), r5.xyz);
  r0.x = saturate(r0.x);
  r1.w = saturate(cb3[15].x);
  r4.w = saturate(r4.w);
  r2.w = 0.0799999982 * r1.w;
  r5.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r0.yzw;
  r5.xyz = r0.xxx * r5.xyz + r2.www;
  r0.xyz = -r0.yzw * r0.xxx + r0.yzw;
  r0.xyz = r0.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r0.xyz;
  r0.xyz = r0.www ? r5.xyz : r0.xyz;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r5.xyz = cb0[5].xyw * r2.yyy;
    r5.xyz = r2.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r2.zzz * cb0[6].xyw + r5.xyz;
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
  r7.yzw = -cb0[148].xyz + r2.xyz;
  r8.xyz = cb0[150].xyz * r7.yzw;
  r9.xyz = -cb0[149].xyz + r2.xyz;
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
  r7.yzw = r7.yzw * r0.xyz;
  r8.xyz = float3(0.886227548,0.886227548,0.886227548) * r7.yzw;
  r6.xyz = r0.www ? float3(0,0,0) : r6.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r0.xyz = -r7.yzw * float3(0.886227548,0.886227548,0.886227548) + r0.xyz;
  r0.xyz = cb0[145].yyy * r0.xyz + r8.xyz;
  r4.xyz = max(float3(0,0,0), r3.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r3.x = t0[r3.x].val[0/4];
    r3.z = t0[r3.x].val[0/4+1];
    r3.w = t0[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r2.xyz;
    r6.x = t0[r3.y].val[0/4];
    r6.y = t0[r3.y].val[0/4+1];
    r6.z = t0[r3.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r3.xyz = cmp(r6.xyz < abs(r3.xzw));
    r0.w = (int)r3.y | (int)r3.x;
    r0.w = (int)r3.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r4.xyzw = r0.wwww ? r2.yzwx : r4.xyzw;
    o0.w = r4.w;
  } else {
    o0.w = r4.w;
  }
  r0.xyz = r4.xyz + r0.xyz;
  r0.xyz = r0.xyz * r7.xxx + r5.xyz;
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