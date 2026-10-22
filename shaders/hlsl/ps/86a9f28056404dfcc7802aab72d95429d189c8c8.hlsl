// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb2[5];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
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
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.x = r1.x / cb2[4].x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb2[4].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb2[4].z * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r1.yzw = cb2[2].xyz * r1.xxx;
  r4.xyz = -r1.xxx * cb2[2].xyz + cb2[3].xyz;
  r1.xyz = cb2[4].www * r4.xyz + r1.yzw;
  r4.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xyz = float3(0.449999988,0.449999988,0.449999988) * r4.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r4.xyz = r1.www ? r4.xyz : cb0[136].xyz;
  r6.x = t1[0].val[0/4];
  r6.y = t1[0].val[0/4+1];
  r6.z = t1[0].val[0/4+2];
  r6.w = t1[0].val[0/4+3];
  r0.w = 1;
  r6.x = dot(r6.xyzw, r0.xyzw);
  r7.x = t1[1].val[0/4];
  r7.y = t1[1].val[0/4+1];
  r7.z = t1[1].val[0/4+2];
  r7.w = t1[1].val[0/4+3];
  r6.y = dot(r7.xyzw, r0.xyzw);
  r7.x = t1[2].val[0/4];
  r7.y = t1[2].val[0/4+1];
  r7.z = t1[2].val[0/4+2];
  r7.w = t1[2].val[0/4+3];
  r6.z = dot(r7.xyzw, r0.xyzw);
  r7.xyzw = r0.xyzz * r0.yzzx;
  r8.x = t1[3].val[0/4];
  r8.y = t1[3].val[0/4+1];
  r8.z = t1[3].val[0/4+2];
  r8.w = t1[3].val[0/4+3];
  r8.x = dot(r8.xyzw, r7.xyzw);
  r9.x = t1[4].val[0/4];
  r9.y = t1[4].val[0/4+1];
  r9.z = t1[4].val[0/4+2];
  r9.w = t1[4].val[0/4+3];
  r8.y = dot(r9.xyzw, r7.xyzw);
  r9.x = t1[5].val[0/4];
  r9.y = t1[5].val[0/4+1];
  r9.z = t1[5].val[0/4+2];
  r9.w = t1[5].val[0/4+3];
  r8.z = dot(r9.xyzw, r7.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t1[6].val[0/4];
  r0.z = t1[6].val[0/4+1];
  r0.w = t1[6].val[0/4+2];
  r6.xyz = r8.xyz + r6.xyz;
  r0.xyz = r0.yzw * r0.xxx + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r6.xyz = cb0[5].xyw * r3.yyy;
    r6.xyz = r3.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r3.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r7.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r6.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r7.z = cb0[208].z * r0.w;
    r6.xyzw = t2.SampleLevel(s0_s, r7.xyz, 0).xyzw;
    r7.x = v3.w * r6.w;
    r6.xyz = v3.xyz * r6.www + r6.xyz;
  } else {
    r6.xyz = v3.xyz;
    r7.x = v3.w;
  }
  r7.yzw = -cb0[148].xyz + r3.xyz;
  r8.xyz = cb0[150].xyz * r7.yzw;
  r9.xyz = -cb0[149].xyz + r3.xyz;
  r9.xyz = cb0[151].xyz * r9.xyz;
  r7.yzw = r7.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r7.yzw = float3(0.5,0.5,0.5) + -abs(r7.yzw);
  r7.yzw = saturate(float3(6,6,6) * r7.yzw);
  r0.w = r7.y * r7.z;
  r0.w = r0.w * r7.w;
  r7.yzw = t3.SampleLevel(s0_s, r8.xyz, 0).xyz;
  r8.xyz = t4.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r7.yzw = -r8.xyz + r7.yzw;
  r7.yzw = r0.www * r7.yzw + r8.xyz;
  r7.yzw = r7.yzw * r4.xyz;
  r8.xyz = float3(0.886227548,0.886227548,0.886227548) * r7.yzw;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r5.xyz = r5.xyz + r4.xyz;
  r5.xyz = -r7.yzw * float3(0.886227548,0.886227548,0.886227548) + r5.xyz;
  r5.xyz = cb0[145].yyy * r5.xyz + r8.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r7.yz = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r8.x = t0[r7.y].val[0/4];
    r8.y = t0[r7.y].val[0/4+1];
    r8.z = t0[r7.y].val[0/4+2];
    r8.xyz = -r8.xyz + r3.xyz;
    r7.y = t0[r7.z].val[0/4];
    r7.z = t0[r7.z].val[0/4+1];
    r7.w = t0[r7.z].val[0/4+2];
    r7.yzw = float3(1,1,1) + r7.yzw;
    r7.yzw = cmp(r7.yzw < abs(r8.xyz));
    r0.w = (int)r7.z | (int)r7.y;
    r0.w = (int)r7.w | (int)r0.w;
    r1.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r3.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r0.www ? r3.xyz : r1.xyz;
  }
  r0.xyz = r0.xyz * r4.xyz + r5.xyz;
  r0.xyz = r0.xyz + r1.xyz;
  r0.xyz = r0.xyz * r7.xxx + r6.xyz;
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
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  o0.w = 1;
  return;
}