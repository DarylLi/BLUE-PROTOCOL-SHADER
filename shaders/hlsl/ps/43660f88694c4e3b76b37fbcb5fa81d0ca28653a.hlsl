// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyzw = float4(0.5,0.5,10,10) * v2.xyxy;
  r1.zw = t7.SampleBias(s2_s, r3.zw, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.x = cb0[138].w;
  r5.z = 1;
  r4.xyz = r5.xxz * r4.xyz;
  r5.x = 0.300000012;
  r5.z = cb0[138].w;
  r4.xyz = r4.xyz * r5.xxz + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.yzw = r0.xyz * r0.www;
  r5.xyz = cb2[2].xxx * cb2[1].xyz;
  r6.xyzw = float4(20,20,5,5) * v2.xyxy;
  r1.z = t8.SampleBias(s3_s, r6.xy, cb0[143].y).x;
  r1.z = r1.z * 0.600000024 + 0.400000006;
  r1.w = t8.SampleBias(s3_s, r6.zw, cb0[143].y).y;
  r2.w = cmp(cb0[31].w < 1);
  r3.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.z + r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.x = -24 + r1.x;
  r1.x = saturate(0.00066666666 * r1.x);
  r1.y = 1 + -r1.w;
  r1.y = r1.x * r1.y + r1.w;
  r2.w = r1.z * -2 + 1;
  r1.y = r1.y * r2.w + r1.z;
  r1.z = t8.SampleBias(s3_s, r3.xy, cb0[143].y).y;
  r2.w = r1.x * -r1.w + r1.w;
  r2.w = r2.w + r1.z;
  r3.x = 0.5 + -r2.w;
  r2.w = r3.x * 0.5 + r2.w;
  r2.w = r2.w * 0.365000039 + 0.294999987;
  r1.y = r2.w * r1.y;
  r1.y = 0.5 * r1.y;
  r1.w = r1.w * 0.300000012 + 0.699999988;
  r2.w = 1 + -r1.w;
  r1.x = r1.x * r2.w + r1.w;
  r1.x = saturate(r1.z * 0.5 + r1.x);
  r1.yzw = saturate(r1.yyy);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r1.x = mad((int)v3.x, 36, 20);
  r2.w = cmp(0 < cb0[215].x);
  r3.x = t2[r1.x].val[4/4];
  r3.y = t2[r1.x].val[4/4+1];
  r1.x = cmp(0 < r3.y);
  if (r1.x != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r6.xyz = (int3)r3.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.x = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r6.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r6.xyz * r1.xxx + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r1.x = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r3.y = mad((int)v3.x, 36, 18);
    r3.y = t2[r3.y].val[12/4];
    r3.y = cmp(0 < r3.y);
    r3.y = r2.w ? r3.y : 0;
    r1.x = r3.y ? cb1[5].x : 1;
  }
  r3.yzw = r1.www * cb0[136].www + cb0[136].xyz;
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r5.w = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.yzw;
  r3.yzw = r5.www ? r7.xyz : r3.yzw;
  r6.xyz = r5.www ? float3(0,0,0) : r6.xyz;
  r5.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r5.w * 2.04040003 + -0.332399994;
  r6.w = r5.w * -4.79510021 + r6.w;
  r5.w = r5.w * 2.75519991 + r6.w;
  r5.w = 1.33200002 + r5.w;
  r5.w = max(1, r5.w);
  if (r2.w != 0) {
    r7.xyz = r2.xyz * cb1[1].xyz + cb1[0].xyz;
    r7.xyz = max(cb1[2].xyz, r7.xyz);
    r7.xyz = min(cb1[3].xyz, r7.xyz);
    r8.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r9.xyzw = t5.Sample(s0_s, r7.xyz).xyzw;
    r7.xyzw = t6.Sample(s0_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
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
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r4.x = 1;
    r8.xyzw = r2.wwww ? cb1[4].wxyz : r4.xyzw;
    r2.w = 1 + -r8.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r0.www + -r8.yzw;
    r0.xyz = r2.www * r0.xyz + r8.yzw;
    r4.x = saturate(dot(r8.yzw, r4.yzw));
    r6.w = 1 + -r4.x;
    r8.y = r2.w * r6.w + r4.x;
  } else {
    r0.xyz = r4.yzw;
    r8.xy = float2(1,1);
  }
  r9.x = t3[0].val[0/4];
  r9.y = t3[0].val[0/4+1];
  r9.z = t3[0].val[0/4+2];
  r9.w = t3[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r10.x = t3[1].val[0/4];
  r10.y = t3[1].val[0/4+1];
  r10.z = t3[1].val[0/4+2];
  r10.w = t3[1].val[0/4+3];
  r9.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t3[2].val[0/4];
  r10.y = t3[2].val[0/4+1];
  r10.z = t3[2].val[0/4+2];
  r10.w = t3[2].val[0/4+3];
  r9.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
  r11.x = t3[3].val[0/4];
  r11.y = t3[3].val[0/4+1];
  r11.z = t3[3].val[0/4+2];
  r11.w = t3[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t3[4].val[0/4];
  r12.y = t3[4].val[0/4+1];
  r12.z = t3[4].val[0/4+2];
  r12.w = t3[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t3[5].val[0/4];
  r12.y = t3[5].val[0/4+1];
  r12.z = t3[5].val[0/4+2];
  r12.w = t3[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r9.xyz = r11.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r8.x * r8.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r3.yzw;
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r2.w = r1.w * 2.75519991 + r2.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r0.xyz = r2.www * r0.xyz;
  r3.yzw = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.yzw;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
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
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r2.www ? r2.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r3.yzw + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r5.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = r1.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}