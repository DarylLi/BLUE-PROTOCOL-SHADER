// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[20];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r1.zw = cb2[12].xx * v2.xy;
  r0.w = cb2[12].y + cb0[143].y;
  r4.xy = t10.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[12].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = t11.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r0.w = -1 + r0.w;
  r4.xy = cb2[13].zw + r0.ww;
  r4.xy = saturate(ceil(r4.xy));
  r4.xz = float2(1,1) + -r4.xy;
  r0.w = r4.x * r4.y;
  r5.xyz = cb2[2].xyz * r0.www;
  r6.xyz = -r0.www * cb2[2].xyz + cb2[3].xyz;
  r5.xyz = cb2[14].xxx * r6.xyz + r5.xyz;
  r6.xyzw = t12.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb2[14].www * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[14].z, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb2[5].xyz * r6.xyz;
  r7.xyz = cb2[15].xxx * r6.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r8.xyz = cb2[2].xyz + -r7.xyz;
  r7.xyz = saturate(r0.www * r8.xyz + r7.xyz);
  r1.zw = t13.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r0.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[15].y * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r0.w ? 0 : r1.z;
  r0.w = saturate(cb2[15].z + r0.w);
  r8.x = saturate(cb2[15].w + r1.w);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb2[16].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb2[16].y * r1.z;
  r1.w = saturate(cb2[16].w + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r8.y = saturate(cb2[17].x * r1.z);
  r1.z = cb2[17].z * r4.z + r4.y;
  r1.w = cb2[17].w * cb1[1].w;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = cb2[18].x + r1.x;
  r2.xy = float2(0.649999976,0.487499982) * cb1[1].ww;
  r2.z = cb1[1].w * 0.617499948 + -r1.x;
  r2.y = saturate(r2.z / r2.y);
  r2.z = -cb1[1].w * 0.649999976 + 8000;
  r2.x = r2.y * r2.z + r2.x;
  r1.y = r1.y / r2.x;
  r1.x = r1.x / cb2[18].x;
  r2.x = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.y = r1.w ? r1.y : r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb2[17].w));
  r1.w = 1 + cb2[17].w;
  r1.y = r1.y ? r1.w : 1.39999998;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r1.w = r2.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r1.y = r1.y + -r1.w;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r1.w = (uint)r2.w << 1;
  r1.w = (int)r1.w + (int)r2.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r2.xy = float2(0.015625,0.015625) * r2.yz;
  r2.x = t14.SampleBias(s5_s, r2.xy, cb0[143].y).x;
  r1.w = r2.x + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x;
  r2.xyz = saturate(cb2[19].www * r6.xyz);
  r1.x = r1.z * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb2[17].y);
  r1.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
  r2.xyz = cb0[213].xyz * r2.xyz;
  r4.xyz = (int3)r2.xyz;
  r4.w = 0;
  r4.xyzw = t0.Load(r4.xyzw).xyzw;
  r4.xyzw = (uint4)r4.xyzw;
  r0.w = 1 + cb0[213].w;
  r2.xyz = r2.xyz / r4.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = cb0[213].www * r2.xyz;
  r2.xyz = r4.xyz * r0.www + r2.xyz;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = cb0[214].xyz * r2.xyz;
  r0.w = mad((int)v3.x, 36, 20);
  r4.x = t9[r0.w].val[4/4];
  r4.y = t9[r0.w].val[4/4+1];
  r0.w = cmp(0 < r4.y);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s0_s, r2.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r4.yzw = saturate(r1.xyz);
  o4.xyz = sqrt(r4.yzw);
  r1.w = 0.0799999982 * r8.y;
  r4.yzw = -r8.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
  r4.yzw = r8.xxx * r4.yzw + r1.www;
  r6.xyz = -r7.xyz * r8.xxx + r7.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r9.xyz : r6.xyz;
  r4.yzw = r1.www ? float3(0,0,0) : r4.yzw;
  r1.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r1.xyz = r6.xyz + r1.xyz;
  r9.xyz = t1.SampleLevel(s0_s, r2.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r2.xyzw = t7.SampleLevel(s0_s, r2.xyz, 0).xyzw;
  r2.xyzw = r2.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r2.xyzw = r2.xyzw * r9.xxxx;
  r2.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r2.xyzw;
  r15.xyz = r0.yzy * r0.yzx;
  r16.yw = r0.zz * r0.yx;
  r3.w = r0.x * r0.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r3.w = 0.429042608 * r3.w;
  r16.x = r9.y;
  r16.yzw = r10.yzw;
  r17.x = 0.886227548;
  r5.w = dot(r16.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r6.w = dot(r10.xyzw, r15.xyzw);
  r5.w = r6.w + r5.w;
  r10.x = r13.w * r3.w + r5.w;
  r13.x = r9.z;
  r13.yzw = r11.yzw;
  r5.w = dot(r13.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r6.w = dot(r11.xyzw, r15.xyzw);
  r5.w = r6.w + r5.w;
  r10.y = r14.w * r3.w + r5.w;
  r9.yzw = r12.yzw;
  r5.w = dot(r9.xyzw, r17.xyzw);
  r12.yzw = r2.xyz;
  r2.x = dot(r12.xyzw, r15.xyzw);
  r2.x = r5.w + r2.x;
  r10.z = r2.w * r3.w + r2.x;
  r2.xyz = max(float3(0,0,0), r10.xyz);
  r2.xyz = cb0[157].xyz * r2.xyz;
  r2.xyz = float3(0.318309873,0.318309873,0.318309873) * r2.xyz;
  r2.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r2.xyz * r1.xyz;
  r2.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r1.xyz = r2.xyz * r1.xyz;
  r2.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.yzw = max(float3(0,0,0), r5.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t9[r5.x].val[0/4];
    r5.z = t9[r5.x].val[0/4+1];
    r5.w = t9[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r3.xyz;
    r6.x = t9[r5.y].val[0/4];
    r6.y = t9[r5.y].val[0/4+1];
    r6.z = t9[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r3.w = (int)r5.y | (int)r5.x;
    r3.w = (int)r5.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.yzw = r3.www ? r3.xyz : r4.yzw;
  }
  r1.xyz = cb0[145].yyy * r2.xyz + r1.xyz;
  r1.xyz = r1.xyz + r4.yzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.w = 0.509803951;
  o2.xy = r8.xy;
  o3.xyz = r7.xyz;
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}