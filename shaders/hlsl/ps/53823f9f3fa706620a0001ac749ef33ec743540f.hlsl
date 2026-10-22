// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s11_s : register(s11);

SamplerState s10_s : register(s10);

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[28];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = t5.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r1.z = sqrt(r0.w);
  r2.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb1[17].xxx * r2.xyz + r1.xyz;
  r0.w = 1 + r1.z;
  r2.xy = v2.zw + -v2.xy;
  r2.zw = cb1[17].zz * r2.xy + v2.xy;
  r2.zw = cb1[1].xy * r2.zw;
  r3.xy = t6.SampleBias(s3_s, r2.zw, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r3.xy, r3.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r3.z = sqrt(r3.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb1[18].yyy * r4.xyz + r3.xyz;
  r4.xy = cb1[18].ww * r2.xy + v2.xy;
  r4.xy = cb1[2].xy * r4.xy;
  r4.zw = t7.SampleBias(s4_s, r4.xy, cb0[143].y).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r3.w = dot(r5.xy, r5.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r5.z = sqrt(r3.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb1[19].zzz * r6.xyz + r5.xyz;
  r6.xyz = t8.SampleBias(s5_s, v2.xy, cb0[143].y).xyz;
  r3.w = saturate(cb1[19].w * r6.x);
  r4.zw = saturate(cb1[20].xy * r6.yz);
  r5.xyz = r5.xyz + -r3.xyz;
  r3.xyz = r3.www * r5.xyz + r3.xyz;
  r5.xy = cb1[20].ww * r2.xy + v2.xy;
  r5.xy = cb1[3].xy * r5.xy;
  r5.zw = t9.SampleBias(s6_s, r5.xy, cb0[143].y).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r5.z = dot(r6.xy, r6.xy);
  r5.z = 1 + -r5.z;
  r5.z = max(0, r5.z);
  r6.z = sqrt(r5.z);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb1[21].zzz * r7.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r3.xyz;
  r3.xyz = r4.zzz * r6.xyz + r3.xyz;
  r2.xy = cb1[22].xx * r2.xy + v2.xy;
  r2.xy = cb1[4].xy * r2.xy;
  r5.zw = t10.SampleBias(s7_s, r2.xy, cb0[143].y).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r5.z = dot(r6.xy, r6.xy);
  r5.z = 1 + -r5.z;
  r5.z = max(0, r5.z);
  r6.z = sqrt(r5.z);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb1[22].www * r7.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r3.xyz;
  r3.xyz = r4.www * r6.xyz + r3.xyz;
  r1.w = 1 + r1.z;
  r3.xyz = float3(-1,-1,1) * r3.xyz;
  r1.z = dot(r1.xyw, r3.xyz);
  r3.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyw * r1.zzz + -r3.xyz;
  r1.xyz = r1.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v0.yzx + r0.xyz;
  r0.xyz = r1.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r0.xyz * r0.www;
  r3.xyz = cb1[8].xyz + -cb1[7].xyz;
  r3.xyz = cb1[23].xxx * r3.xyz + cb1[7].xyz;
  r6.xyz = t11.SampleBias(s8_s, r2.zw, cb0[143].y).xyz;
  r5.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r5.zzz + -r6.xyz;
  r6.xyz = cb1[23].www * r7.xyz + r6.xyz;
  r5.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb1[23].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb1[10].xyz * r6.xyz;
  r7.xyz = t12.SampleBias(s9_s, r4.xy, cb0[143].y).xyz;
  r5.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r5.zzz + -r7.xyz;
  r7.xyz = cb1[24].zzz * r8.xyz + r7.xyz;
  r5.z = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb1[24].y, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb1[12].xyz + -r6.xyz;
  r6.xyz = r3.www * r7.xyz + r6.xyz;
  r7.xyz = t13.SampleBias(s10_s, r5.xy, cb0[143].y).xyz;
  r5.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r5.zzz + -r7.xyz;
  r7.xyz = cb1[25].yyy * r8.xyz + r7.xyz;
  r5.z = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb1[25].x, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb1[14].xyz + -r6.xyz;
  r6.xyz = r4.zzz * r7.xyz + r6.xyz;
  r7.xyz = t14.SampleBias(s11_s, r2.xy, cb0[143].y).xyz;
  r5.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r5.zzz + -r7.xyz;
  r7.xyz = cb1[26].xxx * r8.xyz + r7.xyz;
  r5.z = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb1[25].w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r5.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb1[16].xyz + -r6.xyz;
  r6.xyz = r4.www * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r2.zw = t15.Sample(s0_s, r2.zw).xy;
  r2.z = saturate(cb1[26].y + r2.z);
  r4.xy = t16.Sample(s0_s, r4.xy).xy;
  r4.x = saturate(cb1[26].z + r4.x);
  r4.x = r4.x + -r2.z;
  r2.z = r3.w * r4.x + r2.z;
  r5.xy = t17.Sample(s0_s, r5.xy).xy;
  r4.x = saturate(cb1[26].w + r5.x);
  r4.x = r4.x + -r2.z;
  r2.z = r4.z * r4.x + r2.z;
  r2.xy = t18.Sample(s0_s, r2.xy).xy;
  r2.x = saturate(cb1[27].x + r2.x);
  r2.x = r2.x + -r2.z;
  r2.x = saturate(r4.w * r2.x + r2.z);
  r2.z = r4.y + -r2.w;
  r2.z = r3.w * r2.z + r2.w;
  r2.w = r5.y + -r2.z;
  r2.z = r4.z * r2.w + r2.z;
  r2.y = r2.y + -r2.z;
  r4.x = saturate(r4.w * r2.y + r2.z);
  r2.yzw = min(float3(1,1,1), r6.xyz);
  r4.y = saturate(cb1[27].y);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r5.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r5.x].val[4/4];
  r2.x = 0.0799999982 * r4.y;
  r6.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.yzw;
  r6.xyz = r4.xxx * r6.xyz + r2.xxx;
  r7.xyz = -r2.yzw * r4.xxx + r2.yzw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r2.x = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.xxx ? r8.xyz : r7.xyz;
  r6.xyz = r2.xxx ? float3(0,0,0) : r6.xyz;
  r2.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.x * 2.04040003 + -0.332399994;
  r3.w = r2.x * -4.79510021 + r3.w;
  r2.x = r2.x * 2.75519991 + r3.w;
  r2.x = 1.33200002 + r2.x;
  r2.x = max(1, r2.x);
  r4.zw = float2(1,0.5) * v3.xy;
  r8.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s1_s, r4.zw).xyzw;
  r8.xyzw = t3.Sample(s1_s, r8.xy).xyzw;
  r3.w = r8.w * 0.00392156886 + r9.w;
  r3.w = -0.00196078443 + r3.w;
  r10.x = t1[r5.y].val[0/4];
  r10.y = t1[r5.y].val[0/4+1];
  r10.z = t1[r5.y].val[0/4+2];
  r10.w = t1[r5.y].val[0/4+3];
  r11.x = t1[r5.z].val[0/4];
  r11.y = t1[r5.z].val[0/4+1];
  r11.z = t1[r5.z].val[0/4+2];
  r11.w = t1[r5.z].val[0/4+3];
  r3.w = r3.w * r10.w + r11.w;
  r5.xyz = r9.xyz * r9.xyz;
  r5.xyz = r5.xyz * r10.xyz + r11.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r9.x = t1[r5.w].val[0/4];
  r9.y = t1[r5.w].val[0/4+1];
  r9.z = t1[r5.w].val[0/4+2];
  r9.w = t1[r5.w].val[0/4+3];
  r4.z = mad((int)w4.x, 15, 7);
  r10.x = t1[r4.z].val[0/4];
  r10.y = t1[r4.z].val[0/4+1];
  r10.z = t1[r4.z].val[0/4+2];
  r10.w = t1[r4.z].val[0/4+3];
  r8.xyzw = r8.xyzw * r9.xyzw + r10.xyzw;
  r1.w = 1;
  r1.w = dot(r8.xyzw, r1.xyzw);
  r1.w = max(0, r1.w);
  r1.w = r3.w * r1.w;
  r5.xyz = r1.www * r5.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r8.xyzw = t4.Sample(s1_s, v3.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r1.w = dot(r8.xyz, r8.xyz);
    r1.w = rsqrt(r1.w);
    r8.xyz = r8.xyz * r1.www;
    r1.w = -r8.w * r8.w + 1;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.zxy * r0.www + -r8.xyz;
    r0.xyz = r1.www * r0.xyz + r8.xyz;
    r3.w = saturate(dot(r8.yzx, r1.xyz));
    r4.z = 1 + -r3.w;
    r9.y = r1.w * r4.z + r3.w;
  } else {
    r0.xyz = r1.zxy;
    r9.xy = float2(1,1);
  }
  r8.x = t2[0].val[0/4];
  r8.y = t2[0].val[0/4+1];
  r8.z = t2[0].val[0/4+2];
  r8.w = t2[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r8.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r8.z = dot(r10.xyzw, r0.xyzw);
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
  r8.xyz = r11.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r5.xyz = r2.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r2.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r2.yzw * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r0.xyz = r5.xyz * r0.xyz;
  r5.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyzw = cb0[45].xyzw * v5.yyyy;
    r6.xyzw = v5.xxxx * cb0[44].xyzw + r6.xyzw;
    r6.xyzw = v5.zzzz * cb0[46].xyzw + r6.xyzw;
    r6.xyzw = cb0[47].xyzw + r6.xyzw;
    r6.xyz = r6.xyz / r6.www;
    r6.xyz = -cb0[70].xyz + r6.xyz;
    r4.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t0[r4.z].val[0/4];
    r7.y = t0[r4.z].val[0/4+1];
    r7.z = t0[r4.z].val[0/4+2];
    r7.xyz = -r7.xyz + r6.xyz;
    r8.x = t0[r4.w].val[0/4];
    r8.y = t0[r4.w].val[0/4+1];
    r8.z = t0[r4.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.w = (int)r7.y | (int)r7.x;
    r1.w = (int)r7.z | (int)r1.w;
    r3.w = dot(r6.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r6.xyz = r3.www ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r1.www ? r6.xyz : r3.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r1.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.w = 0.75686276;
  o2.xy = r4.xy;
  o3.xyz = r2.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}