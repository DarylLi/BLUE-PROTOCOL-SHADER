// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[33];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
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
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.x = cb2[19].z * cb0[142].z;
  r0.w = cb0[142].z * cb2[19].z + v2.x;
  r3.x = cb2[21].y * r0.w;
  r2.y = cb2[21].z * cb0[142].z;
  r2.xyz = v2.yxy + r2.yxy;
  r3.y = cb2[21].w * r2.x;
  r0.w = cb0[142].z * cb2[22].z + v2.x;
  r4.x = cb2[23].w * r0.w;
  r0.w = cb0[142].z * cb2[24].x + v2.y;
  r4.y = cb2[24].y * r0.w;
  r2.xw = t10.SampleBias(s1_s, r4.xy, cb0[143].y).xy;
  r2.xw = float2(-0.5,-0.5) + r2.xw;
  r4.x = cb2[24].w * r2.x;
  r4.y = cb2[25].x * r2.w;
  r2.xw = r4.xy * float2(2,2) + r3.xy;
  r2.xw = t11.SampleBias(s2_s, r2.xw, cb0[143].y).xy;
  r3.xy = r2.xw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r2.xy = t11.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r0.w = 6.28318548 * v2.y;
  r0.w = cos(r0.w);
  r0.w = -0.899999976 + r0.w;
  r0.w = 6 * r0.w;
  r0.w = max(0, r0.w);
  r2.xyz = r2.xyz + -r3.xyz;
  r2.xyz = r0.www * r2.xyz + r3.xyz;
  r2.xy = cb2[25].yy * r2.xy;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r0.xyz * r0.www;
  r0.z = -0.5 + v2.x;
  r0.z = cb2[25].z * r0.z;
  r3.x = r0.x * r0.w + r0.z;
  r0.x = r0.y * r0.w + -r0.z;
  r3.y = 1 + r0.x;
  r0.x = dot(r3.xy, r3.xy);
  r0.x = sqrt(r0.x);
  r0.xy = r3.xy / r0.xx;
  r0.z = dot(cb1[5].xy, cb1[5].xy);
  r0.z = sqrt(r0.z);
  r0.zw = cb1[5].xy / r0.zz;
  r0.x = dot(r0.xy, r0.zw);
  r0.x = 1 + -r0.x;
  r0.x = r0.x * cb2[26].x + -cb2[26].x;
  r0.x = saturate(cb2[26].w + r0.x);
  r0.yzw = -cb2[14].xyz + cb2[13].xyz;
  r0.xyz = r0.xxx * r0.yzw + cb2[14].xyz;
  r3.xyz = cb2[27].xxx * r0.xyz;
  r4.xyz = -r0.xyz * cb2[27].xxx + cb2[15].xyz;
  r3.xyz = cb2[27].yyy * r4.xyz + r3.xyz;
  r0.xyz = saturate(cb2[27].zzz * r0.xyz);
  r0.w = cb2[28].z * v2.y + cb2[28].w;
  r0.w = -cb2[29].x * r0.w + 1;
  r1.w = -cb2[29].y + r1.z;
  r1.w = abs(r1.w) / cb2[29].z;
  r1.w = -r1.w * cb2[29].w + 1;
  r4.y = -r0.w * r1.w + 1;
  r4.x = v2.x;
  r0.w = cb1[2].x * cb0[142].z;
  r0.w = cb2[30].x * r0.w;
  r4.zw = cb2[17].xy * r0.ww;
  r5.xy = r4.xy * cb2[16].xy + r4.zw;
  r4.xy = r4.xy * cb2[18].xy + float2(0.200000003,0.200000003);
  r4.xy = r4.zw * float2(0.699999988,0.699999988) + r4.xy;
  r0.w = t12.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r6.y = r0.w * 2 + -1;
  r6.x = 0;
  r4.zw = cb2[31].xx * r6.xy;
  r0.w = frac(cb0[142].z);
  r5.zw = r4.zw * r0.ww + r5.xy;
  r1.w = t12.SampleBias(s3_s, r5.zw, cb0[143].y).x;
  r1.w = r1.w * 2 + -1;
  r2.w = 0.5 + cb0[142].z;
  r2.w = frac(r2.w);
  r5.xy = r4.zw * r2.ww + r5.xy;
  r3.w = t12.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r3.w = r3.w * 2 + -1;
  r5.x = r2.w + r2.w;
  r5.y = max(1, r5.x);
  r5.y = -1 + r5.y;
  r5.y = r5.y + r5.y;
  r5.xy = min(float2(1,1), r5.xy);
  r5.y = 1 + -r5.y;
  r5.x = r5.x + r5.x;
  r5.x = min(1, r5.x);
  r5.x = r5.y * r5.x;
  r3.w = r3.w + -r1.w;
  r1.w = r5.x * r3.w + r1.w;
  r5.yz = r4.zw * r0.ww + r4.xy;
  r0.w = t12.SampleBias(s3_s, r5.yz, cb0[143].y).y;
  r0.w = r0.w * 2 + -1;
  r4.xy = r4.zw * r2.ww + r4.xy;
  r2.w = t12.SampleBias(s3_s, r4.xy, cb0[143].y).y;
  r2.w = r2.w * 2 + -1;
  r2.w = r2.w + -r0.w;
  r0.w = r5.x * r2.w + r0.w;
  r0.w = r1.w + -r0.w;
  r0.w = r0.w * cb2[31].y + v2.x;
  r0.w = r0.w * 2 + -1;
  r0.w = 1 + -abs(r0.w);
  r0.w = r0.w * cb2[31].w + -cb2[31].w;
  r0.w = saturate(cb2[32].y + r0.w);
  r4.xy = -cb0[129].xy + v4.xy;
  r4.zw = cb0[152].xx + r4.xy;
  r4.zw = (uint2)r4.zw;
  r1.w = (uint)r4.w << 1;
  r1.w = (int)r1.w + (int)r4.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r4.xy = float2(0.015625,0.015625) * r4.xy;
  r2.w = t13.SampleBias(s4_s, r4.xy, cb0[143].y).x;
  r1.w = r2.w + r1.w;
  r0.w = r1.w * 0.166666672 + r0.w;
  r0.w = -0.833299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = saturate(cb2[27].w);
  r4.xy = saturate(cb2[28].xy);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r4.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
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
  r1.w = mad((int)v3.x, 36, 20);
  r5.x = t9[r1.w].val[4/4];
  r5.y = t9[r1.w].val[4/4+1];
  r1.w = cmp(0 < r5.y);
  if (r1.w != 0) {
    r1.w = t8.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = 0.0799999982 * r4.x;
  r5.yzw = -r4.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r5.yzw = r0.www * r5.yzw + r2.www;
  r6.xyz = -r0.xyz * r0.www + r0.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = r5.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r5.yzw = r2.www ? float3(0,0,0) : r5.yzw;
  r2.w = dot(r5.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xyz = t1.SampleLevel(s0_s, r4.yzw, 0).zxy;
  r8.xyzw = t2.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t4.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t6.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = r8.xyzw * r7.yyyy;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r7.zzzz;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r7.xxxx;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = t3.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t5.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t7.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r7.xxxx;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r4.yzw = r2.yzy * r2.yzx;
  r14.yw = r2.zz * r2.yx;
  r3.w = r2.x * r2.x + -r4.y;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.yzx;
  r14.xz = r4.wz * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r3.w = 0.429042608 * r3.w;
  r16.x = r7.y;
  r16.yzw = r8.yzw;
  r15.x = 0.886227548;
  r4.y = dot(r16.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r4.z = dot(r8.xyzw, r14.xyzw);
  r4.y = r4.y + r4.z;
  r8.x = r11.w * r3.w + r4.y;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r4.y = dot(r11.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r4.z = dot(r9.xyzw, r14.xyzw);
  r4.y = r4.y + r4.z;
  r8.y = r12.w * r3.w + r4.y;
  r7.yzw = r10.yzw;
  r4.y = dot(r7.xyzw, r15.xyzw);
  r10.yzw = r13.xyz;
  r4.z = dot(r10.xyzw, r14.xyzw);
  r4.y = r4.y + r4.z;
  r8.z = r13.w * r3.w + r4.y;
  r4.yzw = max(float3(0,0,0), r8.xyz);
  r4.yzw = cb0[157].xyz * r4.yzw;
  r4.yzw = float3(0.318309873,0.318309873,0.318309873) * r4.yzw;
  r3.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.yzw = r4.yzw * r6.xyz;
  r7.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.yzw = r7.xyz * r4.yzw;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r6.x = cmp(0 < cb0[140].x);
  if (r6.x != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t9[r6.x].val[0/4];
    r6.z = t9[r6.x].val[0/4+1];
    r6.w = t9[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r1.xyz;
    r7.x = t9[r6.y].val[0/4];
    r7.y = t9[r6.y].val[0/4+1];
    r7.z = t9[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r6.x = (int)r6.y | (int)r6.x;
    r6.x = (int)r6.z | (int)r6.x;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r6.xxx ? r1.xyz : r3.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.yzw + r4.yzw;
  r1.xyz = r1.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.x = r3.w * r2.w;
  r2.x = r2.x * cb0[135].y + 0.00390625;
  r2.x = log2(r2.x);
  r2.x = r2.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r2.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.y = r4.x;
  o2.w = 0.505882382;
  o2.x = r0.w;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}