// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t13 : register(t13);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
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
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = t6.SampleBias(s3_s, v2.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[14].xxx * r5.xyz + r4.xyz;
  r0.w = 1 + r4.z;
  r1.zw = cb3[14].yy * v2.xy;
  r1.zw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r5.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[14].zzz * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r1.z = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r0.www;
  r4.xyz = r4.xyw * r1.zzz + -r5.xyz;
  r5.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r6.xyz = r5.yyy * r0.xyz;
  r5.xyw = r5.xxx * v0.xyz + r6.xyz;
  r5.xyz = r5.zzz * v1.xyz + r5.xyw;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = dot(r5.xyz, r2.xyz);
  r6.xyz = r5.xyz * r0.www;
  r6.xyz = r6.xyz * float3(2,2,2) + -r2.xyz;
  r0.w = 1 + -abs(r0.w);
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[14].w * r0.w;
  r0.w = exp2(r0.w);
  r7.xyz = cb3[2].xyz * r0.www;
  r7.xyz = cb3[15].xxx * r7.xyz;
  r7.xyz = r1.zzz ? float3(0,0,0) : r7.xyz;
  r8.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r8.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(-r2.xyz, r4.xyz);
  r1.z = cb3[15].w * cb3[15].w;
  r1.w = -r0.w * r0.w + 1;
  r1.z = -r1.z * r1.w + 1;
  r2.w = sqrt(r1.z);
  r2.w = cb3[15].w * r0.w + r2.w;
  r1.z = cmp(r1.z >= 0);
  r8.xyz = r2.www * r4.xyz;
  r8.xyz = cb3[15].www * -r2.xyz + -r8.xyz;
  r8.xyz = r1.zzz ? r8.xyz : 0;
  r8.x = t13.Sample(s8_s, r8.xyz).x;
  r9.xy = cb3[16].zw * cb3[16].zw;
  r1.zw = -r9.xy * r1.ww + float2(1,1);
  r9.xy = sqrt(r1.zw);
  r9.xy = cb3[16].zw * r0.ww + r9.xy;
  r1.zw = cmp(r1.zw >= float2(0,0));
  r9.xzw = r9.xxx * r4.xyz;
  r9.xzw = cb3[16].zzz * -r2.xyz + -r9.xzw;
  r9.xzw = r1.zzz ? r9.xzw : 0;
  r8.y = t13.Sample(s8_s, r9.xzw).y;
  r4.xyz = r9.yyy * r4.xyz;
  r4.xyz = cb3[16].www * -r2.xyz + -r4.xyz;
  r4.xyz = r1.www ? r4.xyz : 0;
  r8.z = t13.Sample(s8_s, r4.xyz).z;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r0.www + -r8.xyz;
  r4.xyz = cb3[17].xxx * r4.xyz + r8.xyz;
  r6.xyz = t13.Sample(s8_s, r6.xyz).xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r0.www + -r6.xyz;
  r6.xyz = cb3[17].xxx * r8.xyz + r6.xyz;
  r6.xyz = cb3[6].xyz * r6.xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[17].zzz * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = cb3[17].yyy * r6.xyz;
  r4.xyz = r4.xyz * cb3[17].yyy + r6.xyz;
  r1.zw = float2(0.100000001,0.100000001) * r5.xy;
  r6.xy = cmp(float2(0,0) >= r5.xy);
  r1.zw = log2(r1.zw);
  r1.zw = float2(1.5,1.5) * r1.zw;
  r1.zw = exp2(r1.zw);
  r1.zw = r6.xy ? float2(0,0) : r1.zw;
  r6.xy = cb3[18].xx * r1.zw;
  r6.xy = v2.xy * cb3[17].ww + r6.xy;
  r0.w = -0.5 * cb3[18].y;
  r8.x = dot(v0.xyz, r2.xyz);
  r8.y = dot(r0.xyz, r2.xyz);
  r0.xy = r8.xy * r0.ww + r6.xy;
  r0.xyz = t8.Sample(s0_s, r0.xy).xyz;
  r2.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb3[18].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r2.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb3[18].www * r0.xyz;
  r1.zw = cb3[19].yy * r1.zw;
  r1.zw = v2.xy * cb3[19].xx + r1.zw;
  r0.w = -0.5 * cb3[19].z;
  r1.zw = r8.xy * r0.ww + r1.zw;
  r2.xyz = t9.Sample(s0_s, r1.zw).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[19].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r6.xyz ? float3(0,0,0) : r2.xyz;
  r2.xyz = cb3[20].xxx * r2.xyz;
  r2.xyz = cb3[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * cb3[8].xyz + r2.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r2.xyz = t10.SampleBias(s5_s, v2.xy, cb0[143].y).xyz;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r0.www + -r2.xyz;
  r2.xyz = cb3[20].www * r4.xyz + r2.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb3[20].z, r6.x, r8.x);
  r4.xyz = r6.xxx * r4.xyz;
  r2.xyz = r2.xyz * r8.xxx + r4.xyz;
  r2.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[12].xyz * r2.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[21].xxx * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r4.xyz ? float3(0,0,0) : r2.xyz;
  r4.xyz = r2.xyz + r0.xyz;
  r1.zw = t11.SampleBias(s6_s, v2.xy, cb0[143].y).xy;
  r0.w = cb3[21].y + r1.z;
  r1.z = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r1.zzz + r2.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r0.xyz = cb3[21].zzz * r0.xyz + r4.xyz;
  r0.xyz = r7.xyz + r0.xyz;
  r2.xyz = cb3[21].www * r0.xyz;
  r4.xyz = -cb3[21].www * r0.xyz + cb3[13].xyz;
  r2.xyz = cb3[22].xxx * r4.xyz + r2.xyz;
  r0.xyz = cb3[21].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r4.x = saturate(cb3[22].y + r1.w);
  r1.z = cb3[23].x * cb2[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb3[23].y + r1.x;
  r4.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r1.w = cb2[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r4.w);
  r2.w = -cb2[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.w + r4.z;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb3[23].y;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[23].x));
  r1.z = 1 + cb3[23].x;
  r1.y = r1.y ? r1.z : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r1.z = r6.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r6.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r4.zw = float2(0.015625,0.015625) * r6.yz;
  r1.w = t12.SampleBias(s7_s, r4.zw, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r6.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb3[24].x;
  r1.y = saturate(r1.y * cb3[24].w + -cb3[24].z);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * cb3[25].x + r1.z;
  r1.y = -0.5 + r1.y;
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r4.y = saturate(cb3[22].w);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v3.x, 36, 20);
  r1.x = cmp(0 < cb0[215].x);
  r1.y = t2[r0.w].val[4/4];
  r1.z = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r1.z);
  if (r0.w != 0) {
    r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r0.w = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r0.www + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r0.w = t1.SampleLevel(s1_s, r6.xyz, 0).x;
  } else {
    r1.z = mad((int)v3.x, 36, 18);
    r1.z = t2[r1.z].val[12/4];
    r1.z = cmp(0 < r1.z);
    r1.z = r1.x ? r1.z : 0;
    r0.w = r1.z ? cb1[5].x : 1;
  }
  r1.z = 0.0799999982 * r4.y;
  r6.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r6.xyz = r4.xxx * r6.xyz + r1.zzz;
  r7.xyz = -r0.xyz * r4.xxx + r0.xyz;
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
    r9.xyzw = t3.Sample(s2_s, r8.xyz).xyzw;
    r10.xyzw = t4.Sample(s1_s, r8.xyz).xyzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
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
  r9.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r8.xyz = r9.xyz * r8.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r4.z].val[0/4];
    r7.y = t2[r4.z].val[0/4+1];
    r7.z = t2[r4.z].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r9.x = t2[r4.w].val[0/4];
    r9.y = t2[r4.w].val[0/4+1];
    r9.z = t2[r4.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r7.xyz = cmp(r9.xyz < abs(r7.xyz));
    r1.w = (int)r7.y | (int)r7.x;
    r1.w = (int)r7.z | (int)r1.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r3.xyz : r2.xyz;
  }
  r3.xyz = cb0[145].yyy * r6.xyz + r8.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = r1.x * r1.z;
  r1.x = r1.x * cb0[135].y + 0.00390625;
  r1.x = log2(r1.x);
  r1.x = r1.x * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r1.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r1.y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}