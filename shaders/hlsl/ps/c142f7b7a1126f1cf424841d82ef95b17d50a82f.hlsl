// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r3.xy = cb1[6].xx * v2.xy;
  r0.w = cb1[6].z + cb0[143].y;
  r3.zw = t3.SampleBias(s1_s, r3.xy, r0.w).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb1[6].www * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb1[7].xxx * cb1[1].xyz;
  r5.xyz = t4.SampleBias(s2_s, r3.xy, cb0[143].y).xyz;
  r1.w = t5.SampleBias(s3_s, r3.xy, cb0[143].y).z;
  r1.w = -1 + r1.w;
  r1.w = cb1[7].w * r1.w + 1;
  r3.xyz = r5.xyz * r1.www;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = -r5.xyz * r1.www + r2.www;
  r3.xyz = cb1[8].xxx * r5.xyz + r3.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r5.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb1[7].z, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r3.xyz = r3.xyz * r7.xxx + r5.xyz;
  r3.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb1[3].xyz * r3.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r1.w = dot(r0.zxy, r2.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb1[9].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb1[9].w * r1.w;
  r2.x = saturate(cb1[10].y + v1.z);
  r1.w = r2.x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r2.y = saturate(cb1[10].z * r1.w);
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r2.x = saturate(cb1[9].y);
  r1.w = saturate(cb1[10].w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r5.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r5.x].val[4/4];
  r1.w = 0.0799999982 * r2.y;
  r6.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r6.xyz = r2.xxx * r6.xyz + r1.www;
  r7.xyz = -r3.xyz * r2.xxx + r3.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = r1.w * 2.04040003 + -0.332399994;
  r2.z = r1.w * -4.79510021 + r2.z;
  r1.w = r1.w * 2.75519991 + r2.z;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r2.zw = float2(1,0.5) * v3.xy;
  r8.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t2.Sample(s0_s, r2.zw).xyzw;
  r8.xyzw = t2.Sample(s0_s, r8.xy).xyzw;
  r2.z = r8.w * 0.00392156886 + r9.w;
  r2.z = -0.00196078443 + r2.z;
  r10.x = t1[r5.y].val[0/4];
  r10.y = t1[r5.y].val[0/4+1];
  r10.z = t1[r5.y].val[0/4+2];
  r10.w = t1[r5.y].val[0/4+3];
  r11.x = t1[r5.z].val[0/4];
  r11.y = t1[r5.z].val[0/4+1];
  r11.z = t1[r5.z].val[0/4+2];
  r11.w = t1[r5.z].val[0/4+3];
  r2.z = r2.z * r10.w + r11.w;
  r5.xyz = r9.xyz * r9.xyz;
  r5.xyz = r5.xyz * r10.xyz + r11.xyz;
  r2.z = exp2(r2.z);
  r2.z = -0.0185813606 + r2.z;
  r9.x = t1[r5.w].val[0/4];
  r9.y = t1[r5.w].val[0/4+1];
  r9.z = t1[r5.w].val[0/4+2];
  r9.w = t1[r5.w].val[0/4+3];
  r2.w = mad((int)w4.x, 15, 7);
  r10.x = t1[r2.w].val[0/4];
  r10.y = t1[r2.w].val[0/4+1];
  r10.z = t1[r2.w].val[0/4+2];
  r10.w = t1[r2.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r9.xyzw + r10.xyzw;
  r0.w = 1;
  r0.w = dot(r8.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.z * r0.w;
  r5.xyz = r0.www * r5.xyz;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r7.xyz;
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r5.xyz = r8.xyz * r5.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r2.z = cmp(0 < cb0[140].x);
  if (r2.z != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r2.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t0[r2.z].val[0/4];
    r7.y = t0[r2.z].val[0/4+1];
    r7.z = t0[r2.z].val[0/4+2];
    r7.xyz = -r7.xyz + r1.xyz;
    r8.x = t0[r2.w].val[0/4];
    r8.y = t0[r2.w].val[0/4+1];
    r8.z = t0[r2.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.z = (int)r7.y | (int)r7.x;
    r2.z = (int)r7.z | (int)r2.z;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r2.zzz ? r1.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r6.xyz + r5.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r2.z = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r2.z = frac(r2.z);
  r2.z = -0.5 + r2.z;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.z * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.w = 0.75686276;
  o2.xy = r2.xy;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}