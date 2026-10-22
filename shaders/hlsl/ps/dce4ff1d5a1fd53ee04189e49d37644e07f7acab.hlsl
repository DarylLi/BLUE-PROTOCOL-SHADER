// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
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
  float4 v3 : TEXCOORD1,
  nointerpolation uint v4 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.yzw = r0.xyz * r0.www;
  r3.xyz = t4.SampleBias(s1_s, v2.xy, cb0[143].y).xyz;
  r3.xyz = cb2[2].xyz * r3.xyz;
  r4.xyz = t5.SampleBias(s2_s, v2.xy, cb0[143].y).xyz;
  r4.xyz = cb2[4].xyz * r4.xyz;
  r1.w = cb0[142].z / cb2[6].z;
  r3.w = cmp(r1.w >= -r1.w);
  r4.w = frac(abs(r1.w));
  r3.w = r3.w ? r4.w : -r4.w;
  r4.w = cb2[6].z + -cb2[6].y;
  r3.w = r3.w * cb2[6].z + -cb2[6].y;
  r4.w = 1 / r4.w;
  r3.w = saturate(r4.w * r3.w);
  r4.w = r3.w * -2 + 3;
  r3.w = r3.w * r3.w;
  r3.w = r4.w * r3.w;
  r4.w = r3.w * 0.25 + 0.75;
  r3.w = cmp(3.9999999e-005 < r3.w);
  r4.w = 6.28318548 * r4.w;
  r4.w = cos(r4.w);
  r3.w = r3.w ? r4.w : -4.37113883e-008;
  r4.w = max(0, r3.w);
  r5.y = v3.y + r4.w;
  r5.x = v3.x;
  r5.xy = t6.SampleLevel(s3_s, r5.xy, -1).xy;
  r1.w = 0.5 * r1.w;
  r4.w = cmp(r1.w >= -r1.w);
  r1.w = frac(abs(r1.w));
  r1.w = r4.w ? r1.w : -r1.w;
  r1.w = r1.w + r1.w;
  r1.w = floor(r1.w);
  r4.w = (uint)r1.w;
  switch (r4.w) {
    case 0 :    r6.xyz = r4.xyz;
    r4.xyz = r3.xyz;
    break;
    case 1 :    r6.xyz = r3.xyz;
    break;
    default :
    break;
  }
  r1.w = 1 + r1.w;
  r1.w = cmp(r1.w == 2.000000);
  r3.xyz = r1.www ? r3.xyz : r6.xyz;
  r3.xyz = r3.xyz + -r4.xyz;
  r3.xyz = r5.yyy * r3.xyz + r4.xyz;
  r1.w = 3.14159274 * r3.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.0500000045 + 0.100000001;
  r4.xyz = r3.xyz * r1.www + -r3.xyz;
  r3.xyz = r5.xxx * r4.xyz + r3.xyz;
  r4.xyz = cb2[7].yyy * r3.xyz;
  r3.xyz = -r3.xyz * cb2[7].yyy + cb2[5].xyz;
  r3.xyz = cb2[7].zzz * r3.xyz + r4.xyz;
  r4.xyz = t7.SampleBias(s4_s, v2.xy, cb0[143].y).xyz;
  r5.xy = t8.SampleBias(s5_s, v2.xy, cb0[143].y).yx;
  r1.w = saturate(cb2[7].w + r5.y);
  r4.xyz = saturate(r4.xyz);
  r5.x = saturate(r5.x);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = mad((int)v4.x, 36, 20);
  r3.w = cmp(0 < cb0[215].x);
  r5.y = t2[r1.w].val[4/4];
  r5.z = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r5.z);
  if (r1.w != 0) {
    r6.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.w = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r1.www + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r1.w = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r4.w = mad((int)v4.x, 36, 18);
    r4.w = t2[r4.w].val[12/4];
    r4.w = cmp(0 < r4.w);
    r4.w = r3.w ? r4.w : 0;
    r1.w = r4.w ? cb1[5].x : 1;
  }
  r6.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r4.xyz;
  r6.xyz = r5.xxx * r6.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r7.xyz = -r4.xyz * r5.xxx + r4.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r4.www ? r8.xyz : r7.xyz;
  r6.xyz = r4.www ? float3(0,0,0) : r6.xyz;
  r4.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.z = r4.w * 2.04040003 + -0.332399994;
  r5.z = r4.w * -4.79510021 + r5.z;
  r4.w = r4.w * 2.75519991 + r5.z;
  r4.w = 1.33200002 + r4.w;
  r4.w = max(1, r4.w);
  r8.xyz = r2.zwz * r2.zwy;
  r9.yw = r2.ww * r2.zy;
  r5.z = r2.y * r2.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r5.z = 0.429042608 * r5.z;
  r10.x = 0.886227548;
  r5.w = dot(cb1[6].xyzw, r10.xyzw);
  r6.w = dot(cb1[9].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.x = cb1[12].x * r5.z + r5.w;
  r5.w = dot(cb1[7].xyzw, r10.xyzw);
  r6.w = dot(cb1[10].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.y = cb1[12].y * r5.z + r5.w;
  r5.w = dot(cb1[8].xyzw, r10.xyzw);
  r6.w = dot(cb1[11].xyzw, r8.xyzw);
  r5.w = r6.w + r5.w;
  r9.z = cb1[12].z * r5.z + r5.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r3.www ? r8.xyz : 0;
  r5.z = cmp(cb0[186].y != 0.000000);
  if (r5.z != 0) {
    r2.x = 1;
    r9.xyzw = r3.wwww ? cb1[4].wxyz : r2.xyzw;
    r2.x = 1 + -r9.x;
    r2.x = -r2.x * r2.x + 1;
    r0.xyz = r0.xyz * r0.www + -r9.yzw;
    r0.xyz = r2.xxx * r0.xyz + r9.yzw;
    r3.w = saturate(dot(r9.yzw, r2.yzw));
    r5.z = 1 + -r3.w;
    r9.y = r2.x * r5.z + r3.w;
  } else {
    r0.xyz = r2.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t3[0].val[0/4];
  r10.y = t3[0].val[0/4+1];
  r10.z = t3[0].val[0/4+2];
  r10.w = t3[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t3[1].val[0/4];
  r11.y = t3[1].val[0/4+1];
  r11.z = t3[1].val[0/4+2];
  r11.w = t3[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t3[2].val[0/4];
  r11.y = t3[2].val[0/4+1];
  r11.z = t3[2].val[0/4+2];
  r11.w = t3[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t3[3].val[0/4];
  r12.y = t3[3].val[0/4+1];
  r12.z = t3[3].val[0/4+2];
  r12.w = t3[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t3[4].val[0/4];
  r13.y = t3[4].val[0/4+1];
  r13.z = t3[4].val[0/4+2];
  r13.w = t3[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t3[5].val[0/4];
  r13.y = t3[5].val[0/4+1];
  r13.z = t3[5].val[0/4+2];
  r13.w = t3[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r10.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.x = cmp(0 < cb0[140].x);
  if (r2.x != 0) {
    r5.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t2[r5.z].val[0/4];
    r7.y = t2[r5.z].val[0/4+1];
    r7.z = t2[r5.z].val[0/4+2];
    r7.xyz = -r7.xyz + r1.xyz;
    r8.x = t2[r5.w].val[0/4];
    r8.y = t2[r5.w].val[0/4+1];
    r8.z = t2[r5.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.x = (int)r7.y | (int)r7.x;
    r2.x = (int)r7.z | (int)r2.x;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r2.xxx ? r1.xyz : r3.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r2.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r4.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r5.y;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r5.x;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}