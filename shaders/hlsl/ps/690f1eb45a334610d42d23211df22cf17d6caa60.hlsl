// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

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

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[39];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r0.w = cb2[24].x + cb0[143].y;
  r3.xy = t10.SampleBias(s1_s, v2.xy, r0.w).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[24].yyy * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = r3.yyy * r0.xyz;
  r3.xyw = r3.xxx * v0.xyz + r4.xyz;
  r3.xyz = r3.zzz * v1.xyz + r3.xyw;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xy = cb2[24].zz * v2.xy;
  r0.w = -0.5 * cb2[24].w;
  r5.x = dot(v0.xyz, r1.xyz);
  r5.y = dot(r0.xyz, r1.xyz);
  r4.xy = r5.xy * r0.ww + r4.xy;
  r4.xy = t11.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[25].xxx * r6.xyz + r4.xyz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[25].y * r0.y;
  r0.y = exp2(r0.y);
  r4.xyz = cb2[2].xyz * r0.yyy;
  r0.yzw = r0.zzz ? float3(0,0,0) : r4.xyz;
  r1.w = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb2[25].z * r0.x;
  r0.x = exp2(r0.x);
  r4.xyz = cb2[4].xyz * r0.xxx;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r0.xyz = r4.xyz + r0.yzw;
  r0.w = cb0[142].z * cb2[26].x + v2.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb2[26].z + cb2[26].y;
  r0.w = cb2[26].w * r0.w;
  r1.w = cb2[27].x * cb0[142].z;
  r4.x = cb2[27].w * r1.w;
  r4.y = cb2[28].x * r1.w;
  r4.zw = v2.xy * cb2[28].yy + cb2[6].xy;
  r5.zw = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r6.x = t9[r5.z].val[0/4];
  r6.y = t9[r5.z].val[0/4+1];
  r6.z = t9[r5.z].val[0/4+2];
  r2.w = r6.x + r6.y;
  r2.w = r2.w + r6.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb1[2].x * r2.w;
  r6.y = 0.100000001 * r2.w;
  r6.x = 0;
  r6.xy = v2.xy * cb2[29].xx + r6.xy;
  r2.w = t12.SampleBias(s3_s, r6.xy, cb0[143].y).x;
  r3.w = 0.100000001 * r2.w;
  r2.w = cmp(0 >= r2.w);
  r3.w = log2(r3.w);
  r3.w = 1.5 * r3.w;
  r3.w = exp2(r3.w);
  r2.w = r2.w ? 0 : r3.w;
  r4.zw = r2.ww * cb2[29].yy + r4.zw;
  r4.xy = r4.xy + r4.zw;
  r3.w = -0.5 * cb2[29].z;
  r4.xy = r5.xy * r3.ww + r4.xy;
  r4.xyz = t13.SampleBias(s4_s, r4.xy, cb0[143].y).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb2[29].www * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r1.w = 1.5 * r1.w;
  r6.x = cb2[27].w * r1.w;
  r6.y = cb2[28].x * r1.w;
  r6.zw = v2.xy * cb2[30].xx + cb2[7].xy;
  r6.xy = r6.xy + r6.zw;
  r1.w = -0.5 * cb2[30].y;
  r6.xy = r5.xy * r1.ww + r6.xy;
  r6.xyz = t13.SampleBias(s4_s, r6.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb2[29].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = cb2[30].zzz * r6.xyz + float3(1,1,1);
  r4.xyz = r6.xyz * r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r0.w = cb0[142].z * cb2[30].w + v2.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb2[31].y + cb2[31].x;
  r0.w = cb2[31].z * r0.w;
  r1.w = cb2[31].w * cb0[142].z;
  r6.xy = v2.xy * cb2[33].xx + cb2[11].xy;
  r6.xy = r2.ww * cb2[33].ww + r6.xy;
  r6.xy = r1.ww * cb2[32].zw + r6.xy;
  r6.zw = float2(-0.5,-0.5) * cb2[34].xw;
  r6.xy = r5.xy * r6.zz + r6.xy;
  r6.xyz = t14.SampleBias(s5_s, r6.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb2[34].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r1.w = 1.5 * r1.w;
  r7.xy = v2.xy * cb2[34].zz + cb2[12].xy;
  r7.xy = r1.ww * cb2[32].zw + r7.xy;
  r5.xy = r5.xy * r6.ww + r7.xy;
  r5.xyz = t14.SampleBias(s5_s, r5.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb2[34].yyy * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r7.xyz ? float3(0,0,0) : r5.xyz;
  r5.xyz = float3(-1,-1,-1) + r5.xyz;
  r5.xyz = cb2[35].xxx * r5.xyz + float3(1,1,1);
  r5.xyz = r6.xyz * r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = cb2[14].xyz * r5.xyz;
  r4.xyz = r4.xyz * cb2[9].xyz + r5.xyz;
  r0.xyz = r0.xyz * cb2[25].www + r4.xyz;
  r4.xy = t15.SampleBias(s6_s, v2.xy, cb0[143].y).xy;
  r0.w = cb2[35].y + r4.x;
  r1.w = 1 + -r0.w;
  r1.w = saturate(-cb2[35].z + r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = cb2[16].xyz * r0.xyz;
  r4.xzw = cb2[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb2[35].www + cb2[17].xyz;
  r0.xyz = cb2[36].xxx * r0.xyz + r4.xzw;
  r1.x = dot(r3.xyz, r1.xyz);
  r1.y = 1 + -abs(r1.x);
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb2[36].y * r1.y;
  r1.y = exp2(r1.y);
  r4.xzw = cb2[19].xyz * r1.yyy;
  r1.yzw = r1.zzz ? float3(0,0,0) : r4.xzw;
  r2.w = cmp(0 >= abs(r1.x));
  r1.x = log2(abs(r1.x));
  r1.x = cb2[36].z * r1.x;
  r1.x = exp2(r1.x);
  r4.xzw = cb2[21].xyz * r1.xxx;
  r4.xzw = r2.www ? float3(0,0,0) : r4.xzw;
  r1.xyz = r4.xzw + r1.yzw;
  r4.xzw = t16.SampleBias(s7_s, v2.xy, cb0[143].y).xyz;
  r1.w = dot(r4.xzw, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r1.www + -r4.xzw;
  r4.xzw = cb2[37].zzz * r5.xyz + r4.xzw;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xzw);
  r4.xzw = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xzw;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.wxz;
  r5.xyz = r4.wxz * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb2[37].y, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r4.xzw = r4.xzw * r7.xxx + r5.xyz;
  r4.xzw = r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xzw;
  r4.xzw = cb2[23].xyz * r4.xzw;
  r5.xyz = cmp(float3(0,0,0) >= r4.xzw);
  r4.xzw = log2(r4.xzw);
  r4.xzw = cb2[37].www * r4.xzw;
  r4.xzw = exp2(r4.xzw);
  r4.xzw = r5.xyz ? float3(0,0,0) : r4.xzw;
  r1.xyz = saturate(r1.xyz * cb2[36].www + r4.xzw);
  r1.w = saturate(cb2[38].x + r4.y);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r6.xyz = (int3)r4.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.w = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r6.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r6.xyz * r0.www + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r5.x = t9[r5.w].val[4/4];
  r5.y = t9[r5.w].val[4/4+1];
  r0.w = cmp(0 < r5.y);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r5.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r1.xyz;
  r5.yzw = r1.www * r5.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r1.xyz * r1.www + r1.xyz;
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
  r4.xyzw = t7.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r4.xyzw = r4.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r4.xyzw = r4.xyzw * r7.xxxx;
  r4.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r4.xyzw;
  r13.xyz = r3.yzy * r3.yzx;
  r14.yw = r3.zz * r3.yx;
  r3.w = r3.x * r3.x + -r13.x;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.yzx;
  r14.xz = r13.zy * float2(1,3) + float2(0,-1);
  r13.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r3.w = 0.429042608 * r3.w;
  r14.x = r7.y;
  r14.yzw = r8.yzw;
  r15.x = 0.886227548;
  r6.w = dot(r14.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r8.x = dot(r8.xyzw, r13.xyzw);
  r6.w = r8.x + r6.w;
  r8.x = r11.w * r3.w + r6.w;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r6.w = dot(r11.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r8.w = dot(r9.xyzw, r13.xyzw);
  r6.w = r8.w + r6.w;
  r8.y = r12.w * r3.w + r6.w;
  r7.yzw = r10.yzw;
  r6.w = dot(r7.xyzw, r15.xyzw);
  r10.yzw = r4.xyz;
  r4.x = dot(r10.xyzw, r13.xyzw);
  r4.x = r6.w + r4.x;
  r8.z = r4.w * r3.w + r4.x;
  r4.xyz = max(float3(0,0,0), r8.xyz);
  r4.xyz = cb0[157].xyz * r4.xyz;
  r4.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  r3.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r6.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.xyz = r7.xyz * r4.xyz;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t9[r6.x].val[0/4];
    r6.z = t9[r6.x].val[0/4+1];
    r6.w = t9[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t9[r6.y].val[0/4];
    r7.y = t9[r6.y].val[0/4+1];
    r7.z = t9[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r4.www ? r2.xyz : r0.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.yzw + r4.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.y = r3.w * r2.w;
  r2.y = r2.y * cb0[135].y + 0.00390625;
  r2.y = log2(r2.y);
  r2.y = r2.y * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r2.y;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r1.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}