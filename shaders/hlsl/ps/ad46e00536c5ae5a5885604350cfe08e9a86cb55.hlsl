// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = t3.SampleBias(s1_s, v2.xy, cb0[143].y).xyz;
  r2.xyz = cb1[2].xyz * r2.xyz;
  r3.xyz = t4.SampleBias(s2_s, v2.xy, cb0[143].y).xyz;
  r3.xyz = cb1[4].xyz * r3.xyz;
  r0.w = cb0[142].z / cb1[6].z;
  r1.w = cmp(r0.w >= -r0.w);
  r2.w = frac(abs(r0.w));
  r1.w = r1.w ? r2.w : -r2.w;
  r2.w = cb1[6].z + -cb1[6].y;
  r1.w = r1.w * cb1[6].z + -cb1[6].y;
  r2.w = 1 / r2.w;
  r1.w = saturate(r2.w * r1.w);
  r2.w = r1.w * -2 + 3;
  r1.w = r1.w * r1.w;
  r1.w = r2.w * r1.w;
  r2.w = r1.w * 0.25 + 0.75;
  r1.w = cmp(3.9999999e-005 < r1.w);
  r2.w = 6.28318548 * r2.w;
  r2.w = cos(r2.w);
  r1.w = r1.w ? r2.w : -4.37113883e-008;
  r2.w = max(0, r1.w);
  r4.y = v3.y + r2.w;
  r4.x = v3.x;
  r4.xy = t5.SampleLevel(s3_s, r4.xy, -1).xy;
  r0.w = 0.5 * r0.w;
  r2.w = cmp(r0.w >= -r0.w);
  r0.w = frac(abs(r0.w));
  r0.w = r2.w ? r0.w : -r0.w;
  r0.w = r0.w + r0.w;
  r0.w = floor(r0.w);
  r2.w = (uint)r0.w;
  switch (r2.w) {
    case 0 :    r5.xyz = r3.xyz;
    r3.xyz = r2.xyz;
    break;
    case 1 :    r5.xyz = r2.xyz;
    break;
    default :
    break;
  }
  r0.w = 1 + r0.w;
  r0.w = cmp(r0.w == 2.000000);
  r2.xyz = r0.www ? r2.xyz : r5.xyz;
  r2.xyz = r2.xyz + -r3.xyz;
  r2.xyz = r4.yyy * r2.xyz + r3.xyz;
  r0.w = 3.14159274 * r1.w;
  r0.w = sin(r0.w);
  r0.w = r0.w * 0.0500000045 + 0.100000001;
  r3.xyz = r2.xyz * r0.www + -r2.xyz;
  r2.xyz = r4.xxx * r3.xyz + r2.xyz;
  r3.xyz = cb1[7].yyy * r2.xyz;
  r2.xyz = -r2.xyz * cb1[7].yyy + cb1[5].xyz;
  r2.xyz = cb1[7].zzz * r2.xyz + r3.xyz;
  r3.xyz = t6.SampleBias(s4_s, v2.xy, cb0[143].y).xyz;
  r4.xy = t7.SampleBias(s5_s, v2.xy, cb0[143].y).yx;
  r0.w = saturate(cb1[7].w + r4.y);
  r3.xyz = saturate(r3.xyz);
  r4.x = saturate(r4.x);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v4.x, 36, 20);
  r4.y = t2[r0.w].val[4/4];
  r4.z = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r4.z);
  if (r0.w != 0) {
    r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r0.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r0.w = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r5.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r3.xyz;
  r5.xyz = r4.xxx * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r3.xyz * r4.xxx + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = r1.www ? r5.xyz : r6.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t2[r4.z].val[0/4];
    r6.y = t2[r4.z].val[0/4+1];
    r6.z = t2[r4.z].val[0/4+2];
    r6.xyz = -r6.xyz + r1.xyz;
    r7.x = t2[r4.w].val[0/4];
    r7.y = t2[r4.w].val[0/4+1];
    r7.z = t2[r4.w].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r4.y;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r4.x;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}