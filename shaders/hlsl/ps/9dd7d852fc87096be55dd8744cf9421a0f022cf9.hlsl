// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[20];
}

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
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyz = -cb0[70].xyz + v5.xyz;
  r2.xyz = r1.xyz / cb3[11].zzz;
  r3.xy = t2.SampleBias(s2_s, r2.xz, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r4.y = v1.y * r0.w;
  r4.xz = -r3.xy;
  r3.xy = t2.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r5.x = v1.x * r0.w;
  r5.yz = -r3.xy;
  r0.w = cb3[12].x + -cb3[12].y;
  r3.xy = saturate(abs(v1.xz) * r0.ww + cb3[12].yy);
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r3.xxx * r5.xyz + r4.xyz;
  r3.zw = t2.SampleBias(s2_s, r2.xy, cb0[143].y).xy;
  r3.zw = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.zw, r3.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r5.xy = -r3.zw;
  r5.z = v1.z * r0.w;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r3.yyy * r5.xyz + r4.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = sqrt(r0.w);
  r4.xyz = r4.xyz / r0.www;
  r5.x = dot(v0.xyz, r4.xyz);
  r5.y = dot(r0.zxy, r4.xyz);
  r5.z = dot(v1.xyz, r4.xyz);
  r4.xyz = float3(0,0,1) + -r5.xyz;
  r4.xyz = cb3[12].zzz * r4.xyz + r5.xyz;
  r5.xyz = r1.xyz / cb3[13].yyy;
  r3.zw = t3.SampleBias(s3_s, r5.xz, cb0[143].y).xy;
  r3.zw = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.zw, r3.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r3.zw;
  r3.zw = t3.SampleBias(s3_s, r5.yz, cb0[143].y).xy;
  r3.zw = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.zw, r3.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.x = v1.x * r0.w;
  r7.yz = -r3.zw;
  r0.w = -cb3[14].x + cb3[13].w;
  r3.zw = saturate(abs(v1.xz) * r0.ww + cb3[14].xx);
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r3.zzz * r7.xyz + r6.xyz;
  r7.xy = t3.SampleBias(s3_s, r5.xy, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r7.xy;
  r7.z = v1.z * r0.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r3.www * r7.xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.zxy, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = float3(0,0,1) + -r7.xyz;
  r6.xyz = cb3[14].yyy * r6.xyz + r7.xyz;
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = v2.xxx * r6.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb3[4].xyz + -cb3[3].xyz;
  r4.xyz = cb3[14].zzz * r4.xyz + cb3[3].xyz;
  r6.xyz = t4.Sample(s0_s, r2.xz).xyz;
  r7.xyz = t4.Sample(s0_s, r2.yz).xyz;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r3.xxx * r7.xyz + r6.xyz;
  r7.xyz = t4.Sample(s0_s, r2.xy).xyz;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r3.yyy * r7.xyz + r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.www + -r6.xyz;
  r6.xyz = cb3[15].yyy * r7.xyz + r6.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[15].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb3[6].xyz * r6.xyz;
  r7.xyz = t5.Sample(s0_s, r5.xz).xyz;
  r8.xyz = t5.Sample(s0_s, r5.yz).xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r3.zzz * r8.xyz + r7.xyz;
  r8.xyz = t5.Sample(s0_s, r5.xy).xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r3.www * r8.xyz + r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.www + -r7.xyz;
  r7.xyz = cb3[16].xxx * r8.xyz + r7.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[15].w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb3[8].xyz + -r6.xyz;
  r6.xyz = v2.xxx * r7.xyz + r6.xyz;
  r1.xyz = r1.xyz / cb3[17].yyy;
  r7.xyz = t6.Sample(s0_s, r1.xz).xyz;
  r8.xyz = t6.Sample(s0_s, r1.yz).xyz;
  r1.z = -cb3[18].x + cb3[17].w;
  r1.zw = saturate(abs(v1.xz) * r1.zz + cb3[18].xx);
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r1.zzz * r8.xyz + r7.xyz;
  r1.xyz = t6.Sample(s0_s, r1.xy).xyz;
  r1.xyz = r1.xyz + -r7.xyz;
  r1.xyz = r1.www * r1.xyz + r7.xyz;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.www + -r1.xyz;
  r1.xyz = cb3[18].yyy * r7.xyz + r1.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r7.xyz = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[16].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r1.xyz = r1.xyz * r9.xxx + r7.xyz;
  r1.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r1.xyz = r1.xyz * cb3[10].xyz + -r6.xyz;
  r1.xyz = v2.yyy * r1.xyz + r6.xyz;
  r1.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.xyz);
  r6.xy = t7.Sample(s0_s, r2.xz).xy;
  r2.zw = t7.Sample(s0_s, r2.yz).xy;
  r2.zw = r2.zw + -r6.xy;
  r2.zw = r3.xx * r2.zw + r6.xy;
  r2.xy = t7.Sample(s0_s, r2.xy).xy;
  r2.xy = r2.xy + -r2.zw;
  r2.xy = r3.yy * r2.xy + r2.zw;
  r1.w = saturate(cb3[18].z + r2.x);
  r2.xz = t8.Sample(s0_s, r5.xz).xy;
  r3.xy = t8.Sample(s0_s, r5.yz).xy;
  r3.xy = r3.xy + -r2.xz;
  r2.xz = r3.zz * r3.xy + r2.xz;
  r3.xy = t8.Sample(s0_s, r5.xy).xy;
  r3.xy = r3.xy + -r2.xz;
  r2.xz = r3.ww * r3.xy + r2.xz;
  r2.x = saturate(cb3[18].w + r2.x);
  r2.x = r2.x + -r1.w;
  r1.w = saturate(v2.x * r2.x + r1.w);
  r2.x = r2.z + -r2.y;
  r2.x = saturate(v2.x * r2.x + r2.y);
  r2.z = cmp(0.00100000005 < abs(v3.w));
  r3.xy = floor(v6.xy);
  r2.w = dot(r3.xy, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.x = cmp(v3.w < 0);
  r3.y = 1 + v3.w;
  r3.y = cmp(r2.w < r3.y);
  r2.w = cmp(v3.w < r2.w);
  r2.w = r3.x ? r3.y : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r2.z = r2.z ? r2.w : 0;
  if (r2.z != 0) discard;
  r1.xyz = min(float3(1,1,1), r1.xyz);
  r2.y = saturate(cb3[19].x);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r3.xyzw = t1.Sample(s1_s, v4.zw).xyzw;
  r5.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r3.xyzw = saturate(r3.xyzw * cb2[1].xyzw + r5.xyzw);
  r3.xyzw = r3.xyzw * r3.xyzw;
  o5.xyzw = cb2[0].xyzw * r3.xyzw;
  r1.w = 0.0799999982 * r2.y;
  r3.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r3.xyz = r2.xxx * r3.xyz + r1.www;
  r5.xyz = -r1.xyz * r2.xxx + r1.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r6.xyz : r5.xyz;
  r3.xyz = r1.www ? float3(0,0,0) : r3.xyz;
  r1.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = r1.w * 2.04040003 + -0.332399994;
  r2.z = r1.w * -4.79510021 + r2.z;
  r1.w = r1.w * 2.75519991 + r2.z;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r2.zw = float2(1,0.5) * v4.xy;
  r6.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t0.Sample(s1_s, r2.zw).xyzw;
  r6.xyzw = t0.Sample(s1_s, r6.xy).xyzw;
  r2.z = r6.w * 0.00392156886 + r7.w;
  r2.z = -0.00196078443 + r2.z;
  r2.z = r2.z * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.z = exp2(r2.z);
  r2.z = -0.0185813606 + r2.z;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r0.w = dot(r6.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.z * r0.w;
  r6.xyz = r0.www * r7.xyz;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r2.z = cmp(0 < cb0[140].x);
  if (r2.z != 0) {
    r5.xyzw = cb0[45].xyzw * v6.yyyy;
    r5.xyzw = v6.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v6.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r7.xyz = -cb1[5].xyz + r5.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.z = (int)r7.y | (int)r7.x;
    r2.z = (int)r7.z | (int)r2.z;
    r2.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r5.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r2.zzz ? r5.xyz : r4.xyz;
  }
  r3.xyz = cb0[145].yyy * r3.xyz + r6.xyz;
  r3.xyz = r3.xyz + r4.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r2.z = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r2.z = frac(r2.z);
  r2.z = -0.5 + r2.z;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.z * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r3.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r2.xy;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}