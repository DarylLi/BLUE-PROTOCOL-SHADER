// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s8_s : register(s8);

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
  float4 cb4[31];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.yw = float2(1,0);
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r4.xyz = mad((int3)v3.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t2[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r2.w = v5.x ? 1 : -1;
  r0.w = r2.w * r0.w;
  r4.xw = r3.xy / cb4[16].zz;
  r2.w = t6.SampleBias(s2_s, r4.xw, cb0[143].y).x;
  r3.w = cb4[16].w + -cb4[2].x;
  r2.w = saturate(r2.w * r3.w + cb4[2].x);
  r2.w = cb4[17].x + r2.w;
  r2.w = r2.w * -cb4[17].y + cb4[17].y;
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = sqrt(r3.w);
  r4.x = cb4[17].w * r3.w;
  r2.w = r2.w * r4.x + cb0[143].y;
  r4.xw = t7.SampleBias(s3_s, v2.xy, r2.w).xy;
  r5.xy = r4.xw * float2(2,2) + float2(-1,-1);
  r4.x = dot(r5.xy, r5.xy);
  r4.x = 1 + -r4.x;
  r4.x = max(0, r4.x);
  r5.z = sqrt(r4.x);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[18].xxx * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = rsqrt(r4.x);
  r5.xyz = r5.xyz * r4.xxx;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r4.x = dot(r0.xyz, r0.xyz);
  r4.x = rsqrt(r4.x);
  r0.xyz = r4.xxx * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb4[18].yyy * cb4[3].xyz;
  r6.xyzw = t8.SampleBias(s4_s, v2.xy, r2.w).xyzw;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r6.xyz = cb4[19].xxx * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[18].w, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = cb4[5].xyz * r6.xyz;
  r0.w = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r0.w;
  r2.w = r2.w + r2.w;
  r8.xyz = -r2.www * cb4[8].xyz + float3(1,1,1);
  r2.w = r0.w + r0.w;
  r9.xyz = cb4[7].xyz * r2.www;
  r0.w = cmp(r0.w >= 0.5);
  r8.xyz = r0.www ? r8.xyz : r9.xyz;
  r9.xyz = cb4[7].xyz + -r8.xyz;
  r8.xyz = cb4[19].yyy * r9.xyz + r8.xyz;
  r0.w = r3.w / cb4[19].z;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[19].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r6.xyz = -r6.xyz * cb4[5].xyz + r8.xyz;
  r6.xyz = r6.xyz * r0.www;
  r6.xyz = cb4[20].xxx * r6.xyz + r7.xyz;
  r4.xw = r3.xy / cb4[21].xx;
  r4.xw = float2(-0.5,-0.5) + r4.xw;
  r7.x = dot(r4.xw, cb4[11].xy);
  r7.y = dot(r4.xw, cb4[12].xy);
  r4.xw = cb0[142].zz * cb4[20].zw + r7.xy;
  r4.xw = float2(0.5,0.5) + r4.xw;
  r0.w = t9.SampleBias(s5_s, r4.xw, cb0[143].y).x;
  r0.w = cb4[22].z * r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[22].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r7.x = cb4[23].w * cb0[142].z;
  r7.y = cb4[24].x * cb0[142].z;
  r4.xw = r3.xy / cb4[24].yy;
  r4.xw = r7.xy + r4.xw;
  r2.w = t10.SampleBias(s6_s, r4.xw, cb0[143].y).x;
  r2.w = cb4[24].z * r2.w;
  r4.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[24].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r2.w = saturate(cb4[25].x + r2.w);
  r2.w = 1 + -r2.w;
  r2.w = cb4[25].y * r2.w;
  r4.x = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb4[25].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.x ? 0 : r2.w;
  r3.w = r3.w / cb4[25].w;
  r4.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[26].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.x ? -0 : -r3.w;
  r2.w = r3.w + r2.w;
  r2.w = 1 + r2.w;
  r2.w = min(1, r2.w);
  r3.w = cb4[26].y + -cb4[26].z;
  r2.w = r2.w * r3.w + cb4[26].z;
  r2.w = 1 + -r2.w;
  r0.w = r2.w * r0.w;
  r7.xyz = cb4[14].xyz * r0.www;
  r8.x = t2[r4.y].val[0/4];
  r8.y = t2[r4.y].val[0/4+1];
  r8.z = t2[r4.y].val[0/4+2];
  r0.w = r8.x + r8.y;
  r0.w = r0.w + r8.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r1.z = 0.100000001 * r0.w;
  r1.zw = v2.xy + r1.zw;
  r8.xyz = t11.SampleBias(s7_s, r1.zw, cb0[143].y).xyz;
  r6.xyz = r8.xyz * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb4[26].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb4[27].x * r0.w;
  r1.z = saturate(cb4[27].z + v1.z);
  r0.w = r1.z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb4[27].w * r0.w);
  r1.z = cb4[28].x * cb3[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r3.w = r1.x * cb0[65].z + -cb0[65].w;
  r3.w = 1 / r3.w;
  r2.w = r3.w + r2.w;
  r1.w = r1.w ? r1.y : r2.w;
  r2.w = cb4[28].y + r1.w;
  r4.xw = float2(0.649999976,0.487499982) * cb3[1].ww;
  r3.w = cb3[1].w * 0.617499948 + -r1.w;
  r3.w = saturate(r3.w / r4.w);
  r4.w = -cb3[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r4.x;
  r2.w = r2.w / r3.w;
  r1.w = r1.w / cb4[28].y;
  r3.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.z = r1.z ? r2.w : r1.w;
  r1.z = r3.w ? r1.z : r1.w;
  r1.w = cmp(9.99999975e-006 < abs(cb4[28].x));
  r2.w = 1 + cb4[28].x;
  r1.w = r1.w ? r2.w : 1.39999998;
  r7.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r7.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.w = -r2.w + r1.w;
  r4.xw = cb0[152].xx + r7.yz;
  r4.xw = (uint2)r4.xw;
  r2.w = (uint)r4.w << 1;
  r2.w = (int)r2.w + (int)r4.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r4.xw = float2(0.015625,0.015625) * r7.yz;
  r3.w = t12.SampleBias(s8_s, r4.xw, cb0[143].y).x;
  r2.w = r3.w + r2.w;
  r2.w = 0.166666672 * r2.w;
  r1.z = r1.z * r1.w + r2.w;
  r1.z = saturate(-0.5 + r1.z);
  r1.w = cb4[30].x * r2.w;
  r2.w = cmp(0 >= v2.y);
  r3.w = log2(v2.y);
  r3.w = cb4[30].y * r3.w;
  r3.w = exp2(r3.w);
  r2.w = r2.w ? 0 : r3.w;
  r1.w = r1.w * r2.w + r1.y;
  r1.w = r1.x / r1.w;
  r1.w = min(v4.z, r1.w);
  r1.x = -r1.w * r1.y + r1.x;
  r1.x = r1.x / r1.w;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r1.x = r6.w * r1.z + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r6.xyz);
  r2.w = saturate(cb4[26].y);
  o2.z = r2.w * cb0[139].y + cb0[139].x;
  r2.w = cmp(0 < cb0[215].x);
  r3.x = t2[r4.z].val[4/4];
  r3.y = t2[r4.z].val[4/4+1];
  r3.y = cmp(0 < r3.y);
  if (r3.y != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r6.xyz = (int3)r3.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r4.x = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r6.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r6.xyz * r4.xxx + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r3.y = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r3.z = t2[r4.y].val[12/4];
    r3.z = cmp(0 < r3.z);
    r3.z = r2.w ? r3.z : 0;
    r3.y = r3.z ? cb1[5].x : 1;
  }
  r3.z = cb0[137].w * r0.w;
  r4.xyz = r1.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r3.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r3.z = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r3.zzz ? r7.xyz : r4.xyz;
  r6.xyz = r3.zzz ? float3(0,0,0) : r6.xyz;
  r3.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r3.z * 2.04040003 + -0.332399994;
  r3.w = r3.z * -4.79510021 + r3.w;
  r3.z = r3.z * 2.75519991 + r3.w;
  r3.z = 1.33200002 + r3.z;
  r3.z = max(1, r3.z);
  if (r2.w != 0) {
    r7.xyz = r2.xyz * cb1[1].xyz + cb1[0].xyz;
    r7.xyz = max(cb1[2].xyz, r7.xyz);
    r7.xyz = min(cb1[3].xyz, r7.xyz);
    r8.xyzw = t3.Sample(s1_s, r7.xyz).xyzw;
    r9.xyzw = t4.Sample(s0_s, r7.xyz).xyzw;
    r7.xyzw = t5.Sample(s0_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
    r11.xw = r8.xw;
    r11.y = r9.x;
    r11.z = r7.x;
    r10.x = 0.886227548;
    r11.x = dot(r11.xyzw, r10.xyzw);
    r12.x = r8.y;
    r12.yw = r9.yw;
    r12.z = r7.y;
    r11.y = dot(r12.xyzw, r10.xyzw);
    r7.x = r8.z;
    r7.y = r9.z;
    r11.z = dot(r7.xyzw, r10.xyzw);
    r7.xyz = max(float3(0,0,0), r11.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r7.xyz = cb0[157].xyz * r7.xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r4.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r4.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r8.x = t2[r6.y].val[0/4];
    r8.y = t2[r6.y].val[0/4+1];
    r8.z = t2[r6.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r3.www ? r2.xyz : r5.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.xyz + r7.xyz;
  r2.xyz = r2.xyz + r5.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r3.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r3.w = frac(r3.w);
  r3.w = -0.5 + r3.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.w * r3.z;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r1.w;
  return;
}