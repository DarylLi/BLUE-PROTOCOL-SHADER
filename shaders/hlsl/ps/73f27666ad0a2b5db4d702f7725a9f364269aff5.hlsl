// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r3.xy = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t2[r3.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v5.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r3.xz = t7.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r3.xz = r3.xz * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xz, r3.xz);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r4.xy = cmp(float2(0,0) >= r3.xz);
  r3.xz = log2(r3.xz);
  r3.xz = cb2[4].xx * r3.xz;
  r3.xz = exp2(r3.xz);
  r4.xy = r4.xy ? float2(0,0) : r3.xz;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[4].x * r1.w;
  r1.w = exp2(r1.w);
  r4.z = r2.w ? 0 : r1.w;
  r3.xzw = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r3.xzw, r3.xzw);
  r1.w = rsqrt(r1.w);
  r3.xzw = r3.xzw * r1.www;
  r0.xyz = r3.zzz * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.www * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r4.yzw = r0.xyz * r0.www;
  r1.x = dot(r1.xyz, v1.xyz);
  r1.y = cb2[4].y * r1.x;
  r1.y = 6.28318548 * r1.y;
  r5.x = sin(r1.y);
  r1.xy = cb2[4].zw + r1.xx;
  r1.xy = cb2[4].yy * r1.xy;
  r1.xy = float2(6.28318548,6.28318548) * r1.xy;
  r5.yz = sin(r1.xy);
  r1.xyz = float3(1,1,1) + r5.xyz;
  r1.xyz = cb2[2].xyz * r1.xyz;
  r3.xzw = float3(0.5,0.5,0.5) * r1.xyz;
  r1.xyz = -r1.xyz * float3(0.5,0.5,0.5) + cb2[3].xyz;
  r1.xyz = cb2[5].xxx * r1.xyz + r3.xzw;
  r1.w = cmp(0 < cb0[215].x);
  r3.x = t2[r3.y].val[4/4];
  r3.y = t2[r3.y].val[4/4+1];
  r2.w = cmp(0 < r3.y);
  if (r2.w != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r5.xyz = (int3)r3.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r2.w = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r5.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r5.xyz * r2.www + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r2.w = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r3.y = mad((int)v3.x, 36, 18);
    r3.y = t2[r3.y].val[12/4];
    r3.y = cmp(0 < r3.y);
    r3.y = r1.w ? r3.y : 0;
    r2.w = r3.y ? cb1[5].x : 1;
  }
  r3.y = cmp(0 != cb0[183].w);
  r5.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r5.xyz = r3.yyy ? r5.xyz : cb0[136].xyz;
  r3.yzw = r3.yyy ? float3(0,0,0) : cb0[137].xyz;
  r5.w = dot(r3.yzw, float3(0.300000012,0.589999974,0.109999999));
  r6.x = r5.w * 2.04040003 + -0.332399994;
  r6.x = r5.w * -4.79510021 + r6.x;
  r5.w = r5.w * 2.75519991 + r6.x;
  r5.w = 1.33200002 + r5.w;
  r5.w = max(1, r5.w);
  if (r1.w != 0) {
    r6.xyz = r2.xyz * cb1[1].xyz + cb1[0].xyz;
    r6.xyz = max(cb1[2].xyz, r6.xyz);
    r6.xyz = min(cb1[3].xyz, r6.xyz);
    r7.xyzw = t4.Sample(s1_s, r6.xyz).xyzw;
    r8.xyzw = t5.Sample(s0_s, r6.xyz).xyzw;
    r6.xyzw = t6.Sample(s0_s, r6.xyz).xyzw;
    r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
    r10.xw = r7.xw;
    r10.y = r8.x;
    r10.z = r6.x;
    r9.x = 0.886227548;
    r10.x = dot(r10.xyzw, r9.xyzw);
    r11.x = r7.y;
    r11.yw = r8.yw;
    r11.z = r6.y;
    r10.y = dot(r11.xyzw, r9.xyzw);
    r6.x = r7.z;
    r6.y = r8.z;
    r10.z = dot(r6.xyzw, r9.xyzw);
    r6.xyz = max(float3(0,0,0), r10.xyz);
    r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r4.x = 1;
    r7.xyzw = r1.wwww ? cb1[4].wxyz : r4.xyzw;
    r1.w = 1 + -r7.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r7.yzw;
    r0.xyz = r1.www * r0.xyz + r7.yzw;
    r4.x = saturate(dot(r7.yzw, r4.yzw));
    r6.w = 1 + -r4.x;
    r7.y = r1.w * r6.w + r4.x;
  } else {
    r0.xyz = r4.yzw;
    r7.xy = float2(1,1);
  }
  r8.x = t3[0].val[0/4];
  r8.y = t3[0].val[0/4+1];
  r8.z = t3[0].val[0/4+2];
  r8.w = t3[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r9.x = t3[1].val[0/4];
  r9.y = t3[1].val[0/4+1];
  r9.z = t3[1].val[0/4+2];
  r9.w = t3[1].val[0/4+3];
  r8.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t3[2].val[0/4];
  r9.y = t3[2].val[0/4+1];
  r9.z = t3[2].val[0/4+2];
  r9.w = t3[2].val[0/4+3];
  r8.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t3[3].val[0/4];
  r10.y = t3[3].val[0/4+1];
  r10.z = t3[3].val[0/4+2];
  r10.w = t3[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t3[4].val[0/4];
  r11.y = t3[4].val[0/4+1];
  r11.z = t3[4].val[0/4+2];
  r11.w = t3[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t3[5].val[0/4];
  r11.y = t3[5].val[0/4+1];
  r11.z = t3[5].val[0/4+2];
  r11.w = t3[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r8.xyz = r10.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r7.x * r7.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r6.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyzw = r0.xyzw * r5.xyzw;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r5.x].val[0/4];
    r6.y = t2[r5.x].val[0/4+1];
    r6.z = t2[r5.x].val[0/4+2];
    r6.xyz = -r6.xyz + r2.xyz;
    r5.x = t2[r5.y].val[0/4];
    r5.y = t2[r5.y].val[0/4+1];
    r5.z = t2[r5.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r5.xyz = cmp(r5.xyz < abs(r6.xyz));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r2.xyz : r1.xyz;
  }
  r0.xyz = cb0[145].yyy * r3.yzw + r0.xyz;
  r0.xyz = r0.xyz + r1.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xyw = float3(0.5,0,0.505882382);
  o2.z = cb0[139].x;
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}