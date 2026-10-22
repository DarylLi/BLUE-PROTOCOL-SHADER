// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb3[39];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r0.w = cb3[24].x + cb0[143].y;
  r3.xy = t3.SampleBias(s1_s, v2.xy, r0.w).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[24].yyy * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = r3.yyy * r0.xyz;
  r3.xyw = r3.xxx * v0.xyz + r4.xyz;
  r3.xyz = r3.zzz * v1.xyz + r3.xyw;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xy = cb3[24].zz * v2.xy;
  r0.w = -0.5 * cb3[24].w;
  r5.x = dot(v0.xyz, r1.xyz);
  r5.y = dot(r0.xyz, r1.xyz);
  r4.xy = r5.xy * r0.ww + r4.xy;
  r4.xy = t4.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[25].xxx * r6.xyz + r4.xyz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[25].y * r0.y;
  r0.y = exp2(r0.y);
  r4.xyz = cb3[2].xyz * r0.yyy;
  r0.yzw = r0.zzz ? float3(0,0,0) : r4.xyz;
  r1.w = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb3[25].z * r0.x;
  r0.x = exp2(r0.x);
  r4.xyz = cb3[4].xyz * r0.xxx;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r0.xyz = r4.xyz + r0.yzw;
  r0.w = cb0[142].z * cb3[26].x + v2.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb3[26].z + cb3[26].y;
  r0.w = cb3[26].w * r0.w;
  r1.w = cb3[27].x * cb0[142].z;
  r4.x = cb3[27].w * r1.w;
  r4.y = cb3[28].x * r1.w;
  r4.zw = v2.xy * cb3[28].yy + cb3[6].xy;
  r5.zw = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r6.x = t2[r5.z].val[0/4];
  r6.y = t2[r5.z].val[0/4+1];
  r6.z = t2[r5.z].val[0/4+2];
  r2.w = r6.x + r6.y;
  r2.w = r2.w + r6.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb2[2].x * r2.w;
  r6.y = 0.100000001 * r2.w;
  r6.x = 0;
  r6.xy = v2.xy * cb3[29].xx + r6.xy;
  r2.w = t5.SampleBias(s3_s, r6.xy, cb0[143].y).x;
  r3.w = 0.100000001 * r2.w;
  r2.w = cmp(0 >= r2.w);
  r3.w = log2(r3.w);
  r3.w = 1.5 * r3.w;
  r3.w = exp2(r3.w);
  r2.w = r2.w ? 0 : r3.w;
  r4.zw = r2.ww * cb3[29].yy + r4.zw;
  r4.xy = r4.xy + r4.zw;
  r3.w = -0.5 * cb3[29].z;
  r4.xy = r5.xy * r3.ww + r4.xy;
  r4.xyz = t6.SampleBias(s4_s, r4.xy, cb0[143].y).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[29].www * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r1.w = 1.5 * r1.w;
  r6.x = cb3[27].w * r1.w;
  r6.y = cb3[28].x * r1.w;
  r6.zw = v2.xy * cb3[30].xx + cb3[7].xy;
  r6.xy = r6.xy + r6.zw;
  r1.w = -0.5 * cb3[30].y;
  r6.xy = r5.xy * r1.ww + r6.xy;
  r6.xyz = t6.SampleBias(s4_s, r6.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[29].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = cb3[30].zzz * r6.xyz + float3(1,1,1);
  r4.xyz = r6.xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r0.w = cb0[142].z * cb3[30].w + v2.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb3[31].y + cb3[31].x;
  r0.w = cb3[31].z * r0.w;
  r1.w = cb3[31].w * cb0[142].z;
  r6.xy = v2.xy * cb3[33].xx + cb3[11].xy;
  r6.xy = r2.ww * cb3[33].ww + r6.xy;
  r6.xy = r1.ww * cb3[32].zw + r6.xy;
  r6.zw = float2(-0.5,-0.5) * cb3[34].xw;
  r6.xy = r5.xy * r6.zz + r6.xy;
  r6.xyz = t7.SampleBias(s5_s, r6.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[34].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r1.w = 1.5 * r1.w;
  r7.xy = v2.xy * cb3[34].zz + cb3[12].xy;
  r7.xy = r1.ww * cb3[32].zw + r7.xy;
  r5.xy = r5.xy * r6.ww + r7.xy;
  r7.xyz = t7.SampleBias(s5_s, r5.xy, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb3[34].yyy * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r8.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = cb3[35].xxx * r7.xyz + float3(1,1,1);
  r6.xyz = r7.xyz * r6.xyz;
  r6.xyz = r6.xyz * r0.www;
  r6.xyz = cb3[14].xyz * r6.xyz;
  r4.xyz = r4.xyz * cb3[9].xyz + r6.xyz;
  r0.xyz = r0.xyz * cb3[25].www + r4.xyz;
  r4.xy = t8.SampleBias(s6_s, v2.xy, cb0[143].y).xy;
  r0.w = cb3[35].y + r4.x;
  r1.w = 1 + -r0.w;
  r1.w = saturate(-cb3[35].z + r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = cb3[16].xyz * r0.xyz;
  r4.xzw = cb3[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb3[35].www + cb3[17].xyz;
  r0.xyz = cb3[36].xxx * r0.xyz + r4.xzw;
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = 1 + -abs(r1.x);
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[36].y * r1.y;
  r1.y = exp2(r1.y);
  r4.xzw = cb3[19].xyz * r1.yyy;
  r1.yzw = r1.zzz ? float3(0,0,0) : r4.xzw;
  r2.w = cmp(0 >= abs(r1.x));
  r1.x = log2(abs(r1.x));
  r1.x = cb3[36].z * r1.x;
  r1.x = exp2(r1.x);
  r4.xzw = cb3[21].xyz * r1.xxx;
  r4.xzw = r2.www ? float3(0,0,0) : r4.xzw;
  r1.xyz = r4.xzw + r1.yzw;
  r4.xzw = t9.SampleBias(s7_s, v2.xy, cb0[143].y).xyz;
  r1.w = dot(r4.xzw, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r4.xzw;
  r4.xzw = cb3[37].zzz * r6.xyz + r4.xzw;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xzw);
  r4.xzw = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xzw;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wxz;
  r6.xyz = r4.wxz * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[37].y, r5.x, r7.x);
  r6.xyz = r6.xyz * r5.xxx;
  r4.xzw = r4.xzw * r7.xxx + r6.xyz;
  r4.xzw = r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xzw;
  r4.xzw = cb3[23].xyz * r4.xzw;
  r6.xyz = cmp(float3(0,0,0) >= r4.xzw);
  r4.xzw = log2(r4.xzw);
  r4.xzw = cb3[37].www * r4.xzw;
  r4.xzw = exp2(r4.xzw);
  r4.xzw = r6.xyz ? float3(0,0,0) : r4.xzw;
  r1.xyz = saturate(r1.xyz * cb3[36].www + r4.xzw);
  r1.w = saturate(cb3[38].x + r4.y);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb0[215].x);
  r4.x = t2[r5.w].val[4/4];
  r4.y = t2[r5.w].val[4/4+1];
  r2.w = cmp(0 < r4.y);
  if (r2.w != 0) {
    r4.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.yzw = max(float3(0,0,0), r4.yzw);
    r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
    r4.yzw = cb0[213].xyz * r4.yzw;
    r6.xyz = (int3)r4.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r2.w = 1 + cb0[213].w;
    r4.yzw = r4.yzw / r6.www;
    r4.yzw = frac(r4.yzw);
    r4.yzw = cb0[213].www * r4.yzw;
    r4.yzw = r6.xyz * r2.www + r4.yzw;
    r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
    r4.yzw = cb0[214].xyz * r4.yzw;
    r2.w = t1.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r3.w = t2[r5.z].val[12/4];
    r3.w = cmp(0 < r3.w);
    r3.w = r0.w ? r3.w : 0;
    r2.w = r3.w ? cb1[5].x : 1;
  }
  r4.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r1.xyz;
  r4.yzw = r1.www * r4.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r1.xyz * r1.www + r1.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r6.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r3.www ? r6.xyz : r5.xyz;
  r4.yzw = r3.www ? float3(0,0,0) : r4.yzw;
  r3.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r3.w * 2.04040003 + -0.332399994;
  r5.w = r3.w * -4.79510021 + r5.w;
  r3.w = r3.w * 2.75519991 + r5.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r6.xyz = r3.yzy * r3.yzx;
  r7.yw = r3.zz * r3.yx;
  r5.w = r3.x * r3.x + -r6.x;
  r8.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.yzx;
  r7.xz = r6.zy * float2(1,3) + float2(0,-1);
  r6.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r7.xyzw;
  r5.w = 0.429042608 * r5.w;
  r8.x = 0.886227548;
  r7.x = dot(cb1[6].xyzw, r8.xyzw);
  r7.y = dot(cb1[9].xyzw, r6.xyzw);
  r7.x = r7.x + r7.y;
  r7.x = cb1[12].x * r5.w + r7.x;
  r7.w = dot(cb1[7].xyzw, r8.xyzw);
  r9.x = dot(cb1[10].xyzw, r6.xyzw);
  r7.w = r9.x + r7.w;
  r7.y = cb1[12].y * r5.w + r7.w;
  r7.w = dot(cb1[8].xyzw, r8.xyzw);
  r6.x = dot(cb1[11].xyzw, r6.xyzw);
  r6.x = r7.w + r6.x;
  r7.z = cb1[12].z * r5.w + r6.x;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r6.xyz = r0.www ? r6.xyz : 0;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r5.x = cmp(0 < cb0[140].x);
  if (r5.x != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t2[r5.x].val[0/4];
    r5.z = t2[r5.x].val[0/4+1];
    r5.w = t2[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r7.x = t2[r5.y].val[0/4];
    r7.y = t2[r5.y].val[0/4+1];
    r7.z = t2[r5.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xzw));
    r5.x = (int)r5.y | (int)r5.x;
    r5.x = (int)r5.z | (int)r5.x;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r5.xxx ? r2.xyz : r0.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.yzw + r6.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r1.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}