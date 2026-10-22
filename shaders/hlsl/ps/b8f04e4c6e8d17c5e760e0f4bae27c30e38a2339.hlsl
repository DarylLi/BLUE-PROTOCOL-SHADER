// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[20];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb3[2].x * r0.w;
  r0.w = cb5[9].x * r0.w;
  r4.x = cb5[9].w * r0.w;
  r4.y = cb5[10].x * r0.w;
  r0.w = cb5[10].y * cb0[142].z;
  r0.w = 0.25 * r0.w;
  sincos(r0.w, r5.x, r6.x);
  r7.x = -r5.x;
  r8.x = cb5[10].z * v2.x + cb5[10].w;
  r8.y = v2.y * cb5[11].x + cb5[11].y;
  r1.zw = float2(-0.5,-0.5) + r8.xy;
  r7.y = r6.x;
  r6.x = dot(r7.yx, r1.zw);
  r7.z = r5.x;
  r6.y = dot(r7.zy, r1.zw);
  r1.zw = r6.xy + r4.xy;
  r1.zw = float2(0.5,0.5) + r1.zw;
  r0.w = cb5[11].z + cb0[143].y;
  r4.xy = t5.SampleBias(s2_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[11].www * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = sqrt(r0.y);
  r6.xyz = r6.xyz / r0.yyy;
  r0.y = saturate(dot(-r6.xyz, r5.xyz));
  r2.w = 1 + -cb4[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb4[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb4[0].w;
  r2.x = r2.x * r2.y + cb4[0].w;
  r2.y = cmp(r2.x >= cb4[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb4[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb4[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r5.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb3[9].xyz * r0.xxx;
  r0.xzw = cb3[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb3[1].xxx + r0.xzw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb5[12].x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[12].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb5[12].z * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r2.xy = r1.zw / cb5[13].yy;
  r2.xy = cb5[13].zw + r2.xy;
  r2.xyz = t6.SampleBias(s3_s, r2.xy, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r5.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb5[13].x, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r2.xyz = r2.xyz * r7.xxx + r5.xyz;
  r2.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb5[3].xyz * r2.xyz;
  r5.xy = cb5[14].yy * v2.xy;
  r1.y = t7.SampleBias(s4_s, r5.xy, cb0[143].y).x;
  r2.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb5[14].z * r1.y;
  r1.y = exp2(r1.y);
  r1.y = cb5[14].w * r1.y;
  r1.y = r2.w ? 0 : r1.y;
  r1.y = cb0[142].z * cb5[14].x + r1.y;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * cb5[15].y + cb5[15].x;
  r1.y = max(cb5[15].w, r1.y);
  r1.y = min(cb5[15].z, r1.y);
  r1.y = cb5[16].x * r1.y;
  r1.y = cb3[3].y * r1.y;
  r2.xyz = r2.xyz * r1.yyy;
  r2.xyz = r2.xyz * r1.xxx;
  r0.xzw = cb4[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb5[5].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb5[5].xyz + cb5[6].xyz;
  r0.xzw = cb5[16].yyy * r0.xzw + r2.xyz;
  r2.xyz = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xyz;
  r1.x = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r1.xxx + -r2.xyz;
  r2.xyz = cb5[17].xxx * r5.xyz + r2.xyz;
  r1.x = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r5.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb5[16].w, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r2.xyz = r2.xyz * r7.xxx + r5.xyz;
  r2.xyz = r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb5[8].xyz * r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.xy = t9.SampleBias(s6_s, r1.zw, cb0[143].y).xy;
  r1.z = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[17].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.z ? 0 : r1.x;
  r1.x = saturate(cb5[17].z + r1.x);
  r5.x = saturate(cb5[17].w + r1.y);
  r0.y = cb5[18].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb5[18].y * r0.y;
  r1.y = saturate(cb5[18].w + v1.z);
  r0.y = r1.y * r0.y;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.y = min(0.5, r0.y);
  r5.y = saturate(cb5[19].x * r0.y);
  r1.yzw = min(float3(1,1,1), r2.xyz);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r0.y = cmp(0 < cb0[215].x);
  r1.x = cmp(0 < cb1[20].z);
  if (r1.x != 0) {
    r2.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.xyz = max(float3(0,0,0), r2.xyz);
    r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
    r2.xyz = cb0[213].xyz * r2.xyz;
    r6.xyz = (int3)r2.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.x = 1 + cb0[213].w;
    r2.xyz = r2.xyz / r6.www;
    r2.xyz = frac(r2.xyz);
    r2.xyz = cb0[213].www * r2.xyz;
    r2.xyz = r6.xyz * r1.xxx + r2.xyz;
    r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
    r2.xyz = cb0[214].xyz * r2.xyz;
    r1.x = t1.SampleLevel(s0_s, r2.xyz, 0).x;
  } else {
    r2.x = cmp(0 < cb1[18].w);
    r2.x = r0.y ? r2.x : 0;
    r1.x = r2.x ? cb2[5].x : 1;
  }
  r2.x = 0.0799999982 * r5.y;
  r2.yzw = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.yzw;
  r2.xyz = r5.xxx * r2.yzw + r2.xxx;
  r6.xyz = -r1.yzw * r5.xxx + r1.yzw;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r2.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r2.xyz = r2.www ? float3(0,0,0) : r2.xyz;
  r2.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  if (r0.y != 0) {
    r7.xyz = r3.xyz * cb2[1].xyz + cb2[0].xyz;
    r7.xyz = max(cb2[2].xyz, r7.xyz);
    r7.xyz = min(cb2[3].xyz, r7.xyz);
    r8.xyzw = t2.Sample(s1_s, r7.xyz).xyzw;
    r9.xyzw = t3.Sample(s0_s, r7.xyz).xyzw;
    r7.xyzw = t4.Sample(s0_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
    r11.xw = r8.xw;
    r11.y = r9.x;
    r11.z = r7.x;
    r10.x = 0.886227548;
    r11.x = dot(r11.xyzw, r10.xyzw);
    r12.x = r8.y;
    r12.yw = r9.yw;
    r12.z = r7.y;
    r11.y = dot(r12.xyzw, r10.xyzw);
    r7.x = r8.z;
    r7.y = r9.z;
    r11.z = dot(r7.xyzw, r10.xyzw);
    r7.xyz = max(float3(0,0,0), r11.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r7.xyz = cb0[157].xyz * r7.xyz;
  r0.y = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r1.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.yzw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r3.www ? r3.xyz : r0.xzw;
  }
  r2.xyz = cb0[145].yyy * r2.xyz + r7.xyz;
  r0.xzw = r2.xyz + r0.xzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.y = r0.y * r2.w;
  r0.y = r0.y * cb0[135].y + 0.00390625;
  r0.y = log2(r0.y);
  r0.y = r0.y * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r5.xy;
  o3.xyz = r1.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}