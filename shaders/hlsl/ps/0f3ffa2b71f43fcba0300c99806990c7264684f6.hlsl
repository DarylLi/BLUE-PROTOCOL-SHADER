// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[32];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r1.zw = t6.SampleBias(s3_s, v2.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[17].xxx * r5.xyz + r4.xyz;
  r0.w = 1 + r4.z;
  r1.zw = cb4[17].yy * v2.xy;
  r1.zw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r5.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[17].zzz * r6.xyz + r5.xyz;
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
  r1.z = cb4[17].w * r1.z;
  r1.z = exp2(r1.z);
  r8.xyz = cb4[2].xyz * r1.zzz;
  r8.xyz = cb4[18].xxx * r8.xyz;
  r8.xyz = r1.www ? float3(0,0,0) : r8.xyz;
  r9.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r9.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r1.z = dot(-r2.xyz, r4.xyz);
  r1.w = cb4[18].w * cb4[18].w;
  r2.w = -r1.z * r1.z + 1;
  r1.w = -r1.w * r2.w + 1;
  r3.w = sqrt(r1.w);
  r3.w = cb4[18].w * r1.z + r3.w;
  r1.w = cmp(r1.w >= 0);
  r9.xyz = r3.www * r4.xyz;
  r9.xyz = cb4[18].www * -r2.xyz + -r9.xyz;
  r9.xyz = r1.www ? r9.xyz : 0;
  r9.x = t14.Sample(s9_s, r9.xyz).x;
  r10.xy = cb4[19].zw * cb4[19].zw;
  r10.xy = -r10.xy * r2.ww + float2(1,1);
  r10.zw = sqrt(r10.xy);
  r1.zw = cb4[19].zw * r1.zz + r10.zw;
  r10.xy = cmp(r10.xy >= float2(0,0));
  r11.xyz = r1.zzz * r4.xyz;
  r11.xyz = cb4[19].zzz * -r2.xyz + -r11.xyz;
  r10.xzw = r10.xxx ? r11.xyz : 0;
  r9.y = t14.Sample(s9_s, r10.xzw).y;
  r4.xyz = r1.www * r4.xyz;
  r4.xyz = cb4[19].www * -r2.xyz + -r4.xyz;
  r4.xyz = r10.yyy ? r4.xyz : 0;
  r9.z = t14.Sample(s9_s, r4.xyz).z;
  r1.z = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.zzz + -r9.xyz;
  r4.xyz = cb4[20].xxx * r4.xyz + r9.xyz;
  r7.xyz = t14.Sample(s9_s, r7.xyz).xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r1.zzz + -r7.xyz;
  r7.xyz = cb4[20].xxx * r9.xyz + r7.xyz;
  r7.xyz = cb4[6].xyz * r7.xyz;
  r9.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb4[20].zzz * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r9.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = cb4[20].yyy * r7.xyz;
  r4.xyz = r4.xyz * cb4[20].yyy + r7.xyz;
  r1.zw = float2(0.100000001,0.100000001) * r6.yz;
  r7.xy = cmp(float2(0,0) >= r6.yz);
  r1.zw = log2(r1.zw);
  r1.zw = float2(1.5,1.5) * r1.zw;
  r1.zw = exp2(r1.zw);
  r1.zw = r7.xy ? float2(0,0) : r1.zw;
  r7.xy = cb4[21].xx * r1.zw;
  r7.xy = v2.xy * cb4[20].ww + r7.xy;
  r2.w = -0.5 * cb4[21].y;
  r9.x = dot(v0.xyz, r2.xyz);
  r9.y = dot(r0.xyz, r2.xyz);
  r0.xy = r9.xy * r2.ww + r7.xy;
  r0.xyz = t8.Sample(s0_s, r0.xy).xyz;
  r2.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb4[21].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r2.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb4[21].www * r0.xyz;
  r1.zw = cb4[22].yy * r1.zw;
  r1.zw = v2.xy * cb4[22].xx + r1.zw;
  r2.x = -0.5 * cb4[22].z;
  r1.zw = r9.xy * r2.xx + r1.zw;
  r2.xyz = t9.Sample(s0_s, r1.zw).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb4[22].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r7.xyz ? float3(0,0,0) : r2.xyz;
  r2.xyz = cb4[23].xxx * r2.xyz;
  r2.xyz = cb4[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * cb4[8].xyz + r2.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r2.xyz = t10.SampleBias(s5_s, v2.xy, cb0[143].y).xyz;
  r1.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.zzz + -r2.xyz;
  r2.xyz = cb4[23].www * r4.xyz + r2.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb4[23].z, r7.x, r9.x);
  r4.xyz = r7.xxx * r4.xyz;
  r2.xyz = r2.xyz * r9.xxx + r4.xyz;
  r2.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb4[12].xyz * r2.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb4[24].xxx * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r4.xyz ? float3(0,0,0) : r2.xyz;
  r4.xyz = r2.xyz + r0.xyz;
  r1.zw = t11.SampleBias(s6_s, v2.xy, cb0[143].y).xy;
  r1.z = cb4[24].y + r1.z;
  r2.w = saturate(1 + -r1.z);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r0.xyz = cb4[24].zzz * r0.xyz + r4.xyz;
  r0.xyz = r8.xyz + r0.xyz;
  r2.x = cb0[142].z * cb4[25].z + v2.x;
  r2.z = cb0[142].z * cb4[26].z + v2.y;
  r2.xy = cb4[26].yw * r2.xz;
  r2.x = t12.SampleBias(s7_s, r2.xy, cb0[143].y).x;
  r2.x = r2.x * cb4[27].y + -cb4[27].y;
  r2.y = cb4[27].w + -cb4[27].z;
  r2.y = saturate(cb4[28].x * r2.y + r2.x);
  r2.y = 1 + -r2.y;
  r2.yzw = cb4[24].www * r0.xyz + r2.yyy;
  r4.xyz = cb4[16].xyz + -r2.yzw;
  r2.yzw = cb4[28].yyy * r4.xyz + r2.yzw;
  r0.xyz = cb4[24].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r4.x = saturate(cb4[28].z + r1.w);
  r1.w = cb4[29].y * cb3[1].w;
  r3.w = cmp(cb0[31].w < 1);
  r4.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.z + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cb4[29].z + r1.x;
  r4.zw = float2(0.649999976,0.487499982) * cb3[1].ww;
  r3.w = cb3[1].w * 0.617499948 + -r1.x;
  r3.w = saturate(r3.w / r4.w);
  r4.w = -cb3[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r4.z;
  r1.y = r1.y / r3.w;
  r1.x = r1.x / cb4[29].z;
  r3.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.y = r1.w ? r1.y : r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[29].y));
  r1.w = 1 + cb4[29].y;
  r1.y = r1.y ? r1.w : 1.39999998;
  r7.xyz = -cb0[129].xxy + v3.xxy;
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
  r3.w = t13.SampleBias(s8_s, r4.zw, cb0[143].y).x;
  r1.w = r3.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r7.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r7.xyz, r7.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb4[30].y;
  r1.y = saturate(r1.y * cb4[31].x + -cb4[30].w);
  r1.y = r1.y * 3 + r1.w;
  r1.y = -1.5 + r1.y;
  r1.x = r1.x * r1.y;
  r1.y = saturate(cb4[28].x * cb4[27].w + r2.x);
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r4.y = saturate(cb4[29].x);
  r1.z = saturate(r1.z);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.x = cmp(0 < cb0[215].x);
  r1.y = cmp(0 < cb1[20].z);
  if (r1.y != 0) {
    r1.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r1.yzw = max(float3(0,0,0), r1.yzw);
    r1.yzw = min(float3(0.99000001,0.99000001,0.99000001), r1.yzw);
    r1.yzw = cb0[213].xyz * r1.yzw;
    r7.xyz = (int3)r1.yzw;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r2.x = 1 + cb0[213].w;
    r1.yzw = r1.yzw / r7.www;
    r1.yzw = frac(r1.yzw);
    r1.yzw = cb0[213].www * r1.yzw;
    r1.yzw = r7.xyz * r2.xxx + r1.yzw;
    r1.yzw = float3(0.5,0.5,0.5) + r1.yzw;
    r1.yzw = cb0[214].xyz * r1.yzw;
    r1.y = t1.SampleLevel(s1_s, r1.yzw, 0).x;
  } else {
    r1.z = cmp(0 < cb1[18].w);
    r1.z = r1.x ? r1.z : 0;
    r1.y = r1.z ? cb2[5].x : 1;
  }
  r1.z = 0.0799999982 * r4.y;
  r7.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r7.xyz = r4.xxx * r7.xyz + r1.zzz;
  r8.xyz = -r0.xyz * r4.xxx + r0.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.zzz ? r9.xyz : r8.xyz;
  r7.xyz = r1.zzz ? float3(0,0,0) : r7.xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r1.z * 2.04040003 + -0.332399994;
  r1.w = r1.z * -4.79510021 + r1.w;
  r1.z = r1.z * 2.75519991 + r1.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  if (r1.x != 0) {
    r9.xyz = r3.xyz * cb2[1].xyz + cb2[0].xyz;
    r9.xyz = max(cb2[2].xyz, r9.xyz);
    r9.xyz = min(cb2[3].xyz, r9.xyz);
    r10.xyzw = t3.Sample(s2_s, r9.xyz).xyzw;
    r11.xyzw = t4.Sample(s1_s, r9.xyz).xyzw;
    r9.xyzw = t5.Sample(s1_s, r9.xyz).xyzw;
    r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.zwy;
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
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r6.x = 1;
    r10.xyzw = r1.xxxx ? cb2[4].wxyz : r6.xyzw;
    r1.x = 1 + -r10.x;
    r1.x = -r1.x * r1.x + 1;
    r5.xyz = r5.xyz * r0.www + -r10.yzw;
    r5.xyz = r1.xxx * r5.xyz + r10.yzw;
    r0.w = saturate(dot(r10.yzw, r6.yzw));
    r1.w = 1 + -r0.w;
    r10.y = r1.x * r1.w + r0.w;
  } else {
    r5.xyz = r6.yzw;
    r10.xy = float2(1,1);
  }
  r11.x = t2[0].val[0/4];
  r11.y = t2[0].val[0/4+1];
  r11.z = t2[0].val[0/4+2];
  r11.w = t2[0].val[0/4+3];
  r5.w = 1;
  r11.x = dot(r11.xyzw, r5.xyzw);
  r12.x = t2[1].val[0/4];
  r12.y = t2[1].val[0/4+1];
  r12.z = t2[1].val[0/4+2];
  r12.w = t2[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r5.xyzw);
  r12.x = t2[2].val[0/4];
  r12.y = t2[2].val[0/4+1];
  r12.z = t2[2].val[0/4+2];
  r12.w = t2[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r5.xyzw);
  r12.xyzw = r5.xyzz * r5.yzzx;
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
  r0.w = r5.y * r5.y;
  r0.w = r5.x * r5.x + -r0.w;
  r5.x = t2[6].val[0/4];
  r5.y = t2[6].val[0/4+1];
  r5.z = t2[6].val[0/4+2];
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
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r8.xyz = -cb1[5].xyz + r3.xyz;
    r9.xyz = float3(1,1,1) + cb1[19].xyz;
    r8.xyz = cmp(r9.xyz < abs(r8.xyz));
    r1.x = (int)r8.y | (int)r8.x;
    r1.x = (int)r8.z | (int)r1.x;
    r1.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r3.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.xxx ? r3.xyz : r2.xyz;
  }
  r3.xyz = cb0[145].yyy * r7.xyz + r5.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r6.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}