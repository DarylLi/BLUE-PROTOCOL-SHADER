// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

struct t4_t {
  float val[4];
};
StructuredBuffer<t4_t> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s0_s : register(s0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v4.yyyy;
  r0.xyzw = v4.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v4.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
  r2.xyz = cb0[213].xyz * r2.xyz;
  r3.xyz = (int3)r2.xyz;
  r3.w = 0;
  r3.xyzw = t0.Load(r3.xyzw).xyzw;
  r3.xyzw = (uint4)r3.xyzw;
  r0.w = 1 + cb0[213].w;
  r2.xyz = r2.xyz / r3.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = cb0[213].www * r2.xyz;
  r2.xyz = r3.xyz * r0.www + r2.xyz;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = cb0[214].xyz * r2.xyz;
  r3.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r3.xyz = r0.www ? r3.xyz : cb0[136].xyz;
  r5.xyz = t1.SampleLevel(s0_s, r2.xyz, 0).xyz;
  r5.xyz = float3(0.886227548,0.886227548,0.886227548) * r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[157].xyz * r5.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r2.xyz = t2.SampleLevel(s0_s, r2.xyz, 0).xyz;
    r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r1.w);
    r2.w = max(9.99999975e-005, r1.w);
    r2.xyz = r2.xyz / r2.www;
  } else {
    r6.xyz = v1.zxy * v0.yzx;
    r6.xyz = v1.yzx * v0.zxy + -r6.xyz;
    r6.xyz = v1.www * r6.xyz;
    r7.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
    r3.w = dot(r7.xyz, r7.xyz);
    r3.w = rsqrt(r3.w);
    r7.xyz = r7.xyz * r3.www;
    r6.xyz = r7.yyy * r6.xyz;
    r6.xyz = r7.xxx * v0.xyz + r6.xyz;
    r6.xyz = r7.zzz * v1.xyz + r6.xyz;
    r3.w = dot(r6.xyz, r6.xyz);
    r3.w = rsqrt(r3.w);
    r2.xyz = r6.xyz * r3.www;
    r1.w = 1;
  }
  r6.x = t4[0].val[0/4];
  r6.y = t4[0].val[0/4+1];
  r6.z = t4[0].val[0/4+2];
  r6.w = t4[0].val[0/4+3];
  r2.w = 1;
  r6.x = dot(r6.xyzw, r2.xyzw);
  r7.x = t4[1].val[0/4];
  r7.y = t4[1].val[0/4+1];
  r7.z = t4[1].val[0/4+2];
  r7.w = t4[1].val[0/4+3];
  r6.y = dot(r7.xyzw, r2.xyzw);
  r7.x = t4[2].val[0/4];
  r7.y = t4[2].val[0/4+1];
  r7.z = t4[2].val[0/4+2];
  r7.w = t4[2].val[0/4+3];
  r6.z = dot(r7.xyzw, r2.xyzw);
  r7.xyzw = r2.xyzz * r2.yzzx;
  r8.x = t4[3].val[0/4];
  r8.y = t4[3].val[0/4+1];
  r8.z = t4[3].val[0/4+2];
  r8.w = t4[3].val[0/4+3];
  r8.x = dot(r8.xyzw, r7.xyzw);
  r9.x = t4[4].val[0/4];
  r9.y = t4[4].val[0/4+1];
  r9.z = t4[4].val[0/4+2];
  r9.w = t4[4].val[0/4+3];
  r8.y = dot(r9.xyzw, r7.xyzw);
  r9.x = t4[5].val[0/4];
  r9.y = t4[5].val[0/4+1];
  r9.z = t4[5].val[0/4+2];
  r9.w = t4[5].val[0/4+3];
  r8.z = dot(r9.xyzw, r7.xyzw);
  r2.y = r2.y * r2.y;
  r2.x = r2.x * r2.x + -r2.y;
  r2.y = t4[6].val[0/4];
  r2.z = t4[6].val[0/4+1];
  r2.w = t4[6].val[0/4+2];
  r6.xyz = r8.xyz + r6.xyz;
  r2.xyz = r2.yzw * r2.xxx + r6.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = cb0[187].xyz * r2.xyz;
  r2.xyz = r2.xyz * r1.www;
  r2.xyz = r5.xyz * float3(0.318309873,0.318309873,0.318309873) + r2.xyz;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r5.xyz = cb0[5].xyw * r1.yyy;
    r5.xyz = r1.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r1.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r6.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r5.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r6.z = cb0[208].z * r1.w;
    r1.w = t5.SampleLevel(s0_s, r6.xyz, 0).w;
    r1.w = v3.w * r1.w;
  } else {
    r1.w = v3.w;
  }
  r5.xyz = -cb0[148].xyz + r1.xyz;
  r6.xyz = cb0[150].xyz * r5.xyz;
  r7.xyz = -cb0[149].xyz + r1.xyz;
  r7.xyz = cb0[151].xyz * r7.xyz;
  r5.xyz = r5.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r5.xyz = float3(0.5,0.5,0.5) + -abs(r5.xyz);
  r5.xyz = saturate(float3(6,6,6) * r5.xyz);
  r2.w = r5.x * r5.y;
  r2.w = r2.w * r5.z;
  r5.xyz = t6.SampleLevel(s0_s, r6.xyz, 0).xyz;
  r6.xyz = t7.SampleLevel(s0_s, r7.xyz, 0).xyz;
  r5.xyz = -r6.xyz + r5.xyz;
  r5.xyz = r2.www * r5.xyz + r6.xyz;
  r5.xyz = r5.xyz * r3.xyz;
  r6.xyz = float3(0.886227548,0.886227548,0.886227548) * r5.xyz;
  r4.xyz = r0.www ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz + r3.xyz;
  r4.xyz = -r5.xyz * float3(0.886227548,0.886227548,0.886227548) + r4.xyz;
  r4.xyz = cb0[145].yyy * r4.xyz + r6.xyz;
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r5.x = t3[r5.x].val[0/4];
    r5.z = t3[r5.x].val[0/4+1];
    r5.w = t3[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r1.xyz;
    r6.x = t3[r5.y].val[0/4];
    r6.y = t3[r5.y].val[0/4+1];
    r6.z = t3[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r0.www ? r1.xyz : 0;
  } else {
    r1.xyz = float3(0,0,0);
  }
  r2.xyz = r2.xyz * r3.xyz + r4.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = r1.xyz * r1.www;
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
  o0.w = 0;
  return;
}