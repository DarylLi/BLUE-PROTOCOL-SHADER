// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[13];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r0.w = cb0[142].z * cb4[8].x + v2.w;
  r1.z = (int)v4.x * 36;
  r4.xy = mad((int2)v4.xx, int2(36,36), int2(5,20));
  r4.x = t2[r4.x].val[0/4];
  r4.z = t2[r4.x].val[0/4+1];
  r4.w = t2[r4.x].val[0/4+2];
  r1.w = abs(r4.x) + abs(r4.z);
  r1.w = r1.w + abs(r4.w);
  r1.w = frac(r1.w);
  r0.w = r1.w * 0.5 + r0.w;
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r1.w = cb4[8].z * v2.x;
  r0.w = r1.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  r5.x = t2[r1.z].val[0/4];
  r5.y = t2[r1.z].val[0/4+1];
  r5.z = t2[r1.z].val[0/4+2];
  r1.z = mad((int)v4.x, 36, 1);
  r6.x = t2[r1.z].val[0/4];
  r6.y = t2[r1.z].val[0/4+1];
  r6.z = t2[r1.z].val[0/4+2];
  r1.z = mad((int)v4.x, 36, 2);
  r7.x = t2[r1.z].val[0/4];
  r7.y = t2[r1.z].val[0/4+1];
  r7.z = t2[r1.z].val[0/4+2];
  r8.x = r5.x;
  r8.y = r6.x;
  r8.z = r7.x;
  r8.y = dot(cb4[2].xyz, r8.xyz);
  r9.x = r5.y;
  r9.y = r6.y;
  r9.z = r7.y;
  r8.z = dot(cb4[2].xyz, r9.xyz);
  r7.x = r5.z;
  r7.y = r6.z;
  r8.x = dot(cb4[2].xyz, r7.xyz);
  r1.z = dot(r8.xyz, r8.xyz);
  r1.z = sqrt(r1.z);
  r5.xyz = r8.xyz / r1.zzz;
  r1.zw = cb4[8].ww * v3.xy;
  r2.w = cb4[9].x + cb0[143].y;
  r6.xy = t7.SampleBias(s2_s, r1.zw, r2.w).xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb4[9].yyy * r7.xyz + r6.xyz;
  r7.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r7.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r2.w = dot(r5.yzx, r6.xyz);
  r7.xyz = -r5.yzx * r2.www + r6.xyz;
  r8.xyz = r7.yzx * r5.xyz;
  r8.xyz = r5.zxy * r7.zxy + -r8.xyz;
  sincos(r0.w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r5.xyz = r5.yzx * r2.www + r7.xyz;
  r5.xyz = r5.xyz + -r6.xyz;
  r5.xyz = float3(1,1,1) + r5.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r5.xyz = r5.xyz / r0.www;
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.xyz, r5.xyz);
  r6.z = dot(v1.xyz, r5.xyz);
  r5.xyz = r6.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = r0.xyz * r0.www;
  r2.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r2.w = sqrt(r2.w);
  r6.xyz = -cb3[5].xyz / r2.www;
  r2.w = dot(r6.xyz, r5.yzw);
  r2.w = 1 + r2.w;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = sqrt(r3.w);
  r7.xyz = r7.xyz / r3.www;
  r3.w = saturate(dot(-r7.xyz, r6.xyz));
  r6.x = 1 + -cb2[1].x;
  r3.w = saturate(r6.x + r3.w);
  r2.w = r3.w * r2.w;
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
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb2[0].z * r2.y;
  r2.z = r2.w * r2.y;
  r6.yzw = cb3[4].xyz * r2.zzz;
  r2.z = dot(-cb3[8].xyz, -cb3[8].xyz);
  r2.z = sqrt(r2.z);
  r8.xyz = -cb3[8].xyz / r2.zzz;
  r2.z = dot(r8.xyz, r5.yzw);
  r2.z = 1 + r2.z;
  r2.w = saturate(dot(-r7.xyz, r8.xyz));
  r2.w = saturate(r2.w + r6.x);
  r2.z = r2.z * r2.w;
  r2.y = r2.z * r2.y;
  r2.yzw = cb3[9].xyz * r2.yyy;
  r2.yzw = cb3[1].yyy * r2.yzw;
  r2.yzw = r6.yzw * cb3[1].xxx + r2.yzw;
  r2.yzw = cb2[2].xyz * r2.yzw;
  r6.xyz = cb4[4].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb4[4].xyz + cb4[5].xyz;
  r2.yzw = cb4[9].zzz * r2.yzw + r6.xyz;
  r6.xyzw = t8.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r3.www + -r6.xyz;
  r6.xyz = cb4[10].yyy * r7.xyz + r6.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[10].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[7].xyz * r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t9.SampleBias(s4_s, r1.zw, cb0[143].y).yx;
  r3.w = saturate(cb4[10].z + r1.w);
  r2.x = cb4[10].w * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb4[11].x * r2.x;
  r7.x = saturate(cb4[11].z + v1.z);
  r2.x = r7.x * r2.x;
  r2.xyzw = max(float4(0,0,0,0), r2.xyzw);
  r2.x = min(0.5, r2.x);
  r1.w = saturate(cb4[11].w * r2.x);
  r2.x = cb4[12].x * cb2[1].w;
  r7.x = cmp(cb0[31].w < 1);
  r7.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r7.y + r1.x;
  r1.x = r7.x ? r1.y : r1.x;
  r1.y = cb4[12].y + r1.x;
  r7.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r7.z = cb2[1].w * 0.617499948 + -r1.x;
  r7.y = saturate(r7.z / r7.y);
  r7.z = -cb2[1].w * 0.649999976 + 8000;
  r7.x = r7.y * r7.z + r7.x;
  r1.y = r1.y / r7.x;
  r1.x = r1.x / cb4[12].y;
  r7.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = cmp(r2.x >= 0);
  r1.y = r2.x ? r1.y : r1.x;
  r1.x = r7.x ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[12].x));
  r2.x = 1 + cb4[12].x;
  r1.y = r1.y ? r2.x : 1.39999998;
  r7.xyz = -cb0[129].xxy + v5.xxy;
  r2.x = r7.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r1.y = -r2.x + r1.y;
  r7.xw = cb0[152].xx + r7.yz;
  r7.xw = (uint2)r7.xw;
  r2.x = (uint)r7.w << 1;
  r2.x = (int)r2.x + (int)r7.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r7.xy = float2(0.015625,0.015625) * r7.yz;
  r7.x = t10.SampleBias(s5_s, r7.xy, cb0[143].y).x;
  r2.x = r7.x + r2.x;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r6.xyz = min(float3(1,1,1), r6.xyz);
  r1.z = saturate(r1.z);
  o2.z = r3.w * cb0[139].y + cb0[139].x;
  r1.x = cmp(0 < cb0[215].x);
  r7.x = t2[r4.y].val[4/4];
  r7.y = t2[r4.y].val[4/4+1];
  r1.y = cmp(0 < r7.y);
  if (r1.y != 0) {
    r7.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.yzw = max(float3(0,0,0), r7.yzw);
    r7.yzw = min(float3(0.99000001,0.99000001,0.99000001), r7.yzw);
    r7.yzw = cb0[213].xyz * r7.yzw;
    r8.xyz = (int3)r7.yzw;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r1.y = 1 + cb0[213].w;
    r7.yzw = r7.yzw / r8.www;
    r7.yzw = frac(r7.yzw);
    r7.yzw = cb0[213].www * r7.yzw;
    r7.yzw = r8.xyz * r1.yyy + r7.yzw;
    r7.yzw = float3(0.5,0.5,0.5) + r7.yzw;
    r7.yzw = cb0[214].xyz * r7.yzw;
    r1.y = t1.SampleLevel(s0_s, r7.yzw, 0).x;
  } else {
    r2.x = mad((int)v4.x, 36, 18);
    r2.x = t2[r2.x].val[12/4];
    r2.x = cmp(0 < r2.x);
    r2.x = r1.x ? r2.x : 0;
    r1.y = r2.x ? cb1[5].x : 1;
  }
  r2.x = 0.0799999982 * r1.w;
  r7.yzw = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r7.yzw = r1.zzz * r7.yzw + r2.xxx;
  r8.xyz = -r6.xyz * r1.zzz + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.yzw = r7.yzw * cb0[137].www + cb0[137].xyz;
  r2.x = cmp(0 != cb0[183].w);
  r9.xyz = r7.yzw * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.xxx ? r9.xyz : r8.xyz;
  r7.yzw = r2.xxx ? float3(0,0,0) : r7.yzw;
  r2.x = dot(r7.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.x * 2.04040003 + -0.332399994;
  r3.w = r2.x * -4.79510021 + r3.w;
  r2.x = r2.x * 2.75519991 + r3.w;
  r2.x = 1.33200002 + r2.x;
  r2.x = max(1, r2.x);
  if (r1.x != 0) {
    r9.xyz = r3.xyz * cb1[1].xyz + cb1[0].xyz;
    r9.xyz = max(cb1[2].xyz, r9.xyz);
    r9.xyz = min(cb1[3].xyz, r9.xyz);
    r10.xyzw = t4.Sample(s1_s, r9.xyz).xyzw;
    r11.xyzw = t5.Sample(s0_s, r9.xyz).xyzw;
    r9.xyzw = t6.Sample(s0_s, r9.xyz).xyzw;
    r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
    r13.xw = r10.xw;
    r13.y = r11.x;
    r13.z = r9.x;
    r12.x = 0.886227548;
    r13.x = dot(r13.xyzw, r12.xyzw);
    r14.x = r10.y;
    r14.yw = r11.yw;
    r14.z = r9.y;
    r13.y = dot(r14.xyzw, r12.xyzw);
    r9.x = r10.z;
    r9.y = r11.z;
    r13.z = dot(r9.xyzw, r12.xyzw);
    r9.xyz = max(float3(0,0,0), r13.xyz);
    r9.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  } else {
    r9.xyz = float3(0,0,0);
  }
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r5.x = 1;
    r10.xyzw = r1.xxxx ? cb1[4].wxyz : r5.xyzw;
    r1.x = 1 + -r10.x;
    r1.x = -r1.x * r1.x + 1;
    r0.xyz = r0.xyz * r0.www + -r10.yzw;
    r0.xyz = r1.xxx * r0.xyz + r10.yzw;
    r3.w = saturate(dot(r10.yzw, r5.yzw));
    r4.y = 1 + -r3.w;
    r10.y = r1.x * r4.y + r3.w;
  } else {
    r0.xyz = r5.yzw;
    r10.xy = float2(1,1);
  }
  r11.x = t3[0].val[0/4];
  r11.y = t3[0].val[0/4+1];
  r11.z = t3[0].val[0/4+2];
  r11.w = t3[0].val[0/4+3];
  r0.w = 1;
  r11.x = dot(r11.xyzw, r0.xyzw);
  r12.x = t3[1].val[0/4];
  r12.y = t3[1].val[0/4+1];
  r12.z = t3[1].val[0/4+2];
  r12.w = t3[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t3[2].val[0/4];
  r12.y = t3[2].val[0/4+1];
  r12.z = t3[2].val[0/4+2];
  r12.w = t3[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t3[3].val[0/4];
  r13.y = t3[3].val[0/4+1];
  r13.z = t3[3].val[0/4+2];
  r13.w = t3[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t3[4].val[0/4];
  r14.y = t3[4].val[0/4+1];
  r14.z = t3[4].val[0/4+2];
  r14.w = t3[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t3[5].val[0/4];
  r14.y = t3[5].val[0/4+1];
  r14.z = t3[5].val[0/4+2];
  r14.w = t3[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r0.xyz = r0.yzw * r0.xxx + r11.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r9.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r0.xyz = r9.xyz * r0.xyz;
  r7.yzw = r7.yzw * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r4.xyz = -r4.xzw + r3.xyz;
    r1.x = mad((int)v4.x, 36, 19);
    r8.x = t2[r1.x].val[0/4];
    r8.y = t2[r1.x].val[0/4+1];
    r8.z = t2[r1.x].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r4.xyz = cmp(r8.xyz < abs(r4.xyz));
    r1.x = (int)r4.y | (int)r4.x;
    r1.x = (int)r4.z | (int)r1.x;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r1.xxx ? r3.xyz : r2.yzw;
  }
  r0.xyz = cb0[145].yyy * r7.yzw + r0.xyz;
  r0.xyz = r0.xyz + r2.yzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r1.x = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r7.x;
  o2.w = 0.505882382;
  o2.xy = r1.zw;
  o3.xyz = r6.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}