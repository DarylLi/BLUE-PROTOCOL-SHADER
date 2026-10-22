// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[23];
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
  float4 v2 : TEXCOORD0,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xy = t9.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[14].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xy = cb2[14].yy * v2.xy;
  r4.xy = t10.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[14].zzz * r5.xyz + r4.xyz;
  r3.w = 1 + r3.z;
  r4.xyz = float3(-1,-1,1) * r4.xyz;
  r1.w = dot(r3.xyw, r4.xyz);
  r4.xyz = r4.xyz * r0.www;
  r3.xyz = r3.xyw * r1.www + -r4.xyz;
  r4.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r5.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = dot(r4.xyz, r1.xyz);
  r5.xyz = r4.xyz * r0.www;
  r5.xyz = r5.xyz * float3(2,2,2) + -r1.xyz;
  r0.w = 1 + -abs(r0.w);
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[14].w * r0.w;
  r0.w = exp2(r0.w);
  r6.xyz = cb2[2].xyz * r0.www;
  r6.xyz = cb2[15].xxx * r6.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r7.xyz = r3.yyy * r0.xyz;
  r3.xyw = r3.xxx * v0.xyz + r7.xyz;
  r3.xyz = r3.zzz * v1.xyz + r3.xyw;
  r0.w = dot(-r1.xyz, r3.xyz);
  r1.w = cb2[15].w * cb2[15].w;
  r2.w = -r0.w * r0.w + 1;
  r1.w = -r1.w * r2.w + 1;
  r3.w = sqrt(r1.w);
  r3.w = cb2[15].w * r0.w + r3.w;
  r1.w = cmp(r1.w >= 0);
  r7.xyz = r3.www * r3.xyz;
  r7.xyz = cb2[15].www * -r1.xyz + -r7.xyz;
  r7.xyz = r1.www ? r7.xyz : 0;
  r7.x = t15.Sample(s6_s, r7.xyz).x;
  r8.xy = cb2[16].zw * cb2[16].zw;
  r8.xy = -r8.xy * r2.ww + float2(1,1);
  r8.zw = sqrt(r8.xy);
  r8.zw = cb2[16].zw * r0.ww + r8.zw;
  r8.xy = cmp(r8.xy >= float2(0,0));
  r9.xyz = r8.zzz * r3.xyz;
  r9.xyz = cb2[16].zzz * -r1.xyz + -r9.xyz;
  r9.xyz = r8.xxx ? r9.xyz : 0;
  r7.y = t15.Sample(s6_s, r9.xyz).y;
  r3.xyz = r8.www * r3.xyz;
  r3.xyz = cb2[16].www * -r1.xyz + -r3.xyz;
  r3.xyz = r8.yyy ? r3.xyz : 0;
  r7.z = t15.Sample(s6_s, r3.xyz).z;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r0.www + -r7.xyz;
  r3.xyz = cb2[17].xxx * r3.xyz + r7.xyz;
  r5.xyz = t15.Sample(s6_s, r5.xyz).xyz;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r5.xyz;
  r5.xyz = cb2[17].xxx * r7.xyz + r5.xyz;
  r5.xyz = cb2[6].xyz * r5.xyz;
  r7.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb2[17].zzz * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r7.xyz ? float3(0,0,0) : r5.xyz;
  r5.xyz = cb2[17].yyy * r5.xyz;
  r3.xyz = r3.xyz * cb2[17].yyy + r5.xyz;
  r5.xy = float2(0.100000001,0.100000001) * r4.xy;
  r5.zw = cmp(float2(0,0) >= r4.xy);
  r5.xy = log2(r5.xy);
  r5.xy = float2(1.5,1.5) * r5.xy;
  r5.xy = exp2(r5.xy);
  r5.xy = r5.zw ? float2(0,0) : r5.xy;
  r5.zw = cb2[18].xx * r5.xy;
  r5.zw = v2.xy * cb2[17].ww + r5.zw;
  r0.w = -0.5 * cb2[18].y;
  r7.x = dot(v0.xyz, r1.xyz);
  r7.y = dot(r0.xyz, r1.xyz);
  r0.xy = r7.xy * r0.ww + r5.zw;
  r0.xyz = t11.Sample(s0_s, r0.xy).xyz;
  r1.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb2[18].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r1.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb2[18].www * r0.xyz;
  r1.xy = cb2[19].yy * r5.xy;
  r1.xy = v2.xy * cb2[19].xx + r1.xy;
  r0.w = -0.5 * cb2[19].z;
  r1.xy = r7.xy * r0.ww + r1.xy;
  r1.xyz = t12.Sample(s0_s, r1.xy).xyz;
  r5.xyz = cmp(float3(0,0,0) >= r1.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb2[19].www * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r5.xyz ? float3(0,0,0) : r1.xyz;
  r1.xyz = cb2[20].xxx * r1.xyz;
  r1.xyz = cb2[10].xyz * r1.xyz;
  r0.xyz = r0.xyz * cb2[8].xyz + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyz = t13.SampleBias(s4_s, v2.xy, cb0[143].y).xyz;
  r0.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r0.www + -r1.xyz;
  r1.xyz = cb2[20].www * r3.xyz + r1.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r3.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r3.xyz = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r3.zxy;
  sincos(cb2[20].z, r5.x, r7.x);
  r3.xyz = r5.xxx * r3.xyz;
  r1.xyz = r1.xyz * r7.xxx + r3.xyz;
  r1.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r1.xyz = cb2[12].xyz * r1.xyz;
  r3.xyz = cmp(float3(0,0,0) >= r1.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb2[21].xxx * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r3.xyz ? float3(0,0,0) : r1.xyz;
  r3.xyz = r1.xyz + r0.xyz;
  r5.xy = t14.SampleBias(s5_s, v2.xy, cb0[143].y).xy;
  r0.w = cb2[21].y + r5.x;
  r1.w = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r1.www + r1.xyz;
  r0.xyz = r0.xyz + -r3.xyz;
  r0.xyz = cb2[21].zzz * r0.xyz + r3.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r1.xyz = cb2[21].www * r0.xyz;
  r3.xyz = -cb2[21].www * r0.xyz + cb2[13].xyz;
  r1.xyz = cb2[22].xxx * r3.xyz + r1.xyz;
  r0.xyz = cb2[21].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r3.x = saturate(cb2[22].y + r5.y);
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r3.y = saturate(cb2[22].z);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
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
    r0.w = t8.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = 0.0799999982 * r3.y;
  r6.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r6.xyz = r3.xxx * r6.xyz + r1.www;
  r7.xyz = -r0.xyz * r3.xxx + r0.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r8.xyz = t1.SampleLevel(s1_s, r5.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r5.xyzw = t7.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r5.xyzw = r5.xyzw * r8.xxxx;
  r5.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r5.xyzw;
  r14.xyz = r4.yzy * r4.yzx;
  r15.yw = r4.zz * r4.yx;
  r2.w = r4.x * r4.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r2.w = 0.429042608 * r2.w;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r3.z = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r3.w = dot(r9.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r9.x = r12.w * r2.w + r3.z;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r3.z = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r3.w = dot(r10.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r9.y = r13.w * r2.w + r3.z;
  r8.yzw = r11.yzw;
  r3.z = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r5.xyz;
  r3.w = dot(r11.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r9.z = r5.w * r2.w + r3.z;
  r5.xyz = max(float3(0,0,0), r9.xyz);
  r5.xyz = cb0[157].xyz * r5.xyz;
  r5.xyz = float3(0.318309873,0.318309873,0.318309873) * r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r7.xyz;
  r8.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r5.xyz = r8.xyz * r5.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r3.z = cmp(0 < cb0[140].x);
  if (r3.z != 0) {
    r7.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r3.z = (int)r7.y | (int)r7.x;
    r3.z = (int)r7.z | (int)r3.z;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r3.zzz ? r2.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r5.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r2.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}