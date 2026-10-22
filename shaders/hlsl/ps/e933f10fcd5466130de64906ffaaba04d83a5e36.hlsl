// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[18];
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
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.x = dot(r0.xyz, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.x = cb1[14].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x * 0.999000013 + 0.00100000005;
  r1.xyz = cb1[2].xyz * r1.xxx;
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
  r1.xyz = r1.xyz * cb1[14].yyy + r3.xyz;
  r3.xyz = cb1[12].xyz * r1.xyz;
  r4.xzw = -r1.xyz * cb1[12].xyz + cb1[13].xyz;
  r3.xyz = cb1[17].xxx * r4.xzw + r3.xyz;
  r1.w = max(0.100000001, r4.y);
  r1.w = min(0.5, r1.w);
  r1.xyz = saturate(r1.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = mad((int)v3.x, 36, 20);
  r4.x = t2[r1.w].val[4/4];
  r4.y = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r4.y);
  if (r1.w != 0) {
    r4.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.yzw = max(float3(0,0,0), r4.yzw);
    r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
    r4.yzw = cb0[213].xyz * r4.yzw;
    r5.xyz = (int3)r4.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r1.w = 1 + cb0[213].w;
    r4.yzw = r4.yzw / r5.www;
    r4.yzw = frac(r4.yzw);
    r4.yzw = cb0[213].www * r4.yzw;
    r4.yzw = r5.xyz * r1.www + r4.yzw;
    r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
    r4.yzw = cb0[214].xyz * r4.yzw;
    r1.w = t1.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r1.w = 1;
  }
  r4.yzw = r1.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.yzw;
  r4.yzw = r2.www ? r5.xyz : r4.yzw;
  r5.x = t3[0].val[0/4];
  r5.y = t3[0].val[0/4+1];
  r5.z = t3[0].val[0/4+2];
  r5.w = t3[0].val[0/4+3];
  r0.w = 1;
  r5.x = dot(r5.xyzw, r0.xyzw);
  r7.x = t3[1].val[0/4];
  r7.y = t3[1].val[0/4+1];
  r7.z = t3[1].val[0/4+2];
  r7.w = t3[1].val[0/4+3];
  r5.y = dot(r7.xyzw, r0.xyzw);
  r7.x = t3[2].val[0/4];
  r7.y = t3[2].val[0/4+1];
  r7.z = t3[2].val[0/4+2];
  r7.w = t3[2].val[0/4+3];
  r5.z = dot(r7.xyzw, r0.xyzw);
  r7.xyzw = r0.xyzz * r0.yzzx;
  r8.x = t3[3].val[0/4];
  r8.y = t3[3].val[0/4+1];
  r8.z = t3[3].val[0/4+2];
  r8.w = t3[3].val[0/4+3];
  r8.x = dot(r8.xyzw, r7.xyzw);
  r9.x = t3[4].val[0/4];
  r9.y = t3[4].val[0/4+1];
  r9.z = t3[4].val[0/4+2];
  r9.w = t3[4].val[0/4+3];
  r8.y = dot(r9.xyzw, r7.xyzw);
  r9.x = t3[5].val[0/4];
  r9.y = t3[5].val[0/4+1];
  r9.z = t3[5].val[0/4+2];
  r9.w = t3[5].val[0/4+3];
  r8.z = dot(r9.xyzw, r7.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r7.x = t3[6].val[0/4];
  r7.y = t3[6].val[0/4+1];
  r7.z = t3[6].val[0/4+2];
  r5.xyz = r8.xyz + r5.xyz;
  r5.xyz = r7.xyz * r0.www + r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r4.yzw;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r5.xyz = r7.xyz * r5.xyz;
  r6.xyz = r2.www ? float3(0,0,0) : r6.xyz;
  r4.yzw = r6.xyz + r4.yzw;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r0.www ? r2.xyz : r3.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.yzw + r5.xyz;
  r2.xyz = r2.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r0.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}