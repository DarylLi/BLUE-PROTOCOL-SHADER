// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[33];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r2.x = cb3[19].z * cb0[142].z;
  r0.w = cb0[142].z * cb3[19].z + v2.x;
  r3.x = cb3[21].y * r0.w;
  r2.y = cb3[21].z * cb0[142].z;
  r2.xyz = v2.yxy + r2.yxy;
  r3.y = cb3[21].w * r2.x;
  r0.w = cb0[142].z * cb3[22].z + v2.x;
  r4.x = cb3[23].w * r0.w;
  r0.w = cb0[142].z * cb3[24].x + v2.y;
  r4.y = cb3[24].y * r0.w;
  r2.xw = t4.SampleBias(s1_s, r4.xy, cb0[143].y).xy;
  r2.xw = float2(-0.5,-0.5) + r2.xw;
  r4.x = cb3[24].w * r2.x;
  r4.y = cb3[25].x * r2.w;
  r2.xw = r4.xy * float2(2,2) + r3.xy;
  r2.xw = t5.SampleBias(s2_s, r2.xw, cb0[143].y).xy;
  r3.xy = r2.xw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r2.xy = t5.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
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
  r2.xy = cb3[25].yy * r2.xy;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.yzw = r0.xyz * r0.www;
  r1.w = -0.5 + v2.x;
  r1.w = cb3[25].z * r1.w;
  r3.x = r0.x * r0.w + r1.w;
  r1.w = r0.y * r0.w + -r1.w;
  r3.y = 1 + r1.w;
  r1.w = dot(r3.xy, r3.xy);
  r1.w = sqrt(r1.w);
  r3.xy = r3.xy / r1.ww;
  r1.w = dot(cb2[5].xy, cb2[5].xy);
  r1.w = sqrt(r1.w);
  r3.zw = cb2[5].xy / r1.ww;
  r1.w = dot(r3.xy, r3.zw);
  r1.w = 1 + -r1.w;
  r1.w = r1.w * cb3[26].x + -cb3[26].x;
  r1.w = saturate(cb3[26].w + r1.w);
  r3.xyz = -cb3[14].xyz + cb3[13].xyz;
  r3.xyz = r1.www * r3.xyz + cb3[14].xyz;
  r4.xyz = cb3[27].xxx * r3.xyz;
  r5.xyz = -r3.xyz * cb3[27].xxx + cb3[15].xyz;
  r4.xyz = cb3[27].yyy * r5.xyz + r4.xyz;
  r3.xyz = saturate(cb3[27].zzz * r3.xyz);
  r1.w = cb3[28].z * v2.y + cb3[28].w;
  r1.w = -cb3[29].x * r1.w + 1;
  r3.w = -cb3[29].y + r1.z;
  r3.w = abs(r3.w) / cb3[29].z;
  r3.w = -r3.w * cb3[29].w + 1;
  r5.y = -r1.w * r3.w + 1;
  r5.x = v2.x;
  r1.w = cb2[2].x * cb0[142].z;
  r1.w = cb3[30].x * r1.w;
  r5.zw = cb3[17].xy * r1.ww;
  r6.xy = r5.xy * cb3[16].xy + r5.zw;
  r5.xy = r5.xy * cb3[18].xy + float2(0.200000003,0.200000003);
  r5.xy = r5.zw * float2(0.699999988,0.699999988) + r5.xy;
  r1.w = t6.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r7.y = r1.w * 2 + -1;
  r7.x = 0;
  r5.zw = cb3[31].xx * r7.xy;
  r1.w = frac(cb0[142].z);
  r6.zw = r5.zw * r1.ww + r6.xy;
  r3.w = t6.SampleBias(s3_s, r6.zw, cb0[143].y).x;
  r3.w = r3.w * 2 + -1;
  r4.w = 0.5 + cb0[142].z;
  r4.w = frac(r4.w);
  r6.xy = r5.zw * r4.ww + r6.xy;
  r6.x = t6.SampleBias(s3_s, r6.xy, cb0[143].y).x;
  r6.x = r6.x * 2 + -1;
  r6.y = r4.w + r4.w;
  r6.z = max(1, r6.y);
  r6.z = -1 + r6.z;
  r6.z = r6.z + r6.z;
  r6.yz = min(float2(1,1), r6.yz);
  r6.z = 1 + -r6.z;
  r6.y = r6.y + r6.y;
  r6.y = min(1, r6.y);
  r6.y = r6.z * r6.y;
  r6.x = r6.x + -r3.w;
  r3.w = r6.y * r6.x + r3.w;
  r6.xz = r5.zw * r1.ww + r5.xy;
  r1.w = t6.SampleBias(s3_s, r6.xz, cb0[143].y).y;
  r1.w = r1.w * 2 + -1;
  r5.xy = r5.zw * r4.ww + r5.xy;
  r4.w = t6.SampleBias(s3_s, r5.xy, cb0[143].y).y;
  r4.w = r4.w * 2 + -1;
  r4.w = r4.w + -r1.w;
  r1.w = r6.y * r4.w + r1.w;
  r1.w = r3.w + -r1.w;
  r1.w = r1.w * cb3[31].y + v2.x;
  r1.w = r1.w * 2 + -1;
  r1.w = 1 + -abs(r1.w);
  r1.w = r1.w * cb3[31].w + -cb3[31].w;
  r1.w = saturate(cb3[32].y + r1.w);
  r5.xy = -cb0[129].xy + v4.xy;
  r5.zw = cb0[152].xx + r5.xy;
  r5.zw = (uint2)r5.zw;
  r3.w = (uint)r5.w << 1;
  r3.w = (int)r3.w + (int)r5.z;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r5.xy = float2(0.015625,0.015625) * r5.xy;
  r4.w = t7.SampleBias(s4_s, r5.xy, cb0[143].y).x;
  r3.w = r4.w + r3.w;
  r1.w = r3.w * 0.166666672 + r1.w;
  r1.w = -0.833299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r1.w = saturate(cb3[27].w);
  r5.xy = saturate(cb3[28].xy);
  o2.z = r5.y * cb0[139].y + cb0[139].x;
  r3.w = mad((int)v3.x, 36, 20);
  r4.w = cmp(0 < cb0[215].x);
  r5.y = t2[r3.w].val[4/4];
  r5.z = t2[r3.w].val[4/4+1];
  r3.w = cmp(0 < r5.z);
  if (r3.w != 0) {
    r6.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r3.w = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r3.www + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r3.w = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r5.z = mad((int)v3.x, 36, 18);
    r5.z = t2[r5.z].val[12/4];
    r5.z = cmp(0 < r5.z);
    r5.z = r4.w ? r5.z : 0;
    r3.w = r5.z ? cb1[5].x : 1;
  }
  r5.z = 0.0799999982 * r5.x;
  r6.xyz = -r5.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r6.xyz = r1.www * r6.xyz + r5.zzz;
  r7.xyz = -r3.xyz * r1.www + r3.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r5.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r5.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r5.zzz ? float3(0,0,0) : r6.xyz;
  r5.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r5.z * 2.04040003 + -0.332399994;
  r5.w = r5.z * -4.79510021 + r5.w;
  r5.z = r5.z * 2.75519991 + r5.w;
  r5.z = 1.33200002 + r5.z;
  r5.z = max(1, r5.z);
  r8.xyz = r2.zwz * r2.zwy;
  r9.yw = r2.ww * r2.zy;
  r5.w = r2.y * r2.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r5.w = 0.429042608 * r5.w;
  r10.x = 0.886227548;
  r6.w = dot(cb1[6].xyzw, r10.xyzw);
  r7.w = dot(cb1[9].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.x = cb1[12].x * r5.w + r6.w;
  r6.w = dot(cb1[7].xyzw, r10.xyzw);
  r7.w = dot(cb1[10].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.y = cb1[12].y * r5.w + r6.w;
  r6.w = dot(cb1[8].xyzw, r10.xyzw);
  r7.w = dot(cb1[11].xyzw, r8.xyzw);
  r6.w = r7.w + r6.w;
  r9.z = cb1[12].z * r5.w + r6.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r4.www ? r8.xyz : 0;
  r5.w = cmp(cb0[186].y != 0.000000);
  if (r5.w != 0) {
    r2.x = 1;
    r9.xyzw = r4.wwww ? cb1[4].wxyz : r2.xyzw;
    r2.x = 1 + -r9.x;
    r2.x = -r2.x * r2.x + 1;
    r0.xyz = r0.xyz * r0.www + -r9.yzw;
    r0.xyz = r2.xxx * r0.xyz + r9.yzw;
    r4.w = saturate(dot(r9.yzw, r2.yzw));
    r5.w = 1 + -r4.w;
    r9.y = r2.x * r5.w + r4.w;
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
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r2.x = cmp(0 < cb0[140].x);
  if (r2.x != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r1.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r2.x = (int)r7.y | (int)r7.x;
    r2.x = (int)r7.z | (int)r2.x;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r2.xxx ? r1.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r2.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r5.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r5.y;
  o2.y = r5.x;
  o2.w = 0.505882382;
  o2.x = r1.w;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}