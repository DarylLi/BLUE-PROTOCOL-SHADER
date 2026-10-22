// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

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
  float4 cb2[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r0.w = mad((int)v3.x, 36, 18);
  r4.x = t2[r0.w].val[0/4];
  r4.y = t2[r0.w].val[0/4+1];
  r4.z = t2[r0.w].val[0/4+2];
  r0.w = r4.x + r4.y;
  r0.w = r0.w + r4.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r1.w = cb3[7].x * r0.w;
  r4.x = cb3[7].w * r1.w;
  r4.y = cb3[8].x * r1.w;
  r5.x = cb3[8].y * v2.x + cb3[8].z;
  r5.y = cb3[8].w * v2.y + cb3[9].x;
  r4.zw = r5.xy + r4.xy;
  r1.w = cb3[9].y * 0.0199999996 + -0.00999999978;
  r5.x = dot(v0.xyz, r3.xyz);
  r5.y = dot(r0.xyz, r3.xyz);
  r0.xy = r5.xy * r1.ww + r4.zw;
  r0.z = cb3[9].z * r0.w;
  r3.xy = cb3[10].ww * v2.xy;
  r3.xy = r0.zz * cb3[10].yz + r3.xy;
  r0.z = t6.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r0.z = cb3[11].x * r0.z;
  r1.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb3[11].y * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r1.w ? 0 : r0.z;
  r0.xy = r0.xy + r0.zz;
  r3.x = t7.SampleBias(s2_s, r0.xy, cb0[143].y).x;
  r4.zw = cb3[8].yw * v2.xy + cb3[11].zw;
  r4.zw = r4.xy + r4.zw;
  r5.zw = cb3[12].xw * float2(0.0199999996,0.0199999996) + float2(-0.00999999978,-0.00999999978);
  r4.zw = r5.xy * r5.zz + r4.zw;
  r4.zw = r4.zw + r0.zz;
  r3.y = t7.SampleBias(s2_s, r4.zw, cb0[143].y).y;
  r4.zw = cb3[8].yw * v2.xy + cb3[12].yz;
  r4.xy = r4.xy + r4.zw;
  r4.xy = r5.xy * r5.ww + r4.xy;
  r4.xy = r4.xy + r0.zz;
  r3.z = t7.SampleBias(s2_s, r4.xy, cb0[143].y).z;
  r3.xyz = cb3[4].xyz * r3.xyz;
  r0.w = cb3[13].x * r0.w;
  r4.x = cb3[13].w * r0.w;
  r4.y = cb3[14].x * r0.w;
  r4.xy = v2.xy * cb3[14].yy + r4.xy;
  r0.zw = r4.xy + r0.zz;
  r4.xyz = t8.SampleBias(s3_s, r0.zw, cb0[143].y).xyz;
  r5.xyz = cb3[14].zzz * r4.xyz;
  r0.z = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = -r4.xyz * cb3[14].zzz + r0.zzz;
  r4.xyz = cb3[14].www * r4.xyz + r5.xyz;
  r5.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[15].xxx * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r5.xyz ? float3(0,0,0) : r4.xyz;
  r3.xyz = r4.xyz * r3.xyz;
  r4.xyz = cb3[15].yyy * r3.xyz;
  r3.xyz = -r3.xyz * cb3[15].yyy + cb3[6].xyz;
  r3.xyz = cb3[15].zzz * r3.xyz + r4.xyz;
  r0.x = t9.SampleBias(s4_s, r0.xy, cb0[143].y).w;
  r0.w = saturate(cb3[15].w * r0.x);
  r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r5.xyz = (int3)r4.xyz;
  r5.w = 0;
  r5.xyzw = t0.Load(r5.xyzw).xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r1.w = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r5.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r5.xyz * r1.www + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r5.xyz = r1.www ? r5.xyz : cb0[136].xyz;
  r4.xyz = t1.SampleLevel(s0_s, r4.xyz, 0).xyz;
  r4.xyz = float3(0.886227548,0.886227548,0.886227548) * r4.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[157].xyz * r4.xyz;
  r4.xyz = r4.xyz * r5.xyz;
  r2.w = cmp(0 < cb1[150].w);
  if (r2.w != 0) {
    r7.xyz = cb0[5].xyw * r2.yyy;
    r7.xyz = r2.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r2.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r8.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.w = r7.z * cb0[209].x + cb0[209].y;
    r2.w = log2(r2.w);
    r2.w = cb0[209].z * r2.w;
    r8.z = cb0[208].z * r2.w;
    r7.xyzw = t3.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v4.w * r7.w;
    r7.xyz = v4.xyz * r7.www + r7.xyz;
  } else {
    r7.xyz = v4.xyz;
    r8.x = v4.w;
  }
  r8.yzw = -cb0[148].xyz + r2.xyz;
  r9.xyz = cb0[150].xyz * r8.yzw;
  r10.xyz = -cb0[149].xyz + r2.xyz;
  r10.xyz = cb0[151].xyz * r10.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r2.w = r8.y * r8.z;
  r2.w = r2.w * r8.w;
  r8.yzw = t4.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r9.xyz = t5.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r8.yzw = -r9.xyz + r8.yzw;
  r8.yzw = r2.www * r8.yzw + r9.xyz;
  r8.yzw = r8.yzw * r5.xyz;
  r9.xyz = float3(0.886227548,0.886227548,0.886227548) * r8.yzw;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r5.xyz = -r8.yzw * float3(0.886227548,0.886227548,0.886227548) + r5.xyz;
  r5.xyz = cb0[145].yyy * r5.xyz + r9.xyz;
  r0.xyz = max(float3(0,0,0), r3.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r3.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r3.x = t2[r3.x].val[0/4];
    r3.z = t2[r3.x].val[0/4+1];
    r3.w = t2[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r2.xyz;
    r6.x = t2[r3.y].val[0/4];
    r6.y = t2[r3.y].val[0/4+1];
    r6.z = t2[r3.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r3.xyz = cmp(r6.xyz < abs(r3.xzw));
    r1.w = (int)r3.y | (int)r3.x;
    r1.w = (int)r3.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r0.xyzw = r1.wwww ? r2.yzwx : r0.xyzw;
    o0.w = r0.w;
  } else {
    o0.w = r0.w;
  }
  r2.xyz = r4.xyz * float3(0.318309873,0.318309873,0.318309873) + r5.xyz;
  r0.xyz = r2.xyz + r0.xyz;
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