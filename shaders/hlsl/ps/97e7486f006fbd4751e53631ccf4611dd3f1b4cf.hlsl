// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 cb2[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r3.yzw = r0.xyz * r0.www;
  r1.z = cb1[18].x + cb1[18].y;
  r1.z = cb1[18].z + r1.z;
  r1.z = frac(r1.z);
  r1.zw = v3.xy + r1.zz;
  r1.zw = float2(10,10) * r1.zw;
  r4.xy = cmp(r1.zw >= -r1.zw);
  r1.zw = frac(abs(r1.zw));
  r1.zw = r4.xy ? r1.zw : -r1.zw;
  r1.z = r1.w * r1.z;
  r1.z = max(cb4[6].x, r1.z);
  r1.z = min(1, r1.z);
  r1.z = -1 + r1.z;
  r1.z = cb4[6].y * r1.z + 1;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = max(cb4[6].x, v2.x);
  r1.w = min(1, r1.w);
  r1.w = -1 + r1.w;
  r1.w = cb4[6].w * r1.w + 1;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[6].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.z = r1.z * r1.w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = r1.x / cb4[7].x;
  r1.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb4[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.w ? 1 : r1.y;
  r4.xyz = cb4[2].xyz * r1.yyy;
  r1.yzw = r4.xyz * r1.zzz;
  r4.xyz = cb4[7].www * r1.yzw;
  r1.yzw = -r1.yzw * cb4[7].www + cb4[3].xyz;
  r1.yzw = cb4[8].xxx * r1.yzw + r4.xyz;
  r2.w = cb4[8].w * cb3[1].w;
  r4.x = cb4[9].x + r1.x;
  r4.yz = float2(0.649999976,0.487499982) * cb3[1].ww;
  r4.w = cb3[1].w * 0.617499948 + -r1.x;
  r4.z = saturate(r4.w / r4.z);
  r4.w = -cb3[1].w * 0.649999976 + 8000;
  r4.y = r4.z * r4.w + r4.y;
  r4.x = r4.x / r4.y;
  r1.x = r1.x / cb4[9].x;
  r4.y = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r2.w = r2.w ? r4.x : r1.x;
  r1.x = r4.y ? r2.w : r1.x;
  r2.w = cmp(9.99999975e-006 < abs(cb4[8].w));
  r4.x = 1 + cb4[8].w;
  r2.w = r2.w ? r4.x : 1.39999998;
  r4.xyz = -cb0[129].xxy + v4.xxy;
  r4.x = r4.x * cb0[130].z + -0.469999999;
  r4.x = 4.93230057 * r4.x;
  r4.x = cos(r4.x);
  r4.x = 0.899999976 + r4.x;
  r4.x = saturate(0.555555582 * r4.x);
  r2.w = -r4.x + r2.w;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r4.w = (uint)r4.w << 1;
  r4.x = (int)r4.w + (int)r4.x;
  r4.x = (uint)r4.x % 5;
  r4.x = (uint)r4.x;
  r4.yz = float2(0.015625,0.015625) * r4.yz;
  r4.y = t3.SampleBias(s1_s, r4.yz, cb0[143].y).x;
  r4.x = r4.x + r4.y;
  r4.x = 0.166666672 * r4.x;
  r1.x = r1.x * r2.w + r4.x;
  r1.x = saturate(-0.5 + r1.x);
  r2.w = cmp(0.00100000005 < abs(v2.w));
  r4.xy = floor(v4.xy);
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
  r1.x = r1.x * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r4.xyz = saturate(cb4[5].xyz);
  r5.xy = saturate(cb4[8].yz);
  o2.z = r5.y * cb0[139].y + cb0[139].x;
  r1.x = cmp(0 < cb0[215].x);
  r2.w = cmp(0 < cb1[20].z);
  if (r2.w != 0) {
    r5.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.yzw = max(float3(0,0,0), r5.yzw);
    r5.yzw = min(float3(0.99000001,0.99000001,0.99000001), r5.yzw);
    r5.yzw = cb0[213].xyz * r5.yzw;
    r6.xyz = (int3)r5.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r2.w = 1 + cb0[213].w;
    r5.yzw = r5.yzw / r6.www;
    r5.yzw = frac(r5.yzw);
    r5.yzw = cb0[213].www * r5.yzw;
    r5.yzw = r6.xyz * r2.www + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) + r5.yzw;
    r5.yzw = cb0[214].xyz * r5.yzw;
    r2.w = t1.SampleLevel(s0_s, r5.yzw, 0).x;
  } else {
    r4.w = cmp(0 < cb1[18].w);
    r4.w = r1.x ? r4.w : 0;
    r2.w = r4.w ? cb2[5].x : 1;
  }
  r5.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r4.xyz;
  r5.yzw = r5.xxx * r5.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r4.xyz * r5.xxx + r4.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = r5.yzw * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r4.www ? r7.xyz : r6.xyz;
  r5.yzw = r4.www ? float3(0,0,0) : r5.yzw;
  r4.w = dot(r5.yzw, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r4.w * 2.04040003 + -0.332399994;
  r6.w = r4.w * -4.79510021 + r6.w;
  r4.w = r4.w * 2.75519991 + r6.w;
  r4.w = 1.33200002 + r4.w;
  r4.w = max(1, r4.w);
  r7.xyz = r3.zwz * r3.zwy;
  r8.yw = r3.ww * r3.zy;
  r6.w = r3.y * r3.y + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.zwy;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r6.w = 0.429042608 * r6.w;
  r9.x = 0.886227548;
  r8.x = dot(cb2[6].xyzw, r9.xyzw);
  r8.y = dot(cb2[9].xyzw, r7.xyzw);
  r8.x = r8.x + r8.y;
  r8.x = cb2[12].x * r6.w + r8.x;
  r8.w = dot(cb2[7].xyzw, r9.xyzw);
  r10.x = dot(cb2[10].xyzw, r7.xyzw);
  r8.w = r10.x + r8.w;
  r8.y = cb2[12].y * r6.w + r8.w;
  r8.w = dot(cb2[8].xyzw, r9.xyzw);
  r7.x = dot(cb2[11].xyzw, r7.xyzw);
  r7.x = r8.w + r7.x;
  r8.z = cb2[12].z * r6.w + r7.x;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r1.xxx ? r7.xyz : 0;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r3.x = 1;
    r8.xyzw = r1.xxxx ? cb2[4].wxyz : r3.xyzw;
    r1.x = 1 + -r8.x;
    r1.x = -r1.x * r1.x + 1;
    r0.xyz = r0.xyz * r0.www + -r8.yzw;
    r0.xyz = r1.xxx * r0.xyz + r8.yzw;
    r3.x = saturate(dot(r8.yzw, r3.yzw));
    r6.w = 1 + -r3.x;
    r8.y = r1.x * r6.w + r3.x;
  } else {
    r0.xyz = r3.yzw;
    r8.xy = float2(1,1);
  }
  r9.x = t2[0].val[0/4];
  r9.y = t2[0].val[0/4+1];
  r9.z = t2[0].val[0/4+2];
  r9.w = t2[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r9.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r9.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
  r11.x = t2[3].val[0/4];
  r11.y = t2[3].val[0/4+1];
  r11.z = t2[3].val[0/4+2];
  r11.w = t2[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t2[4].val[0/4];
  r12.y = t2[4].val[0/4+1];
  r12.z = t2[4].val[0/4+2];
  r12.w = t2[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t2[5].val[0/4];
  r12.y = t2[5].val[0/4+1];
  r12.z = t2[5].val[0/4+2];
  r12.w = t2[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r9.xyz = r11.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r8.x * r8.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r7.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r0.xyz = r7.xyz * r0.xyz;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyz = max(float3(0,0,0), r1.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r2.xyz : r1.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r0.xyz = r0.xyz + r1.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r3.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r4.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r5.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}