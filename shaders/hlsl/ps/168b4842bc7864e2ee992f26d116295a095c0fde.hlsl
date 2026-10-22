// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[17];
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
  float4 cb1[13];
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
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t2[r1.z].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r4.xy = cb4[8].xx * v2.xy;
  r1.z = cb4[8].y + cb0[143].y;
  r4.zw = t4.SampleBias(s1_s, r4.xy, r1.z).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[8].zzz * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = r5.xyz * r1.zzz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r5.yzw = r0.xyz * r0.www;
  r1.z = dot(-cb3[5].xyz, -cb3[5].xyz);
  r1.z = sqrt(r1.z);
  r6.xyz = -cb3[5].xyz / r1.zzz;
  r1.z = dot(r6.xyz, r5.yzw);
  r1.z = 1 + r1.z;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = r7.xyz / r2.www;
  r2.w = saturate(dot(-r7.xyz, r6.xyz));
  r3.w = 1 + -cb2[1].x;
  r2.w = saturate(r3.w + r2.w);
  r1.z = r2.w * r1.z;
  r2.x = dot(r5.yzw, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb2[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb2[0].w;
  r2.y = r2.y * r2.z + cb2[0].w;
  r2.z = cmp(r2.y >= cb2[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.z * r0.w + 1;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r2.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r0.w + 1;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r2.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb2[0].z * r2.y;
  r1.z = r2.y * r1.z;
  r6.xyz = cb3[4].xyz * r1.zzz;
  r1.z = dot(-cb3[8].xyz, -cb3[8].xyz);
  r1.z = sqrt(r1.z);
  r8.xyz = -cb3[8].xyz / r1.zzz;
  r1.z = dot(r8.xyz, r5.yzw);
  r1.z = 1 + r1.z;
  r2.z = saturate(dot(-r7.xyz, r8.xyz));
  r2.z = saturate(r2.z + r3.w);
  r1.z = r2.z * r1.z;
  r1.z = r1.z * r2.y;
  r2.yzw = cb3[9].xyz * r1.zzz;
  r2.yzw = cb3[1].yyy * r2.yzw;
  r2.yzw = r6.xyz * cb3[1].xxx + r2.yzw;
  r1.z = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = r1.x / cb4[8].w;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[9].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb4[9].y * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.z ? 1 : r1.y;
  r4.zw = r4.xy / cb4[10].xx;
  r4.zw = cb4[10].yz + r4.zw;
  r6.xyz = t5.SampleBias(s2_s, r4.zw, cb0[143].y).xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[9].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[2].xyz * r6.xyz;
  r4.zw = cb4[11].xx * v2.xy;
  r1.z = t6.SampleBias(s3_s, r4.zw, cb0[143].y).x;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[11].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb4[11].z * r1.z;
  r1.z = r3.w ? 0 : r1.z;
  r1.z = cb0[142].z * cb4[10].w + r1.z;
  r1.z = 6.28318548 * r1.z;
  r1.z = sin(r1.z);
  r1.z = r1.z * 0.5 + 0.5;
  r1.z = r1.z * cb4[12].x + cb4[11].w;
  r1.z = max(cb4[12].z, r1.z);
  r1.z = min(cb4[12].y, r1.z);
  r1.z = cb4[12].w * r1.z;
  r1.z = cb3[3].y * r1.z;
  r6.xyz = r6.xyz * r1.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r2.yzw = cb2[2].xyz * r2.yzw + r6.xyz;
  r6.xyz = cb4[4].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb4[4].xyz + cb4[5].xyz;
  r2.yzw = cb4[13].xxx * r2.yzw + r6.xyz;
  r6.xyzw = t7.SampleBias(s4_s, r4.xy, cb0[143].y).xyzw;
  r1.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.yyy + -r6.xyz;
  r6.xyz = cb4[13].www * r7.xyz + r6.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[13].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[7].xyz * r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.yz = t8.SampleBias(s5_s, r4.xy, cb0[143].y).xy;
  r1.yz = saturate(cb4[14].xy + r1.yz);
  r2.x = cb4[14].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb4[14].w * r2.x;
  r3.w = saturate(cb4[15].y + v1.z);
  r2.x = r3.w * r2.x;
  r2.xyzw = max(float4(0,0,0,0), r2.xyzw);
  r2.x = min(0.5, r2.x);
  r2.x = saturate(cb4[15].z * r2.x);
  r3.w = cb4[15].w * cb2[1].w;
  r4.x = cb4[16].x + r1.x;
  r4.yz = float2(0.649999976,0.487499982) * cb2[1].ww;
  r4.w = cb2[1].w * 0.617499948 + -r1.x;
  r4.z = saturate(r4.w / r4.z);
  r4.w = -cb2[1].w * 0.649999976 + 8000;
  r4.y = r4.z * r4.w + r4.y;
  r4.x = r4.x / r4.y;
  r1.x = r1.x / cb4[16].x;
  r4.y = cmp(9.99999975e-006 < abs(r3.w));
  r3.w = cmp(r3.w >= 0);
  r3.w = r3.w ? r4.x : r1.x;
  r1.x = r4.y ? r3.w : r1.x;
  r3.w = cmp(9.99999975e-006 < abs(cb4[15].w));
  r4.x = 1 + cb4[15].w;
  r3.w = r3.w ? r4.x : 1.39999998;
  r4.xyz = -cb0[129].xxy + v4.xxy;
  r4.x = r4.x * cb0[130].z + -0.469999999;
  r4.x = 4.93230057 * r4.x;
  r4.x = cos(r4.x);
  r4.x = 0.899999976 + r4.x;
  r4.x = saturate(0.555555582 * r4.x);
  r3.w = -r4.x + r3.w;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r4.w = (uint)r4.w << 1;
  r4.x = (int)r4.w + (int)r4.x;
  r4.x = (uint)r4.x % 5;
  r4.x = (uint)r4.x;
  r4.yz = float2(0.015625,0.015625) * r4.yz;
  r4.y = t9.SampleBias(s6_s, r4.yz, cb0[143].y).x;
  r4.x = r4.x + r4.y;
  r4.x = 0.166666672 * r4.x;
  r1.x = r1.x * r3.w + r4.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r4.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r1.x = cmp(0 < cb0[215].x);
  r1.y = t2[r1.w].val[4/4];
  r1.w = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r1.w);
  if (r1.w != 0) {
    r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.w = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r1.www + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r1.w = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r3.w = mad((int)v3.x, 36, 18);
    r3.w = t2[r3.w].val[12/4];
    r3.w = cmp(0 < r3.w);
    r3.w = r1.x ? r3.w : 0;
    r1.w = r3.w ? cb1[5].x : 1;
  }
  r3.w = 0.0799999982 * r2.x;
  r6.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r6.xyz = r1.zzz * r6.xyz + r3.www;
  r7.xyz = -r4.xyz * r1.zzz + r4.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.www ? r8.xyz : r7.xyz;
  r6.xyz = r3.www ? float3(0,0,0) : r6.xyz;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r8.xyz = r5.zwz * r5.zwy;
  r9.yw = r5.ww * r5.zy;
  r4.w = r5.y * r5.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r4.w = 0.429042608 * r4.w;
  r10.x = 0.886227548;
  r6.w = dot(cb1[6].xyzw, r10.xyzw);
  r7.w = dot(cb1[9].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.x = cb1[12].x * r4.w + r6.w;
  r6.w = dot(cb1[7].xyzw, r10.xyzw);
  r7.w = dot(cb1[10].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.y = cb1[12].y * r4.w + r6.w;
  r6.w = dot(cb1[8].xyzw, r10.xyzw);
  r7.w = dot(cb1[11].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.z = cb1[12].z * r4.w + r6.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r1.xxx ? r8.xyz : 0;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r5.x = 1;
    r9.xyzw = r1.xxxx ? cb1[4].wxyz : r5.xyzw;
    r1.x = 1 + -r9.x;
    r1.x = -r1.x * r1.x + 1;
    r0.xyz = r0.xyz * r0.www + -r9.yzw;
    r0.xyz = r1.xxx * r0.xyz + r9.yzw;
    r4.w = saturate(dot(r9.yzw, r5.yzw));
    r5.x = 1 + -r4.w;
    r9.y = r1.x * r5.x + r4.w;
  } else {
    r0.xyz = r5.yzw;
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
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r1.x = (int)r7.y | (int)r7.x;
    r1.x = (int)r7.z | (int)r1.x;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r1.xxx ? r3.xyz : r2.yzw;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.yzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r1.x = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r1.y;
  o2.x = r1.z;
  o2.w = 0.505882382;
  o2.y = r2.x;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}