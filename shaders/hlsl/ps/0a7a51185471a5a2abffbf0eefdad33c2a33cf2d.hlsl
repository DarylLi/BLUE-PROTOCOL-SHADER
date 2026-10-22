// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[18];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.yzx + r0.xyz;
  r0.xyz = r3.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.w = dot(r0.zxy, r2.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb1[14].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.999000013 + 0.00100000005;
  r2.xyz = cb1[2].xyz * r1.www;
  r3.xy = float2(-0.5,-0.5) + v2.xy;
  r4.x = dot(r3.xy, float2(0.770513237,0.637423992));
  r4.y = dot(r3.xy, float2(-0.637423992,0.770513237));
  r3.xy = float2(0.5,0.5) + r4.xy;
  r3.zw = cb1[15].xx * r3.xy;
  r3.zw = cb0[142].zz * cb1[14].ww + r3.zw;
  r3.zw = t4.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
  r4.xyz = cb1[4].xyz * r3.www;
  r4.xyz = cb1[15].yyy * r4.xyz;
  r5.xy = cb1[16].xx * r3.xy;
  r5.xy = cb0[142].zz * cb1[15].ww + r5.xy;
  r1.w = t4.SampleBias(s1_s, r5.xy, cb0[143].y).y;
  r5.xyz = cb1[4].xyz * r1.www;
  r5.xyz = cb1[16].yyy * r5.xyz;
  r5.xyz = float3(0.200000003,0.200000003,0.200000003) * r5.xyz;
  r3.xy = cb0[142].zz * float2(0.100000001,0.100000001) + r3.xy;
  r1.w = t4.SampleBias(s1_s, r3.xy, cb0[143].y).z;
  r1.w = 3 * r1.w;
  r3.xyw = r1.www * r5.xyz + cb1[7].xyz;
  r3.xyz = r3.zzz * r4.xyz + r3.xyw;
  r4.xy = t4.SampleBias(s1_s, v2.xy, cb0[143].y).xz;
  r3.xyz = cb1[10].xyz * r4.xxx + r3.xyz;
  r2.xyz = r2.xyz * cb1[14].yyy + r3.xyz;
  r3.xyz = cb1[12].xyz * r2.xyz;
  r4.xzw = -r2.xyz * cb1[12].xyz + cb1[13].xyz;
  r3.xyz = cb1[17].xxx * r4.xzw + r3.xyz;
  r1.w = max(0.100000001, r4.y);
  r1.w = min(0.5, r1.w);
  r2.xyz = saturate(r2.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = (int)w4.x * 15;
  r4.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r4.x].val[4/4];
  r5.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r6.x = t1[r4.y].val[0/4];
  r6.y = t1[r4.y].val[0/4+1];
  r6.z = t1[r4.y].val[0/4+2];
  r6.w = t1[r4.y].val[0/4+3];
  r7.xyzw = r6.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * r6.xyzw + r7.xyzw);
  r6.x = t1[r1.w].val[0/4];
  r6.y = t1[r1.w].val[0/4+1];
  r6.z = t1[r1.w].val[0/4+2];
  r6.w = t1[r1.w].val[0/4+3];
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = r5.xyzw * r6.xyzw;
  r5.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r7.xyz : r5.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r4.xy = float2(1,0.5) * v3.xy;
  r7.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s0_s, r4.xy).xyzw;
  r7.xyzw = t2.Sample(s0_s, r7.xy).xyzw;
  r2.w = r7.w * 0.00392156886 + r8.w;
  r2.w = -0.00196078443 + r2.w;
  r9.x = t1[r4.z].val[0/4];
  r9.y = t1[r4.z].val[0/4+1];
  r9.z = t1[r4.z].val[0/4+2];
  r9.w = t1[r4.z].val[0/4+3];
  r4.x = t1[r4.w].val[0/4];
  r4.y = t1[r4.w].val[0/4+1];
  r4.z = t1[r4.w].val[0/4+2];
  r4.w = t1[r4.w].val[0/4+3];
  r2.w = r2.w * r9.w + r4.w;
  r8.xyz = r8.xyz * r8.xyz;
  r4.xyz = r8.xyz * r9.xyz + r4.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.xy = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r9.x = t1[r8.x].val[0/4];
  r9.y = t1[r8.x].val[0/4+1];
  r9.z = t1[r8.x].val[0/4+2];
  r9.w = t1[r8.x].val[0/4+3];
  r8.x = t1[r8.y].val[0/4];
  r8.y = t1[r8.y].val[0/4+1];
  r8.z = t1[r8.y].val[0/4+2];
  r8.w = t1[r8.y].val[0/4+3];
  r7.xyzw = r7.xyzw * r9.xyzw + r8.xyzw;
  r0.w = 1;
  r0.w = dot(r7.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r4.xyz = r0.www * r4.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r5.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.xyz = r7.xyz * r4.xyz;
  r5.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r1.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r2.www ? r1.xyz : r3.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r4.xyz;
  r1.xyz = r1.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}