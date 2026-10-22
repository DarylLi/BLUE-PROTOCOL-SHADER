// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = cb1[9].xx * v2.xy;
  r0.w = cb1[9].y * cb0[142].z;
  r1.z = cb1[9].y * cb0[142].z + -0.5;
  r1.z = frac(r1.z);
  r2.xy = t4.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r2.xy = float2(-0.5,-0.5) + r2.xy;
  r2.xy = cb1[9].zz * r2.xy;
  r2.xy = float2(-2,2) * r2.xy;
  r1.zw = r1.zz * r2.xy + r1.xy;
  r1.zw = cb1[3].xy + r1.zw;
  r2.zw = t5.SampleBias(s2_s, r1.zw, cb0[143].y).xy;
  r3.xy = r2.zw * float2(2,2) + float2(-1,-1);
  r2.z = dot(r3.xy, r3.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r3.z = sqrt(r2.z);
  r0.w = frac(r0.w);
  r1.xy = r2.xy * r0.ww + r1.xy;
  r2.xy = t5.SampleBias(s2_s, r1.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.z = sqrt(r2.w);
  r2.w = r0.w + r0.w;
  r0.w = 1 + -r0.w;
  r3.w = floor(r2.w);
  r0.w = r0.w * 2 + -r2.w;
  r0.w = r3.w * r0.w + r2.w;
  r2.xyz = r2.xyz + -r3.xyz;
  r2.xyz = r0.www * r2.xyz + r3.xyz;
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb1[9].www * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.yzx + r0.xyz;
  r0.xyz = r2.zzz * v1.yzx + r0.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r2.xxx * r0.xyz;
  r0.xyz = t6.SampleBias(s3_s, r1.zw, cb0[143].y).xyz;
  r3.xyz = t6.SampleBias(s3_s, r1.xy, cb0[143].y).xyz;
  r3.xyz = r3.xyz + -r0.xyz;
  r0.xyz = r0.www * r3.xyz + r0.xyz;
  r0.xyz = cb1[5].xyz * r0.xyz;
  r3.xyz = cb1[10].xxx * r0.xyz;
  r0.xyz = -r0.xyz * cb1[10].xxx + cb1[6].xyz;
  r0.xyz = cb1[10].yyy * r0.xyz + r3.xyz;
  r3.xyz = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xyz;
  r4.xyz = t7.SampleBias(s4_s, r1.xy, cb0[143].y).xyz;
  r4.xyz = r4.xyz + -r3.xyz;
  r3.xyz = r0.www * r4.xyz + r3.xyz;
  r3.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r3.www + -r3.xyz;
  r3.xyz = cb1[11].xxx * r4.xyz + r3.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r4.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb1[10].w, r5.x, r6.x);
  r4.xyz = r5.xxx * r4.xyz;
  r3.xyz = r3.xyz * r6.xxx + r4.xyz;
  r3.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = saturate(cb1[8].xyz * r3.xyz);
  r1.zw = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xy;
  r1.xy = t8.SampleBias(s5_s, r1.xy, cb0[143].y).xy;
  r1.xy = r1.yx + -r1.wz;
  r1.xy = r0.ww * r1.xy + r1.wz;
  r1.xy = saturate(cb1[11].yz + r1.xy);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r0.w = (int)w4.x * 15;
  r4.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r4.x].val[4/4];
  r5.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r6.x = t1[r4.y].val[0/4];
  r6.y = t1[r4.y].val[0/4+1];
  r6.z = t1[r4.y].val[0/4+2];
  r6.w = t1[r4.y].val[0/4+3];
  r7.xyzw = r6.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * r6.xyzw + r7.xyzw);
  r6.x = t1[r0.w].val[0/4];
  r6.y = t1[r0.w].val[0/4+1];
  r6.z = t1[r0.w].val[0/4+2];
  r6.w = t1[r0.w].val[0/4+3];
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = r5.xyzw * r6.xyzw;
  r1.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r3.xyz;
  r1.yzw = r1.xxx * r1.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r3.xyz * r1.xxx + r3.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r1.yzw = r1.yzw * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r6.xyz = r1.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r0.www ? r6.xyz : r5.xyz;
  r1.yzw = r0.www ? float3(0,0,0) : r1.yzw;
  r0.w = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r0.w * 2.04040003 + -0.332399994;
  r3.w = r0.w * -4.79510021 + r3.w;
  r0.w = r0.w * 2.75519991 + r3.w;
  r0.w = 1.33200002 + r0.w;
  r0.w = max(1, r0.w);
  r4.xy = float2(1,0.5) * v3.xy;
  r6.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t2.Sample(s0_s, r4.xy).xyzw;
  r6.xyzw = t2.Sample(s0_s, r6.xy).xyzw;
  r3.w = r6.w * 0.00392156886 + r7.w;
  r3.w = -0.00196078443 + r3.w;
  r8.x = t1[r4.z].val[0/4];
  r8.y = t1[r4.z].val[0/4+1];
  r8.z = t1[r4.z].val[0/4+2];
  r8.w = t1[r4.z].val[0/4+3];
  r4.x = t1[r4.w].val[0/4];
  r4.y = t1[r4.w].val[0/4+1];
  r4.z = t1[r4.w].val[0/4+2];
  r4.w = t1[r4.w].val[0/4+3];
  r3.w = r3.w * r8.w + r4.w;
  r7.xyz = r7.xyz * r7.xyz;
  r4.xyz = r7.xyz * r8.xyz + r4.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r7.xy = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r8.x = t1[r7.x].val[0/4];
  r8.y = t1[r7.x].val[0/4+1];
  r8.z = t1[r7.x].val[0/4+2];
  r8.w = t1[r7.x].val[0/4+3];
  r7.x = t1[r7.y].val[0/4];
  r7.y = t1[r7.y].val[0/4+1];
  r7.z = t1[r7.y].val[0/4+2];
  r7.w = t1[r7.y].val[0/4+3];
  r6.xyzw = r6.xyzw * r8.xyzw + r7.xyzw;
  r2.w = 1;
  r2.w = dot(r6.xyzw, r2.xyzw);
  r2.w = max(0, r2.w);
  r2.w = r3.w * r2.w;
  r4.xyz = r2.www * r4.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r5.xyz;
  r6.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r4.xyz = r6.xyz * r4.xyz;
  r1.yzw = r1.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r5.xyzw = cb0[45].xyzw * v5.yyyy;
    r5.xyzw = v5.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v5.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r5.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r4.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r4.w = 0.00200000009 * r4.w;
    r4.w = frac(r4.w);
    r4.w = cmp(0.5 < r4.w);
    r5.xyz = r4.www ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r3.www ? r5.xyz : r0.xyz;
  }
  r1.yzw = cb0[145].yyy * r1.yzw + r4.xyz;
  r0.xyz = r1.yzw + r0.xyz;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r2.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r2.w * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.x = r1.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}