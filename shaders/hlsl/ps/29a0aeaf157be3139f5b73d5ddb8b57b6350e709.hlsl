// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  float4 cb2[21];
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
  float3 v4 : TEXCOORD9,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r2.xyz = -cb0[70].xyz + v4.xyz;
  r3.xy = t2.SampleBias(s2_s, v3.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[11].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xyz = r2.xyz / cb2[11].www;
  r5.xy = t3.SampleBias(s3_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r6.y = v1.y * r1.w;
  r6.xz = -r5.xy;
  r5.xy = t3.SampleBias(s3_s, r4.yz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.x = v1.x * r1.w;
  r7.yz = -r5.xy;
  r1.w = cb2[12].y + -cb2[12].z;
  r5.xy = saturate(abs(v1.xz) * r1.ww + cb2[12].zz);
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.xxx * r7.xyz + r6.xyz;
  r5.zw = t3.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.xy = -r5.zw;
  r7.z = v1.z * r1.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.yyy * r7.xyz + r6.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.xyz, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = float3(0,0,1) + -r7.xyz;
  r6.xyz = cb2[12].www * r6.xyz + r7.xyz;
  r7.xyz = r2.xyz / cb2[13].zzz;
  r5.zw = t4.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.y = v1.y * r1.w;
  r8.xz = -r5.zw;
  r5.zw = t4.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r9.x = v1.x * r1.w;
  r9.yz = -r5.zw;
  r1.w = cb2[14].x + -cb2[14].y;
  r5.zw = saturate(abs(v1.xz) * r1.ww + cb2[14].yy);
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.zzz * r9.xyz + r8.xyz;
  r9.xy = t4.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r9.xy, r9.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r1.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.www * r9.xyz + r8.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r8.xyz = r8.xyz / r1.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb2[14].zzz * r8.xyz + r9.xyz;
  r9.xy = t5.SampleBias(s5_s, v3.xy, cb0[143].y).xy;
  r1.w = saturate(cb2[14].w * r9.x);
  r2.w = saturate(cb2[15].x * r9.y);
  r8.xyz = r8.xyz + -r6.xyz;
  r6.xyz = r1.www * r8.xyz + r6.xyz;
  r2.xyz = r2.xyz / cb2[15].www;
  r8.xy = t6.SampleBias(s6_s, r2.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r8.xy, r8.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r9.y = v1.y * r4.w;
  r9.xz = -r8.xy;
  r8.xy = t6.SampleBias(s6_s, r2.yz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r8.xy, r8.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r10.x = v1.x * r4.w;
  r10.yz = -r8.xy;
  r4.w = cb2[16].y + -cb2[16].z;
  r8.xy = saturate(abs(v1.xz) * r4.ww + cb2[16].zz);
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r8.xxx * r10.xyz + r9.xyz;
  r8.zw = t6.SampleBias(s6_s, r2.xy, cb0[143].y).xy;
  r8.zw = r8.zw * float2(2,2) + float2(-1,-1);
  r4.w = dot(r8.zw, r8.zw);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r10.xy = -r8.zw;
  r10.z = v1.z * r4.w;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r8.yyy * r10.xyz + r9.xyz;
  r4.w = dot(r9.xyz, r9.xyz);
  r4.w = sqrt(r4.w);
  r9.xyz = r9.xyz / r4.www;
  r10.x = dot(v0.xyz, r9.xyz);
  r10.y = dot(r0.xyz, r9.xyz);
  r10.z = dot(v1.xyz, r9.xyz);
  r9.xyz = float3(0,0,1) + -r10.xyz;
  r9.xyz = cb2[16].www * r9.xyz + r10.xyz;
  r9.xyz = r9.xyz + -r6.xyz;
  r6.xyz = r2.www * r9.xyz + r6.xyz;
  r3.w = 1 + r3.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r3.z = dot(r3.xyw, r6.xyz);
  r6.xyz = r6.xyz * r0.www;
  r3.xyz = r3.xyw * r3.zzz + -r6.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[4].xyz + -cb2[3].xyz;
  r3.xyz = cb2[17].xxx * r3.xyz + cb2[3].xyz;
  r6.xyz = t7.Sample(s0_s, r4.xz).xyz;
  r9.xyz = t7.Sample(s0_s, r4.yz).xyz;
  r9.xyz = r9.xyz + -r6.xyz;
  r6.xyz = r5.xxx * r9.xyz + r6.xyz;
  r9.xyz = t7.Sample(s0_s, r4.xy).xyz;
  r9.xyz = r9.xyz + -r6.xyz;
  r6.xyz = r5.yyy * r9.xyz + r6.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r0.www + -r6.xyz;
  r6.xyz = cb2[17].www * r9.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r9.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb2[17].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r6.xyz = r6.xyz * r11.xxx + r9.xyz;
  r6.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb2[6].xyz * r6.xyz;
  r9.xyz = t8.Sample(s0_s, r7.xz).xyz;
  r10.xyz = t8.Sample(s0_s, r7.yz).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.zzz * r10.xyz + r9.xyz;
  r10.xyz = t8.Sample(s0_s, r7.xy).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.www * r10.xyz + r9.xyz;
  r0.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r0.www + -r9.xyz;
  r9.xyz = cb2[18].zzz * r10.xyz + r9.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb2[18].y, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = r9.xyz * cb2[8].xyz + -r6.xyz;
  r6.xyz = r1.www * r9.xyz + r6.xyz;
  r9.xyz = t9.Sample(s0_s, r2.xz).xyz;
  r10.xyz = t9.Sample(s0_s, r2.yz).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r8.xxx * r10.xyz + r9.xyz;
  r10.xyz = t9.Sample(s0_s, r2.xy).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r8.yyy * r10.xyz + r9.xyz;
  r0.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r0.www + -r9.xyz;
  r9.xyz = cb2[19].yyy * r10.xyz + r9.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb2[19].x, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = r9.xyz * cb2[10].xyz + -r6.xyz;
  r6.xyz = r2.www * r9.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r8.zw = t10.Sample(s0_s, r4.xz).xy;
  r4.zw = t10.Sample(s0_s, r4.yz).xy;
  r4.zw = r4.zw + -r8.zw;
  r4.zw = r5.xx * r4.zw + r8.zw;
  r4.xy = t10.Sample(s0_s, r4.xy).xy;
  r4.xy = r4.xy + -r4.zw;
  r4.xy = r5.yy * r4.xy + r4.zw;
  r0.w = saturate(cb2[19].z + r4.x);
  r4.xz = t11.Sample(s0_s, r7.xz).xy;
  r5.xy = t11.Sample(s0_s, r7.yz).xy;
  r5.xy = r5.xy + -r4.xz;
  r4.xz = r5.zz * r5.xy + r4.xz;
  r5.xy = t11.Sample(s0_s, r7.xy).xy;
  r5.xy = r5.xy + -r4.xz;
  r4.xz = r5.ww * r5.xy + r4.xz;
  r3.w = saturate(cb2[19].w + r4.x);
  r3.w = r3.w + -r0.w;
  r0.w = r1.w * r3.w + r0.w;
  r4.xw = t12.Sample(s0_s, r2.xz).xy;
  r5.xy = t12.Sample(s0_s, r2.yz).xy;
  r5.xy = r5.xy + -r4.xw;
  r4.xw = r8.xx * r5.xy + r4.xw;
  r2.xy = t12.Sample(s0_s, r2.xy).xy;
  r2.xy = r2.xy + -r4.xw;
  r2.xy = r8.yy * r2.xy + r4.xw;
  r2.x = saturate(cb2[20].x + r2.x);
  r2.x = r2.x + -r0.w;
  r0.w = saturate(r2.w * r2.x + r0.w);
  r2.x = r4.z + -r4.y;
  r1.w = r1.w * r2.x + r4.y;
  r2.x = r2.y + -r1.w;
  r2.x = saturate(r2.w * r2.x + r1.w);
  r1.w = cmp(0.00100000005 < abs(v2.w));
  r2.zw = floor(v5.xy);
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
  r1.w = r1.w ? r2.z : 0;
  if (r1.w != 0) discard;
  r4.xyz = min(float3(1,1,1), r6.xyz);
  r2.y = saturate(cb2[20].y);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb1[20].z);
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
    r0.w = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = 0.0799999982 * r2.y;
  r5.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r5.xyz = r2.xxx * r5.xyz + r1.www;
  r6.xyz = -r4.xyz * r2.xxx + r4.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = r1.www ? r5.xyz : r6.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r1.www ? r1.xyz : r3.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r2.xy;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}