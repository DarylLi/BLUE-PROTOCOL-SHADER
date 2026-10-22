// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[14];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float3 v3 : TEXCOORD9,
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

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v3.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xy = r3.xy / cb4[8].zz;
  r4.zw = t2.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.zw, r4.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r5.xy = -r4.zw;
  r5.z = v1.z * r0.w;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r5.xyz = r5.xyz / r0.www;
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.xyz, r5.xyz);
  r6.z = dot(v1.xyz, r5.xyz);
  r5.xyz = float3(0,0,1) + -r6.xyz;
  r5.xyz = cb4[8].www * r5.xyz + r6.xyz;
  r4.zw = r3.xy / cb4[9].zz;
  r6.xy = t3.SampleBias(s3_s, r4.zw, cb0[143].y).xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.xy = -r6.xy;
  r6.z = v1.z * r0.w;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.xyz, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = float3(0,0,1) + -r7.xyz;
  r6.xyz = cb4[9].www * r6.xyz + r7.xyz;
  r3.xyz = r3.xyz / cb4[10].zzz;
  r0.w = t4.Sample(s0_s, r3.xz).x;
  r1.w = t4.Sample(s0_s, r3.yz).x;
  r3.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r1.w = r1.w + -r0.w;
  r0.w = r3.z * r1.w + r0.w;
  r1.w = t4.Sample(s0_s, r3.xy).x;
  r1.w = r1.w + -r0.w;
  r0.w = r3.w * r1.w + r0.w;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[10].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb4[11].x * r0.w;
  r0.w = r1.w ? 0 : r0.w;
  r0.w = saturate(-v2.z + r0.w);
  r0.w = saturate(v2.y + r0.w);
  r3.xyz = r6.xyz + -r5.xyz;
  r3.xyz = r0.www * r3.xyz + r5.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r1.www * r0.xyz;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r3.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r2.xyz;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = sqrt(r0.y);
  r6.xyz = r6.xyz / r0.yyy;
  r0.y = saturate(dot(-r6.xyz, r5.xyz));
  r2.w = 1 + -cb2[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r3.xyz, r1.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r1.x = cb2[1].y * r0.y;
  r1.x = exp2(r1.x);
  r1.y = 1 + -cb2[0].w;
  r1.x = r1.x * r1.y + cb2[0].w;
  r1.y = cmp(r1.x >= cb2[0].y);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.y * r1.x;
  r1.y = r0.z * r1.w + 1;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb2[0].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = r1.z ? 0 : r1.y;
  r1.x = r1.x * r1.y;
  r0.z = -r0.z * r1.w + 1;
  r1.y = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r1.y ? 0 : r0.z;
  r0.z = r1.x * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r1.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r3.xyz);
  r0.x = 1 + r0.x;
  r1.w = saturate(dot(-r6.xyz, r5.xyz));
  r1.w = saturate(r1.w + r2.w);
  r0.x = r1.w * r0.x;
  r0.x = r0.x * r0.z;
  r5.xyz = cb3[9].xyz * r0.xxx;
  r5.xyz = cb3[1].yyy * r5.xyz;
  r1.xyz = r1.xyz * cb3[1].xxx + r5.xyz;
  r1.xyz = cb2[2].xyz * r1.xyz;
  r5.xyz = cb4[2].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb4[2].xyz + cb4[3].xyz;
  r1.xyz = cb4[11].yyy * r1.xyz + r5.xyz;
  r0.xz = r2.xy / cb4[8].zz;
  r5.xyz = t5.Sample(s0_s, r0.xz).xyz;
  r5.xyz = cb4[5].xyz * r5.xyz;
  r0.xz = r2.xy / cb4[9].zz;
  r6.xyz = t6.Sample(s0_s, r0.xz).xyz;
  r6.xyz = r6.xyz * cb4[7].xyz + -r5.xyz;
  r5.xyz = r0.www * r6.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r0.xz = t7.Sample(s0_s, r4.xy).xy;
  r4.xy = t8.Sample(s0_s, r4.zw).xy;
  r1.w = r4.y + -r0.z;
  r6.x = saturate(r0.w * r1.w + r0.z);
  r0.y = cb4[11].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[11].w * r0.y;
  r0.z = saturate(cb4[12].y + v1.z);
  r0.y = r0.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r6.y = saturate(cb4[12].z * r0.y);
  r0.x = cb4[12].w + r0.x;
  r0.y = cb4[13].x + r4.x;
  r0.y = r0.y + -r0.x;
  r0.x = saturate(r0.w * r0.y + r0.x);
  r0.yzw = min(float3(1,1,1), r5.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.x = cmp(0 < cb1[20].z);
  if (r0.x != 0) {
    r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r5.xyz = (int3)r4.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.x = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r5.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r5.xyz * r0.xxx + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r0.x = t1.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r0.x = 1;
  }
  r1.w = 0.0799999982 * r6.y;
  r4.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.yzw;
  r4.xyz = r6.xxx * r4.xyz + r1.www;
  r5.xyz = -r0.yzw * r6.xxx + r0.yzw;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r4.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r4.xyz = r1.www ? r4.xyz : r5.xyz;
  r5.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r4.xyz = r5.xyz + r4.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xyz));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r2.xyz : r1.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r6.xy;
  o3.xyz = r0.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}