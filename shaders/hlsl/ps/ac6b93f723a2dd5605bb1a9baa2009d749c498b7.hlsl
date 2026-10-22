// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

struct t11_t {
  float val[4];
};
StructuredBuffer<t11_t> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[17];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r3.xy = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r3.x = t10[r3.x].val[0/4];
  r3.z = t10[r3.x].val[0/4+1];
  r3.w = t10[r3.x].val[0/4+2];
  r0.w = r3.x + r3.z;
  r0.w = r0.w + r3.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb1[2].x * r0.w;
  r1.w = cb2[9].x * r0.w;
  r4.x = cb2[9].w * r1.w;
  r4.y = cb2[10].x * r1.w;
  r3.xz = cb2[10].yz * v2.xy + r4.xy;
  r3.xz = t12.SampleBias(s1_s, r3.xz, cb0[143].y).xy;
  r4.xy = r3.xz * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r3.xzw = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[10].www * r3.xzw + r4.xyz;
  r1.w = 1 + r4.z;
  r0.w = cb2[11].x * r0.w;
  r5.x = cb2[11].w * r0.w;
  r5.y = cb2[12].x * r0.w;
  r3.xz = cb2[12].yz * v2.xy + r5.xy;
  r3.xz = t12.SampleBias(s1_s, r3.xz, cb0[143].y).xy;
  r5.xy = r3.xz * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r3.xzw = float3(0,0,1) + -r5.xyz;
  r3.xzw = cb2[12].www * r3.xzw + r5.xyz;
  r4.w = 1 + r4.z;
  r3.xzw = float3(-1,-1,1) * r3.xzw;
  r0.w = dot(r4.xyw, r3.xzw);
  r3.xzw = r3.xzw * r1.www;
  r3.xzw = r4.xyw * r0.www + -r3.xzw;
  r3.xzw = r3.xzw * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xzw, r3.xzw);
  r0.w = rsqrt(r0.w);
  r3.xzw = r3.xzw * r0.www;
  r0.xyz = r3.zzz * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.www * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r3.xzw = r0.xyz * r0.www;
  r1.w = dot(r3.xzw, r1.xyz);
  r4.xyz = r3.xzw * r1.www;
  r1.xyz = r4.xyz * float3(2,2,2) + -r1.xyz;
  r1.xyz = t13.Sample(s2_s, r1.xyz).xyz;
  r2.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r2.www + -r1.xyz;
  r1.xyz = cb2[13].xxx * r4.xyz + r1.xyz;
  r1.xyz = cb2[13].yyy * r1.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r1.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb2[13].zzz * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r4.xyz ? float3(0,0,0) : r1.xyz;
  r1.xyz = float3(-1,-1,-1) + r1.xyz;
  r1.xyz = cb2[13].www * r1.xyz + float3(1,1,1);
  r4.xyz = cb2[4].xyz * r1.xyz;
  r2.w = -cb2[15].x + r1.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r4.w = cmp(r1.w >= cb2[15].x);
  r4.w = r4.w ? 1.000000 : 0;
  r2.w = r2.w ? r4.w : 1;
  r1.xyz = -r1.xyz * cb2[4].xyz + cb2[7].xyz;
  r1.xyz = r2.www * r1.xyz + r4.xyz;
  r4.x = -cb2[16].y + r1.w;
  r4.x = cmp(9.99999975e-006 < abs(r4.x));
  r1.w = cmp(r1.w >= cb2[16].y);
  r1.w = r1.w ? 1.000000 : 0;
  r1.w = r4.x ? r1.w : 1;
  r4.xyz = cb2[15].yyy * r1.xyz + -r1.xyz;
  r1.xyz = r1.www * r4.xyz + r1.xyz;
  r4.xyz = cb2[8].xyz + -r1.xyz;
  r1.xyz = cb2[16].zzz * r4.xyz + r1.xyz;
  r1.w = 1 + -r2.w;
  r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r5.xyz = (int3)r4.xyz;
  r5.w = 0;
  r5.xyzw = t0.Load(r5.xyzw).xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r2.w = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r5.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r5.xyz * r2.www + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r5.x = t10[r3.y].val[4/4];
  r5.y = t10[r3.y].val[4/4+1];
  r2.w = cmp(0 < r5.y);
  if (r2.w != 0) {
    r2.w = t9.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r2.w = 1;
  }
  r3.y = r1.w * -0.0203999989 + 0.0203999989;
  r5.yzw = r3.yyy * cb0[137].www + cb0[137].xyz;
  r3.y = cmp(0 != cb0[183].w);
  r6.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r6.xyz = r3.yyy ? r6.xyz : cb0[136].xyz;
  r5.yzw = r3.yyy ? float3(0,0,0) : r5.yzw;
  r3.y = dot(r5.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.y * 2.04040003 + -0.332399994;
  r4.w = r3.y * -4.79510021 + r4.w;
  r3.y = r3.y * 2.75519991 + r4.w;
  r3.y = 1.33200002 + r3.y;
  r3.y = max(1, r3.y);
  r7.xyz = t1.SampleLevel(s0_s, r4.xyz, 0).zxy;
  r8.xyzw = t2.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t4.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t6.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = r8.xyzw * r7.yyyy;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r7.zzzz;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r7.xxxx;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = t3.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t5.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t7.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r7.xxxx;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyz = r3.zwz * r3.zwx;
  r15.yw = r3.ww * r3.zx;
  r4.w = r3.x * r3.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.zwx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r4.w = 0.429042608 * r4.w;
  r15.x = r7.y;
  r15.yzw = r8.yzw;
  r16.x = 0.886227548;
  r6.w = dot(r15.xyzw, r16.xyzw);
  r8.yzw = r11.xyz;
  r8.x = dot(r8.xyzw, r14.xyzw);
  r6.w = r8.x + r6.w;
  r8.x = r11.w * r4.w + r6.w;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r6.w = dot(r11.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r8.w = dot(r9.xyzw, r14.xyzw);
  r6.w = r8.w + r6.w;
  r8.y = r12.w * r4.w + r6.w;
  r7.yzw = r10.yzw;
  r6.w = dot(r7.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r7.x = dot(r10.xyzw, r14.xyzw);
  r6.w = r7.x + r6.w;
  r8.z = r13.w * r4.w + r6.w;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = cb0[157].xyz * r7.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r4.xyz = t8.SampleLevel(s0_s, r4.xyz, 0).xyz;
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r4.w = dot(r4.xyz, r4.xyz);
    r8.x = sqrt(r4.w);
    r4.w = max(9.99999975e-005, r8.x);
    r4.xyz = r4.xyz / r4.www;
    r4.w = 1 + -r8.x;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.xyz * r0.www + -r4.xyz;
    r0.xyz = r4.www * r0.xyz + r4.xyz;
    r4.x = saturate(dot(r4.xyz, r3.xzw));
    r4.y = 1 + -r4.x;
    r8.y = r4.w * r4.y + r4.x;
  } else {
    r0.xyz = r3.xzw;
    r8.xy = float2(1,1);
  }
  r4.x = t11[0].val[0/4];
  r4.y = t11[0].val[0/4+1];
  r4.z = t11[0].val[0/4+2];
  r4.w = t11[0].val[0/4+3];
  r0.w = 1;
  r4.x = dot(r4.xyzw, r0.xyzw);
  r9.x = t11[1].val[0/4];
  r9.y = t11[1].val[0/4+1];
  r9.z = t11[1].val[0/4+2];
  r9.w = t11[1].val[0/4+3];
  r4.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t11[2].val[0/4];
  r9.y = t11[2].val[0/4+1];
  r9.z = t11[2].val[0/4+2];
  r9.w = t11[2].val[0/4+3];
  r4.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t11[3].val[0/4];
  r10.y = t11[3].val[0/4+1];
  r10.z = t11[3].val[0/4+2];
  r10.w = t11[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t11[4].val[0/4];
  r11.y = t11[4].val[0/4+1];
  r11.z = t11[4].val[0/4+2];
  r11.w = t11[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t11[5].val[0/4];
  r11.y = t11[5].val[0/4+1];
  r11.z = t11[5].val[0/4+2];
  r11.w = t11[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t11[6].val[0/4];
  r0.z = t11[6].val[0/4+1];
  r0.w = t11[6].val[0/4+2];
  r4.xyz = r10.xyz + r4.xyz;
  r0.xyz = r0.yzw * r0.xxx + r4.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r8.x * r8.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r4.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r5.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t10[r5.y].val[0/4];
    r6.y = t10[r5.y].val[0/4+1];
    r6.z = t10[r5.y].val[0/4+2];
    r6.xyz = -r6.xyz + r2.xyz;
    r5.y = t10[r5.z].val[0/4];
    r5.z = t10[r5.z].val[0/4+1];
    r5.w = t10[r5.z].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r5.yzw = cmp(r5.yzw < abs(r6.xyz));
    r4.w = (int)r5.z | (int)r5.y;
    r4.w = (int)r5.w | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r4.www ? r2.xyz : r1.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r1.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r3.xzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.y;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.yw = float2(0.254999995,0.505882382);
  o2.z = cb0[139].x;
  o2.x = r1.w;
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}