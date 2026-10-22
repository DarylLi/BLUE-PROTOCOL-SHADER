// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[11];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[216];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r1.xyz = -r1.xyz * r0.www;
  r3.xy = cb4[6].xx * v2.xy;
  r0.w = cb4[6].y + cb0[143].y;
  r3.zw = t3.SampleBias(s1_s, r3.xy, r0.w).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[6].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r2.xyz;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = sqrt(r0.y);
  r6.xyz = r6.xyz / r0.yyy;
  r0.y = saturate(dot(-r6.xyz, r5.xyz));
  r1.w = 1 + -cb2[1].x;
  r0.y = saturate(r1.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r1.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r1.x = cb2[1].y * r0.y;
  r1.x = exp2(r1.x);
  r1.y = 1 + -cb2[0].w;
  r1.x = r1.x * r1.y + cb2[0].w;
  r1.y = cmp(r1.x >= cb2[0].y);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.y * r1.x;
  r1.y = r0.z * r0.w + 1;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb2[0].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = r1.z ? 0 : r1.y;
  r1.x = r1.x * r1.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r1.x * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r1.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r5.xyz));
  r0.w = saturate(r0.w + r1.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb3[9].xyz * r0.xxx;
  r0.xzw = cb3[1].yyy * r0.xzw;
  r0.xzw = r1.xyz * cb3[1].xxx + r0.xzw;
  r0.xzw = cb2[2].xyz * r0.xzw;
  r1.xyz = cb4[2].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb4[2].xyz + cb4[3].xyz;
  r0.xzw = cb4[6].www * r0.xzw + r1.xyz;
  r1.xyz = t4.SampleBias(s2_s, r3.xy, cb0[143].y).xyz;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r1.www + -r1.xyz;
  r1.xyz = cb4[7].zzz * r5.xyz + r1.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r5.xyz = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb4[7].y, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r1.xyz = r1.xyz * r7.xxx + r5.xyz;
  r1.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r1.xyz = cb4[5].xyz * r1.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.xyz);
  r3.xy = t5.SampleBias(s3_s, r3.xy, cb0[143].y).xy;
  r1.w = cmp(0 >= r3.x);
  r2.w = log2(r3.x);
  r2.w = cb4[7].w * r2.w;
  r2.w = exp2(r2.w);
  r1.w = r1.w ? 0 : r2.w;
  r1.w = saturate(cb4[8].x + r1.w);
  r3.x = saturate(cb4[8].y + r3.y);
  r0.y = cb4[8].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[8].w * r0.y;
  r2.w = saturate(cb4[9].y + v1.z);
  r0.y = r2.w * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r3.y = saturate(cb4[9].z * r0.y);
  r0.y = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.y = cb4[9].w * r0.y;
  r1.x = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb4[10].x * r0.y;
  r0.y = exp2(r0.y);
  r5.xyz = min(float3(1,1,1), r5.xyz);
  r0.y = min(1, r0.y);
  r0.y = r1.x ? 0 : r0.y;
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.x = mad((int)v3.x, 36, 20);
  r1.y = cmp(0 < cb0[215].x);
  r1.x = t2[r1.x].val[4/4];
  r1.z = t2[r1.x].val[4/4+1];
  r1.z = cmp(0 < r1.z);
  if (r1.z != 0) {
    r6.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.z = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r1.zzz + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r1.z = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r1.w = mad((int)v3.x, 36, 18);
    r1.w = t2[r1.w].val[12/4];
    r1.w = cmp(0 < r1.w);
    r1.w = r1.y ? r1.w : 0;
    r1.z = r1.w ? cb1[5].x : 1;
  }
  r1.w = 0.0799999982 * r3.y;
  r6.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r6.xyz = r3.xxx * r6.xyz + r1.www;
  r7.xyz = -r5.xyz * r3.xxx + r5.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r1.w = r0.y * r8.x + r8.y;
  r1.w = r1.w * r0.y + r8.z;
  r1.w = r1.w * r0.y;
  r1.w = max(r1.w, r0.y);
  r8.xyz = r4.yzy * r4.yzx;
  r9.yw = r4.zz * r4.yx;
  r2.w = r4.x * r4.x + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r2.w = 0.429042608 * r2.w;
  r10.x = 0.886227548;
  r3.z = dot(cb1[6].xyzw, r10.xyzw);
  r3.w = dot(cb1[9].xyzw, r8.xyzw);
  r3.z = r3.z + r3.w;
  r9.x = cb1[12].x * r2.w + r3.z;
  r3.z = dot(cb1[7].xyzw, r10.xyzw);
  r3.w = dot(cb1[10].xyzw, r8.xyzw);
  r3.z = r3.z + r3.w;
  r9.y = cb1[12].y * r2.w + r3.z;
  r3.z = dot(cb1[8].xyzw, r10.xyzw);
  r3.w = dot(cb1[11].xyzw, r8.xyzw);
  r3.z = r3.z + r3.w;
  r9.z = cb1[12].z * r2.w + r3.z;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r1.yyy ? r8.xyz : 0;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r1.y = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r8.xyz * r7.xyz;
  r9.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r11.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r9.xyz = r0.yyy * r9.xyz + r10.xyz;
  r9.xyz = r9.xyz * r0.yyy + r11.xyz;
  r9.xyz = r9.xyz * r0.yyy;
  r9.xyz = max(r9.xyz, r0.yyy);
  r8.xyz = r9.xyz * r8.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r0.xyz = max(float3(0,0,0), r0.xzw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r3.z].val[0/4];
    r7.y = t2[r3.z].val[0/4+1];
    r7.z = t2[r3.z].val[0/4+2];
    r7.xyz = -r7.xyz + r2.xyz;
    r9.x = t2[r3.w].val[0/4];
    r9.y = t2[r3.w].val[0/4+1];
    r9.z = t2[r3.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r7.xyz = cmp(r9.xyz < abs(r7.xyz));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r2.xyz : r0.xyz;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r8.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r0.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r1.y * r1.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r0.w * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r1.x;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}