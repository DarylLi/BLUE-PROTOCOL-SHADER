// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[33];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[6];
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
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.x = cb4[19].z * cb0[142].z;
  r0.w = cb0[142].z * cb4[19].z + v2.x;
  r3.x = cb4[21].y * r0.w;
  r2.y = cb4[21].z * cb0[142].z;
  r2.xyz = v2.yxy + r2.yxy;
  r3.y = cb4[21].w * r2.x;
  r0.w = cb0[142].z * cb4[22].z + v2.x;
  r4.x = cb4[23].w * r0.w;
  r0.w = cb0[142].z * cb4[24].x + v2.y;
  r4.y = cb4[24].y * r0.w;
  r2.xw = t2.SampleBias(s1_s, r4.xy, cb0[143].y).xy;
  r2.xw = float2(-0.5,-0.5) + r2.xw;
  r4.x = cb4[24].w * r2.x;
  r4.y = cb4[25].x * r2.w;
  r2.xw = r4.xy * float2(2,2) + r3.xy;
  r2.xw = t3.SampleBias(s2_s, r2.xw, cb0[143].y).xy;
  r3.xy = r2.xw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r2.xy = t3.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r0.w = 6.28318548 * v2.y;
  r0.w = cos(r0.w);
  r0.w = -0.899999976 + r0.w;
  r0.w = 6 * r0.w;
  r0.w = max(0, r0.w);
  r2.xyz = r2.xyz + -r3.xyz;
  r2.xyz = r0.www * r2.xyz + r3.xyz;
  r2.xy = cb4[25].yy * r2.xy;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.yzx + r0.xyz;
  r0.xyz = r2.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r0.xyz * r0.www;
  r0.y = -0.5 + v2.x;
  r0.y = cb4[25].z * r0.y;
  r3.x = r0.z * r0.w + r0.y;
  r0.x = r0.x * r0.w + -r0.y;
  r3.y = 1 + r0.x;
  r0.x = dot(r3.xy, r3.xy);
  r0.x = sqrt(r0.x);
  r0.xy = r3.xy / r0.xx;
  r0.z = dot(cb3[5].xy, cb3[5].xy);
  r0.z = sqrt(r0.z);
  r0.zw = cb3[5].xy / r0.zz;
  r0.x = dot(r0.xy, r0.zw);
  r0.x = 1 + -r0.x;
  r0.x = r0.x * cb4[26].x + -cb4[26].x;
  r0.x = saturate(cb4[26].w + r0.x);
  r0.yzw = -cb4[14].xyz + cb4[13].xyz;
  r0.xyz = r0.xxx * r0.yzw + cb4[14].xyz;
  r3.xyz = cb4[27].xxx * r0.xyz;
  r4.xyz = -r0.xyz * cb4[27].xxx + cb4[15].xyz;
  r3.xyz = cb4[27].yyy * r4.xyz + r3.xyz;
  r0.xyz = saturate(cb4[27].zzz * r0.xyz);
  r0.w = cb4[28].z * v2.y + cb4[28].w;
  r0.w = -cb4[29].x * r0.w + 1;
  r1.w = -cb4[29].y + r1.z;
  r1.w = abs(r1.w) / cb4[29].z;
  r1.w = -r1.w * cb4[29].w + 1;
  r4.y = -r0.w * r1.w + 1;
  r4.x = v2.x;
  r0.w = cb3[2].x * cb0[142].z;
  r0.w = cb4[30].x * r0.w;
  r4.zw = cb4[17].xy * r0.ww;
  r5.xy = r4.xy * cb4[16].xy + r4.zw;
  r4.xy = r4.xy * cb4[18].xy + float2(0.200000003,0.200000003);
  r4.xy = r4.zw * float2(0.699999988,0.699999988) + r4.xy;
  r0.w = t4.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r6.y = r0.w * 2 + -1;
  r6.x = 0;
  r4.zw = cb4[31].xx * r6.xy;
  r0.w = frac(cb0[142].z);
  r5.zw = r4.zw * r0.ww + r5.xy;
  r1.w = t4.SampleBias(s3_s, r5.zw, cb0[143].y).x;
  r1.w = r1.w * 2 + -1;
  r3.w = 0.5 + cb0[142].z;
  r3.w = frac(r3.w);
  r5.xy = r4.zw * r3.ww + r5.xy;
  r5.x = t4.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r5.x = r5.x * 2 + -1;
  r5.y = r3.w + r3.w;
  r5.z = max(1, r5.y);
  r5.z = -1 + r5.z;
  r5.z = r5.z + r5.z;
  r5.yz = min(float2(1,1), r5.yz);
  r5.z = 1 + -r5.z;
  r5.y = r5.y + r5.y;
  r5.y = min(1, r5.y);
  r5.y = r5.z * r5.y;
  r5.x = r5.x + -r1.w;
  r1.w = r5.y * r5.x + r1.w;
  r5.xz = r4.zw * r0.ww + r4.xy;
  r0.w = t4.SampleBias(s3_s, r5.xz, cb0[143].y).y;
  r0.w = r0.w * 2 + -1;
  r4.xy = r4.zw * r3.ww + r4.xy;
  r3.w = t4.SampleBias(s3_s, r4.xy, cb0[143].y).y;
  r3.w = r3.w * 2 + -1;
  r3.w = r3.w + -r0.w;
  r0.w = r5.y * r3.w + r0.w;
  r0.w = r1.w + -r0.w;
  r0.w = r0.w * cb4[31].y + v2.x;
  r0.w = r0.w * 2 + -1;
  r0.w = 1 + -abs(r0.w);
  r0.w = r0.w * cb4[31].w + -cb4[31].w;
  r0.w = saturate(cb4[32].y + r0.w);
  r4.xy = -cb0[129].xy + v4.xy;
  r4.zw = cb0[152].xx + r4.xy;
  r4.zw = (uint2)r4.zw;
  r1.w = (uint)r4.w << 1;
  r1.w = (int)r1.w + (int)r4.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r4.xy = float2(0.015625,0.015625) * r4.xy;
  r3.w = t5.SampleBias(s4_s, r4.xy, cb0[143].y).x;
  r1.w = r3.w + r1.w;
  r0.w = r1.w * 0.166666672 + r0.w;
  r0.w = -0.833299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = saturate(cb4[27].w);
  r4.xy = saturate(cb4[28].xy);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r5.xyzw = t1.Sample(s0_s, v3.zw).xyzw;
  r6.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * cb2[1].xyzw + r6.xyzw);
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = cb2[0].xyzw * r5.xyzw;
  r1.w = 0.0799999982 * r4.x;
  r4.yzw = -r4.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r4.yzw = r0.www * r4.yzw + r1.www;
  r5.xyz = -r0.xyz * r0.www + r0.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r6.xyz : r5.xyz;
  r4.yzw = r1.www ? float3(0,0,0) : r4.yzw;
  r1.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r1.w * 2.04040003 + -0.332399994;
  r3.w = r1.w * -4.79510021 + r3.w;
  r1.w = r1.w * 2.75519991 + r3.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r6.xy = float2(1,0.5) * v3.xy;
  r6.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t0.Sample(s0_s, r6.xy).xyzw;
  r6.xyzw = t0.Sample(s0_s, r6.zw).xyzw;
  r3.w = r6.w * 0.00392156886 + r7.w;
  r3.w = -0.00196078443 + r3.w;
  r3.w = r3.w * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r2.w = 1;
  r2.w = dot(r6.xyzw, r2.xyzw);
  r2.w = max(0, r2.w);
  r2.w = r3.w * r2.w;
  r6.xyz = r2.www * r7.xyz;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
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
    r3.xyz = r3.www ? r1.xyz : r3.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.yzw + r6.xyz;
  r1.xyz = r1.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r2.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r2.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.y = r4.x;
  o2.w = 0.505882382;
  o2.x = r0.w;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}