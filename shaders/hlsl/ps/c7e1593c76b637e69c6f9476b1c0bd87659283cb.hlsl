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

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r3.xyz = mad((int3)v3.xxx, int3(36,36,36), int3(4,5,20));
  r0.w = t2[r3.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = t4.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r4.xy, r4.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r4.z = sqrt(r1.z);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[6].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r4.yzw = r0.xyz * r0.www;
  r5.xyz = cb3[6].yyy * cb3[1].xyz;
  r3.x = t2[r3.y].val[0/4];
  r3.y = t2[r3.y].val[0/4+1];
  r3.w = t2[r3.y].val[0/4+2];
  r6.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r3.xyw;
  r6.xyz = frac(r6.xyz);
  r1.z = dot(r6.xy, r6.yz);
  r1.z = -0.5 + r1.z;
  r1.z = dot(r1.zz, cb3[6].zz);
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r7.xyz = -cb0[67].xyz + r2.xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r2.w = r1.w / cb3[6].w;
  r5.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[7].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r6.w = 1 + cb3[7].y;
  r2.w = r6.w * r2.w;
  r2.w = r5.w ? 0 : r2.w;
  r2.w = cb0[143].y + r2.w;
  r2.w = -1 + r2.w;
  r7.xyzw = t5.SampleBias(s2_s, v2.xy, r2.w).xyzw;
  r6.xyz = r1.zzz * r6.xyz + r7.xyz;
  r1.z = saturate(dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r1.z;
  r2.w = r2.w + r2.w;
  r7.xyz = -r2.www * cb3[4].xyz + float3(1,1,1);
  r2.w = r1.z + r1.z;
  r8.xyz = cb3[3].xyz * r2.www;
  r1.z = cmp(r1.z >= 0.5);
  r7.xyz = r1.zzz ? r7.xyz : r8.xyz;
  r1.z = r1.w / cb3[7].z;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[7].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r7.xyz = r7.xyz + -r6.xyz;
  r7.xyz = r7.xyz * r1.zzz;
  r6.xyz = cb3[8].xxx * r7.xyz + r6.xyz;
  r7.xyz = cb3[8].yyy * r6.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.z = cb3[9].y * cb2[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb3[9].z + r1.x;
  r8.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r1.w = cb2[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r8.y);
  r2.w = -cb2[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.w + r8.x;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb3[9].z;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[9].y));
  r1.z = 1 + cb3[9].y;
  r1.y = r1.y ? r1.z : 1.39999998;
  r8.xyz = -cb0[129].xxy + v4.xxy;
  r1.z = r8.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r8.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r8.xy = float2(0.015625,0.015625) * r8.yz;
  r1.w = t6.SampleBias(s3_s, r8.xy, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.yzw = saturate(cb3[11].zzz * r6.xyz);
  r1.x = r7.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r6.xyz = min(float3(1,1,1), r7.xyz);
  r7.xy = saturate(cb3[8].zw);
  o2.z = r7.y * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb3[9].x);
  r1.xyz = r1.yzw * cb0[136].www + cb0[136].xyz;
  r1.w = cmp(0 < cb0[215].x);
  r7.y = t2[r3.z].val[4/4];
  r7.z = t2[r3.z].val[4/4+1];
  r2.w = cmp(0 < r7.z);
  if (r2.w != 0) {
    r8.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
    r8.xyz = cb0[213].xyz * r8.xyz;
    r9.xyz = (int3)r8.xyz;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r2.w = 1 + cb0[213].w;
    r8.xyz = r8.xyz / r9.www;
    r8.xyz = frac(r8.xyz);
    r8.xyz = cb0[213].www * r8.xyz;
    r8.xyz = r9.xyz * r2.www + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
    r8.xyz = cb0[214].xyz * r8.xyz;
    r2.w = t1.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r3.z = mad((int)v3.x, 36, 18);
    r3.z = t2[r3.z].val[12/4];
    r3.z = cmp(0 < r3.z);
    r3.z = r1.w ? r3.z : 0;
    r2.w = r3.z ? cb1[5].x : 1;
  }
  r8.xyz = saturate(r1.xyz);
  o4.xyz = sqrt(r8.xyz);
  r3.z = cb0[137].w * r7.x;
  r8.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r3.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r3.z = cmp(0 != cb0[183].w);
  r10.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r3.zzz ? r10.xyz : r8.xyz;
  r9.xyz = r3.zzz ? float3(0,0,0) : r9.xyz;
  r3.z = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r3.z * 2.04040003 + -0.332399994;
  r5.w = r3.z * -4.79510021 + r5.w;
  r3.z = r3.z * 2.75519991 + r5.w;
  r3.z = 1.33200002 + r3.z;
  r3.z = max(1, r3.z);
  r1.xyz = r8.xyz + r1.xyz;
  r10.xyz = r4.zwz * r4.zwy;
  r11.yw = r4.ww * r4.zy;
  r5.w = r4.y * r4.y + -r10.x;
  r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
  r11.xz = r10.zy * float2(1,3) + float2(0,-1);
  r10.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r11.xyzw;
  r5.w = 0.429042608 * r5.w;
  r12.x = 0.886227548;
  r6.w = dot(cb1[6].xyzw, r12.xyzw);
  r7.z = dot(cb1[9].xyzw, r10.xyzw);
  r6.w = r7.z + r6.w;
  r11.x = cb1[12].x * r5.w + r6.w;
  r6.w = dot(cb1[7].xyzw, r12.xyzw);
  r7.z = dot(cb1[10].xyzw, r10.xyzw);
  r6.w = r7.z + r6.w;
  r11.y = cb1[12].y * r5.w + r6.w;
  r6.w = dot(cb1[8].xyzw, r12.xyzw);
  r7.z = dot(cb1[11].xyzw, r10.xyzw);
  r6.w = r7.z + r6.w;
  r11.z = cb1[12].z * r5.w + r6.w;
  r10.xyz = max(float3(0,0,0), r11.xyz);
  r10.xyz = r1.www ? r10.xyz : 0;
  r5.w = cmp(cb0[186].y != 0.000000);
  if (r5.w != 0) {
    r4.x = 1;
    r11.xyzw = r1.wwww ? cb1[4].wxyz : r4.xyzw;
    r1.w = 1 + -r11.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r11.yzw;
    r0.xyz = r1.www * r0.xyz + r11.yzw;
    r4.x = saturate(dot(r11.yzw, r4.yzw));
    r5.w = 1 + -r4.x;
    r11.y = r1.w * r5.w + r4.x;
  } else {
    r0.xyz = r4.yzw;
    r11.xy = float2(1,1);
  }
  r12.x = t3[0].val[0/4];
  r12.y = t3[0].val[0/4+1];
  r12.z = t3[0].val[0/4+2];
  r12.w = t3[0].val[0/4+3];
  r0.w = 1;
  r12.x = dot(r12.xyzw, r0.xyzw);
  r13.x = t3[1].val[0/4];
  r13.y = t3[1].val[0/4+1];
  r13.z = t3[1].val[0/4+2];
  r13.w = t3[1].val[0/4+3];
  r12.y = dot(r13.xyzw, r0.xyzw);
  r13.x = t3[2].val[0/4];
  r13.y = t3[2].val[0/4+1];
  r13.z = t3[2].val[0/4+2];
  r13.w = t3[2].val[0/4+3];
  r12.z = dot(r13.xyzw, r0.xyzw);
  r13.xyzw = r0.xyzz * r0.yzzx;
  r14.x = t3[3].val[0/4];
  r14.y = t3[3].val[0/4+1];
  r14.z = t3[3].val[0/4+2];
  r14.w = t3[3].val[0/4+3];
  r14.x = dot(r14.xyzw, r13.xyzw);
  r15.x = t3[4].val[0/4];
  r15.y = t3[4].val[0/4+1];
  r15.z = t3[4].val[0/4+2];
  r15.w = t3[4].val[0/4+3];
  r14.y = dot(r15.xyzw, r13.xyzw);
  r15.x = t3[5].val[0/4];
  r15.y = t3[5].val[0/4+1];
  r15.z = t3[5].val[0/4+2];
  r15.w = t3[5].val[0/4+3];
  r14.z = dot(r15.xyzw, r13.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r12.xyz = r14.xyz + r12.xyz;
  r0.xyz = r0.yzw * r0.xxx + r12.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r11.x * r11.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r10.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r1.xyz;
  r1.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyz;
  r1.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyz;
  r1.xyz = float3(1.33200002,1.33200002,1.33200002) + r1.xyz;
  r1.xyz = max(float3(1,1,1), r1.xyz);
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r3.xyw = -r3.xyw + r2.xyz;
    r1.w = mad((int)v3.x, 36, 19);
    r8.x = t2[r1.w].val[0/4];
    r8.y = t2[r1.w].val[0/4+1];
    r8.z = t2[r1.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r3.xyw = cmp(r8.xyz < abs(r3.xyw));
    r1.w = (int)r3.y | (int)r3.x;
    r1.w = (int)r3.w | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r1.www ? r2.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r7.y;
  o2.xw = float2(0,0.509803951);
  o2.y = r7.x;
  o3.xyz = r6.xyz;
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}