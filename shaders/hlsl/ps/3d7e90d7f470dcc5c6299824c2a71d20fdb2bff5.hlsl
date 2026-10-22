// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = mad((int2)v4.xx, int2(36,36), int2(4,20));
  r0.w = t2[r2.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v7.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r3.xyzw = t6.SampleBias(s2_s, v3.xy, cb0[143].y).wxyz;
  r2.xzw = float3(-0.5,-0.5,-0.5) + r3.yzw;
  r2.xzw = cb0[138].www * r2.xzw;
  r2.xzw = r2.xzw * float3(2,2,2) + cb0[138].xyz;
  r1.w = dot(r2.xzw, r2.xzw);
  r1.w = rsqrt(r1.w);
  r2.xzw = r2.xzw * r1.www;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.www * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.xzw = cb3[7].xxx * cb3[1].xyz;
  r4.xyzw = t7.SampleBias(s3_s, v3.xy, cb0[143].y).xyzw;
  r3.yzw = t8.SampleBias(s4_s, v3.xy, cb0[143].y).xyz;
  r0.w = cmp(cb1[0].x != 0.000000);
  r1.w = cmp(0.00100000005 < abs(cb1[0].x));
  r0.w = r0.w ? r1.w : 0;
  r5.xy = floor(v6.xy);
  r1.w = dot(r5.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r5.x = cmp(cb1[0].x < 0);
  r5.y = 1 + cb1[0].x;
  r5.y = cmp(r1.w < r5.y);
  r1.w = cmp(cb1[0].x < r1.w);
  r1.w = r5.x ? r5.y : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.w = r0.w ? r1.w : 0;
  if (r0.w != 0) discard;
  r0.w = v2.w * r4.w + -0.100000001;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r4.xyz = saturate(r4.xyz);
  r3.xyzw = saturate(r3.xyzw);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  r3.xyz = r3.yzw * cb0[136].www + cb0[136].xyz;
  r0.w = cmp(0 < cb0[215].x);
  r5.x = t2[r2.y].val[4/4];
  r5.y = t2[r2.y].val[4/4+1];
  r1.w = cmp(0 < r5.y);
  if (r1.w != 0) {
    r5.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.yzw = max(float3(0,0,0), r5.yzw);
    r5.yzw = min(float3(0.99000001,0.99000001,0.99000001), r5.yzw);
    r5.yzw = cb0[213].xyz * r5.yzw;
    r6.xyz = (int3)r5.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.w = 1 + cb0[213].w;
    r5.yzw = r5.yzw / r6.www;
    r5.yzw = frac(r5.yzw);
    r5.yzw = cb0[213].www * r5.yzw;
    r5.yzw = r6.xyz * r1.www + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) + r5.yzw;
    r5.yzw = cb0[214].xyz * r5.yzw;
    r1.w = t1.SampleLevel(s0_s, r5.yzw, 0).x;
  } else {
    r2.y = mad((int)v4.x, 36, 18);
    r2.y = t2[r2.y].val[12/4];
    r2.y = cmp(0 < r2.y);
    r2.y = r0.w ? r2.y : 0;
    r1.w = r2.y ? cb2[5].x : 1;
  }
  r5.yzw = saturate(r3.xyz);
  o4.xyz = sqrt(r5.yzw);
  r5.yzw = r4.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r2.y = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r5.yzw = r2.yyy ? r7.xyz : r5.yzw;
  r6.xyz = r2.yyy ? float3(0,0,0) : r6.xyz;
  r2.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.y * 2.04040003 + -0.332399994;
  r3.w = r2.y * -4.79510021 + r3.w;
  r2.y = r2.y * 2.75519991 + r3.w;
  r2.y = 1.33200002 + r2.y;
  r2.y = max(1, r2.y);
  if (r0.w != 0) {
    r7.xyz = r1.xyz * cb2[1].xyz + cb2[0].xyz;
    r7.xyz = max(cb2[2].xyz, r7.xyz);
    r7.xyz = min(cb2[3].xyz, r7.xyz);
    r8.xyzw = t3.Sample(s1_s, r7.xyz).xyzw;
    r9.xyzw = t4.Sample(s0_s, r7.xyz).xyzw;
    r7.xyzw = t5.Sample(s0_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
    r11.xw = r8.xw;
    r11.y = r9.x;
    r11.z = r7.x;
    r10.x = 0.886227548;
    r12.x = dot(r11.xyzw, r10.xyzw);
    r13.x = r8.y;
    r13.yw = r9.yw;
    r13.z = r7.y;
    r12.y = dot(r13.xyzw, r10.xyzw);
    r7.x = r8.z;
    r7.y = r9.z;
    r12.z = dot(r7.xyzw, r10.xyzw);
    r8.xyz = max(float3(0,0,0), r12.xyz);
    r8.xyz = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
    r9.yzw = float3(1.02332771,-1.02332771,1.02332771) * r0.yzx;
    r9.x = 0.886227548;
    r10.x = dot(r11.xyzw, r9.xyzw);
    r10.y = dot(r13.xyzw, r9.xyzw);
    r10.z = dot(r7.xyzw, r9.xyzw);
    r7.xyz = max(float3(0,0,0), r10.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r8.xyz = float3(0,0,0);
    r7.xyz = float3(0,0,0);
  }
  r8.xyz = cb0[157].xyz * r8.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r7.xyz * r3.xyz;
  r3.xyz = r8.xyz * r5.yzw + r3.xyz;
  r7.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r3.xyz = r7.xyz * r3.xyz;
  r5.yzw = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r2.xzw = max(float3(0,0,0), r2.xzw);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r1.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xzw = r3.www ? r1.xyz : r2.xzw;
  }
  r1.xyz = cb0[145].yyy * r5.yzw + r3.xyz;
  r1.xyz = r1.xyz + r2.xzw;
  r2.xzw = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xzw = frac(r2.xzw);
  r2.xzw = r2.xzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xzw = r2.xzw * r2.xzz;
  r2.x = dot(r2.xzw, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r2.y;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.xyw = float3(0,0.5,0.525490224);
  o3.xyz = r4.xyz;
  o4.w = 1;
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}