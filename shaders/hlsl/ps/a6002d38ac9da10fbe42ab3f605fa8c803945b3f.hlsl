// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[18];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  r4.xyz = mad((int3)v3.xxx, int3(36,36,36), int3(4,5,20));
  r0.w = t2[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = t4.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r5.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[9].xxx * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * r0.www;
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
  r6.xyz = cb4[9].yyy * cb4[1].xyz;
  r4.x = t2[r4.y].val[0/4];
  r4.y = t2[r4.y].val[0/4+1];
  r4.w = t2[r4.y].val[0/4+2];
  r7.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r4.xyw;
  r7.xyz = frac(r7.xyz);
  r1.z = dot(r7.xy, r7.yz);
  r1.z = -0.5 + r1.z;
  r1.z = dot(r1.zz, cb4[10].xx);
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r7.xyz = r7.xyz / r1.www;
  r8.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb4[10].y;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[10].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r3.w = 1 + cb4[10].w;
  r1.w = r3.w * r1.w;
  r1.w = r2.w ? 0 : r1.w;
  r1.w = cb0[143].y + r1.w;
  r1.w = -1 + r1.w;
  r8.xyzw = t5.SampleBias(s2_s, v2.xy, r1.w).xyzw;
  r7.xyz = r1.zzz * r7.xyz + r8.xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.zzz + -r7.xyz;
  r7.xyz = cb4[11].xxx * r8.xyz + r7.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[9].w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb4[3].xyz * r7.xyz;
  r8.xyz = cb4[11].yyy * r7.xyz;
  r9.xyz = r7.xyz * cb4[11].yyy + cb4[5].xyz;
  r1.z = dot(cb3[8].xyz, cb3[8].xyz);
  r1.z = sqrt(r1.z);
  r10.xyz = cb3[8].xyz / r1.zzz;
  r1.z = dot(r5.yzw, r5.yzw);
  r1.z = sqrt(r1.z);
  r11.xyz = r5.yzw / r1.zzz;
  r1.z = saturate(dot(r10.xyz, r11.xyz));
  r1.w = dot(cb3[5].xyz, cb3[5].xyz);
  r1.w = sqrt(r1.w);
  r10.xyz = cb3[5].xyz / r1.www;
  r1.w = saturate(dot(r10.xyz, r11.xyz));
  r1.w = r1.w + -r1.z;
  r1.z = cb3[0].y * r1.w + r1.z;
  r1.w = cb4[11].z * r1.z;
  r1.w = floor(r1.w);
  r1.w = r1.w / cb4[11].w;
  r1.w = r1.w + -r1.z;
  r1.z = saturate(cb4[12].x * r1.w + r1.z);
  r1.z = -1 + r1.z;
  r1.z = r1.z * cb4[12].y + 1;
  r1.z = saturate(1 + -r1.z);
  r1.w = r1.z + r1.z;
  r1.w = min(1, r1.w);
  r10.xyz = r1.www * cb4[5].xyz + r8.xyz;
  r1.w = dot(r5.yzw, r2.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb4[12].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * cb4[13].x + cb4[12].w;
  r2.xyz = cb4[7].xyz * r1.www;
  r1.w = t5.Sample(s2_s, v2.xy).w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[13].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r2.xyz = r2.xyz * r1.www + r8.xyz;
  r1.w = -0.5 + r1.z;
  r1.w = r1.w + r1.w;
  r1.w = max(0, r1.w);
  r2.xyz = r2.xyz + -r9.xyz;
  r2.xyz = r1.www * r2.xyz + r9.xyz;
  r2.xyz = r2.xyz + -r10.xyz;
  r2.xyz = r1.zzz * r2.xyz + r10.xyz;
  r2.xyz = -r7.xyz * cb4[11].yyy + r2.xyz;
  r2.xyz = cb4[13].zzz * r2.xyz + r8.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.x = r1.x / cb4[14].z;
  r1.yzw = -cb0[129].xxy + v4.xxy;
  r1.y = r1.y * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb4[15].x + -r1.y;
  r8.xy = cb0[152].xx + r1.zw;
  r8.xy = (uint2)r8.xy;
  r2.w = (uint)r8.y << 1;
  r2.w = (int)r2.w + (int)r8.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t6.SampleBias(s3_s, r1.zw, cb0[143].y).x;
  r1.z = r2.w + r1.z;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.yzw = saturate(cb4[17].xxx * r7.xyz);
  r2.w = cmp(cb1[0].x != 0.000000);
  r3.w = cmp(0.00100000005 < abs(cb1[0].x));
  r2.w = r2.w ? r3.w : 0;
  r7.xy = floor(v4.xy);
  r3.w = dot(r7.xy, float2(347.834503,3343.28369));
  r3.w = cos(r3.w);
  r3.w = 1000 * r3.w;
  r3.w = frac(r3.w);
  r6.w = cmp(cb1[0].x < 0);
  r7.x = 1 + cb1[0].x;
  r7.x = cmp(r3.w < r7.x);
  r3.w = cmp(cb1[0].x < r3.w);
  r3.w = r6.w ? r7.x : r3.w;
  r3.w = cmp((int)r3.w == 0);
  r2.w = r2.w ? r3.w : 0;
  if (r2.w != 0) discard;
  r1.x = r8.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r1.x = saturate(cb4[13].w);
  r2.w = saturate(cb4[14].x);
  o2.z = r2.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb4[14].y);
  r1.yzw = r1.yzw * cb0[136].www + cb0[136].xyz;
  r2.w = cmp(0 < cb0[215].x);
  r7.x = t2[r4.z].val[4/4];
  r7.y = t2[r4.z].val[4/4+1];
  r3.w = cmp(0 < r7.y);
  if (r3.w != 0) {
    r7.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.yzw = max(float3(0,0,0), r7.yzw);
    r7.yzw = min(float3(0.99000001,0.99000001,0.99000001), r7.yzw);
    r7.yzw = cb0[213].xyz * r7.yzw;
    r8.xyz = (int3)r7.yzw;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r3.w = 1 + cb0[213].w;
    r7.yzw = r7.yzw / r8.www;
    r7.yzw = frac(r7.yzw);
    r7.yzw = cb0[213].www * r7.yzw;
    r7.yzw = r8.xyz * r3.www + r7.yzw;
    r7.yzw = float3(0.5,0.5,0.5) + r7.yzw;
    r7.yzw = cb0[214].xyz * r7.yzw;
    r3.w = t1.SampleLevel(s0_s, r7.yzw, 0).x;
  } else {
    r4.z = mad((int)v3.x, 36, 18);
    r4.z = t2[r4.z].val[12/4];
    r4.z = cmp(0 < r4.z);
    r4.z = r2.w ? r4.z : 0;
    r3.w = r4.z ? cb2[5].x : 1;
  }
  r7.yzw = saturate(r1.yzw);
  o4.xyz = sqrt(r7.yzw);
  r4.z = cb0[137].w * r1.x;
  r7.yzw = r2.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r4.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r4.z = cmp(0 != cb0[183].w);
  r9.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.yzw;
  r7.yzw = r4.zzz ? r9.xyz : r7.yzw;
  r8.xyz = r4.zzz ? float3(0,0,0) : r8.xyz;
  r4.z = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r4.z * 2.04040003 + -0.332399994;
  r6.w = r4.z * -4.79510021 + r6.w;
  r4.z = r4.z * 2.75519991 + r6.w;
  r4.z = 1.33200002 + r4.z;
  r4.z = max(1, r4.z);
  r1.yzw = r7.yzw + r1.yzw;
  r9.xyz = r5.zwz * r5.zwy;
  r10.yw = r5.ww * r5.zy;
  r6.w = r5.y * r5.y + -r9.x;
  r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
  r10.xz = r9.zy * float2(1,3) + float2(0,-1);
  r9.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r10.xyzw;
  r6.w = 0.429042608 * r6.w;
  r11.x = 0.886227548;
  r8.w = dot(cb2[6].xyzw, r11.xyzw);
  r10.x = dot(cb2[9].xyzw, r9.xyzw);
  r8.w = r10.x + r8.w;
  r10.x = cb2[12].x * r6.w + r8.w;
  r8.w = dot(cb2[7].xyzw, r11.xyzw);
  r10.w = dot(cb2[10].xyzw, r9.xyzw);
  r8.w = r10.w + r8.w;
  r10.y = cb2[12].y * r6.w + r8.w;
  r8.w = dot(cb2[8].xyzw, r11.xyzw);
  r9.x = dot(cb2[11].xyzw, r9.xyzw);
  r8.w = r9.x + r8.w;
  r10.z = cb2[12].z * r6.w + r8.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = r2.www ? r9.xyz : 0;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r5.x = 1;
    r10.xyzw = r2.wwww ? cb2[4].wxyz : r5.xyzw;
    r2.w = 1 + -r10.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r0.www + -r10.yzw;
    r0.xyz = r2.www * r0.xyz + r10.yzw;
    r5.x = saturate(dot(r10.yzw, r5.yzw));
    r6.w = 1 + -r5.x;
    r10.y = r2.w * r6.w + r5.x;
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
  r0.xyz = r0.xyz * r1.yzw;
  r1.yzw = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.yzw = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.yzw;
  r1.yzw = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.yzw;
  r1.yzw = float3(1.33200002,1.33200002,1.33200002) + r1.yzw;
  r1.yzw = max(float3(1,1,1), r1.yzw);
  r0.xyz = r1.yzw * r0.xyz;
  r1.yzw = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.yzw;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.xyw = -r4.xyw + r3.xyz;
    r2.w = mad((int)v3.x, 36, 19);
    r7.y = t2[r2.w].val[0/4];
    r7.z = t2[r2.w].val[0/4+1];
    r7.w = t2[r2.w].val[0/4+2];
    r7.yzw = float3(1,1,1) + r7.yzw;
    r4.xyw = cmp(r7.yzw < abs(r4.xyw));
    r2.w = (int)r4.y | (int)r4.x;
    r2.w = (int)r4.w | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r2.www ? r3.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.yzw + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r4.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r7.x;
  o2.xw = float2(0,0.509803951);
  o2.y = r1.x;
  o3.xyz = r2.xyz;
  o5.x = r3.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}