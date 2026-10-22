// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[11];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v3.z;
  r1.y = 1;
  r1.xy = v3.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v3.yyyy;
  r2.xyzw = v3.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v3.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v4.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb3[6].xx * v2.xy;
  r2.w = cb3[6].y + cb0[143].y;
  r4.xy = t11.SampleBias(s1_s, r1.zw, r2.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[6].zzz * r5.xyz + r4.xyz;
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
  r4.xyz = r0.xyz * r0.www;
  r5.xyz = cb3[6].www * cb3[1].xyz;
  r6.xyzw = t12.SampleBias(s2_s, r1.zw, cb0[143].y).xyzw;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.zzz + -r6.xyz;
  r6.xyz = cb3[7].zzz * r7.xyz + r6.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[7].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb3[3].xyz * r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.z = dot(r4.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb3[9].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb3[9].y * r1.z;
  r1.w = saturate(cb3[9].w + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r2.y = saturate(cb3[10].x * r1.z);
  r1.z = cb3[10].z * cb2[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb3[10].w + r1.x;
  r2.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r1.w = cb2[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r2.w);
  r2.w = -cb2[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.w + r2.z;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb3[10].w;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[10].z));
  r1.z = 1 + cb3[10].z;
  r1.y = r1.y ? r1.z : 1.39999998;
  r7.xyz = -cb0[129].xxy + v3.xxy;
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
  r1.w = t13.SampleBias(s3_s, r2.zw, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r6.xyz);
  r2.x = saturate(cb3[8].w);
  r1.w = saturate(cb3[10].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(r6.w);
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
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r7.xyz = saturate(cb0[136].xyz);
  o4.xyz = sqrt(r7.xyz);
  r2.z = 0.0799999982 * r2.y;
  r7.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r7.xyz = r2.xxx * r7.xyz + r2.zzz;
  r8.xyz = -r1.xyz * r2.xxx + r1.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r2.z = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.zzz ? r9.xyz : r8.xyz;
  r7.xyz = r2.zzz ? float3(0,0,0) : r7.xyz;
  r2.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r2.z * 2.04040003 + -0.332399994;
  r2.w = r2.z * -4.79510021 + r2.w;
  r2.z = r2.z * 2.75519991 + r2.w;
  r2.z = 1.33200002 + r2.z;
  r2.z = max(1, r2.z);
  r9.xyz = cb0[136].xyz + r8.xyz;
  r10.xyz = t1.SampleLevel(s0_s, r6.xyz, 0).zxy;
  r11.xyzw = t2.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t4.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t6.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r10.yyyy;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r10.zzzz;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = r13.xyzw * r10.xxxx;
  r13.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r13.wxyz;
  r14.xyzw = t3.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t5.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = t7.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = r14.xyzw * r10.yyyy;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r10.zzzz;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyzw = r16.xyzw * r10.xxxx;
  r16.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r16.xyzw;
  r17.xyz = r4.yzy * r4.yzx;
  r18.yw = r4.zz * r4.yx;
  r2.w = r4.x * r4.x + -r17.x;
  r19.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r18.xz = r17.zy * float2(1,3) + float2(0,-1);
  r17.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r18.xyzw;
  r2.w = 0.429042608 * r2.w;
  r18.x = r10.y;
  r18.yzw = r11.yzw;
  r19.x = 0.886227548;
  r3.w = dot(r18.xyzw, r19.xyzw);
  r11.yzw = r14.xyz;
  r4.w = dot(r11.xyzw, r17.xyzw);
  r3.w = r4.w + r3.w;
  r11.x = r14.w * r2.w + r3.w;
  r14.x = r10.z;
  r14.yzw = r12.yzw;
  r3.w = dot(r14.xyzw, r19.xyzw);
  r12.yzw = r15.xyz;
  r4.w = dot(r12.xyzw, r17.xyzw);
  r3.w = r4.w + r3.w;
  r11.y = r15.w * r2.w + r3.w;
  r10.yzw = r13.yzw;
  r3.w = dot(r10.xyzw, r19.xyzw);
  r13.yzw = r16.xyz;
  r4.w = dot(r13.xyzw, r17.xyzw);
  r3.w = r4.w + r3.w;
  r11.z = r16.w * r2.w + r3.w;
  r10.xyz = max(float3(0,0,0), r11.xyz);
  r10.xyz = cb0[157].xyz * r10.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r6.xyz = t8.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r6.xyz, r6.xyz);
    r11.x = sqrt(r2.w);
    r2.w = max(9.99999975e-005, r11.x);
    r6.xyz = r6.xyz / r2.www;
    r2.w = 1 + -r11.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r0.www + -r6.xyz;
    r0.xyz = r2.www * r0.xyz + r6.xyz;
    r3.w = saturate(dot(r6.xyz, r4.xyz));
    r4.w = 1 + -r3.w;
    r11.y = r2.w * r4.w + r3.w;
  } else {
    r0.xyz = r4.xyz;
    r11.xy = float2(1,1);
  }
  r6.x = t10[0].val[0/4];
  r6.y = t10[0].val[0/4+1];
  r6.z = t10[0].val[0/4+2];
  r6.w = t10[0].val[0/4+3];
  r0.w = 1;
  r6.x = dot(r6.xyzw, r0.xyzw);
  r12.x = t10[1].val[0/4];
  r12.y = t10[1].val[0/4+1];
  r12.z = t10[1].val[0/4+2];
  r12.w = t10[1].val[0/4+3];
  r6.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t10[2].val[0/4];
  r12.y = t10[2].val[0/4+1];
  r12.z = t10[2].val[0/4+2];
  r12.w = t10[2].val[0/4+3];
  r6.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t10[3].val[0/4];
  r13.y = t10[3].val[0/4+1];
  r13.z = t10[3].val[0/4+2];
  r13.w = t10[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t10[4].val[0/4];
  r14.y = t10[4].val[0/4+1];
  r14.z = t10[4].val[0/4+2];
  r14.w = t10[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t10[5].val[0/4];
  r14.y = t10[5].val[0/4+1];
  r14.z = t10[5].val[0/4+2];
  r14.w = t10[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r6.xyz = r13.xyz + r6.xyz;
  r0.xyz = r0.yzw * r0.xxx + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r11.x * r11.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r10.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r9.xyz;
  r6.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r0.xyz = r6.xyz * r0.xyz;
  r6.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r2.www ? r3.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.509803951;
  o2.xy = r2.xy;
  o3.xyz = r1.xyz;
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}