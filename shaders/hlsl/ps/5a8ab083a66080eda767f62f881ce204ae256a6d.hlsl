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
  float4 cb4[20];
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
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb4[10].xx * v2.xy;
  r0.w = cb4[10].y + cb0[143].y;
  r4.xy = t6.SampleBias(s2_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[10].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = sqrt(r0.y);
  r6.xyz = r6.xyz / r0.yyy;
  r0.y = saturate(dot(-r6.xyz, r5.xyz));
  r2.w = 1 + -cb2[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb2[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb2[0].w;
  r2.x = r2.x * r2.y + cb2[0].w;
  r2.y = cmp(r2.x >= cb2[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r5.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb3[9].xyz * r0.xxx;
  r0.xzw = cb3[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb3[1].xxx + r0.xzw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = r1.x / cb4[10].w;
  r2.x = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[11].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb4[11].y * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.x ? 1 : r1.y;
  r2.xy = r1.zw / cb4[12].xx;
  r2.xy = cb4[12].yz + r2.xy;
  r2.xyz = t7.SampleBias(s3_s, r2.xy, cb0[143].y).xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r5.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb4[11].w, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r2.xyz = r2.xyz * r7.xxx + r5.xyz;
  r2.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb4[2].xyz * r2.xyz;
  r5.xy = cb4[13].xx * v2.xy;
  r2.w = t8.SampleBias(s4_s, r5.xy, cb0[143].y).x;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[13].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = cb4[13].z * r2.w;
  r2.w = r3.w ? 0 : r2.w;
  r2.w = cb0[142].z * cb4[12].w + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * cb4[14].x + cb4[13].w;
  r2.w = max(cb4[14].z, r2.w);
  r2.w = min(cb4[14].y, r2.w);
  r2.w = cb4[14].w * r2.w;
  r2.w = cb3[3].y * r2.w;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r2.xyz * r1.yyy;
  r0.xzw = cb2[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb4[4].xyz * r0.xzw;
  r1.y = t9.SampleBias(s5_s, v2.xy, cb0[143].y).x;
  r1.y = -1 + r1.y;
  r2.w = cb4[15].w + r1.y;
  r2.w = saturate(ceil(r2.w));
  r2.w = 1 + -r2.w;
  r1.y = cb4[16].x + r1.y;
  r1.y = saturate(ceil(r1.y));
  r2.w = r2.w * r1.y;
  r0.xzw = -r0.xzw * cb4[4].xyz + cb4[6].xyz;
  r0.xzw = r2.www * r0.xzw + r2.xyz;
  r2.xyz = cb4[7].xyz + -r0.xzw;
  r0.xzw = cb4[16].yyy * r2.xyz + r0.xzw;
  r5.xyzw = t10.SampleBias(s6_s, r1.zw, cb0[143].y).xyzw;
  r2.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.xyz = r2.xxx + -r5.xyz;
  r2.xyz = cb4[17].xxx * r2.xyz + r5.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r5.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb4[16].w, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r2.xyz = r2.xyz * r7.xxx + r5.xyz;
  r2.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb4[9].xyz * r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r5.xyz = cb4[6].xyz + -r2.xyz;
  r2.xyz = saturate(r2.www * r5.xyz + r2.xyz);
  r1.zw = t11.SampleBias(s7_s, r1.zw, cb0[143].y).xy;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[17].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.z = saturate(cb4[17].z + r1.z);
  r5.x = saturate(cb4[17].w + r1.w);
  r0.y = cb4[18].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[18].y * r0.y;
  r1.w = saturate(cb4[18].w + v1.z);
  r0.y = r1.w * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r5.y = saturate(cb4[19].x * r0.y);
  r0.y = 1 + -r1.y;
  r0.y = cb4[19].y * r0.y + r1.y;
  r1.y = cb4[19].z * cb2[1].w;
  r1.w = cb4[19].w + r1.x;
  r6.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r2.w / r6.y);
  r3.w = -cb2[1].w * 0.649999976 + 8000;
  r2.w = r2.w * r3.w + r6.x;
  r1.w = r1.w / r2.w;
  r1.x = r1.x / cb4[19].w;
  r2.w = cmp(9.99999975e-006 < abs(r1.y));
  r1.y = cmp(r1.y >= 0);
  r1.y = r1.y ? r1.w : r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[19].z));
  r1.w = 1 + cb4[19].z;
  r1.y = r1.y ? r1.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r1.w = r6.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r1.y = r1.y + -r1.w;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r1.w = (uint)r6.w << 1;
  r1.w = (int)r1.w + (int)r6.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r2.w = t12.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r1.w = r2.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r5.w * r1.x;
  r0.y = r0.y * r1.x + -0.333299994;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r0.y = mad((int)v3.x, 36, 20);
  r1.x = cmp(0 < cb0[215].x);
  r1.y = t2[r0.y].val[4/4];
  r1.z = t2[r0.y].val[4/4+1];
  r0.y = cmp(0 < r1.z);
  if (r0.y != 0) {
    r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r0.y = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r0.yyy + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r0.y = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r1.z = mad((int)v3.x, 36, 18);
    r1.z = t2[r1.z].val[12/4];
    r1.z = cmp(0 < r1.z);
    r1.z = r1.x ? r1.z : 0;
    r0.y = r1.z ? cb1[5].x : 1;
  }
  r1.z = 0.0799999982 * r5.y;
  r6.xyz = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r6.xyz = r5.xxx * r6.xyz + r1.zzz;
  r7.xyz = -r2.xyz * r5.xxx + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r1.zzz ? float3(0,0,0) : r6.xyz;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r1.z * 2.04040003 + -0.332399994;
  r1.w = r1.z * -4.79510021 + r1.w;
  r1.z = r1.z * 2.75519991 + r1.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  if (r1.x != 0) {
    r8.xyz = r3.xyz * cb1[1].xyz + cb1[0].xyz;
    r8.xyz = max(cb1[2].xyz, r8.xyz);
    r8.xyz = min(cb1[3].xyz, r8.xyz);
    r9.xyzw = t3.Sample(s1_s, r8.xyz).xyzw;
    r10.xyzw = t4.Sample(s0_s, r8.xyz).xyzw;
    r8.xyzw = t5.Sample(s0_s, r8.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
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
  r8.xyz = cb0[157].xyz * r8.xyz;
  r1.x = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r8.xyz * r7.xyz;
  r9.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r8.xyz = r9.xyz * r8.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r5.z].val[0/4];
    r7.y = t2[r5.z].val[0/4+1];
    r7.z = t2[r5.z].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r9.x = t2[r5.w].val[0/4];
    r9.y = t2[r5.w].val[0/4+1];
    r9.z = t2[r5.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r7.xyz = cmp(r9.xyz < abs(r7.xyz));
    r1.w = (int)r7.y | (int)r7.x;
    r1.w = (int)r7.z | (int)r1.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r1.www ? r3.xyz : r0.xzw;
  }
  r3.xyz = cb0[145].yyy * r6.xyz + r8.xyz;
  r0.xzw = r3.xyz + r0.xzw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = r1.x * r1.z;
  r1.x = r1.x * cb0[135].y + 0.00390625;
  r1.x = log2(r1.x);
  r1.x = r1.x * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r1.x;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = r1.y;
  o2.w = 0.505882382;
  o2.xy = r5.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}