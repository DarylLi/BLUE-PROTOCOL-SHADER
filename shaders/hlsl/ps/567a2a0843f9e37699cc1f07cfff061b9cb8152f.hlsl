// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

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

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v3.z;
  r1.y = 1;
  r1.xy = v3.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v3.yyyy;
  r2.xyzw = v3.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v3.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = t9.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[14].xxx * r5.xyz + r4.xyz;
  r0.w = 1 + r4.z;
  r1.zw = cb3[14].yy * v2.xy;
  r1.zw = t10.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r5.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[14].zzz * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r1.z = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r0.www;
  r4.xyz = r4.xyw * r1.zzz + -r5.xyz;
  r5.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r6.xyz = r5.yyy * r0.xyz;
  r5.xyw = r5.xxx * v0.xyz + r6.xyz;
  r5.xyz = r5.zzz * v1.xyz + r5.xyw;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = dot(r5.xyz, r2.xyz);
  r6.xyz = r5.xyz * r0.www;
  r6.xyz = r6.xyz * float3(2,2,2) + -r2.xyz;
  r0.w = 1 + -abs(r0.w);
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[14].w * r0.w;
  r0.w = exp2(r0.w);
  r7.xyz = cb3[2].xyz * r0.www;
  r7.xyz = cb3[15].xxx * r7.xyz;
  r7.xyz = r1.zzz ? float3(0,0,0) : r7.xyz;
  r8.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r8.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(-r2.xyz, r4.xyz);
  r1.z = cb3[15].w * cb3[15].w;
  r1.w = -r0.w * r0.w + 1;
  r1.z = -r1.z * r1.w + 1;
  r2.w = sqrt(r1.z);
  r2.w = cb3[15].w * r0.w + r2.w;
  r1.z = cmp(r1.z >= 0);
  r8.xyz = r2.www * r4.xyz;
  r8.xyz = cb3[15].www * -r2.xyz + -r8.xyz;
  r8.xyz = r1.zzz ? r8.xyz : 0;
  r8.x = t16.Sample(s7_s, r8.xyz).x;
  r9.xy = cb3[16].zw * cb3[16].zw;
  r1.zw = -r9.xy * r1.ww + float2(1,1);
  r9.xy = sqrt(r1.zw);
  r9.xy = cb3[16].zw * r0.ww + r9.xy;
  r1.zw = cmp(r1.zw >= float2(0,0));
  r9.xzw = r9.xxx * r4.xyz;
  r9.xzw = cb3[16].zzz * -r2.xyz + -r9.xzw;
  r9.xzw = r1.zzz ? r9.xzw : 0;
  r8.y = t16.Sample(s7_s, r9.xzw).y;
  r4.xyz = r9.yyy * r4.xyz;
  r4.xyz = cb3[16].www * -r2.xyz + -r4.xyz;
  r4.xyz = r1.www ? r4.xyz : 0;
  r8.z = t16.Sample(s7_s, r4.xyz).z;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r0.www + -r8.xyz;
  r4.xyz = cb3[17].xxx * r4.xyz + r8.xyz;
  r6.xyz = t16.Sample(s7_s, r6.xyz).xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r0.www + -r6.xyz;
  r6.xyz = cb3[17].xxx * r8.xyz + r6.xyz;
  r6.xyz = cb3[6].xyz * r6.xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[17].zzz * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = cb3[17].yyy * r6.xyz;
  r4.xyz = r4.xyz * cb3[17].yyy + r6.xyz;
  r1.zw = float2(0.100000001,0.100000001) * r5.xy;
  r6.xy = cmp(float2(0,0) >= r5.xy);
  r1.zw = log2(r1.zw);
  r1.zw = float2(1.5,1.5) * r1.zw;
  r1.zw = exp2(r1.zw);
  r1.zw = r6.xy ? float2(0,0) : r1.zw;
  r6.xy = cb3[18].xx * r1.zw;
  r6.xy = v2.xy * cb3[17].ww + r6.xy;
  r0.w = -0.5 * cb3[18].y;
  r8.x = dot(v0.xyz, r2.xyz);
  r8.y = dot(r0.xyz, r2.xyz);
  r0.xy = r8.xy * r0.ww + r6.xy;
  r0.xyz = t11.Sample(s0_s, r0.xy).xyz;
  r2.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb3[18].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r2.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb3[18].www * r0.xyz;
  r1.zw = cb3[19].yy * r1.zw;
  r1.zw = v2.xy * cb3[19].xx + r1.zw;
  r0.w = -0.5 * cb3[19].z;
  r1.zw = r8.xy * r0.ww + r1.zw;
  r2.xyz = t12.Sample(s0_s, r1.zw).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[19].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r6.xyz ? float3(0,0,0) : r2.xyz;
  r2.xyz = cb3[20].xxx * r2.xyz;
  r2.xyz = cb3[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * cb3[8].xyz + r2.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r2.xyz = t13.SampleBias(s4_s, v2.xy, cb0[143].y).xyz;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r0.www + -r2.xyz;
  r2.xyz = cb3[20].www * r4.xyz + r2.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb3[20].z, r6.x, r8.x);
  r4.xyz = r6.xxx * r4.xyz;
  r2.xyz = r2.xyz * r8.xxx + r4.xyz;
  r2.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[12].xyz * r2.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[21].xxx * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r4.xyz ? float3(0,0,0) : r2.xyz;
  r4.xyz = r2.xyz + r0.xyz;
  r1.zw = t14.SampleBias(s5_s, v2.xy, cb0[143].y).xy;
  r0.w = cb3[21].y + r1.z;
  r1.z = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r1.zzz + r2.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r0.xyz = cb3[21].zzz * r0.xyz + r4.xyz;
  r0.xyz = r7.xyz + r0.xyz;
  r2.xyz = cb3[21].www * r0.xyz;
  r4.xyz = -cb3[21].www * r0.xyz + cb3[13].xyz;
  r2.xyz = cb3[22].xxx * r4.xyz + r2.xyz;
  r0.xyz = cb3[21].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r4.x = saturate(cb3[22].y + r1.w);
  r1.z = cb3[23].x * cb2[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb3[23].y + r1.x;
  r4.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r1.w = cb2[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r4.w);
  r2.w = -cb2[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.w + r4.z;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb3[23].y;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[23].x));
  r1.z = 1 + cb3[23].x;
  r1.y = r1.y ? r1.z : 1.39999998;
  r6.xyz = -cb0[129].xxy + v3.xxy;
  r1.z = r6.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r6.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r4.zw = float2(0.015625,0.015625) * r6.yz;
  r1.w = t15.SampleBias(s6_s, r4.zw, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r6.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb3[24].x;
  r1.y = saturate(r1.y * cb3[24].w + -cb3[24].z);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * cb3[25].x + r1.z;
  r1.y = -0.5 + r1.y;
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r4.y = saturate(cb3[22].w);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r1.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = min(float3(0.99000001,0.99000001,0.99000001), r1.xyz);
  r1.xyz = cb0[213].xyz * r1.xyz;
  r6.xyz = (int3)r1.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.w = 1 + cb0[213].w;
  r1.xyz = r1.xyz / r6.www;
  r1.xyz = frac(r1.xyz);
  r1.xyz = cb0[213].www * r1.xyz;
  r1.xyz = r6.xyz * r0.www + r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = cb0[214].xyz * r1.xyz;
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s1_s, r1.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = 0.0799999982 * r4.y;
  r6.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r6.xyz = r4.xxx * r6.xyz + r1.www;
  r7.xyz = -r0.xyz * r4.xxx + r0.xyz;
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
  r8.xyz = t1.SampleLevel(s1_s, r1.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r1.xyz = r5.yzy * r5.yzx;
  r15.yw = r5.zz * r5.yx;
  r1.x = r5.x * r5.x + -r1.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r15.xz = r1.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r1.x = 0.429042608 * r1.x;
  r17.x = r8.y;
  r17.yzw = r9.yzw;
  r16.x = 0.886227548;
  r1.y = dot(r17.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r1.z = dot(r9.xyzw, r15.xyzw);
  r1.y = r1.y + r1.z;
  r9.x = r12.w * r1.x + r1.y;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r1.y = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r1.z = dot(r10.xyzw, r15.xyzw);
  r1.y = r1.y + r1.z;
  r9.y = r13.w * r1.x + r1.y;
  r8.yzw = r11.yzw;
  r1.y = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r14.xyz;
  r1.z = dot(r11.xyzw, r15.xyzw);
  r1.y = r1.y + r1.z;
  r9.z = r14.w * r1.x + r1.y;
  r1.xyz = max(float3(0,0,0), r9.xyz);
  r1.xyz = cb0[157].xyz * r1.xyz;
  r1.xyz = float3(0.318309873,0.318309873,0.318309873) * r1.xyz;
  r2.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r1.xyz * r7.xyz;
  r8.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r1.xyz = r8.xyz * r1.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r3.www ? r3.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r6.xyz + r1.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r2.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}