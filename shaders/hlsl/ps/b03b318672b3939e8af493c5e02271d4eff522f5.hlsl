// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

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
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r0.w = cb0[142].z * cb2[11].z + v2.x;
  r2.x = cb2[12].y * r0.w;
  r0.w = cb0[142].z * cb2[12].z + v2.y;
  r2.y = cb2[12].w * r0.w;
  r2.xy = t11.SampleBias(s1_s, r2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r3.xy = cb2[13].xx * r2.xy;
  r2.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[13].yyy * cb2[4].xyz;
  r1.w = cb0[142].z * cb2[14].x + v2.x;
  r4.x = cb2[14].w * r1.w;
  r1.w = cb0[142].z * cb2[15].x + v2.y;
  r4.y = cb2[15].y * r1.w;
  r1.w = t12.SampleBias(s2_s, r4.xy, cb0[143].y).x;
  r1.w = 1 + -r1.w;
  r2.w = dot(-cb0[18].xyz, r2.xyz);
  r2.w = 1 + -r2.w;
  r1.w = -r1.w * r2.w + cb2[15].z;
  r1.w = saturate(ceil(r1.w));
  r1.w = -0.333299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  o2.z = cb0[139].y * 0.5 + cb0[139].x;
  r4.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r5.xyz = (int3)r4.xyz;
  r5.w = 0;
  r5.xyzw = t0.Load(r5.xyzw).xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r1.w = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r5.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r5.xyz * r1.www + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r6.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r6.xyz = r2.www ? r6.xyz : cb0[136].xyz;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
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
  r14.xyz = r2.yzy * r2.yzx;
  r15.yw = r2.zz * r2.yx;
  r3.w = r2.x * r2.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r3.w = 0.429042608 * r3.w;
  r15.x = r7.y;
  r15.yzw = r8.yzw;
  r16.x = 0.886227548;
  r4.w = dot(r15.xyzw, r16.xyzw);
  r8.yzw = r11.xyz;
  r5.w = dot(r8.xyzw, r14.xyzw);
  r4.w = r5.w + r4.w;
  r8.x = r11.w * r3.w + r4.w;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r4.w = dot(r11.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r5.w = dot(r9.xyzw, r14.xyzw);
  r4.w = r5.w + r4.w;
  r8.y = r12.w * r3.w + r4.w;
  r7.yzw = r10.yzw;
  r4.w = dot(r7.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r5.w = dot(r10.xyzw, r14.xyzw);
  r4.w = r5.w + r4.w;
  r8.z = r13.w * r3.w + r4.w;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = cb0[157].xyz * r7.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r4.xyz = t8.SampleLevel(s0_s, r4.xyz, 0).xyz;
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r4.xyz, r4.xyz);
    r8.x = sqrt(r3.w);
    r3.w = max(9.99999975e-005, r8.x);
    r4.xyz = r4.xyz / r3.www;
    r3.w = 1 + -r8.x;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r0.www + -r4.xyz;
    r0.xyz = r3.www * r0.xyz + r4.xyz;
    r4.x = saturate(dot(r4.xyz, r2.xyz));
    r4.y = 1 + -r4.x;
    r8.y = r3.w * r4.y + r4.x;
  } else {
    r0.xyz = r2.xyz;
    r8.xy = float2(1,1);
  }
  r4.x = t10[0].val[0/4];
  r4.y = t10[0].val[0/4+1];
  r4.z = t10[0].val[0/4+2];
  r4.w = t10[0].val[0/4+3];
  r0.w = 1;
  r4.x = dot(r4.xyzw, r0.xyzw);
  r9.x = t10[1].val[0/4];
  r9.y = t10[1].val[0/4+1];
  r9.z = t10[1].val[0/4+2];
  r9.w = t10[1].val[0/4+3];
  r4.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t10[2].val[0/4];
  r9.y = t10[2].val[0/4+1];
  r9.z = t10[2].val[0/4+2];
  r9.w = t10[2].val[0/4+3];
  r4.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t10[3].val[0/4];
  r10.y = t10[3].val[0/4+1];
  r10.z = t10[3].val[0/4+2];
  r10.w = t10[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t10[4].val[0/4];
  r11.y = t10[4].val[0/4+1];
  r11.z = t10[4].val[0/4+2];
  r11.w = t10[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t10[5].val[0/4];
  r11.y = t10[5].val[0/4+1];
  r11.z = t10[5].val[0/4+2];
  r11.w = t10[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r4.xyz = r10.xyz + r4.xyz;
  r0.xyz = r0.yzw * r0.xxx + r4.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r8.x * r8.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r4.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r5.xyz = -cb1[5].xyz + r1.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r3.w = (int)r5.y | (int)r5.x;
    r3.w = (int)r5.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r3.www ? r1.xyz : r3.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}