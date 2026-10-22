// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[30];
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
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t9[r1.z].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r4.xy = r3.xy / cb1[18].yy;
  r1.z = t10.SampleBias(s2_s, r4.xy, cb0[143].y).x;
  r2.w = cb1[18].z + -cb1[18].w;
  r1.z = saturate(r1.z * r2.w + cb1[18].w);
  r1.z = cb1[19].x + r1.z;
  r1.z = r1.z * -cb1[19].y + cb1[19].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r3.w = cb1[19].w * r2.w;
  r1.z = r1.z * r3.w + cb0[143].y;
  r4.xy = t11.SampleBias(s3_s, v2.xy, r1.z).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r4.xy, r4.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r4.z = sqrt(r3.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb1[20].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r0.xyz = r3.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb1[20].yyy * cb1[1].xyz;
  r5.xyz = t12.SampleBias(s4_s, v2.xy, r1.z).yzw;
  r6.xyz = -cb1[5].xyz + cb1[4].xyz;
  r6.xyz = r5.xxx * r6.xyz + cb1[5].xyz;
  r7.xyzw = r3.xyxy / cb1[21].xxyy;
  r0.w = t10.Sample(s0_s, r7.xy).x;
  r1.z = t10.Sample(s0_s, r7.zw).x;
  r3.w = r2.w / cb1[21].z;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb1[21].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r1.z = r1.z + -r0.w;
  r0.w = r3.w * r1.z + r0.w;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb1[22].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb1[22].y * r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r7.xyz = cb1[7].xyz + -r6.xyz;
  r6.xyz = r0.www * r7.xyz + r6.xyz;
  r1.z = saturate(dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r3.w = 1 + -r1.z;
  r3.w = r3.w + r3.w;
  r7.xyz = -r3.www * cb1[10].xyz + float3(1,1,1);
  r3.w = r1.z + r1.z;
  r8.xyz = cb1[9].xyz * r3.www;
  r1.z = cmp(r1.z >= 0.5);
  r7.xyz = r1.zzz ? r7.xyz : r8.xyz;
  r8.xyz = cb1[9].xyz + -r7.xyz;
  r7.xyz = cb1[22].zzz * r8.xyz + r7.xyz;
  r1.z = r2.w / cb1[22].w;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[23].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r7.xyz = r7.xyz + -r6.xyz;
  r7.xyz = r7.xyz * r1.zzz;
  r6.xyz = cb1[23].yyy * r7.xyz + r6.xyz;
  r5.xw = r3.xy / cb1[23].ww;
  r3.w = t13.SampleBias(s5_s, r5.xw, cb0[143].y).x;
  r3.w = cb1[24].x * r3.w;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb1[24].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r7.xyz = -cb1[14].xyz + cb1[13].xyz;
  r7.xyz = r7.xyz * r3.www;
  r7.xyz = r4.www ? float3(0,0,0) : r7.xyz;
  r7.xyz = cb1[14].xyz + r7.xyz;
  r8.xyz = r7.xyz * r5.yyy;
  r7.xyz = -r7.xyz * r5.yyy + cb1[7].xyz;
  r7.xyz = r7.xyz * r0.www;
  r7.xyz = cb1[24].www * r7.xyz + r8.xyz;
  r0.w = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r3.w = 1 + -r0.w;
  r3.w = r3.w + r3.w;
  r8.xyz = -r3.www * cb1[10].xyz + float3(1,1,1);
  r3.w = r0.w + r0.w;
  r9.xyz = cb1[9].xyz * r3.www;
  r0.w = cmp(r0.w >= 0.5);
  r8.xyz = r0.www ? r8.xyz : r9.xyz;
  r9.xyz = cb1[9].xyz + -r8.xyz;
  r8.xyz = cb1[22].zzz * r9.xyz + r8.xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r8.xyz = r8.xyz * r1.zzz;
  r8.xyz = cb1[23].yyy * r8.xyz;
  r7.xyz = cb1[25].xxx * r8.xyz + r7.xyz;
  r0.w = saturate(10 * r5.y);
  r5.xyw = r7.xyz + -r6.xyz;
  r5.xyw = r0.www * r5.xyw + r6.xyz;
  r0.w = dot(r5.xyw, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r5.xyw;
  r5.xyw = cb1[25].yyy * r6.xyz + r5.xyw;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyw);
  r5.xyw = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyw;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.wxy;
  r6.xyz = r5.wxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb1[20].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyw = r5.xyw * r8.xxx + r6.xyz;
  r5.xyw = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyw;
  r5.xyw = cb1[16].xyz * r5.xyw;
  r5.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyw);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb1[25].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb1[25].w * r0.w;
  r1.z = saturate(cb1[26].y + v1.z);
  r0.w = r1.z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb1[26].z * r0.w);
  r2.xy = r3.xy / cb1[27].xx;
  r1.z = t10.SampleBias(s2_s, r2.xy, cb0[143].y).x;
  r2.x = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[27].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb1[27].z * r1.z;
  r1.z = r2.x ? -0 : -r1.z;
  r1.z = cb1[28].x + r1.z;
  r1.z = 1 + r1.z;
  r2.x = r2.w / cb1[28].y;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb1[28].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = min(1, r2.x);
  r2.x = r2.y ? 0 : r2.x;
  r1.z = saturate(r2.x * r1.z);
  r1.z = 1 + -r1.z;
  r1.z = r5.z * r1.z;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb1[28].w;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r1.y = r2.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb1[29].y + -r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t14.SampleBias(s6_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r1.z * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r5.xyw);
  r2.x = saturate(cb1[26].w);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r2.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
  r2.xyz = cb0[213].xyz * r2.xyz;
  r5.xyz = (int3)r2.xyz;
  r5.w = 0;
  r5.xyzw = t0.Load(r5.xyzw).xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r2.w = 1 + cb0[213].w;
  r2.xyz = r2.xyz / r5.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = cb0[213].www * r2.xyz;
  r2.xyz = r5.xyz * r2.www + r2.xyz;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = cb0[214].xyz * r2.xyz;
  r5.x = t9[r1.w].val[4/4];
  r5.y = t9[r1.w].val[4/4+1];
  r1.w = cmp(0 < r5.y);
  if (r1.w != 0) {
    r1.w = t8.SampleLevel(s1_s, r2.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = cb0[137].w * r0.w;
  r5.yzw = r1.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r2.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r5.yzw = r2.www ? r7.xyz : r5.yzw;
  r6.xyz = r2.www ? float3(0,0,0) : r6.xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xyz = t1.SampleLevel(s1_s, r2.xyz, 0).zxy;
  r8.xyzw = t2.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t4.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t6.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = r8.xyzw * r7.yyyy;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r7.zzzz;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r7.xxxx;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = t3.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t5.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t7.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r7.xxxx;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r2.xyz = r0.yzy * r0.yzx;
  r14.yw = r0.zz * r0.yx;
  r2.x = r0.x * r0.x + -r2.x;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r14.xz = r2.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r2.x = 0.429042608 * r2.x;
  r16.x = r7.y;
  r16.yzw = r8.yzw;
  r15.x = 0.886227548;
  r2.y = dot(r16.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r2.z = dot(r8.xyzw, r14.xyzw);
  r2.y = r2.y + r2.z;
  r8.x = r11.w * r2.x + r2.y;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r2.y = dot(r11.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r2.z = dot(r9.xyzw, r14.xyzw);
  r2.y = r2.y + r2.z;
  r8.y = r12.w * r2.x + r2.y;
  r7.yzw = r10.yzw;
  r2.y = dot(r7.xyzw, r15.xyzw);
  r10.yzw = r13.xyz;
  r2.z = dot(r10.xyzw, r14.xyzw);
  r2.y = r2.y + r2.z;
  r8.z = r13.w * r2.x + r2.y;
  r2.xyz = max(float3(0,0,0), r8.xyz);
  r2.xyz = cb0[157].xyz * r2.xyz;
  r2.xyz = float3(0.318309873,0.318309873,0.318309873) * r2.xyz;
  r3.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.xyz = r2.xyz * r5.yzw;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r2.xyz = r7.xyz * r2.xyz;
  r5.yzw = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t9[r6.x].val[0/4];
    r6.z = t9[r6.x].val[0/4+1];
    r6.w = t9[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r7.x = t9[r6.y].val[0/4];
    r7.y = t9[r6.y].val[0/4+1];
    r7.z = t9[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r4.www ? r3.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.yzw + r2.xyz;
  r2.xyz = r2.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r3.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}