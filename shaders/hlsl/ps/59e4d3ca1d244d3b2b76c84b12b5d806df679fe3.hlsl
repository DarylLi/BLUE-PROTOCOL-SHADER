// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
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
  nointerpolation uint v2 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r3.xyz = cb2[4].xxx * cb2[1].xyz;
  r4.xyz = saturate(cb2[3].xyz);
  r1.w = saturate(cb2[4].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = mad((int)v2.x, 36, 20);
  r3.w = cmp(0 < cb0[215].x);
  r5.x = t2[r1.w].val[4/4];
  r5.y = t2[r1.w].val[4/4+1];
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
    r4.w = mad((int)v2.x, 36, 18);
    r4.w = t2[r4.w].val[12/4];
    r4.w = cmp(0 < r4.w);
    r4.w = r3.w ? r4.w : 0;
    r1.w = r4.w ? cb1[5].x : 1;
  }
  r5.yzw = r4.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r5.yzw = r4.www ? r7.xyz : r5.yzw;
  r6.xyz = r4.www ? float3(0,0,0) : r6.xyz;
  r4.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r4.w * 2.04040003 + -0.332399994;
  r6.w = r4.w * -4.79510021 + r6.w;
  r4.w = r4.w * 2.75519991 + r6.w;
  r4.w = 1.33200002 + r4.w;
  r4.w = max(1, r4.w);
  r7.xyz = r2.zwz * r2.zwy;
  r8.yw = r2.ww * r2.zy;
  r6.w = r2.y * r2.y + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.zwy;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r6.w = 0.429042608 * r6.w;
  r9.x = 0.886227548;
  r8.x = dot(cb1[6].xyzw, r9.xyzw);
  r8.y = dot(cb1[9].xyzw, r7.xyzw);
  r8.x = r8.x + r8.y;
  r8.x = cb1[12].x * r6.w + r8.x;
  r8.w = dot(cb1[7].xyzw, r9.xyzw);
  r10.x = dot(cb1[10].xyzw, r7.xyzw);
  r8.w = r10.x + r8.w;
  r8.y = cb1[12].y * r6.w + r8.w;
  r8.w = dot(cb1[8].xyzw, r9.xyzw);
  r7.x = dot(cb1[11].xyzw, r7.xyzw);
  r7.x = r8.w + r7.x;
  r8.z = cb1[12].z * r6.w + r7.x;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r3.www ? r7.xyz : 0;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r2.x = 1;
    r8.xyzw = r3.wwww ? cb1[4].wxyz : r2.xyzw;
    r2.x = 1 + -r8.x;
    r2.x = -r2.x * r2.x + 1;
    r0.xyz = r0.xyz * r0.www + -r8.yzw;
    r0.xyz = r2.xxx * r0.xyz + r8.yzw;
    r3.w = saturate(dot(r8.yzw, r2.yzw));
    r6.w = 1 + -r3.w;
    r8.y = r2.x * r6.w + r3.w;
  } else {
    r0.xyz = r2.yzw;
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
  r0.xyz = r0.xyz * r5.yzw;
  r7.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r0.xyz = r7.xyz * r0.xyz;
  r5.yzw = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.x = cmp(0 < cb0[140].x);
  if (r2.x != 0) {
    r6.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r1.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r2.x = (int)r6.y | (int)r6.x;
    r2.x = (int)r6.z | (int)r2.x;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r2.xxx ? r1.xyz : r3.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
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
  o1.w = r5.x;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}