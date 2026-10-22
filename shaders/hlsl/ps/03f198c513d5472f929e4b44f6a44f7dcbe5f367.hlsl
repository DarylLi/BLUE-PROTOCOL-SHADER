// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[15];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float3 v4 : TEXCOORD9,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r4.xyz = -cb0[70].xyz + v4.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = r4.xy / cb5[8].zz;
  r5.xy = t6.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r5.xy = -r5.xy;
  r5.z = v1.z * r0.w;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r5.xyz = r5.xyz / r0.www;
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.xyz, r5.xyz);
  r6.z = dot(v1.xyz, r5.xyz);
  r5.xyz = float3(0,0,1) + -r6.xyz;
  r5.xyz = cb5[8].www * r5.xyz + r6.xyz;
  r6.xy = r4.xy / cb5[9].zz;
  r6.zw = t7.SampleBias(s4_s, r6.xy, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.zw, r6.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r6.zw;
  r7.z = v1.z * r0.w;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb5[9].www * r7.xyz + r8.xyz;
  r4.xyz = r4.xyz / cb5[10].zzz;
  r0.w = t8.Sample(s0_s, r4.xz).x;
  r2.w = t8.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r0.w;
  r0.w = r4.z * r2.w + r0.w;
  r2.w = t8.Sample(s0_s, r4.xy).x;
  r2.w = r2.w + -r0.w;
  r0.w = r4.w * r2.w + r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[10].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb5[11].x * r0.w;
  r0.w = r2.w ? 0 : r0.w;
  r0.w = saturate(-v2.z + r0.w);
  r0.w = saturate(v2.y + r0.w);
  r4.xyz = r7.xyz + -r5.xyz;
  r4.xyz = r0.www * r4.xyz + r5.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r4.yzw = r2.www * r0.xyz;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r5.xyz = -cb4[5].xyz / r3.www;
  r3.w = dot(r5.xyz, r4.yzw);
  r3.w = 1 + r3.w;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = sqrt(r5.w);
  r7.xyz = r7.xyz / r5.www;
  r5.x = saturate(dot(-r7.xyz, r5.xyz));
  r5.y = 1 + -cb3[1].x;
  r5.x = saturate(r5.x + r5.y);
  r3.w = r5.x * r3.w;
  r5.x = dot(r4.yzw, r2.xyz);
  r5.x = max(0, r5.x);
  r5.x = 1 + -r5.x;
  r5.x = max(9.99999975e-005, abs(r5.x));
  r5.x = log2(r5.x);
  r5.z = cb3[1].y * r5.x;
  r5.z = exp2(r5.z);
  r5.w = 1 + -cb3[0].w;
  r5.z = r5.z * r5.w + cb3[0].w;
  r5.w = cmp(r5.z >= cb3[0].y);
  r5.w = r5.w ? 1.000000 : 0;
  r5.z = r5.w * r5.z;
  r5.w = r0.z * r2.w + 1;
  r6.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb3[0].x * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.z ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.w = -r0.z * r2.w + 1;
  r6.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb3[1].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.z ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.z = cb3[0].z * r5.z;
  r3.w = r5.z * r3.w;
  r8.xyz = cb4[4].xyz * r3.www;
  r3.w = dot(-cb4[8].xyz, -cb4[8].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb4[8].xyz / r3.www;
  r3.w = dot(r9.xyz, r4.yzw);
  r3.w = 1 + r3.w;
  r5.w = saturate(dot(-r7.xyz, r9.xyz));
  r5.y = saturate(r5.w + r5.y);
  r3.w = r5.y * r3.w;
  r3.w = r3.w * r5.z;
  r5.yzw = cb4[9].xyz * r3.www;
  r5.yzw = cb4[1].yyy * r5.yzw;
  r5.yzw = r8.xyz * cb4[1].xxx + r5.yzw;
  r5.yzw = cb3[2].xyz * r5.yzw;
  r7.xyz = cb5[2].xyz * r5.yzw;
  r5.yzw = -r5.yzw * cb5[2].xyz + cb5[3].xyz;
  r5.yzw = cb5[11].yyy * r5.yzw + r7.xyz;
  r6.zw = r3.xy / cb5[8].zz;
  r7.xyz = t9.Sample(s0_s, r6.zw).xyz;
  r7.xyz = cb5[5].xyz * r7.xyz;
  r6.zw = r3.xy / cb5[9].zz;
  r8.xyz = t10.Sample(s0_s, r6.zw).xyz;
  r8.xyz = r8.xyz * cb5[7].xyz + -r7.xyz;
  r7.xyz = r0.www * r8.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.zw = t11.Sample(s0_s, r1.zw).xy;
  r6.xy = t12.Sample(s0_s, r6.xy).xy;
  r3.w = r6.y + -r1.w;
  r8.x = saturate(r0.w * r3.w + r1.w);
  r1.w = cb5[11].z * r5.x;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb5[11].w * r1.w;
  r3.w = saturate(cb5[12].y + v1.z);
  r1.w = r3.w * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r8.y = saturate(cb5[12].z * r1.w);
  r1.z = cb5[12].w + r1.z;
  r1.w = cb5[13].x + r6.x;
  r1.w = r1.w + -r1.z;
  r0.w = saturate(r0.w * r1.w + r1.z);
  r1.zw = -cb0[129].xy + v5.xy;
  r6.xy = cb0[152].xx + r1.zw;
  r6.xy = (uint2)r6.xy;
  r3.w = (uint)r6.y << 1;
  r3.w = (int)r3.w + (int)r6.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t13.SampleBias(s5_s, r1.zw, cb0[143].y).x;
  r1.z = r3.w + r1.z;
  r1.z = cb5[13].y * r1.z;
  r1.z = 0.166666672 * r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r5.x = r1.x * cb0[65].z + -cb0[65].w;
  r5.x = 1 / r5.x;
  r3.w = r5.x + r3.w;
  r1.w = r1.w ? r1.y : r3.w;
  r1.w = r1.w / cb5[13].z;
  r3.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[13].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = cb5[14].x * r1.w;
  r1.w = max(1, r1.w);
  r1.w = r3.w ? 1 : r1.w;
  r1.z = r1.z * r1.w + r1.y;
  r1.z = r1.x / r1.z;
  r1.z = min(v5.z, r1.z);
  r1.x = -r1.z * r1.y + r1.x;
  r1.x = r1.x / r1.z;
  r1.xyw = r2.xyz * r1.xxx + r3.xyz;
  r2.x = cmp(0.00100000005 < abs(v3.w));
  r2.yz = floor(v5.xy);
  r2.y = dot(r2.yz, float2(347.834503,3343.28369));
  r2.y = cos(r2.y);
  r2.y = 1000 * r2.y;
  r2.y = frac(r2.y);
  r2.z = cmp(v3.w < 0);
  r3.x = 1 + v3.w;
  r3.x = cmp(r2.y < r3.x);
  r2.y = cmp(v3.w < r2.y);
  r2.y = r2.z ? r3.x : r2.y;
  r2.y = cmp((int)r2.y == 0);
  r2.x = r2.x ? r2.y : 0;
  if (r2.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb0[215].x);
  r3.x = cmp(0 < cb1[20].z);
  if (r3.x != 0) {
    r3.xyz = r1.xyw * cb0[211].xyz + cb0[212].xyz;
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
    r3.xyz = cb0[213].xyz * r3.xyz;
    r6.xyz = (int3)r3.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r3.w = 1 + cb0[213].w;
    r3.xyz = r3.xyz / r6.www;
    r3.xyz = frac(r3.xyz);
    r3.xyz = cb0[213].www * r3.xyz;
    r3.xyz = r6.xyz * r3.www + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = cb0[214].xyz * r3.xyz;
    r3.x = t1.SampleLevel(s1_s, r3.xyz, 0).x;
  } else {
    r3.y = cmp(0 < cb1[18].w);
    r3.y = r0.w ? r3.y : 0;
    r3.x = r3.y ? cb2[5].x : 1;
  }
  r3.y = 0.0799999982 * r8.y;
  r6.xyz = -r8.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r3.yzw = r8.xxx * r6.xyz + r3.yyy;
  r6.xyz = -r2.xyz * r8.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r3.yzw = r3.yzw * cb0[137].www + cb0[137].xyz;
  r5.x = cmp(0 != cb0[183].w);
  r7.xyz = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r5.xxx ? r7.xyz : r6.xyz;
  r3.yzw = r5.xxx ? float3(0,0,0) : r3.yzw;
  r5.x = dot(r3.yzw, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r5.x * 2.04040003 + -0.332399994;
  r6.w = r5.x * -4.79510021 + r6.w;
  r5.x = r5.x * 2.75519991 + r6.w;
  r5.x = 1.33200002 + r5.x;
  r5.x = max(1, r5.x);
  if (r0.w != 0) {
    r7.xyz = r1.xyw * cb2[1].xyz + cb2[0].xyz;
    r7.xyz = max(cb2[2].xyz, r7.xyz);
    r7.xyz = min(cb2[3].xyz, r7.xyz);
    r9.xyzw = t3.Sample(s2_s, r7.xyz).xyzw;
    r10.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r7.xyzw = t5.Sample(s1_s, r7.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
    r12.xw = r9.xw;
    r12.y = r10.x;
    r12.z = r7.x;
    r11.x = 0.886227548;
    r12.x = dot(r12.xyzw, r11.xyzw);
    r13.x = r9.y;
    r13.yw = r10.yw;
    r13.z = r7.y;
    r12.y = dot(r13.xyzw, r11.xyzw);
    r7.x = r9.z;
    r7.y = r10.z;
    r12.z = dot(r7.xyzw, r11.xyzw);
    r7.xyz = max(float3(0,0,0), r12.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r4.x = 1;
    r9.xyzw = r0.wwww ? cb2[4].wxyz : r4.xyzw;
    r0.w = 1 + -r9.x;
    r0.w = -r0.w * r0.w + 1;
    r0.xyz = r0.xyz * r2.www + -r9.yzw;
    r10.xyz = r0.www * r0.xyz + r9.yzw;
    r0.x = saturate(dot(r9.yzw, r4.yzw));
    r0.y = 1 + -r0.x;
    r9.y = r0.w * r0.y + r0.x;
  } else {
    r10.xyz = r4.yzw;
    r9.xy = float2(1,1);
  }
  r0.x = t2[0].val[0/4];
  r0.y = t2[0].val[0/4+1];
  r0.z = t2[0].val[0/4+2];
  r0.w = t2[0].val[0/4+3];
  r10.w = 1;
  r0.x = dot(r0.xyzw, r10.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r0.y = dot(r11.xyzw, r10.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r0.z = dot(r11.xyzw, r10.xyzw);
  r11.xyzw = r10.xyzz * r10.yzzx;
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
  r0.w = r10.y * r10.y;
  r0.w = r10.x * r10.x + -r0.w;
  r10.x = t2[6].val[0/4];
  r10.y = t2[6].val[0/4+1];
  r10.z = t2[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r10.xyz * r0.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r0.xyz = r7.xyz * r0.xyz;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.yzw = max(float3(0,0,0), r5.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xyz = -cb1[5].xyz + r1.xyw;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r1.x = dot(r1.xyw, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.yzw = r2.www ? r1.xyw : r5.yzw;
  }
  r0.xyz = cb0[145].yyy * r3.yzw + r0.xyz;
  r0.xyz = r0.xyz + r5.yzw;
  r1.xyw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyw = frac(r1.xyw);
  r1.xyw = r1.xyw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyw = r1.xyw * r1.xyy;
  r1.x = dot(r1.xyw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r5.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r8.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r1.z;
  return;
}