// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[18];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r4.xyz = mad((int3)v3.xxx, int3(36,36,36), int3(4,5,20));
  r0.w = t9[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = t10.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r5.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[9].xxx * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = r5.xyz * r1.zzz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb3[9].yyy * cb3[1].xyz;
  r4.x = t9[r4.y].val[0/4];
  r4.y = t9[r4.y].val[0/4+1];
  r4.w = t9[r4.y].val[0/4+2];
  r6.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r4.xyw;
  r6.xyz = frac(r6.xyz);
  r0.w = dot(r6.xy, r6.yz);
  r0.w = -0.5 + r0.w;
  r0.w = dot(r0.ww, cb3[10].xx);
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = sqrt(r1.z);
  r6.xyz = r6.xyz / r1.zzz;
  r7.xyz = -cb0[67].xyz + r3.xyz;
  r1.z = dot(r7.xyz, r7.xyz);
  r1.z = sqrt(r1.z);
  r1.z = r1.z / cb3[10].y;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[10].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r2.w = 1 + cb3[10].w;
  r1.z = r2.w * r1.z;
  r1.z = r1.w ? 0 : r1.z;
  r1.z = cb0[143].y + r1.z;
  r1.z = -1 + r1.z;
  r7.xyzw = t11.SampleBias(s2_s, v2.xy, r1.z).xyzw;
  r6.xyz = r0.www * r6.xyz + r7.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r6.xyz = cb3[11].xxx * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[9].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb3[3].xyz * r6.xyz;
  r7.xyz = cb3[11].yyy * r6.xyz;
  r8.xyz = r6.xyz * cb3[11].yyy + cb3[5].xyz;
  r0.w = dot(cb2[8].xyz, cb2[8].xyz);
  r0.w = sqrt(r0.w);
  r9.xyz = cb2[8].xyz / r0.www;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  r10.xyz = r0.xyz / r0.www;
  r0.w = saturate(dot(r9.xyz, r10.xyz));
  r1.z = dot(cb2[5].xyz, cb2[5].xyz);
  r1.z = sqrt(r1.z);
  r9.xyz = cb2[5].xyz / r1.zzz;
  r1.z = saturate(dot(r9.xyz, r10.xyz));
  r1.z = r1.z + -r0.w;
  r0.w = cb2[0].y * r1.z + r0.w;
  r1.z = cb3[11].z * r0.w;
  r1.z = floor(r1.z);
  r1.z = r1.z / cb3[11].w;
  r1.z = r1.z + -r0.w;
  r0.w = saturate(cb3[12].x * r1.z + r0.w);
  r0.w = -1 + r0.w;
  r0.w = r0.w * cb3[12].y + 1;
  r0.w = saturate(1 + -r0.w);
  r1.z = r0.w + r0.w;
  r1.z = min(1, r1.z);
  r9.xyz = r1.zzz * cb3[5].xyz + r7.xyz;
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb3[12].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * cb3[13].x + cb3[12].w;
  r2.xyz = cb3[7].xyz * r1.zzz;
  r1.z = t11.Sample(s2_s, v2.xy).w;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[13].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r2.xyz = r2.xyz * r1.zzz + r7.xyz;
  r1.z = -0.5 + r0.w;
  r1.z = r1.z + r1.z;
  r1.z = max(0, r1.z);
  r2.xyz = r2.xyz + -r8.xyz;
  r2.xyz = r1.zzz * r2.xyz + r8.xyz;
  r2.xyz = r2.xyz + -r9.xyz;
  r2.xyz = r0.www * r2.xyz + r9.xyz;
  r2.xyz = -r6.xyz * cb3[11].yyy + r2.xyz;
  r2.xyz = cb3[13].zzz * r2.xyz + r7.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r0.w = cmp(cb0[31].w < 1);
  r1.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.z + r1.x;
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r0.w / cb3[14].z;
  r1.xyz = -cb0[129].xxy + v4.xxy;
  r1.x = r1.x * cb0[130].z + -0.469999999;
  r1.x = 4.93230057 * r1.x;
  r1.x = cos(r1.x);
  r1.x = 0.899999976 + r1.x;
  r1.x = saturate(0.555555582 * r1.x);
  r1.x = cb3[15].x + -r1.x;
  r7.xy = cb0[152].xx + r1.yz;
  r7.xy = (uint2)r7.xy;
  r1.w = (uint)r7.y << 1;
  r1.w = (int)r1.w + (int)r7.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r1.yz = float2(0.015625,0.015625) * r1.yz;
  r1.y = t12.SampleBias(s3_s, r1.yz, cb0[143].y).x;
  r1.y = r1.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r0.w = r0.w * r1.x + r1.y;
  r0.w = saturate(-0.5 + r0.w);
  r1.xyz = saturate(cb3[17].xxx * r6.xyz);
  r1.w = cmp(cb1[0].x != 0.000000);
  r2.w = cmp(0.00100000005 < abs(cb1[0].x));
  r1.w = r1.w ? r2.w : 0;
  r6.xy = floor(v4.xy);
  r2.w = dot(r6.xy, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.w = cmp(cb1[0].x < 0);
  r5.w = 1 + cb1[0].x;
  r5.w = cmp(r2.w < r5.w);
  r2.w = cmp(cb1[0].x < r2.w);
  r2.w = r3.w ? r5.w : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r1.w = r1.w ? r2.w : 0;
  if (r1.w != 0) discard;
  r0.w = r7.w * r0.w + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r0.w = saturate(cb3[13].w);
  r1.w = saturate(cb3[14].x);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb3[14].y);
  r1.xyz = r1.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.w = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r1.www + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  r7.x = t9[r4.z].val[4/4];
  r7.y = t9[r4.z].val[4/4+1];
  r1.w = cmp(0 < r7.y);
  if (r1.w != 0) {
    r1.w = t8.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r7.yzw = saturate(r1.xyz);
  o4.xyz = sqrt(r7.yzw);
  r2.w = cb0[137].w * r0.w;
  r7.yzw = r2.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r2.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r9.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.yzw;
  r7.yzw = r2.www ? r9.xyz : r7.yzw;
  r8.xyz = r2.www ? float3(0,0,0) : r8.xyz;
  r2.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r1.xyz = r7.yzw + r1.xyz;
  r9.xyz = t1.SampleLevel(s0_s, r6.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r6.xyzw = t7.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r6.xyzw = r6.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r6.xyzw = r6.xyzw * r9.xxxx;
  r6.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r6.xyzw;
  r15.xyz = r0.yzy * r0.yzx;
  r16.yw = r0.zz * r0.yx;
  r3.w = r0.x * r0.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r3.w = 0.429042608 * r3.w;
  r16.x = r9.y;
  r16.yzw = r10.yzw;
  r17.x = 0.886227548;
  r4.z = dot(r16.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r5.w = dot(r10.xyzw, r15.xyzw);
  r4.z = r5.w + r4.z;
  r10.x = r13.w * r3.w + r4.z;
  r13.x = r9.z;
  r13.yzw = r11.yzw;
  r4.z = dot(r13.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r5.w = dot(r11.xyzw, r15.xyzw);
  r4.z = r5.w + r4.z;
  r10.y = r14.w * r3.w + r4.z;
  r9.yzw = r12.yzw;
  r4.z = dot(r9.xyzw, r17.xyzw);
  r12.yzw = r6.xyz;
  r5.w = dot(r12.xyzw, r15.xyzw);
  r4.z = r5.w + r4.z;
  r10.z = r6.w * r3.w + r4.z;
  r6.xyz = max(float3(0,0,0), r10.xyz);
  r6.xyz = cb0[157].xyz * r6.xyz;
  r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r6.xyz * r1.xyz;
  r6.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r1.xyz = r6.xyz * r1.xyz;
  r6.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.yzw;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r4.z = cmp(0 < cb0[140].x);
  if (r4.z != 0) {
    r4.xyz = -r4.xyw + r3.xyz;
    r4.w = mad((int)v3.x, 36, 19);
    r7.y = t9[r4.w].val[0/4];
    r7.z = t9[r4.w].val[0/4+1];
    r7.w = t9[r4.w].val[0/4+2];
    r7.yzw = float3(1,1,1) + r7.yzw;
    r4.xyz = cmp(r7.yzw < abs(r4.xyz));
    r4.x = (int)r4.y | (int)r4.x;
    r4.x = (int)r4.z | (int)r4.x;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r4.xxx ? r3.xyz : r5.xyz;
  }
  r1.xyz = cb0[145].yyy * r6.xyz + r1.xyz;
  r1.xyz = r1.xyz + r5.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r3.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r7.x;
  o2.xw = float2(0,0.509803951);
  o2.y = r0.w;
  o3.xyz = r2.xyz;
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}