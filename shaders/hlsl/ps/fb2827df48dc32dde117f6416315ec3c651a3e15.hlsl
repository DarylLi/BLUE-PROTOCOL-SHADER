// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

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
  float4 cb1[6];
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
  nointerpolation uint v3 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r4.x = t2[r1.z].val[0/4];
  r4.y = t2[r1.z].val[0/4+1];
  r4.z = t2[r1.z].val[0/4+2];
  r2.w = r4.x + r4.y;
  r2.w = r2.w + r4.z;
  r2.w = frac(r2.w);
  r4.xy = v2.xy + r2.ww;
  r4.xy = float2(10,10) * r4.xy;
  r4.zw = cmp(r4.xy >= -r4.xy);
  r4.xy = frac(abs(r4.xy));
  r4.xy = r4.zw ? r4.xy : -r4.xy;
  r2.w = 1 * r4.x;
  r2.w = r4.y * r2.w;
  r2.w = 1 * r2.w;
  r2.w = max(cb3[6].x, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -1 + r2.w;
  r2.w = cb3[6].y * r2.w + 1;
  r4.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[6].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r4.x = saturate(cb3[6].x);
  r4.x = -1 + r4.x;
  r4.x = cb3[6].w * r4.x + 1;
  r4.y = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r4.x = cb3[6].z * r4.x;
  r4.x = exp2(r4.x);
  r4.x = r4.y ? 0 : r4.x;
  r2.w = r4.x * r2.w;
  r4.x = cmp(cb0[31].w < 1);
  r4.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.y + r1.x;
  r1.x = r4.x ? r1.y : r1.x;
  r1.y = r1.x / cb3[7].x;
  r4.x = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r4.x ? 1 : r1.y;
  r4.xyz = cb3[2].xyz * r1.yyy;
  r4.xyz = r4.xyz * r2.www;
  r5.xyz = cb3[7].www * r4.xyz;
  r4.xyz = -r4.xyz * cb3[7].www + cb3[3].xyz;
  r4.xyz = cb3[8].xxx * r4.xyz + r5.xyz;
  r1.y = cb3[8].w * cb2[1].w;
  r2.w = cb3[9].x + r1.x;
  r5.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r4.w = cb2[1].w * 0.617499948 + -r1.x;
  r4.w = saturate(r4.w / r5.y);
  r5.y = -cb2[1].w * 0.649999976 + 8000;
  r4.w = r4.w * r5.y + r5.x;
  r2.w = r2.w / r4.w;
  r1.x = r1.x / cb3[9].x;
  r4.w = cmp(9.99999975e-006 < abs(r1.y));
  r1.y = cmp(r1.y >= 0);
  r1.y = r1.y ? r2.w : r1.x;
  r1.x = r4.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[8].w));
  r2.w = 1 + cb3[8].w;
  r1.y = r1.y ? r2.w : 1.39999998;
  r5.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r5.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.y = -r2.w + r1.y;
  r5.xw = cb0[152].xx + r5.yz;
  r5.xw = (uint2)r5.xw;
  r2.w = (uint)r5.w << 1;
  r2.w = (int)r2.w + (int)r5.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r5.xy = float2(0.015625,0.015625) * r5.yz;
  r4.w = t7.SampleBias(s2_s, r5.xy, cb0[143].y).x;
  r2.w = r4.w + r2.w;
  r2.w = 0.166666672 * r2.w;
  r1.x = r1.x * r1.y + r2.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = -0.333299994 + r1.x;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r5.xyz = saturate(cb3[5].xyz);
  r1.xy = saturate(cb3[8].yz);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r1.y = cmp(0 < cb0[215].x);
  r6.x = t2[r1.w].val[4/4];
  r6.y = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r6.y);
  if (r1.w != 0) {
    r6.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.yzw = max(float3(0,0,0), r6.yzw);
    r6.yzw = min(float3(0.99000001,0.99000001,0.99000001), r6.yzw);
    r6.yzw = cb0[213].xyz * r6.yzw;
    r7.xyz = (int3)r6.yzw;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.w = 1 + cb0[213].w;
    r6.yzw = r6.yzw / r7.www;
    r6.yzw = frac(r6.yzw);
    r6.yzw = cb0[213].www * r6.yzw;
    r6.yzw = r7.xyz * r1.www + r6.yzw;
    r6.yzw = float3(0.5,0.5,0.5) + r6.yzw;
    r6.yzw = cb0[214].xyz * r6.yzw;
    r1.w = t1.SampleLevel(s0_s, r6.yzw, 0).x;
  } else {
    r1.z = t2[r1.z].val[12/4];
    r1.z = cmp(0 < r1.z);
    r1.z = r1.y ? r1.z : 0;
    r1.w = r1.z ? cb1[5].x : 1;
  }
  r6.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r5.xyz;
  r6.yzw = r1.xxx * r6.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r7.xyz = -r5.xyz * r1.xxx + r5.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.yzw = r6.yzw * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.zzz ? r8.xyz : r7.xyz;
  r6.yzw = r1.zzz ? float3(0,0,0) : r6.yzw;
  r1.z = dot(r6.yzw, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.z * 2.04040003 + -0.332399994;
  r2.w = r1.z * -4.79510021 + r2.w;
  r1.z = r1.z * 2.75519991 + r2.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  if (r1.y != 0) {
    r8.xyz = r2.xyz * cb1[1].xyz + cb1[0].xyz;
    r8.xyz = max(cb1[2].xyz, r8.xyz);
    r8.xyz = min(cb1[3].xyz, r8.xyz);
    r9.xyzw = t4.Sample(s1_s, r8.xyz).xyzw;
    r10.xyzw = t5.Sample(s0_s, r8.xyz).xyzw;
    r8.xyzw = t6.Sample(s0_s, r8.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.zwy;
    r12.xw = r9.xw;
    r12.y = r10.x;
    r12.z = r8.x;
    r11.x = 0.886227548;
    r12.x = dot(r12.xyzw, r11.xyzw);
    r13.x = r9.y;
    r13.yw = r10.yw;
    r13.z = r8.y;
    r12.y = dot(r13.xyzw, r11.xyzw);
    r8.x = r9.z;
    r8.y = r10.z;
    r12.z = dot(r8.xyzw, r11.xyzw);
    r8.xyz = max(float3(0,0,0), r12.xyz);
    r8.xyz = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
  } else {
    r8.xyz = float3(0,0,0);
  }
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r3.x = 1;
    r9.xyzw = r1.yyyy ? cb1[4].wxyz : r3.xyzw;
    r1.y = 1 + -r9.x;
    r1.y = -r1.y * r1.y + 1;
    r0.xyz = r0.xyz * r0.www + -r9.yzw;
    r0.xyz = r1.yyy * r0.xyz + r9.yzw;
    r2.w = saturate(dot(r9.yzw, r3.yzw));
    r3.x = 1 + -r2.w;
    r9.y = r1.y * r3.x + r2.w;
  } else {
    r0.xyz = r3.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t3[0].val[0/4];
  r10.y = t3[0].val[0/4+1];
  r10.z = t3[0].val[0/4+2];
  r10.w = t3[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t3[1].val[0/4];
  r11.y = t3[1].val[0/4+1];
  r11.z = t3[1].val[0/4+2];
  r11.w = t3[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t3[2].val[0/4];
  r11.y = t3[2].val[0/4+1];
  r11.z = t3[2].val[0/4+2];
  r11.w = t3[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t3[3].val[0/4];
  r12.y = t3[3].val[0/4+1];
  r12.z = t3[3].val[0/4+2];
  r12.w = t3[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t3[4].val[0/4];
  r13.y = t3[4].val[0/4+1];
  r13.z = t3[4].val[0/4+2];
  r13.w = t3[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t3[5].val[0/4];
  r13.y = t3[5].val[0/4+1];
  r13.z = t3[5].val[0/4+2];
  r13.w = t3[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r10.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.yzw = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r1.y = cmp(0 < cb0[140].x);
  if (r1.y != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r2.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r1.y = (int)r7.y | (int)r7.x;
    r1.y = (int)r7.z | (int)r1.y;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.yyy ? r2.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.yzw + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.y = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r3.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r6.x;
  o2.x = r1.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}