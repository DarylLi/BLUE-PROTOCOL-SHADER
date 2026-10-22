// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[17];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb5[8].xx * v3.xy;
  r0.w = cb5[8].y + cb0[143].y;
  r4.xy = t1.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[8].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb4[5].xyz, -cb4[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb4[5].xyz / r0.xxx;
  r0.x = dot(r5.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = sqrt(r0.z);
  r6.xyz = r6.xyz / r0.zzz;
  r0.z = saturate(dot(-r6.xyz, r5.xyz));
  r2.w = 1 + -cb3[1].x;
  r0.z = saturate(r2.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r4.zxy, r2.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r2.x = cb3[1].y * r0.z;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb3[0].w;
  r2.x = r2.x * r2.y + cb3[0].w;
  r2.y = cmp(r2.x >= cb3[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.y * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb3[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r0.w + 1;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb3[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r2.xyz = cb4[4].xyz * r0.xxx;
  r0.x = dot(-cb4[8].xyz, -cb4[8].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb4[8].xyz / r0.xxx;
  r0.x = dot(r5.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r5.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.y;
  r0.xyw = cb4[9].xyz * r0.xxx;
  r0.xyw = cb4[1].yyy * r0.xyw;
  r0.xyw = r2.xyz * cb4[1].xxx + r0.xyw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb5[8].w;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[9].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb5[9].y * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r2.xy = r1.zw / cb5[10].xx;
  r2.xy = cb5[10].yz + r2.xy;
  r2.xyz = t2.SampleBias(s2_s, r2.xy, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r5.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb5[9].w, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r2.xyz = r2.xyz * r7.xxx + r5.xyz;
  r2.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb5[2].xyz * r2.xyz;
  r5.xy = cb5[11].xx * v3.xy;
  r1.y = t3.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r2.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb5[11].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = cb5[11].z * r1.y;
  r1.y = r2.w ? 0 : r1.y;
  r1.y = cb0[142].z * cb5[10].w + r1.y;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * cb5[12].x + cb5[11].w;
  r1.y = max(cb5[12].z, r1.y);
  r1.y = min(cb5[12].y, r1.y);
  r1.y = cb5[12].w * r1.y;
  r1.y = cb4[3].y * r1.y;
  r2.xyz = r2.xyz * r1.yyy;
  r2.xyz = r2.xyz * r1.xxx;
  r0.xyw = cb3[2].xyz * r0.xyw + r2.xyz;
  r2.xyz = cb5[4].xyz * r0.xyw;
  r0.xyw = -r0.xyw * cb5[4].xyz + cb5[5].xyz;
  r0.xyw = cb5[13].xxx * r0.xyw + r2.xyz;
  r2.xyz = t4.SampleBias(s4_s, r1.zw, cb0[143].y).xyz;
  r1.x = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r1.xxx + -r2.xyz;
  r2.xyz = cb5[13].www * r5.xyz + r2.xyz;
  r1.x = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r5.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb5[13].z, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r2.xyz = r2.xyz * r7.xxx + r5.xyz;
  r2.xyz = r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb5[7].xyz * r2.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.xy = t5.SampleBias(s5_s, r1.zw, cb0[143].y).xy;
  r1.z = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[14].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.z ? 0 : r1.x;
  r1.x = saturate(cb5[14].y + r1.x);
  r6.x = saturate(cb5[14].z + r1.y);
  r0.z = cb5[14].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[15].x * r0.z;
  r1.y = saturate(cb5[15].z + v1.z);
  r0.z = r1.y * r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(0.5, r0.z);
  r6.y = saturate(cb5[15].w * r0.z);
  r0.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.z = cb5[16].x * r0.z;
  r1.y = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb5[16].y * r0.z;
  r0.z = exp2(r0.z);
  r1.z = cmp(0.00100000005 < abs(v2.w));
  r2.xy = floor(v5.xy);
  r1.w = dot(r2.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.x = cmp(v2.w < 0);
  r2.y = 1 + v2.w;
  r2.y = cmp(r1.w < r2.y);
  r1.w = cmp(v2.w < r1.w);
  r1.w = r2.x ? r2.y : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r1.z = r1.z ? r1.w : 0;
  if (r1.z != 0) discard;
  r2.xyz = min(float3(1,1,1), r5.xyz);
  r0.z = min(1, r0.z);
  r0.z = r1.y ? 0 : r0.z;
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r1.x = 0.0799999982 * r6.y;
  r1.yzw = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r1.xyz = r6.xxx * r1.yzw + r1.xxx;
  r5.xyz = -r2.xyz * r6.xxx + r2.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r7.xyz : r5.xyz;
  r1.xyz = r1.www ? float3(0,0,0) : r1.xyz;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r1.w = r0.z * r7.x + r7.y;
  r1.w = r1.w * r0.z + r7.z;
  r1.w = r1.w * r0.z;
  r1.w = max(r1.w, r0.z);
  r6.zw = float2(1,0.5) * v4.xy;
  r7.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t0.Sample(s0_s, r6.zw).xyzw;
  r7.xyzw = t0.Sample(s0_s, r7.xy).xyzw;
  r2.w = r7.w * 0.00392156886 + r8.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r3.w = dot(r7.xyzw, r4.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r7.xyz = r2.www * r8.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r5.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r0.zzz * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r0.zzz + r10.xyz;
  r8.xyz = r8.xyz * r0.zzz;
  r8.xyz = max(r8.xyz, r0.zzz);
  r7.xyz = r8.xyz * r7.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r8.xyz < abs(r5.xyz));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r3.xyz : r0.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r7.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r0.w = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = r2.w * r1.w;
  r1.x = r1.x * cb0[135].y + 0.00390625;
  r1.x = log2(r1.x);
  r1.x = r1.x * 0.0625 + 0.5;
  o3.w = r0.w * 0.00392156886 + r1.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.75686276;
  o2.xy = r6.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}