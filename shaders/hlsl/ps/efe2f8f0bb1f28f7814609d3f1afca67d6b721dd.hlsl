// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = cb1[4].w * cb0[141].w;
  r1.w = v7.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r2.xyzw = t9.SampleBias(s1_s, v4.xy, cb0[143].y).wxyz;
  r2.yzw = float3(-0.5,-0.5,-0.5) + r2.yzw;
  r2.yzw = cb0[138].www * r2.yzw;
  r2.yzw = r2.yzw * float3(2,2,2) + cb0[138].xyz;
  r1.w = dot(r2.yzw, r2.yzw);
  r1.w = rsqrt(r1.w);
  r2.yzw = r2.yzw * r1.www;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.yyy * v0.xyz + r0.xyz;
  r0.xyz = r2.www * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.yzw = cb2[7].xxx * cb2[1].xyz;
  r3.xyzw = t10.SampleBias(s2_s, v4.xy, cb0[143].y).xyzw;
  r4.xyz = t11.SampleBias(s3_s, v4.xy, cb0[143].y).xyz;
  r0.w = cmp(0.00100000005 < abs(v3.w));
  r5.xy = floor(v6.xy);
  r1.w = dot(r5.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r4.w = cmp(v3.w < 0);
  r5.x = 1 + v3.w;
  r5.x = cmp(r1.w < r5.x);
  r1.w = cmp(v3.w < r1.w);
  r1.w = r4.w ? r5.x : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.w = r0.w ? r1.w : 0;
  if (r0.w != 0) discard;
  r0.w = v2.w * r3.w + -0.100000001;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r3.xyz = saturate(r3.xyz);
  r2.x = saturate(r2.x);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r4.xyz = saturate(r4.xyz);
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
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
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r6.xyz = saturate(r4.xyz);
  o4.xyz = sqrt(r6.xyz);
  r6.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r8.xyz : r6.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = r1.w * 2.04040003 + -0.332399994;
  r2.x = r1.w * -4.79510021 + r2.x;
  r1.w = r1.w * 2.75519991 + r2.x;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r8.xyz = t1.SampleLevel(s0_s, r5.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r5.xyzw = t7.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r5.xyzw = r5.xyzw * r8.xxxx;
  r5.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r5.xyzw;
  r14.xyz = r0.yzy * r0.yzx;
  r15.yw = r0.zz * r0.yx;
  r2.x = r0.x * r0.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r2.x = 0.429042608 * r2.x;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r3.w = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r4.w = dot(r9.xyzw, r14.xyzw);
  r3.w = r4.w + r3.w;
  r9.x = r12.w * r2.x + r3.w;
  r17.x = r8.z;
  r17.yzw = r10.yzw;
  r3.w = dot(r17.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r6.w = dot(r10.xyzw, r14.xyzw);
  r3.w = r6.w + r3.w;
  r9.y = r13.w * r2.x + r3.w;
  r8.yzw = r11.yzw;
  r3.w = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r5.xyz;
  r5.x = dot(r11.xyzw, r14.xyzw);
  r3.w = r5.x + r3.w;
  r9.z = r5.w * r2.x + r3.w;
  r9.xyz = max(float3(0,0,0), r9.xyz);
  r9.xyz = cb0[157].xyz * r9.xyz;
  r10.yzw = float3(1.02332771,-1.02332771,1.02332771) * r0.yzx;
  r10.x = 0.886227548;
  r3.w = dot(r15.xyzw, r10.xyzw);
  r3.w = r3.w + r4.w;
  r11.x = r12.w * r2.x + r3.w;
  r3.w = dot(r17.xyzw, r10.xyzw);
  r3.w = r3.w + r6.w;
  r11.y = r13.w * r2.x + r3.w;
  r3.w = dot(r8.xyzw, r10.xyzw);
  r3.w = r3.w + r5.x;
  r11.z = r5.w * r2.x + r3.w;
  r5.xyz = max(float3(0,0,0), r11.xyz);
  r5.xyz = cb0[157].xyz * r5.xyz;
  r8.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r4.xyz = r5.xyz * r4.xyz;
  r2.x = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  r4.xyz = r8.xyz * r6.xyz + r4.xyz;
  r5.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r4.xyz = r5.xyz * r4.xyz;
  r5.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.yzw = max(float3(0,0,0), r2.yzw);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r3.www ? r1.xyz : r2.yzw;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r4.xyz;
  r1.xyz = r1.xyz + r2.yzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.x * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.525490224);
  o3.xyz = r3.xyz;
  o4.w = 1;
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}