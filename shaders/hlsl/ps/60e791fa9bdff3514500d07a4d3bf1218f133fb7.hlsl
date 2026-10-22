// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t13 : register(t13);

TextureCube<float4> t12 : register(t12);

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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[26];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r1.zw = cb2[19].xx * v3.xy;
  r1.zw = t9.SampleBias(s1_s, r1.zw, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[19].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r5.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r1.zw = v3.xy * cb2[1].xy + cb2[2].xy;
  r0.w = -0.5 * cb2[20].z;
  r0.w = cb2[20].z * cb2[20].w + r0.w;
  r5.x = dot(v0.xyz, r2.xyz);
  r5.y = dot(r0.xyz, r2.xyz);
  r5.z = dot(v1.xyz, r2.xyz);
  r0.xy = r5.xy * r0.ww + r1.zw;
  r0.xyzw = t10.SampleBias(s2_s, r0.xy, cb0[143].y).xyzw;
  r1.z = cb2[21].x * r0.w;
  r0.w = -r0.w * cb2[21].x + 1;
  r2.xyz = float3(-1,1,1) * r5.xyz;
  r5.xyz = float3(1,1,1) / r2.xyz;
  r6.xy = v3.xy * cb2[3].xy + cb2[4].xy;
  r6.xy = float2(4,4) * r6.xy;
  r6.xy = frac(r6.xy);
  r6.xy = r6.xy * float2(2,-2) + float2(-1,1);
  r6.zw = float2(-1,0);
  r5.xyz = -r5.xyz * r6.xyz + abs(r5.xyz);
  r1.w = min(r5.x, r5.y);
  r1.w = min(r1.w, r5.z);
  r2.xy = r1.ww * r2.xy + r6.xy;
  r1.w = r1.w * r2.z + cb2[6].x;
  r5.x = -1 + r1.w;
  r5.yz = cb2[6].yz + r2.xy;
  r2.xyz = t12.Sample(s4_s, r5.xyz).xyz;
  r2.xyz = r2.xyz * cb2[8].xyz + cb2[10].xyz;
  r2.xyz = cb2[22].yyy * r2.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r0.w / cb2[22].z;
  r1.x = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[22].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = cb2[23].x * r0.w;
  r0.w = max(1, r0.w);
  r0.w = r1.x ? 1 : r0.w;
  r1.xyw = r2.xyz * r0.www;
  r2.xyz = -r2.xyz * r0.www + cb2[11].xyz;
  r1.xyw = cb2[23].yyy * r2.xyz + r1.xyw;
  r2.xyz = t13.Sample(s5_s, r5.xyz).xyz;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.www + -r2.xyz;
  r2.xyz = cb2[23].zzz * r5.xyz + r2.xyz;
  r2.xyz = cb2[13].xyz * r2.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.www + -r0.xyz;
  r0.xyz = cb2[24].yyy * r5.xyz + r0.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r5.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb2[24].x, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r0.xyz = r0.xyz * r7.xxx + r5.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = r0.xyz * cb2[15].xyz + -r2.xyz;
  r0.xyz = r1.zzz * r0.xyz + r2.xyz;
  r2.xyz = cb2[17].xyz + -r0.xyz;
  r0.xyz = saturate(cb2[24].zzz * r2.xyz + r0.xyz);
  r2.xy = cb2[18].xy * v3.xy;
  r2.xy = t11.SampleBias(s3_s, r2.xy, cb0[143].y).yx;
  r0.w = saturate(cb2[25].z + r2.y);
  r1.z = cmp(0.00100000005 < abs(v2.w));
  r2.zw = floor(v4.xy);
  r2.z = dot(r2.zw, float2(347.834503,3343.28369));
  r2.z = cos(r2.z);
  r2.z = 1000 * r2.z;
  r2.z = frac(r2.z);
  r2.w = cmp(v2.w < 0);
  r3.w = 1 + v2.w;
  r3.w = cmp(r2.z < r3.w);
  r2.z = cmp(v2.w < r2.z);
  r2.z = r2.w ? r3.w : r2.z;
  r2.z = cmp((int)r2.z == 0);
  r1.z = r1.z ? r2.z : 0;
  if (r1.z != 0) discard;
  r2.x = saturate(r2.x);
  r2.y = saturate(cb2[25].y);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r5.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
  r5.xyz = cb0[213].xyz * r5.xyz;
  r6.xyz = (int3)r5.xyz;
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
  r1.z = 0.0799999982 * r2.y;
  r6.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r6.xyz = r2.xxx * r6.xyz + r1.zzz;
  r7.xyz = -r0.xyz * r2.xxx + r0.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r1.zzz ? float3(0,0,0) : r6.xyz;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = r1.z * 2.04040003 + -0.332399994;
  r2.z = r1.z * -4.79510021 + r2.z;
  r1.z = r1.z * 2.75519991 + r2.z;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
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
  r14.xyz = r4.yzy * r4.yzx;
  r15.yw = r4.zz * r4.yx;
  r2.z = r4.x * r4.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r2.z = 0.429042608 * r2.z;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r2.w = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r3.w = dot(r9.xyzw, r14.xyzw);
  r2.w = r3.w + r2.w;
  r9.x = r12.w * r2.z + r2.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r2.w = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r3.w = dot(r10.xyzw, r14.xyzw);
  r2.w = r3.w + r2.w;
  r9.y = r13.w * r2.z + r2.w;
  r8.yzw = r11.yzw;
  r2.w = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r5.xyz;
  r3.w = dot(r11.xyzw, r14.xyzw);
  r2.w = r3.w + r2.w;
  r9.z = r5.w * r2.z + r2.w;
  r5.xyz = max(float3(0,0,0), r9.xyz);
  r5.xyz = cb0[157].xyz * r5.xyz;
  r5.xyz = float3(0.318309873,0.318309873,0.318309873) * r5.xyz;
  r2.z = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r7.xyz;
  r8.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r5.xyz = r8.xyz * r5.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.xyw = max(float3(0,0,0), r1.xyw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyw = r2.www ? r3.xyz : r1.xyw;
  }
  r3.xyz = cb0[145].yyy * r6.xyz + r5.xyz;
  r1.xyw = r3.xyz + r1.xyw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.z = r2.z * r1.z;
  r1.z = r1.z * cb0[135].y + 0.00390625;
  r1.z = log2(r1.z);
  r1.z = r1.z * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r1.z;
  o0.xyz = cb0[135].yyy * r1.xyw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r2.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}