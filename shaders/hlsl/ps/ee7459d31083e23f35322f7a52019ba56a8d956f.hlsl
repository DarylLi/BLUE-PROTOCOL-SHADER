// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r1.zw = v3.xy + r0.ww;
  r1.zw = float2(10,10) * r1.zw;
  r3.xy = cmp(r1.zw >= -r1.zw);
  r1.zw = frac(abs(r1.zw));
  r1.zw = r3.xy ? r1.zw : -r1.zw;
  r0.w = r1.w * r1.z;
  r0.w = max(cb3[6].x, r0.w);
  r0.w = min(1, r0.w);
  r0.w = -1 + r0.w;
  r0.w = cb3[6].y * r0.w + 1;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[6].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r1.z = max(cb3[6].x, v2.x);
  r1.z = min(1, r1.z);
  r1.z = -1 + r1.z;
  r1.z = cb3[6].w * r1.z + 1;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r0.w = r1.z * r0.w;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = r1.x / cb3[7].x;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.z ? 1 : r1.y;
  r1.yzw = cb3[2].xyz * r1.yyy;
  r1.yzw = r1.yzw * r0.www;
  r3.xyz = cb3[7].www * r1.yzw;
  r1.yzw = -r1.yzw * cb3[7].www + cb3[3].xyz;
  r1.yzw = cb3[8].xxx * r1.yzw + r3.xyz;
  r0.w = cb3[8].w * cb2[1].w;
  r2.w = cb3[9].x + r1.x;
  r3.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r3.z = cb2[1].w * 0.617499948 + -r1.x;
  r3.y = saturate(r3.z / r3.y);
  r3.z = -cb2[1].w * 0.649999976 + 8000;
  r3.x = r3.y * r3.z + r3.x;
  r2.w = r2.w / r3.x;
  r1.x = r1.x / cb3[9].x;
  r3.x = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? r2.w : r1.x;
  r0.w = r3.x ? r0.w : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb3[8].w));
  r2.w = 1 + cb3[8].w;
  r1.x = r1.x ? r2.w : 1.39999998;
  r3.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r3.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.x = -r2.w + r1.x;
  r3.xw = cb0[152].xx + r3.yz;
  r3.xw = (uint2)r3.xw;
  r2.w = (uint)r3.w << 1;
  r2.w = (int)r2.w + (int)r3.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r3.xy = float2(0.015625,0.015625) * r3.yz;
  r3.x = t2.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r2.w = r3.x + r2.w;
  r2.w = 0.166666672 * r2.w;
  r0.w = r0.w * r1.x + r2.w;
  r0.w = saturate(-0.5 + r0.w);
  r1.x = cmp(0.00100000005 < abs(v2.w));
  r3.xy = floor(v4.xy);
  r2.w = dot(r3.xy, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.x = cmp(v2.w < 0);
  r3.y = 1 + v2.w;
  r3.y = cmp(r2.w < r3.y);
  r2.w = cmp(v2.w < r2.w);
  r2.w = r3.x ? r3.y : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r1.x = r1.x ? r2.w : 0;
  if (r1.x != 0) discard;
  r0.w = r0.w * v2.y + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r3.xyz = saturate(cb3[5].xyz);
  r4.xy = saturate(cb3[8].yz);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r4.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.yzw = max(float3(0,0,0), r4.yzw);
    r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
    r4.yzw = cb0[213].xyz * r4.yzw;
    r5.xyz = (int3)r4.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.w = 1 + cb0[213].w;
    r4.yzw = r4.yzw / r5.www;
    r4.yzw = frac(r4.yzw);
    r4.yzw = cb0[213].www * r4.yzw;
    r4.yzw = r5.xyz * r0.www + r4.yzw;
    r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
    r4.yzw = cb0[214].xyz * r4.yzw;
    r0.w = t1.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r4.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r3.xyz;
  r4.yzw = r4.xxx * r4.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r3.xyz * r4.xxx + r3.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r4.yzw;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r4.yzw = r1.xxx ? r4.yzw : r5.xyz;
  r5.xyz = r1.xxx ? float3(0,0,0) : r6.xyz;
  r4.yzw = r5.xyz + r4.yzw;
  r1.xyz = max(float3(0,0,0), r1.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r2.xyz : r1.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.yzw + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r4.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}