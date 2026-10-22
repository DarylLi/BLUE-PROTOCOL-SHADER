// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

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
  float4 cb3[26];
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
  r1.zw = t4.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[14].xxx * r5.xyz + r4.xyz;
  r0.w = 1 + r4.z;
  r1.zw = cb3[14].yy * v2.xy;
  r1.zw = t5.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r5.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[14].zzz * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r1.z = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r0.www;
  r4.xyz = r4.xyw * r1.zzz + -r5.xyz;
  r5.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r6.xyz = r5.yyy * r0.xyz;
  r5.xyw = r5.xxx * v0.xyz + r6.xyz;
  r5.xyz = r5.zzz * v1.xyz + r5.xyw;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r6.yzw = r5.xyz * r0.www;
  r1.z = dot(r6.yzw, r2.xyz);
  r7.xyz = r6.yzw * r1.zzz;
  r7.xyz = r7.xyz * float3(2,2,2) + -r2.xyz;
  r1.z = 1 + -abs(r1.z);
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[14].w * r1.z;
  r1.z = exp2(r1.z);
  r8.xyz = cb3[2].xyz * r1.zzz;
  r8.xyz = cb3[15].xxx * r8.xyz;
  r8.xyz = r1.www ? float3(0,0,0) : r8.xyz;
  r9.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r9.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r1.z = dot(-r2.xyz, r4.xyz);
  r1.w = cb3[15].w * cb3[15].w;
  r2.w = -r1.z * r1.z + 1;
  r1.w = -r1.w * r2.w + 1;
  r3.w = sqrt(r1.w);
  r3.w = cb3[15].w * r1.z + r3.w;
  r1.w = cmp(r1.w >= 0);
  r9.xyz = r3.www * r4.xyz;
  r9.xyz = cb3[15].www * -r2.xyz + -r9.xyz;
  r9.xyz = r1.www ? r9.xyz : 0;
  r9.x = t11.Sample(s7_s, r9.xyz).x;
  r10.xy = cb3[16].zw * cb3[16].zw;
  r10.xy = -r10.xy * r2.ww + float2(1,1);
  r10.zw = sqrt(r10.xy);
  r1.zw = cb3[16].zw * r1.zz + r10.zw;
  r10.xy = cmp(r10.xy >= float2(0,0));
  r11.xyz = r1.zzz * r4.xyz;
  r11.xyz = cb3[16].zzz * -r2.xyz + -r11.xyz;
  r10.xzw = r10.xxx ? r11.xyz : 0;
  r9.y = t11.Sample(s7_s, r10.xzw).y;
  r4.xyz = r1.www * r4.xyz;
  r4.xyz = cb3[16].www * -r2.xyz + -r4.xyz;
  r4.xyz = r10.yyy ? r4.xyz : 0;
  r9.z = t11.Sample(s7_s, r4.xyz).z;
  r1.z = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.zzz + -r9.xyz;
  r4.xyz = cb3[17].xxx * r4.xyz + r9.xyz;
  r7.xyz = t11.Sample(s7_s, r7.xyz).xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r1.zzz + -r7.xyz;
  r7.xyz = cb3[17].xxx * r9.xyz + r7.xyz;
  r7.xyz = cb3[6].xyz * r7.xyz;
  r9.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb3[17].zzz * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r9.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = cb3[17].yyy * r7.xyz;
  r4.xyz = r4.xyz * cb3[17].yyy + r7.xyz;
  r1.zw = float2(0.100000001,0.100000001) * r6.yz;
  r7.xy = cmp(float2(0,0) >= r6.yz);
  r1.zw = log2(r1.zw);
  r1.zw = float2(1.5,1.5) * r1.zw;
  r1.zw = exp2(r1.zw);
  r1.zw = r7.xy ? float2(0,0) : r1.zw;
  r7.xy = cb3[18].xx * r1.zw;
  r7.xy = v2.xy * cb3[17].ww + r7.xy;
  r2.w = -0.5 * cb3[18].y;
  r9.x = dot(v0.xyz, r2.xyz);
  r9.y = dot(r0.xyz, r2.xyz);
  r0.xy = r9.xy * r2.ww + r7.xy;
  r0.xyz = t6.Sample(s0_s, r0.xy).xyz;
  r2.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb3[18].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r2.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb3[18].www * r0.xyz;
  r1.zw = cb3[19].yy * r1.zw;
  r1.zw = v2.xy * cb3[19].xx + r1.zw;
  r2.x = -0.5 * cb3[19].z;
  r1.zw = r9.xy * r2.xx + r1.zw;
  r2.xyz = t7.Sample(s0_s, r1.zw).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[19].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r7.xyz ? float3(0,0,0) : r2.xyz;
  r2.xyz = cb3[20].xxx * r2.xyz;
  r2.xyz = cb3[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * cb3[8].xyz + r2.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r2.xyz = t8.SampleBias(s4_s, v2.xy, cb0[143].y).xyz;
  r1.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.zzz + -r2.xyz;
  r2.xyz = cb3[20].www * r4.xyz + r2.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb3[20].z, r7.x, r9.x);
  r4.xyz = r7.xxx * r4.xyz;
  r2.xyz = r2.xyz * r9.xxx + r4.xyz;
  r2.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[12].xyz * r2.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[21].xxx * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r4.xyz ? float3(0,0,0) : r2.xyz;
  r4.xyz = r2.xyz + r0.xyz;
  r1.zw = t9.SampleBias(s5_s, v2.xy, cb0[143].y).xy;
  r1.z = cb3[21].y + r1.z;
  r2.w = saturate(1 + -r1.z);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r0.xyz = cb3[21].zzz * r0.xyz + r4.xyz;
  r0.xyz = r8.xyz + r0.xyz;
  r2.xyz = cb3[21].www * r0.xyz;
  r4.xyz = -cb3[21].www * r0.xyz + cb3[13].xyz;
  r2.xyz = cb3[22].xxx * r4.xyz + r2.xyz;
  r0.xyz = cb3[21].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r4.x = saturate(cb3[22].y + r1.w);
  r1.w = cb3[23].x * cb2[1].w;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.w + r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = cb3[23].y + r1.x;
  r4.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r2.w / r4.w);
  r3.w = -cb2[1].w * 0.649999976 + 8000;
  r2.w = r2.w * r3.w + r4.z;
  r1.y = r1.y / r2.w;
  r1.x = r1.x / cb3[23].y;
  r2.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.y = r1.w ? r1.y : r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[23].x));
  r1.w = 1 + cb3[23].x;
  r1.y = r1.y ? r1.w : 1.39999998;
  r7.xyz = -cb0[129].xxy + v4.xxy;
  r1.w = r7.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r1.y = r1.y + -r1.w;
  r4.zw = cb0[152].xx + r7.yz;
  r4.zw = (uint2)r4.zw;
  r1.w = (uint)r4.w << 1;
  r1.w = (int)r1.w + (int)r4.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r4.zw = float2(0.015625,0.015625) * r7.yz;
  r2.w = t10.SampleBias(s6_s, r4.zw, cb0[143].y).x;
  r1.w = r2.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r7.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r7.xyz, r7.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb3[24].x;
  r1.y = saturate(r1.y * cb3[24].w + -cb3[24].z);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * cb3[25].x + r1.w;
  r1.y = -0.5 + r1.y;
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r4.y = saturate(cb3[22].w);
  r1.z = saturate(r1.z);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.x = mad((int)v3.x, 36, 20);
  r1.y = cmp(0 < cb0[215].x);
  r1.x = t2[r1.x].val[4/4];
  r1.z = t2[r1.x].val[4/4+1];
  r1.z = cmp(0 < r1.z);
  if (r1.z != 0) {
    r7.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = min(float3(0.99000001,0.99000001,0.99000001), r7.xyz);
    r7.xyz = cb0[213].xyz * r7.xyz;
    r8.xyz = (int3)r7.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r1.z = 1 + cb0[213].w;
    r7.xyz = r7.xyz / r8.www;
    r7.xyz = frac(r7.xyz);
    r7.xyz = cb0[213].www * r7.xyz;
    r7.xyz = r8.xyz * r1.zzz + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r7.xyz = cb0[214].xyz * r7.xyz;
    r1.z = t1.SampleLevel(s1_s, r7.xyz, 0).x;
  } else {
    r1.w = mad((int)v3.x, 36, 18);
    r1.w = t2[r1.w].val[12/4];
    r1.w = cmp(0 < r1.w);
    r1.w = r1.y ? r1.w : 0;
    r1.z = r1.w ? cb1[5].x : 1;
  }
  r1.w = 0.0799999982 * r4.y;
  r7.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r7.xyz = r4.xxx * r7.xyz + r1.www;
  r8.xyz = -r0.xyz * r4.xxx + r0.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r9.xyz = r6.zwz * r6.zwy;
  r10.yw = r6.ww * r6.zy;
  r2.w = r6.y * r6.y + -r9.x;
  r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.zwy;
  r10.xz = r9.zy * float2(1,3) + float2(0,-1);
  r9.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r10.xyzw;
  r2.w = 0.429042608 * r2.w;
  r11.x = 0.886227548;
  r3.w = dot(cb1[6].xyzw, r11.xyzw);
  r4.z = dot(cb1[9].xyzw, r9.xyzw);
  r3.w = r4.z + r3.w;
  r10.x = cb1[12].x * r2.w + r3.w;
  r3.w = dot(cb1[7].xyzw, r11.xyzw);
  r4.z = dot(cb1[10].xyzw, r9.xyzw);
  r3.w = r4.z + r3.w;
  r10.y = cb1[12].y * r2.w + r3.w;
  r3.w = dot(cb1[8].xyzw, r11.xyzw);
  r4.z = dot(cb1[11].xyzw, r9.xyzw);
  r3.w = r4.z + r3.w;
  r10.z = cb1[12].z * r2.w + r3.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = r1.yyy ? r9.xyz : 0;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r6.x = 1;
    r10.xyzw = r1.yyyy ? cb1[4].wxyz : r6.xyzw;
    r1.y = 1 + -r10.x;
    r1.y = -r1.y * r1.y + 1;
    r5.xyz = r5.xyz * r0.www + -r10.yzw;
    r5.xyz = r1.yyy * r5.xyz + r10.yzw;
    r0.w = saturate(dot(r10.yzw, r6.yzw));
    r2.w = 1 + -r0.w;
    r10.y = r1.y * r2.w + r0.w;
  } else {
    r5.xyz = r6.yzw;
    r10.xy = float2(1,1);
  }
  r11.x = t3[0].val[0/4];
  r11.y = t3[0].val[0/4+1];
  r11.z = t3[0].val[0/4+2];
  r11.w = t3[0].val[0/4+3];
  r5.w = 1;
  r11.x = dot(r11.xyzw, r5.xyzw);
  r12.x = t3[1].val[0/4];
  r12.y = t3[1].val[0/4+1];
  r12.z = t3[1].val[0/4+2];
  r12.w = t3[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r5.xyzw);
  r12.x = t3[2].val[0/4];
  r12.y = t3[2].val[0/4+1];
  r12.z = t3[2].val[0/4+2];
  r12.w = t3[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r5.xyzw);
  r12.xyzw = r5.xyzz * r5.yzzx;
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
  r0.w = r5.y * r5.y;
  r0.w = r5.x * r5.x + -r0.w;
  r5.x = t3[6].val[0/4];
  r5.y = t3[6].val[0/4+1];
  r5.z = t3[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r5.xyz = r5.xyz * r0.www + r11.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r0.w = r10.x * r10.y;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = r9.xyz * cb0[157].xyz + r5.xyz;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r8.xyz;
  r9.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r5.xyz = r9.xyz * r5.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.y = cmp(0 < cb0[140].x);
  if (r1.y != 0) {
    r4.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r8.x = t2[r4.z].val[0/4];
    r8.y = t2[r4.z].val[0/4+1];
    r8.z = t2[r4.z].val[0/4+2];
    r8.xyz = -r8.xyz + r3.xyz;
    r9.x = t2[r4.w].val[0/4];
    r9.y = t2[r4.w].val[0/4+1];
    r9.z = t2[r4.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r8.xyz = cmp(r9.xyz < abs(r8.xyz));
    r1.y = (int)r8.y | (int)r8.x;
    r1.y = (int)r8.z | (int)r1.y;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.yyy ? r3.xyz : r2.xyz;
  }
  r3.xyz = cb0[145].yyy * r7.xyz + r5.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.y = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r6.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r1.x;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}