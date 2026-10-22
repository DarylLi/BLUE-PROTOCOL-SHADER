// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[216];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r1.zw = v2.xy + r0.ww;
  r1.zw = float2(10,10) * r1.zw;
  r3.xy = cmp(r1.zw >= -r1.zw);
  r1.zw = frac(abs(r1.zw));
  r1.zw = r3.xy ? r1.zw : -r1.zw;
  r0.w = r1.w * r1.z;
  r0.w = max(cb4[6].x, r0.w);
  r0.w = min(1, r0.w);
  r0.w = -1 + r0.w;
  r0.w = cb4[6].y * r0.w + 1;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[6].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r1.z = saturate(cb4[6].x);
  r1.z = -1 + r1.z;
  r1.z = cb4[6].w * r1.z + 1;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r0.w = r1.z * r0.w;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = r1.x / cb4[7].x;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb4[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.z ? 1 : r1.y;
  r1.yzw = cb4[2].xyz * r1.yyy;
  r1.yzw = r1.yzw * r0.www;
  r3.xyz = cb4[7].www * r1.yzw;
  r1.yzw = -r1.yzw * cb4[7].www + cb4[3].xyz;
  r1.yzw = cb4[8].xxx * r1.yzw + r3.xyz;
  r0.w = cb4[8].w * cb3[1].w;
  r2.w = cb4[9].x + r1.x;
  r3.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r3.z = cb3[1].w * 0.617499948 + -r1.x;
  r3.y = saturate(r3.z / r3.y);
  r3.z = -cb3[1].w * 0.649999976 + 8000;
  r3.x = r3.y * r3.z + r3.x;
  r2.w = r2.w / r3.x;
  r1.x = r1.x / cb4[9].x;
  r3.x = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? r2.w : r1.x;
  r0.w = r3.x ? r0.w : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb4[8].w));
  r2.w = 1 + cb4[8].w;
  r1.x = r1.x ? r2.w : 1.39999998;
  r3.xyz = -cb0[129].xxy + v3.xxy;
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
  r3.x = t5.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r2.w = r3.x + r2.w;
  r2.w = 0.166666672 * r2.w;
  r0.w = r0.w * r1.x + r2.w;
  r0.w = saturate(-0.5 + r0.w);
  r0.w = -0.333299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r3.xyz = saturate(cb4[5].xyz);
  r4.xy = saturate(cb4[8].yz);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb0[215].x);
  r1.x = cmp(0 < cb1[20].z);
  if (r1.x != 0) {
    r4.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.yzw = max(float3(0,0,0), r4.yzw);
    r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
    r4.yzw = cb0[213].xyz * r4.yzw;
    r5.xyz = (int3)r4.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r1.x = 1 + cb0[213].w;
    r4.yzw = r4.yzw / r5.www;
    r4.yzw = frac(r4.yzw);
    r4.yzw = cb0[213].www * r4.yzw;
    r4.yzw = r5.xyz * r1.xxx + r4.yzw;
    r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
    r4.yzw = cb0[214].xyz * r4.yzw;
    r1.x = t1.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r2.w = cmp(0 < cb1[18].w);
    r2.w = r0.w ? r2.w : 0;
    r1.x = r2.w ? cb2[5].x : 1;
  }
  r4.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r3.xyz;
  r4.yzw = r4.xxx * r4.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r3.xyz * r4.xxx + r3.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r6.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r2.www ? r6.xyz : r5.xyz;
  r4.yzw = r2.www ? float3(0,0,0) : r4.yzw;
  r2.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  if (r0.w != 0) {
    r6.xyz = r2.xyz * cb2[1].xyz + cb2[0].xyz;
    r6.xyz = max(cb2[2].xyz, r6.xyz);
    r6.xyz = min(cb2[3].xyz, r6.xyz);
    r7.xyzw = t2.Sample(s1_s, r6.xyz).xyzw;
    r8.xyzw = t3.Sample(s0_s, r6.xyz).xyzw;
    r6.xyzw = t4.Sample(s0_s, r6.xyz).xyzw;
    r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
    r10.xw = r7.xw;
    r10.y = r8.x;
    r10.z = r6.x;
    r9.x = 0.886227548;
    r10.x = dot(r10.xyzw, r9.xyzw);
    r11.x = r7.y;
    r11.yw = r8.yw;
    r11.z = r6.y;
    r10.y = dot(r11.xyzw, r9.xyzw);
    r6.x = r7.z;
    r6.y = r8.z;
    r10.z = dot(r6.xyzw, r9.xyzw);
    r6.xyz = max(float3(0,0,0), r10.xyz);
    r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r6.xyz = cb0[157].xyz * r6.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xyz));
    r3.w = (int)r5.y | (int)r5.x;
    r3.w = (int)r5.z | (int)r3.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.yzw = r3.www ? r2.xyz : r1.yzw;
  }
  r2.xyz = cb0[145].yyy * r4.yzw + r6.xyz;
  r1.yzw = r2.xyz + r1.yzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.yzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r4.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}