// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[11];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb4[6].xx * v3.xy;
  r2.w = cb4[6].y + cb0[143].y;
  r4.xy = t6.SampleBias(s2_s, r1.zw, r2.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[6].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r4.yzw = r0.xyz * r0.www;
  r5.xyz = cb4[6].www * cb4[1].xyz;
  r6.xyzw = t7.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.zzz + -r6.xyz;
  r6.xyz = cb4[7].zzz * r7.xyz + r6.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[7].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[3].xyz * r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.z = dot(r4.yzw, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb4[9].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb4[9].y * r1.z;
  r1.w = saturate(cb4[9].w + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r2.y = saturate(cb4[10].x * r1.z);
  r1.z = cb4[10].z * cb3[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb4[10].w + r1.x;
  r2.zw = float2(0.649999976,0.487499982) * cb3[1].ww;
  r1.w = cb3[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r2.w);
  r2.w = -cb3[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.w + r2.z;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb4[10].w;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[10].z));
  r1.z = 1 + cb4[10].z;
  r1.y = r1.y ? r1.z : 1.39999998;
  r7.xyz = -cb0[129].xxy + v4.xxy;
  r1.z = r7.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r7.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r2.zw = float2(0.015625,0.015625) * r7.yz;
  r1.w = t8.SampleBias(s4_s, r2.zw, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x;
  r1.y = cmp(0.00100000005 < abs(v2.w));
  r1.zw = floor(v4.xy);
  r1.z = dot(r1.zw, float2(347.834503,3343.28369));
  r1.z = cos(r1.z);
  r1.z = 1000 * r1.z;
  r1.z = frac(r1.z);
  r1.w = cmp(v2.w < 0);
  r2.z = 1 + v2.w;
  r2.z = cmp(r1.z < r2.z);
  r1.z = cmp(v2.w < r1.z);
  r1.z = r1.w ? r2.z : r1.z;
  r1.z = cmp((int)r1.z == 0);
  r1.y = r1.y ? r1.z : 0;
  if (r1.y != 0) discard;
  r1.x = r1.x * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r6.xyz);
  r2.x = saturate(cb4[8].w);
  r1.w = saturate(cb4[10].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(r6.w);
  r1.w = cmp(0 < cb0[215].x);
  r2.z = cmp(0 < cb1[20].z);
  if (r2.z != 0) {
    r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r2.z = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r2.zzz + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r2.z = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r2.w = cmp(0 < cb1[18].w);
    r2.w = r1.w ? r2.w : 0;
    r2.z = r2.w ? cb2[5].x : 1;
  }
  r6.xyz = saturate(cb0[136].xyz);
  o4.xyz = sqrt(r6.xyz);
  r2.w = 0.0799999982 * r2.y;
  r6.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r6.xyz = r2.xxx * r6.xyz + r2.www;
  r7.xyz = -r1.xyz * r2.xxx + r1.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.www ? r8.xyz : r7.xyz;
  r6.xyz = r2.www ? float3(0,0,0) : r6.xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r8.xyz = cb0[136].xyz + r7.xyz;
  if (r1.w != 0) {
    r9.xyz = r3.xyz * cb2[1].xyz + cb2[0].xyz;
    r9.xyz = max(cb2[2].xyz, r9.xyz);
    r9.xyz = min(cb2[3].xyz, r9.xyz);
    r10.xyzw = t3.Sample(s1_s, r9.xyz).xyzw;
    r11.xyzw = t4.Sample(s0_s, r9.xyz).xyzw;
    r9.xyzw = t5.Sample(s0_s, r9.xyz).xyzw;
    r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
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
    r4.x = 1;
    r10.xyzw = r1.wwww ? cb2[4].wxyz : r4.xyzw;
    r1.w = 1 + -r10.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r10.yzw;
    r0.xyz = r1.www * r0.xyz + r10.yzw;
    r3.w = saturate(dot(r10.yzw, r4.yzw));
    r4.x = 1 + -r3.w;
    r10.y = r1.w * r4.x + r3.w;
  } else {
    r0.xyz = r4.yzw;
    r10.xy = float2(1,1);
  }
  r11.x = t2[0].val[0/4];
  r11.y = t2[0].val[0/4+1];
  r11.z = t2[0].val[0/4+2];
  r11.w = t2[0].val[0/4+3];
  r0.w = 1;
  r11.x = dot(r11.xyzw, r0.xyzw);
  r12.x = t2[1].val[0/4];
  r12.y = t2[1].val[0/4+1];
  r12.z = t2[1].val[0/4+2];
  r12.w = t2[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t2[2].val[0/4];
  r12.y = t2[2].val[0/4+1];
  r12.z = t2[2].val[0/4+2];
  r12.w = t2[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t2[3].val[0/4];
  r13.y = t2[3].val[0/4+1];
  r13.z = t2[3].val[0/4+2];
  r13.w = t2[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t2[4].val[0/4];
  r14.y = t2[4].val[0/4+1];
  r14.z = t2[4].val[0/4+2];
  r14.w = t2[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t2[5].val[0/4];
  r14.y = t2[5].val[0/4+1];
  r14.z = t2[5].val[0/4+2];
  r14.w = t2[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r0.xyz = r0.yzw * r0.xxx + r11.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.w = (int)r7.y | (int)r7.x;
    r1.w = (int)r7.z | (int)r1.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r1.www ? r3.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.509803951;
  o2.xy = r2.xy;
  o3.xyz = r1.xyz;
  o5.x = r2.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}