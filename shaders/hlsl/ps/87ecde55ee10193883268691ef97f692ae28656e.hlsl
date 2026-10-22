// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = cb2[9].xx * v2.xy;
  r0.w = cb2[9].y * cb0[142].z;
  r1.w = cb2[9].y * cb0[142].z + -0.5;
  r1.w = frac(r1.w);
  r2.zw = t3.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r2.zw = float2(-0.5,-0.5) + r2.zw;
  r2.zw = cb2[9].zz * r2.zw;
  r2.zw = float2(-2,2) * r2.zw;
  r3.xy = r1.ww * r2.zw + r2.xy;
  r3.xy = cb2[3].xy + r3.xy;
  r3.zw = t4.SampleBias(s2_s, r3.xy, cb0[143].y).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r0.w = frac(r0.w);
  r2.xy = r2.zw * r0.ww + r2.xy;
  r2.zw = t4.SampleBias(s2_s, r2.xy, cb0[143].y).xy;
  r5.xy = r2.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r1.w = r0.w + r0.w;
  r0.w = 1 + -r0.w;
  r2.z = floor(r1.w);
  r0.w = r0.w * 2 + -r1.w;
  r0.w = r2.z * r0.w + r1.w;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r0.www * r5.xyz + r4.xyz;
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[9].www * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r1.www * r0.xyz;
  r0.xyz = t5.SampleBias(s3_s, r3.xy, cb0[143].y).xyz;
  r5.xyz = t5.SampleBias(s3_s, r2.xy, cb0[143].y).xyz;
  r5.xyz = r5.xyz + -r0.xyz;
  r0.xyz = r0.www * r5.xyz + r0.xyz;
  r0.xyz = cb2[5].xyz * r0.xyz;
  r5.xyz = cb2[10].xxx * r0.xyz;
  r0.xyz = -r0.xyz * cb2[10].xxx + cb2[6].xyz;
  r0.xyz = cb2[10].yyy * r0.xyz + r5.xyz;
  r5.xyz = t6.SampleBias(s4_s, r3.xy, cb0[143].y).xyz;
  r6.xyz = t6.SampleBias(s4_s, r2.xy, cb0[143].y).xyz;
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r0.www * r6.xyz + r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r5.xyz;
  r5.xyz = cb2[11].xxx * r6.xyz + r5.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[10].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = saturate(cb2[8].xyz * r5.xyz);
  r2.zw = t7.SampleBias(s5_s, r3.xy, cb0[143].y).xy;
  r2.xy = t7.SampleBias(s5_s, r2.xy, cb0[143].y).xy;
  r2.xy = r2.yx + -r2.wz;
  r2.xy = r0.ww * r2.xy + r2.wz;
  r2.xy = saturate(cb2[11].yz + r2.xy);
  o2.z = r2.y * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r2.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.yzw = max(float3(0,0,0), r2.yzw);
    r2.yzw = min(float3(0.99000001,0.99000001,0.99000001), r2.yzw);
    r2.yzw = cb0[213].xyz * r2.yzw;
    r3.xyz = (int3)r2.yzw;
    r3.w = 0;
    r3.xyzw = t0.Load(r3.xyzw).xyzw;
    r3.xyzw = (uint4)r3.xyzw;
    r0.w = 1 + cb0[213].w;
    r2.yzw = r2.yzw / r3.www;
    r2.yzw = frac(r2.yzw);
    r2.yzw = cb0[213].www * r2.yzw;
    r2.yzw = r3.xyz * r0.www + r2.yzw;
    r2.yzw = float3(0.5,0.5,0.5) + r2.yzw;
    r2.yzw = cb0[214].xyz * r2.yzw;
    r0.w = t1.SampleLevel(s0_s, r2.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r2.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r5.xyz;
  r2.yzw = r2.xxx * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r3.xyz = -r5.xyz * r2.xxx + r5.xyz;
  r3.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r2.yzw = r2.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r2.yzw;
  r2.yzw = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r2.yzw = r1.www ? r2.yzw : r3.xyz;
  r3.x = t2[0].val[0/4];
  r3.y = t2[0].val[0/4+1];
  r3.z = t2[0].val[0/4+2];
  r3.w = t2[0].val[0/4+3];
  r4.w = 1;
  r3.x = dot(r3.xyzw, r4.xyzw);
  r7.x = t2[1].val[0/4];
  r7.y = t2[1].val[0/4+1];
  r7.z = t2[1].val[0/4+2];
  r7.w = t2[1].val[0/4+3];
  r3.y = dot(r7.xyzw, r4.xyzw);
  r7.x = t2[2].val[0/4];
  r7.y = t2[2].val[0/4+1];
  r7.z = t2[2].val[0/4+2];
  r7.w = t2[2].val[0/4+3];
  r3.z = dot(r7.xyzw, r4.xyzw);
  r7.xyzw = r4.xyzz * r4.yzzx;
  r8.x = t2[3].val[0/4];
  r8.y = t2[3].val[0/4+1];
  r8.z = t2[3].val[0/4+2];
  r8.w = t2[3].val[0/4+3];
  r8.x = dot(r8.xyzw, r7.xyzw);
  r9.x = t2[4].val[0/4];
  r9.y = t2[4].val[0/4+1];
  r9.z = t2[4].val[0/4+2];
  r9.w = t2[4].val[0/4+3];
  r8.y = dot(r9.xyzw, r7.xyzw);
  r9.x = t2[5].val[0/4];
  r9.y = t2[5].val[0/4+1];
  r9.z = t2[5].val[0/4+2];
  r9.w = t2[5].val[0/4+3];
  r8.z = dot(r9.xyzw, r7.xyzw);
  r3.w = r4.y * r4.y;
  r3.w = r4.x * r4.x + -r3.w;
  r7.x = t2[6].val[0/4];
  r7.y = t2[6].val[0/4+1];
  r7.z = t2[6].val[0/4+2];
  r3.xyz = r8.xyz + r3.xyz;
  r3.xyz = r7.xyz * r3.www + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = cb0[187].xyz * r3.xyz;
  r3.xyz = r3.xyz * r2.yzw;
  r7.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r3.xyz = r7.xyz * r3.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r2.yzw = r6.xyz + r2.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r1.www ? r1.xyz : r0.xyz;
  }
  r1.xyz = cb0[145].yyy * r2.yzw + r3.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r2.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}