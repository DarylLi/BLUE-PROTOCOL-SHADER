// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www;
  r1.zw = cb3[19].xx * v3.xy;
  r1.zw = t2.SampleBias(s1_s, r1.zw, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[19].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.yzx;
  r4.xyw = r4.xxx * v0.yzx + r5.xyz;
  r4.xyz = r4.zzz * v1.yzx + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r1.zw = v3.xy * cb3[1].xy + cb3[2].xy;
  r0.w = -0.5 * cb3[20].z;
  r0.w = cb3[20].z * cb3[20].w + r0.w;
  r5.x = dot(v0.xyz, r3.xyz);
  r5.y = dot(r0.xyz, r3.xyz);
  r5.z = dot(v1.xyz, r3.xyz);
  r0.xy = r5.xy * r0.ww + r1.zw;
  r0.xyzw = t3.SampleBias(s2_s, r0.xy, cb0[143].y).xyzw;
  r1.z = cb3[21].x * r0.w;
  r0.w = -r0.w * cb3[21].x + 1;
  r3.xyz = float3(-1,1,1) * r5.xyz;
  r5.xyz = float3(1,1,1) / r3.xyz;
  r6.xy = v3.xy * cb3[3].xy + cb3[4].xy;
  r6.xy = float2(4,4) * r6.xy;
  r6.xy = frac(r6.xy);
  r6.xy = r6.xy * float2(2,-2) + float2(-1,1);
  r6.z = -1;
  r5.xyz = -r5.xyz * r6.xyz + abs(r5.xyz);
  r1.w = min(r5.x, r5.y);
  r1.w = min(r1.w, r5.z);
  r3.xy = r1.ww * r3.xy + r6.xy;
  r1.w = r1.w * r3.z + cb3[6].x;
  r5.x = -1 + r1.w;
  r5.yz = cb3[6].yz + r3.xy;
  r3.xyz = t5.Sample(s4_s, r5.xyz).xyz;
  r3.xyz = r3.xyz * cb3[8].xyz + cb3[10].xyz;
  r3.xyz = cb3[22].yyy * r3.xyz;
  r3.xyz = r3.xyz * r0.www;
  r0.w = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r0.w / cb3[22].z;
  r1.x = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[22].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = cb3[23].x * r0.w;
  r0.w = max(1, r0.w);
  r0.w = r1.x ? 1 : r0.w;
  r1.xyw = r3.xyz * r0.www;
  r3.xyz = -r3.xyz * r0.www + cb3[11].xyz;
  r1.xyw = cb3[23].yyy * r3.xyz + r1.xyw;
  r3.xyz = t6.Sample(s5_s, r5.xyz).xyz;
  r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.www + -r3.xyz;
  r3.xyz = cb3[23].zzz * r5.xyz + r3.xyz;
  r3.xyz = cb3[13].xyz * r3.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.www + -r0.xyz;
  r0.xyz = cb3[24].yyy * r5.xyz + r0.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r5.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb3[24].x, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r0.xyz = r0.xyz * r7.xxx + r5.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = r0.xyz * cb3[15].xyz + -r3.xyz;
  r0.xyz = r1.zzz * r0.xyz + r3.xyz;
  r3.xyz = cb3[17].xyz + -r0.xyz;
  r0.xyz = saturate(cb3[24].zzz * r3.xyz + r0.xyz);
  r3.xy = cb3[18].xy * v3.xy;
  r3.xy = t4.SampleBias(s3_s, r3.xy, cb0[143].y).yx;
  r0.w = saturate(cb3[25].z + r3.y);
  r1.z = cmp(0.00100000005 < abs(v2.w));
  r3.zw = floor(v5.xy);
  r2.w = dot(r3.zw, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.z = cmp(v2.w < 0);
  r3.w = 1 + v2.w;
  r3.w = cmp(r2.w < r3.w);
  r2.w = cmp(v2.w < r2.w);
  r2.w = r3.z ? r3.w : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r1.z = r1.z ? r2.w : 0;
  if (r1.z != 0) discard;
  r3.x = saturate(r3.x);
  r3.y = saturate(cb3[25].y);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r5.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r6.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * cb2[1].xyzw + r6.xyzw);
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = cb2[0].xyzw * r5.xyzw;
  r0.w = 0.0799999982 * r3.y;
  r5.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r5.xyz = r3.xxx * r5.xyz + r0.www;
  r6.xyz = -r0.xyz * r3.xxx + r0.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.www ? r7.xyz : r6.xyz;
  r5.xyz = r0.www ? float3(0,0,0) : r5.xyz;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.z = r0.w * 2.04040003 + -0.332399994;
  r1.z = r0.w * -4.79510021 + r1.z;
  r0.w = r0.w * 2.75519991 + r1.z;
  r0.w = 1.33200002 + r0.w;
  r0.w = max(1, r0.w);
  r3.zw = float2(1,0.5) * v4.xy;
  r7.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t0.Sample(s0_s, r3.zw).xyzw;
  r7.xyzw = t0.Sample(s0_s, r7.xy).xyzw;
  r1.z = r7.w * 0.00392156886 + r8.w;
  r1.z = -0.00196078443 + r1.z;
  r1.z = r1.z * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.z = exp2(r1.z);
  r1.z = -0.0185813606 + r1.z;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r2.w = dot(r7.xyzw, r4.xyzw);
  r2.w = max(0, r2.w);
  r1.z = r2.w * r1.z;
  r7.xyz = r1.zzz * r8.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyw = max(float3(0,0,0), r1.xyw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r2.xyz = -cb0[70].xyz + r2.xyz;
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyw = r2.www ? r2.xyz : r1.xyw;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r7.xyz;
  r1.xyw = r2.xyz + r1.xyw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.z * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r1.xyw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}