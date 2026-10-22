// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[39];
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
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r0.w = cb4[24].x + cb0[143].y;
  r3.xy = t1.SampleBias(s2_s, v3.xy, r0.w).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb4[24].yyy * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = r3.yyy * r0.yzx;
  r3.xyw = r3.xxx * v0.yzx + r4.xyz;
  r3.xyz = r3.zzz * v1.yzx + r3.xyw;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xy = cb4[24].zz * v3.xy;
  r0.w = -0.5 * cb4[24].w;
  r5.x = dot(v0.xyz, r2.xyz);
  r5.y = dot(r0.xyz, r2.xyz);
  r4.xy = r5.xy * r0.ww + r4.xy;
  r4.xy = t2.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[25].xxx * r6.xyz + r4.xyz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb4[25].y * r0.y;
  r0.y = exp2(r0.y);
  r4.xyz = cb4[2].xyz * r0.yyy;
  r0.yzw = r0.zzz ? float3(0,0,0) : r4.xyz;
  r1.w = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb4[25].z * r0.x;
  r0.x = exp2(r0.x);
  r4.xyz = cb4[4].xyz * r0.xxx;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r0.xyz = r4.xyz + r0.yzw;
  r0.w = cb0[142].z * cb4[26].x + v3.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb4[26].z + cb4[26].y;
  r0.w = cb4[26].w * r0.w;
  r1.w = cb4[27].x * cb0[142].z;
  r4.x = cb4[27].w * r1.w;
  r4.y = cb4[28].x * r1.w;
  r4.zw = v3.xy * cb4[28].yy + cb4[6].xy;
  r2.w = cb1[18].x + cb1[18].y;
  r2.w = cb1[18].z + r2.w;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = v2.x + r2.w;
  r2.w = cb3[2].x * r2.w;
  r6.y = 0.100000001 * r2.w;
  r6.x = 0;
  r5.zw = v3.xy * cb4[29].xx + r6.xy;
  r2.w = t3.SampleBias(s4_s, r5.zw, cb0[143].y).x;
  r5.z = 0.100000001 * r2.w;
  r2.w = cmp(0 >= r2.w);
  r5.z = log2(r5.z);
  r5.z = 1.5 * r5.z;
  r5.z = exp2(r5.z);
  r2.w = r2.w ? 0 : r5.z;
  r4.zw = r2.ww * cb4[29].yy + r4.zw;
  r4.xy = r4.xy + r4.zw;
  r4.z = -0.5 * cb4[29].z;
  r4.xy = r5.xy * r4.zz + r4.xy;
  r4.xyz = t4.SampleBias(s5_s, r4.xy, cb0[143].y).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[29].www * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r1.w = 1.5 * r1.w;
  r6.x = cb4[27].w * r1.w;
  r6.y = cb4[28].x * r1.w;
  r5.zw = v3.xy * cb4[30].xx + cb4[7].xy;
  r5.zw = r6.xy + r5.zw;
  r1.w = -0.5 * cb4[30].y;
  r5.zw = r5.xy * r1.ww + r5.zw;
  r6.xyz = t4.SampleBias(s5_s, r5.zw, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb4[29].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = cb4[30].zzz * r6.xyz + float3(1,1,1);
  r4.xyz = r6.xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r0.w = cb0[142].z * cb4[30].w + v3.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb4[31].y + cb4[31].x;
  r0.w = cb4[31].z * r0.w;
  r1.w = cb4[31].w * cb0[142].z;
  r5.zw = v3.xy * cb4[33].xx + cb4[11].xy;
  r5.zw = r2.ww * cb4[33].ww + r5.zw;
  r5.zw = r1.ww * cb4[32].zw + r5.zw;
  r6.xy = float2(-0.5,-0.5) * cb4[34].xw;
  r5.zw = r5.xy * r6.xx + r5.zw;
  r6.xzw = t5.SampleBias(s6_s, r5.zw, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xzw);
  r6.xzw = log2(r6.xzw);
  r6.xzw = cb4[34].yyy * r6.xzw;
  r6.xzw = exp2(r6.xzw);
  r6.xzw = r7.xyz ? float3(0,0,0) : r6.xzw;
  r1.w = 1.5 * r1.w;
  r5.zw = v3.xy * cb4[34].zz + cb4[12].xy;
  r5.zw = r1.ww * cb4[32].zw + r5.zw;
  r5.xy = r5.xy * r6.yy + r5.zw;
  r5.xyz = t5.SampleBias(s6_s, r5.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb4[34].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r7.xyz ? float3(0,0,0) : r5.xyz;
  r5.xyz = float3(-1,-1,-1) + r5.xyz;
  r5.xyz = cb4[35].xxx * r5.xyz + float3(1,1,1);
  r5.xyz = r6.xzw * r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = cb4[14].xyz * r5.xyz;
  r4.xyz = r4.xyz * cb4[9].xyz + r5.xyz;
  r0.xyz = r0.xyz * cb4[25].www + r4.xyz;
  r4.xy = t6.Sample(s0_s, v3.xy).xy;
  r0.w = cb4[35].y + r4.x;
  r1.w = 1 + -r0.w;
  r1.w = saturate(-cb4[35].z + r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = cb4[16].xyz * r0.xyz;
  r4.xzw = cb4[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb4[35].www + cb4[17].xyz;
  r0.xyz = cb4[36].xxx * r0.xyz + r4.xzw;
  r1.w = dot(r3.zxy, r2.xyz);
  r2.x = 1 + -abs(r1.w);
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb4[36].y * r2.x;
  r2.x = exp2(r2.x);
  r2.xzw = cb4[19].xyz * r2.xxx;
  r2.xyz = r2.yyy ? float3(0,0,0) : r2.xzw;
  r2.w = cmp(0 >= abs(r1.w));
  r1.w = log2(abs(r1.w));
  r1.w = cb4[36].z * r1.w;
  r1.w = exp2(r1.w);
  r4.xzw = cb4[21].xyz * r1.www;
  r4.xzw = r2.www ? float3(0,0,0) : r4.xzw;
  r2.xyz = r4.xzw + r2.xyz;
  r4.xzw = t7.SampleBias(s7_s, v3.xy, cb0[143].y).xyz;
  r1.w = dot(r4.xzw, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r1.www + -r4.xzw;
  r4.xzw = cb4[37].zzz * r5.xyz + r4.xzw;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xzw);
  r4.xzw = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xzw;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wxz;
  r5.xyz = r4.wxz * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb4[37].y, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r4.xzw = r4.xzw * r7.xxx + r5.xyz;
  r4.xzw = r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xzw;
  r4.xzw = cb4[23].xyz * r4.xzw;
  r5.xyz = cmp(float3(0,0,0) >= r4.xzw);
  r4.xzw = log2(r4.xzw);
  r4.xzw = cb4[37].www * r4.xzw;
  r4.xzw = exp2(r4.xzw);
  r4.xzw = r5.xyz ? float3(0,0,0) : r4.xzw;
  r2.xyz = r2.xyz * cb4[36].www + r4.xzw;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.w = saturate(cb4[38].x + r4.y);
  r2.w = cmp(0.00100000005 < abs(v2.w));
  r4.xy = floor(v5.xy);
  r4.x = dot(r4.xy, float2(347.834503,3343.28369));
  r4.x = cos(r4.x);
  r4.x = 1000 * r4.x;
  r4.x = frac(r4.x);
  r4.y = cmp(v2.w < 0);
  r4.z = 1 + v2.w;
  r4.z = cmp(r4.x < r4.z);
  r4.x = cmp(v2.w < r4.x);
  r4.x = r4.y ? r4.z : r4.x;
  r4.x = cmp((int)r4.x == 0);
  r2.w = r2.w ? r4.x : 0;
  if (r2.w != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r4.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r2.xyz;
  r4.xyz = r1.www * r4.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r2.xyz * r1.www + r2.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r6.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r0.www ? r6.xyz : r5.xyz;
  r4.xyz = r0.www ? float3(0,0,0) : r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r0.w * 2.04040003 + -0.332399994;
  r2.w = r0.w * -4.79510021 + r2.w;
  r0.w = r0.w * 2.75519991 + r2.w;
  r0.w = 1.33200002 + r0.w;
  r0.w = max(1, r0.w);
  r6.xy = float2(1,0.5) * v4.xy;
  r6.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t0.Sample(s1_s, r6.xy).xyzw;
  r6.xyzw = t0.Sample(s1_s, r6.zw).xyzw;
  r2.w = r6.w * 0.00392156886 + r7.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r3.w = 1;
  r3.w = dot(r6.xyzw, r3.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r6.xyz = r2.www * r7.xyz;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r5.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xyz));
    r3.w = (int)r5.y | (int)r5.x;
    r3.w = (int)r5.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r3.www ? r1.xyz : r0.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.xyz + r6.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r3.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r2.w * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.yw = float2(0.5,0.75686276);
  o2.x = r1.w;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}