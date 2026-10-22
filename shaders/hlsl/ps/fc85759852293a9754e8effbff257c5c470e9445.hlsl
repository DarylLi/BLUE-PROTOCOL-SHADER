// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

cbuffer cb5 : register(b5)
{
  float4 cb5[41];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r0.w = cb5[24].x + cb0[143].y;
  r4.xy = t3.SampleBias(s2_s, v3.xy, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[24].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r5.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = r4.xyz * r0.www;
  r6.xy = cb5[24].zz * v3.xy;
  r2.w = -0.5 * cb5[24].w;
  r7.x = dot(v0.xyz, r2.xyz);
  r7.y = dot(r0.xyz, r2.xyz);
  r6.xy = r7.xy * r2.ww + r6.xy;
  r6.xy = t4.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r8.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb5[25].xxx * r8.xyz + r6.xyz;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb5[25].y * r0.y;
  r0.y = exp2(r0.y);
  r6.xyz = cb5[2].xyz * r0.yyy;
  r6.xyz = r0.zzz ? float3(0,0,0) : r6.xyz;
  r0.y = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb5[25].z * r0.x;
  r0.x = exp2(r0.x);
  r8.xyz = cb5[4].xyz * r0.xxx;
  r0.xyz = r0.yyy ? float3(0,0,0) : r8.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r2.w = cb0[142].z * cb5[26].x + v3.y;
  r2.w = 1.2566371 * r2.w;
  r2.w = sin(r2.w);
  r2.w = 1 + r2.w;
  r2.w = 0.5 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * cb5[26].z + cb5[26].y;
  r2.w = cb5[26].w * r2.w;
  r3.w = cb5[27].x * cb0[142].z;
  r6.x = cb5[27].w * r3.w;
  r6.y = cb5[28].x * r3.w;
  r6.zw = v3.xy * cb5[28].yy + cb5[6].xy;
  r4.w = cb1[18].x + cb1[18].y;
  r4.w = cb1[18].z + r4.w;
  r4.w = frac(r4.w);
  r4.w = cb0[142].z + r4.w;
  r4.w = v2.x + r4.w;
  r4.w = cb3[2].x * r4.w;
  r1.w = 0.100000001 * r4.w;
  r1.zw = v3.xy * cb5[29].xx + r1.zw;
  r1.z = t5.SampleBias(s4_s, r1.zw, cb0[143].y).x;
  r1.w = 0.100000001 * r1.z;
  r1.z = cmp(0 >= r1.z);
  r1.w = log2(r1.w);
  r1.w = 1.5 * r1.w;
  r1.w = exp2(r1.w);
  r1.z = r1.z ? 0 : r1.w;
  r6.zw = r1.zz * cb5[29].yy + r6.zw;
  r6.xy = r6.xy + r6.zw;
  r1.w = -0.5 * cb5[29].z;
  r6.xy = r7.xy * r1.ww + r6.xy;
  r6.xyz = t6.SampleBias(s5_s, r6.xy, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb5[29].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r1.w = 1.5 * r3.w;
  r8.x = cb5[27].w * r1.w;
  r8.y = cb5[28].x * r1.w;
  r7.zw = v3.xy * cb5[30].xx + cb5[7].xy;
  r7.zw = r8.xy + r7.zw;
  r1.w = -0.5 * cb5[30].y;
  r7.zw = r7.xy * r1.ww + r7.zw;
  r8.xyz = t6.SampleBias(s5_s, r7.zw, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r8.xyz);
  r8.xyz = log2(r8.xyz);
  r8.xyz = cb5[29].www * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r8.xyz = r9.xyz ? float3(0,0,0) : r8.xyz;
  r8.xyz = float3(-1,-1,-1) + r8.xyz;
  r8.xyz = cb5[30].zzz * r8.xyz + float3(1,1,1);
  r6.xyz = r8.xyz * r6.xyz;
  r6.xyz = r6.xyz * r2.www;
  r1.w = cb0[142].z * cb5[30].w + v3.y;
  r1.w = 1.2566371 * r1.w;
  r1.w = sin(r1.w);
  r1.w = 1 + r1.w;
  r1.w = 0.5 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * cb5[31].y + cb5[31].x;
  r1.w = cb5[31].z * r1.w;
  r2.w = cb5[31].w * cb0[142].z;
  r7.zw = v3.xy * cb5[33].xx + cb5[11].xy;
  r7.zw = r1.zz * cb5[33].ww + r7.zw;
  r7.zw = r2.ww * cb5[32].zw + r7.zw;
  r8.xy = float2(-0.5,-0.5) * cb5[34].xw;
  r7.zw = r7.xy * r8.xx + r7.zw;
  r8.xzw = t7.SampleBias(s6_s, r7.zw, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r8.xzw);
  r8.xzw = log2(r8.xzw);
  r8.xzw = cb5[34].yyy * r8.xzw;
  r8.xzw = exp2(r8.xzw);
  r8.xzw = r9.xyz ? float3(0,0,0) : r8.xzw;
  r1.z = 1.5 * r2.w;
  r7.zw = v3.xy * cb5[34].zz + cb5[12].xy;
  r7.zw = r1.zz * cb5[32].zw + r7.zw;
  r7.xy = r7.xy * r8.yy + r7.zw;
  r7.xyz = t7.SampleBias(s6_s, r7.xy, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb5[34].yyy * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r9.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = cb5[35].xxx * r7.xyz + float3(1,1,1);
  r7.xyz = r8.xzw * r7.xyz;
  r7.xyz = r7.xyz * r1.www;
  r7.xyz = cb5[14].xyz * r7.xyz;
  r6.xyz = r6.xyz * cb5[9].xyz + r7.xyz;
  r0.xyz = r0.xyz * cb5[25].www + r6.xyz;
  r1.zw = t8.Sample(s0_s, v3.xy).xy;
  r1.z = cb5[35].y + r1.z;
  r2.w = 1 + -r1.z;
  r2.w = saturate(-cb5[35].z + r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = cb5[16].xyz * r0.xyz;
  r6.xyz = cb5[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb5[35].www + cb5[17].xyz;
  r0.xyz = cb5[36].xxx * r0.xyz + r6.xyz;
  r2.x = dot(r5.yzw, r2.xyz);
  r2.y = 1 + -abs(r2.x);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb5[36].y * r2.y;
  r2.y = exp2(r2.y);
  r6.xyz = cb5[19].xyz * r2.yyy;
  r2.yzw = r2.zzz ? float3(0,0,0) : r6.xyz;
  r3.w = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb5[36].z * r2.x;
  r2.x = exp2(r2.x);
  r6.xyz = cb5[21].xyz * r2.xxx;
  r6.xyz = r3.www ? float3(0,0,0) : r6.xyz;
  r2.xyz = r6.xyz + r2.yzw;
  r6.xyz = t9.SampleBias(s7_s, v3.xy, cb0[143].y).xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb5[37].zzz * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[37].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb5[23].xyz * r6.xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb5[37].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r2.xyz = r2.xyz * cb5[36].www + r6.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.w = saturate(cb5[38].x + r1.w);
  r2.w = cb5[38].y * cb4[1].w;
  r3.w = cmp(cb0[31].w < 1);
  r4.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.w + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cb5[38].z + r1.x;
  r6.xy = float2(0.649999976,0.487499982) * cb4[1].ww;
  r3.w = cb4[1].w * 0.617499948 + -r1.x;
  r3.w = saturate(r3.w / r6.y);
  r4.w = -cb4[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r6.x;
  r1.y = r1.y / r3.w;
  r1.x = r1.x / cb5[38].z;
  r3.w = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r1.y = r2.w ? r1.y : r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb5[38].y));
  r2.w = 1 + cb5[38].y;
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
  r3.w = t10.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r2.w = r3.w + r2.w;
  r2.w = 0.166666672 * r2.w;
  r1.x = r1.x * r1.y + r2.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = v2.y * r1.x;
  r6.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb5[39].y;
  r1.y = saturate(r1.y * cb5[40].x + -cb5[39].w);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * cb5[40].y + r2.w;
  r1.y = -0.5 + r1.y;
  r2.w = cmp(0.00100000005 < abs(v2.w));
  r6.xy = floor(v4.xy);
  r3.w = dot(r6.xy, float2(347.834503,3343.28369));
  r3.w = cos(r3.w);
  r3.w = 1000 * r3.w;
  r3.w = frac(r3.w);
  r4.w = cmp(v2.w < 0);
  r6.x = 1 + v2.w;
  r6.x = cmp(r3.w < r6.x);
  r3.w = cmp(v2.w < r3.w);
  r3.w = r4.w ? r6.x : r3.w;
  r3.w = cmp((int)r3.w == 0);
  r2.w = r2.w ? r3.w : 0;
  if (r2.w != 0) discard;
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r1.z = saturate(r1.z);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.x = cmp(0 < cb0[215].x);
  r1.y = cmp(0 < cb1[20].z);
  if (r1.y != 0) {
    r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.y = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r1.yyy + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r1.y = t1.SampleLevel(s1_s, r6.xyz, 0).x;
  } else {
    r1.z = cmp(0 < cb1[18].w);
    r1.z = r1.x ? r1.z : 0;
    r1.y = r1.z ? cb2[5].x : 1;
  }
  r6.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r2.xyz;
  r6.xyz = r1.www * r6.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r7.xyz = -r2.xyz * r1.www + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r1.zzz ? float3(0,0,0) : r6.xyz;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.z * 2.04040003 + -0.332399994;
  r2.w = r1.z * -4.79510021 + r2.w;
  r1.z = r1.z * 2.75519991 + r2.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  r8.xyz = r5.zwz * r5.zwy;
  r9.yw = r5.ww * r5.zy;
  r2.w = r5.y * r5.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r2.w = 0.429042608 * r2.w;
  r10.x = 0.886227548;
  r3.w = dot(cb2[6].xyzw, r10.xyzw);
  r4.w = dot(cb2[9].xyzw, r8.xyzw);
  r3.w = r4.w + r3.w;
  r9.x = cb2[12].x * r2.w + r3.w;
  r3.w = dot(cb2[7].xyzw, r10.xyzw);
  r4.w = dot(cb2[10].xyzw, r8.xyzw);
  r3.w = r4.w + r3.w;
  r9.y = cb2[12].y * r2.w + r3.w;
  r3.w = dot(cb2[8].xyzw, r10.xyzw);
  r4.w = dot(cb2[11].xyzw, r8.xyzw);
  r3.w = r4.w + r3.w;
  r9.z = cb2[12].z * r2.w + r3.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r1.xxx ? r8.xyz : 0;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r5.x = 1;
    r9.xyzw = r1.xxxx ? cb2[4].wxyz : r5.xyzw;
    r1.x = 1 + -r9.x;
    r1.x = -r1.x * r1.x + 1;
    r4.xyz = r4.xyz * r0.www + -r9.yzw;
    r4.xyz = r1.xxx * r4.xyz + r9.yzw;
    r0.w = saturate(dot(r9.yzw, r5.yzw));
    r2.w = 1 + -r0.w;
    r9.y = r1.x * r2.w + r0.w;
  } else {
    r4.xyz = r5.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r4.w = 1;
  r10.x = dot(r10.xyzw, r4.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r4.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r4.xyzw);
  r11.xyzw = r4.xyzz * r4.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.w = r4.y * r4.y;
  r0.w = r4.x * r4.x + -r0.w;
  r4.x = t2[6].val[0/4];
  r4.y = t2[6].val[0/4+1];
  r4.z = t2[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r4.xyz = r4.xyz * r0.www + r10.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[187].xyz * r4.xyz;
  r0.w = r9.x * r9.y;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r8.xyz * cb0[157].xyz + r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r7.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r4.xyz = r8.xyz * r4.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.x = (int)r7.y | (int)r7.x;
    r1.x = (int)r7.z | (int)r1.x;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r1.xxx ? r3.xyz : r0.xyz;
  }
  r3.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r1.w;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}