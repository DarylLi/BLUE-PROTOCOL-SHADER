// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

struct t11_t {
  float val[4];
};
StructuredBuffer<t11_t> t11 : register(t11);

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
  float4 cb3[41];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  r1.yz = float2(1,0);
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
  r0.w = cb3[24].x + cb0[143].y;
  r4.xy = t12.SampleBias(s2_s, v2.xy, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[24].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r5.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r4.xyz * r0.www;
  r6.xy = cb3[24].zz * v2.xy;
  r2.w = -0.5 * cb3[24].w;
  r7.x = dot(v0.xyz, r2.xyz);
  r7.y = dot(r0.xyz, r2.xyz);
  r6.xy = r7.xy * r2.ww + r6.xy;
  r6.xy = t13.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r8.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[25].xxx * r8.xyz + r6.xyz;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[25].y * r0.y;
  r0.y = exp2(r0.y);
  r6.xyz = cb3[2].xyz * r0.yyy;
  r6.xyz = r0.zzz ? float3(0,0,0) : r6.xyz;
  r0.y = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb3[25].z * r0.x;
  r0.x = exp2(r0.x);
  r8.xyz = cb3[4].xyz * r0.xxx;
  r0.xyz = r0.yyy ? float3(0,0,0) : r8.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r2.w = cb0[142].z * cb3[26].x + v2.y;
  r2.w = 1.2566371 * r2.w;
  r2.w = sin(r2.w);
  r2.w = 1 + r2.w;
  r2.w = 0.5 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * cb3[26].z + cb3[26].y;
  r2.w = cb3[26].w * r2.w;
  r3.w = cb3[27].x * cb0[142].z;
  r6.x = cb3[27].w * r3.w;
  r6.y = cb3[28].x * r3.w;
  r6.zw = v2.xy * cb3[28].yy + cb3[6].xy;
  r7.zw = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r8.x = t10[r7.z].val[0/4];
  r8.y = t10[r7.z].val[0/4+1];
  r8.z = t10[r7.z].val[0/4+2];
  r4.w = r8.x + r8.y;
  r4.w = r4.w + r8.z;
  r4.w = frac(r4.w);
  r4.w = cb0[142].z + r4.w;
  r4.w = cb1[2].x * r4.w;
  r1.w = 0.100000001 * r4.w;
  r1.zw = v2.xy * cb3[29].xx + r1.zw;
  r1.z = t14.SampleBias(s4_s, r1.zw, cb0[143].y).x;
  r1.w = 0.100000001 * r1.z;
  r1.z = cmp(0 >= r1.z);
  r1.w = log2(r1.w);
  r1.w = 1.5 * r1.w;
  r1.w = exp2(r1.w);
  r1.z = r1.z ? 0 : r1.w;
  r6.zw = r1.zz * cb3[29].yy + r6.zw;
  r6.xy = r6.xy + r6.zw;
  r1.w = -0.5 * cb3[29].z;
  r6.xy = r7.xy * r1.ww + r6.xy;
  r6.xyz = t15.SampleBias(s5_s, r6.xy, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[29].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r1.w = 1.5 * r3.w;
  r8.x = cb3[27].w * r1.w;
  r8.y = cb3[28].x * r1.w;
  r8.zw = v2.xy * cb3[30].xx + cb3[7].xy;
  r8.xy = r8.xy + r8.zw;
  r1.w = -0.5 * cb3[30].y;
  r8.xy = r7.xy * r1.ww + r8.xy;
  r8.xyz = t15.SampleBias(s5_s, r8.xy, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r8.xyz);
  r8.xyz = log2(r8.xyz);
  r8.xyz = cb3[29].www * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r8.xyz = r9.xyz ? float3(0,0,0) : r8.xyz;
  r8.xyz = float3(-1,-1,-1) + r8.xyz;
  r8.xyz = cb3[30].zzz * r8.xyz + float3(1,1,1);
  r6.xyz = r8.xyz * r6.xyz;
  r6.xyz = r6.xyz * r2.www;
  r1.w = cb0[142].z * cb3[30].w + v2.y;
  r1.w = 1.2566371 * r1.w;
  r1.w = sin(r1.w);
  r1.w = 1 + r1.w;
  r1.w = 0.5 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * cb3[31].y + cb3[31].x;
  r1.w = cb3[31].z * r1.w;
  r2.w = cb3[31].w * cb0[142].z;
  r8.xy = v2.xy * cb3[33].xx + cb3[11].xy;
  r8.xy = r1.zz * cb3[33].ww + r8.xy;
  r8.xy = r2.ww * cb3[32].zw + r8.xy;
  r8.zw = float2(-0.5,-0.5) * cb3[34].xw;
  r8.xy = r7.xy * r8.zz + r8.xy;
  r8.xyz = t16.SampleBias(s6_s, r8.xy, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r8.xyz);
  r8.xyz = log2(r8.xyz);
  r8.xyz = cb3[34].yyy * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r8.xyz = r9.xyz ? float3(0,0,0) : r8.xyz;
  r1.z = 1.5 * r2.w;
  r9.xy = v2.xy * cb3[34].zz + cb3[12].xy;
  r9.xy = r1.zz * cb3[32].zw + r9.xy;
  r7.xy = r7.xy * r8.ww + r9.xy;
  r7.xyz = t16.SampleBias(s6_s, r7.xy, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb3[34].yyy * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r9.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = cb3[35].xxx * r7.xyz + float3(1,1,1);
  r7.xyz = r8.xyz * r7.xyz;
  r7.xyz = r7.xyz * r1.www;
  r7.xyz = cb3[14].xyz * r7.xyz;
  r6.xyz = r6.xyz * cb3[9].xyz + r7.xyz;
  r0.xyz = r0.xyz * cb3[25].www + r6.xyz;
  r1.zw = t17.Sample(s0_s, v2.xy).xy;
  r1.z = cb3[35].y + r1.z;
  r2.w = 1 + -r1.z;
  r2.w = saturate(-cb3[35].z + r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = cb3[16].xyz * r0.xyz;
  r6.xyz = cb3[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb3[35].www + cb3[17].xyz;
  r0.xyz = cb3[36].xxx * r0.xyz + r6.xyz;
  r2.x = dot(r5.xyz, r2.xyz);
  r2.y = 1 + -abs(r2.x);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb3[36].y * r2.y;
  r2.y = exp2(r2.y);
  r6.xyz = cb3[19].xyz * r2.yyy;
  r2.yzw = r2.zzz ? float3(0,0,0) : r6.xyz;
  r3.w = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb3[36].z * r2.x;
  r2.x = exp2(r2.x);
  r6.xyz = cb3[21].xyz * r2.xxx;
  r6.xyz = r3.www ? float3(0,0,0) : r6.xyz;
  r2.xyz = r6.xyz + r2.yzw;
  r6.xyz = t18.SampleBias(s7_s, v2.xy, cb0[143].y).xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb3[37].zzz * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[37].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb3[23].xyz * r6.xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[37].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r2.xyz = r2.xyz * cb3[36].www + r6.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.w = saturate(cb3[38].x + r1.w);
  r2.w = cb3[38].y * cb2[1].w;
  r3.w = cmp(cb0[31].w < 1);
  r4.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.w + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cb3[38].z + r1.x;
  r6.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r3.w = cb2[1].w * 0.617499948 + -r1.x;
  r3.w = saturate(r3.w / r6.y);
  r4.w = -cb2[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r6.x;
  r1.y = r1.y / r3.w;
  r1.x = r1.x / cb3[38].z;
  r3.w = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r1.y = r2.w ? r1.y : r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[38].y));
  r2.w = 1 + cb3[38].y;
  r1.y = r1.y ? r2.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r6.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.y = -r2.w + r1.y;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r2.w = (uint)r6.w << 1;
  r2.w = (int)r2.w + (int)r6.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r3.w = t19.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r2.w = r3.w + r2.w;
  r2.w = 0.166666672 * r2.w;
  r1.x = r1.x * r1.y + r2.w;
  r1.x = saturate(-0.5 + r1.x);
  r6.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb3[39].y;
  r1.y = saturate(r1.y * cb3[40].x + -cb3[39].w);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * cb3[40].y + r2.w;
  r1.y = -0.5 + r1.y;
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r1.z = saturate(r1.z);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = min(float3(0.99000001,0.99000001,0.99000001), r1.xyz);
  r1.xyz = cb0[213].xyz * r1.xyz;
  r6.xyz = (int3)r1.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r2.w = 1 + cb0[213].w;
  r1.xyz = r1.xyz / r6.www;
  r1.xyz = frac(r1.xyz);
  r1.xyz = cb0[213].www * r1.xyz;
  r1.xyz = r6.xyz * r2.www + r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = cb0[214].xyz * r1.xyz;
  r6.x = t10[r7.w].val[4/4];
  r6.y = t10[r7.w].val[4/4+1];
  r2.w = cmp(0 < r6.y);
  if (r2.w != 0) {
    r2.w = t9.SampleLevel(s1_s, r1.xyz, 0).x;
  } else {
    r2.w = 1;
  }
  r6.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r2.xyz;
  r6.yzw = r1.www * r6.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r7.xyz = -r2.xyz * r1.www + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.yzw = r6.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.www ? r8.xyz : r7.xyz;
  r6.yzw = r3.www ? float3(0,0,0) : r6.yzw;
  r3.w = dot(r6.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r8.xyz = t1.SampleLevel(s1_s, r1.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyz = r5.yzy * r5.yzx;
  r16.yw = r5.zz * r5.yx;
  r4.w = r5.x * r5.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r4.w = 0.429042608 * r4.w;
  r16.x = r8.y;
  r16.yzw = r9.yzw;
  r17.x = 0.886227548;
  r5.w = dot(r16.xyzw, r17.xyzw);
  r9.yzw = r12.xyz;
  r7.w = dot(r9.xyzw, r15.xyzw);
  r5.w = r7.w + r5.w;
  r9.x = r12.w * r4.w + r5.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r5.w = dot(r12.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r7.w = dot(r10.xyzw, r15.xyzw);
  r5.w = r7.w + r5.w;
  r9.y = r13.w * r4.w + r5.w;
  r8.yzw = r11.yzw;
  r5.w = dot(r8.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r7.w = dot(r11.xyzw, r15.xyzw);
  r5.w = r7.w + r5.w;
  r9.z = r14.w * r4.w + r5.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r1.xyz = t8.SampleLevel(s1_s, r1.xyz, 0).xyz;
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r4.w = dot(r1.xyz, r1.xyz);
    r9.x = sqrt(r4.w);
    r4.w = max(9.99999975e-005, r9.x);
    r1.xyz = r1.xyz / r4.www;
    r4.w = 1 + -r9.x;
    r4.w = -r4.w * r4.w + 1;
    r4.xyz = r4.xyz * r0.www + -r1.xyz;
    r10.xyz = r4.www * r4.xyz + r1.xyz;
    r0.w = saturate(dot(r1.xyz, r5.xyz));
    r1.x = 1 + -r0.w;
    r9.y = r4.w * r1.x + r0.w;
  } else {
    r10.xyz = r5.xyz;
    r9.xy = float2(1,1);
  }
  r4.x = t11[0].val[0/4];
  r4.y = t11[0].val[0/4+1];
  r4.z = t11[0].val[0/4+2];
  r4.w = t11[0].val[0/4+3];
  r10.w = 1;
  r1.x = dot(r4.xyzw, r10.xyzw);
  r4.x = t11[1].val[0/4];
  r4.y = t11[1].val[0/4+1];
  r4.z = t11[1].val[0/4+2];
  r4.w = t11[1].val[0/4+3];
  r1.y = dot(r4.xyzw, r10.xyzw);
  r4.x = t11[2].val[0/4];
  r4.y = t11[2].val[0/4+1];
  r4.z = t11[2].val[0/4+2];
  r4.w = t11[2].val[0/4+3];
  r1.z = dot(r4.xyzw, r10.xyzw);
  r4.xyzw = r10.xyzz * r10.yzzx;
  r11.x = t11[3].val[0/4];
  r11.y = t11[3].val[0/4+1];
  r11.z = t11[3].val[0/4+2];
  r11.w = t11[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r4.xyzw);
  r12.x = t11[4].val[0/4];
  r12.y = t11[4].val[0/4+1];
  r12.z = t11[4].val[0/4+2];
  r12.w = t11[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r4.xyzw);
  r12.x = t11[5].val[0/4];
  r12.y = t11[5].val[0/4+1];
  r12.z = t11[5].val[0/4+2];
  r12.w = t11[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r4.xyzw);
  r0.w = r10.y * r10.y;
  r0.w = r10.x * r10.x + -r0.w;
  r4.x = t11[6].val[0/4];
  r4.y = t11[6].val[0/4+1];
  r4.z = t11[6].val[0/4+2];
  r1.xyz = r11.xyz + r1.xyz;
  r1.xyz = r4.xyz * r0.www + r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = cb0[187].xyz * r1.xyz;
  r0.w = r9.x * r9.y;
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r1.xyz;
  r0.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r1.xyz * r7.xyz;
  r4.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r1.xyz = r4.xyz * r1.xyz;
  r4.xyz = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t10[r6.y].val[0/4];
    r7.y = t10[r6.y].val[0/4+1];
    r7.z = t10[r6.y].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r6.y = t10[r6.z].val[0/4];
    r6.z = t10[r6.z].val[0/4+1];
    r6.w = t10[r6.z].val[0/4+2];
    r6.yzw = float3(1,1,1) + r6.yzw;
    r6.yzw = cmp(r6.yzw < abs(r7.xyz));
    r4.w = (int)r6.z | (int)r6.y;
    r4.w = (int)r6.w | (int)r4.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r4.www ? r3.xyz : r0.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.xyz + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r6.x;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r1.w;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}