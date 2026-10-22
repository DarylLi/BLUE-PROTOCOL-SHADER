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

cbuffer cb2 : register(b2)
{
  float4 cb2[39];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r0.w = cb2[24].x + cb0[143].y;
  r3.xy = t3.SampleBias(s1_s, v2.xy, r0.w).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[24].yyy * r4.xyz + r3.xyz;
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
  r4.xy = cb2[24].zz * v2.xy;
  r0.w = -0.5 * cb2[24].w;
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
  r4.xyz = cb2[25].xxx * r6.xyz + r4.xyz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[25].y * r0.y;
  r0.y = exp2(r0.y);
  r4.xyz = cb2[2].xyz * r0.yyy;
  r0.yzw = r0.zzz ? float3(0,0,0) : r4.xyz;
  r1.w = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb2[25].z * r0.x;
  r0.x = exp2(r0.x);
  r4.xyz = cb2[4].xyz * r0.xxx;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r0.xyz = r4.xyz + r0.yzw;
  r0.w = cb0[142].z * cb2[26].x + v2.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb2[26].z + cb2[26].y;
  r0.w = cb2[26].w * r0.w;
  r1.w = cb2[27].x * cb0[142].z;
  r4.x = cb2[27].w * r1.w;
  r4.y = cb2[28].x * r1.w;
  r4.zw = v2.xy * cb2[28].yy + cb2[6].xy;
  r5.zw = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r6.x = t2[r5.z].val[0/4];
  r6.y = t2[r5.z].val[0/4+1];
  r6.z = t2[r5.z].val[0/4+2];
  r2.w = r6.x + r6.y;
  r2.w = r2.w + r6.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb1[2].x * r2.w;
  r6.y = 0.100000001 * r2.w;
  r6.x = 0;
  r6.xy = v2.xy * cb2[29].xx + r6.xy;
  r2.w = t5.SampleBias(s3_s, r6.xy, cb0[143].y).x;
  r3.w = 0.100000001 * r2.w;
  r2.w = cmp(0 >= r2.w);
  r3.w = log2(r3.w);
  r3.w = 1.5 * r3.w;
  r3.w = exp2(r3.w);
  r2.w = r2.w ? 0 : r3.w;
  r4.zw = r2.ww * cb2[29].yy + r4.zw;
  r4.xy = r4.xy + r4.zw;
  r3.w = -0.5 * cb2[29].z;
  r4.xy = r5.xy * r3.ww + r4.xy;
  r4.xyz = t6.SampleBias(s4_s, r4.xy, cb0[143].y).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb2[29].www * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r1.w = 1.5 * r1.w;
  r6.x = cb2[27].w * r1.w;
  r6.y = cb2[28].x * r1.w;
  r6.zw = v2.xy * cb2[30].xx + cb2[7].xy;
  r6.xy = r6.xy + r6.zw;
  r1.w = -0.5 * cb2[30].y;
  r6.xy = r5.xy * r1.ww + r6.xy;
  r6.xyz = t6.SampleBias(s4_s, r6.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb2[29].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = cb2[30].zzz * r6.xyz + float3(1,1,1);
  r4.xyz = r6.xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r0.w = cb0[142].z * cb2[30].w + v2.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb2[31].y + cb2[31].x;
  r0.w = cb2[31].z * r0.w;
  r1.w = cb2[31].w * cb0[142].z;
  r6.xy = v2.xy * cb2[33].xx + cb2[11].xy;
  r6.xy = r2.ww * cb2[33].ww + r6.xy;
  r6.xy = r1.ww * cb2[32].zw + r6.xy;
  r6.zw = float2(-0.5,-0.5) * cb2[34].xw;
  r6.xy = r5.xy * r6.zz + r6.xy;
  r6.xyz = t7.SampleBias(s5_s, r6.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb2[34].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r1.w = 1.5 * r1.w;
  r7.xy = v2.xy * cb2[34].zz + cb2[12].xy;
  r7.xy = r1.ww * cb2[32].zw + r7.xy;
  r5.xy = r5.xy * r6.ww + r7.xy;
  r5.xyz = t7.SampleBias(s5_s, r5.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb2[34].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r7.xyz ? float3(0,0,0) : r5.xyz;
  r5.xyz = float3(-1,-1,-1) + r5.xyz;
  r5.xyz = cb2[35].xxx * r5.xyz + float3(1,1,1);
  r5.xyz = r6.xyz * r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = cb2[14].xyz * r5.xyz;
  r4.xyz = r4.xyz * cb2[9].xyz + r5.xyz;
  r0.xyz = r0.xyz * cb2[25].www + r4.xyz;
  r4.xy = t8.SampleBias(s6_s, v2.xy, cb0[143].y).xy;
  r0.w = cb2[35].y + r4.x;
  r1.w = 1 + -r0.w;
  r1.w = saturate(-cb2[35].z + r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = cb2[16].xyz * r0.xyz;
  r4.xzw = cb2[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb2[35].www + cb2[17].xyz;
  r0.xyz = cb2[36].xxx * r0.xyz + r4.xzw;
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = 1 + -abs(r1.x);
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb2[36].y * r1.y;
  r1.y = exp2(r1.y);
  r4.xzw = cb2[19].xyz * r1.yyy;
  r1.yzw = r1.zzz ? float3(0,0,0) : r4.xzw;
  r2.w = cmp(0 >= abs(r1.x));
  r1.x = log2(abs(r1.x));
  r1.x = cb2[36].z * r1.x;
  r1.x = exp2(r1.x);
  r4.xzw = cb2[21].xyz * r1.xxx;
  r4.xzw = r2.www ? float3(0,0,0) : r4.xzw;
  r1.xyz = r4.xzw + r1.yzw;
  r4.xzw = t9.SampleBias(s7_s, v2.xy, cb0[143].y).xyz;
  r1.w = dot(r4.xzw, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r1.www + -r4.xzw;
  r4.xzw = cb2[37].zzz * r5.xyz + r4.xzw;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xzw);
  r4.xzw = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xzw;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wxz;
  r5.xyz = r4.wxz * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb2[37].y, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r4.xzw = r4.xzw * r7.xxx + r5.xyz;
  r4.xzw = r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xzw;
  r4.xzw = cb2[23].xyz * r4.xzw;
  r5.xyz = cmp(float3(0,0,0) >= r4.xzw);
  r4.xzw = log2(r4.xzw);
  r4.xzw = cb2[37].www * r4.xzw;
  r4.xzw = exp2(r4.xzw);
  r4.xzw = r5.xyz ? float3(0,0,0) : r4.xzw;
  r1.xyz = saturate(r1.xyz * cb2[36].www + r4.xzw);
  r1.w = saturate(cb2[38].x + r4.y);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r4.x = t2[r5.w].val[4/4];
  r4.y = t2[r5.w].val[4/4+1];
  r0.w = cmp(0 < r4.y);
  if (r0.w != 0) {
    r4.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.yzw = max(float3(0,0,0), r4.yzw);
    r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
    r4.yzw = cb0[213].xyz * r4.yzw;
    r5.xyz = (int3)r4.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.w = 1 + cb0[213].w;
    r4.yzw = r4.yzw / r5.www;
    r4.yzw = frac(r4.yzw);
    r4.yzw = cb0[213].www * r4.yzw;
    r4.yzw = r5.xyz * r0.www + r4.yzw;
    r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
    r4.yzw = cb0[214].xyz * r4.yzw;
    r0.w = t1.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r4.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r1.xyz;
  r4.yzw = r1.www * r4.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r1.xyz * r1.www + r1.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r4.yzw;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r4.yzw = r2.www ? r4.yzw : r5.xyz;
  r5.xyz = r2.www ? float3(0,0,0) : r6.xyz;
  r4.yzw = r5.xyz + r4.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t2[r5.x].val[0/4];
    r5.z = t2[r5.x].val[0/4+1];
    r5.w = t2[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t2[r5.y].val[0/4];
    r6.y = t2[r5.y].val[0/4+1];
    r6.z = t2[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r2.w = (int)r5.y | (int)r5.x;
    r2.w = (int)r5.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r2.www ? r2.xyz : r0.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.yzw + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r2.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r1.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}