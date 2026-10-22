// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = mad((int2)v4.xx, int2(36,36), int2(4,20));
  r0.w = t2[r2.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v7.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r3.xyzw = t4.SampleBias(s1_s, v3.xy, cb0[143].y).wxyz;
  r2.xzw = float3(-0.5,-0.5,-0.5) + r3.yzw;
  r2.xzw = cb0[138].www * r2.xzw;
  r2.xzw = r2.xzw * float3(2,2,2) + cb0[138].xyz;
  r1.w = dot(r2.xzw, r2.xzw);
  r1.w = rsqrt(r1.w);
  r2.xzw = r2.xzw * r1.www;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.www * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r4.yzw = r0.xyz * r0.www;
  r2.xzw = cb3[7].xxx * cb3[1].xyz;
  r5.xyzw = t5.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r3.yzw = t6.SampleBias(s3_s, v3.xy, cb0[143].y).xyz;
  r1.w = cmp(cb1[0].x != 0.000000);
  r6.x = cmp(0.00100000005 < abs(cb1[0].x));
  r1.w = r1.w ? r6.x : 0;
  r6.xy = floor(v6.xy);
  r6.x = dot(r6.xy, float2(347.834503,3343.28369));
  r6.x = cos(r6.x);
  r6.x = 1000 * r6.x;
  r6.x = frac(r6.x);
  r6.y = cmp(cb1[0].x < 0);
  r6.z = 1 + cb1[0].x;
  r6.z = cmp(r6.x < r6.z);
  r6.x = cmp(cb1[0].x < r6.x);
  r6.x = r6.y ? r6.z : r6.x;
  r6.x = cmp((int)r6.x == 0);
  r1.w = r1.w ? r6.x : 0;
  if (r1.w != 0) discard;
  r1.w = v2.w * r5.w + -0.100000001;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r5.xyz = saturate(r5.xyz);
  r3.xyzw = saturate(r3.xyzw);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  r3.xyz = r3.yzw * cb0[136].www + cb0[136].xyz;
  r1.w = cmp(0 < cb0[215].x);
  r6.x = t2[r2.y].val[4/4];
  r6.y = t2[r2.y].val[4/4+1];
  r2.y = cmp(0 < r6.y);
  if (r2.y != 0) {
    r6.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.yzw = max(float3(0,0,0), r6.yzw);
    r6.yzw = min(float3(0.99000001,0.99000001,0.99000001), r6.yzw);
    r6.yzw = cb0[213].xyz * r6.yzw;
    r7.xyz = (int3)r6.yzw;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r2.y = 1 + cb0[213].w;
    r6.yzw = r6.yzw / r7.www;
    r6.yzw = frac(r6.yzw);
    r6.yzw = cb0[213].www * r6.yzw;
    r6.yzw = r7.xyz * r2.yyy + r6.yzw;
    r6.yzw = float3(0.5,0.5,0.5) + r6.yzw;
    r6.yzw = cb0[214].xyz * r6.yzw;
    r2.y = t1.SampleLevel(s0_s, r6.yzw, 0).x;
  } else {
    r3.w = mad((int)v4.x, 36, 18);
    r3.w = t2[r3.w].val[12/4];
    r3.w = cmp(0 < r3.w);
    r3.w = r1.w ? r3.w : 0;
    r2.y = r3.w ? cb2[5].x : 1;
  }
  r6.yzw = saturate(r3.xyz);
  o4.xyz = sqrt(r6.yzw);
  r6.yzw = r5.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.yzw;
  r6.yzw = r3.www ? r8.xyz : r6.yzw;
  r7.xyz = r3.www ? float3(0,0,0) : r7.xyz;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r3.w * 2.04040003 + -0.332399994;
  r5.w = r3.w * -4.79510021 + r5.w;
  r3.w = r3.w * 2.75519991 + r5.w;
  r3.w = 1.33200002 + r3.w;
  if (r1.w != 0) {
    r8.xyz = r4.zwz * r4.zwy;
    r9.yw = r4.ww * r4.zy;
    r5.w = r4.y * r4.y + -r8.x;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
    r9.xz = r8.zy * float2(1,3) + float2(0,-1);
    r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
    r5.w = 0.429042608 * r5.w;
    r10.x = 0.886227548;
    r7.w = dot(cb2[6].xyzw, r10.xyzw);
    r9.x = dot(cb2[9].xyzw, r8.xyzw);
    r7.w = r9.x + r7.w;
    r11.x = cb2[12].x * r5.w + r7.w;
    r7.w = dot(cb2[7].xyzw, r10.xyzw);
    r9.y = dot(cb2[10].xyzw, r8.xyzw);
    r7.w = r9.y + r7.w;
    r11.y = cb2[12].y * r5.w + r7.w;
    r7.w = dot(cb2[8].xyzw, r10.xyzw);
    r8.x = dot(cb2[11].xyzw, r8.xyzw);
    r7.w = r8.x + r7.w;
    r11.z = cb2[12].z * r5.w + r7.w;
    r8.yzw = max(float3(0,0,0), r11.xyz);
    r10.yzw = float3(1.02332771,-1.02332771,1.02332771) * r4.zwy;
    r10.x = 0.886227548;
    r7.w = dot(cb2[6].xyzw, r10.xyzw);
    r7.w = r7.w + r9.x;
    r11.x = cb2[12].x * r5.w + r7.w;
    r7.w = dot(cb2[7].xyzw, r10.xyzw);
    r7.w = r7.w + r9.y;
    r11.y = cb2[12].y * r5.w + r7.w;
    r7.w = dot(cb2[8].xyzw, r10.xyzw);
    r7.w = r7.w + r8.x;
    r11.z = cb2[12].z * r5.w + r7.w;
    r9.xyz = max(float3(0,0,0), r11.xyz);
  } else {
    r8.yzw = float3(0,0,0);
    r9.xyz = float3(0,0,0);
  }
  r5.w = cmp(cb0[186].y != 0.000000);
  if (r5.w != 0) {
    r4.x = 1;
    r10.xyzw = r1.wwww ? cb2[4].wxyz : r4.xyzw;
    r1.w = 1 + -r10.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r10.yzw;
    r0.xyz = r1.www * r0.xyz + r10.yzw;
    r4.x = saturate(dot(r10.yzw, r4.yzw));
    r5.w = 1 + -r4.x;
    r1.w = r1.w * r5.w + r4.x;
  } else {
    r0.xyz = r4.yzw;
    r10.x = 1;
    r1.w = 1;
  }
  r11.x = t3[0].val[0/4];
  r11.y = t3[0].val[0/4+1];
  r11.z = t3[0].val[0/4+2];
  r11.w = t3[0].val[0/4+3];
  r0.w = 1;
  r12.x = dot(r11.xyzw, r0.xyzw);
  r13.x = t3[1].val[0/4];
  r13.y = t3[1].val[0/4+1];
  r13.z = t3[1].val[0/4+2];
  r13.w = t3[1].val[0/4+3];
  r12.y = dot(r13.xyzw, r0.xyzw);
  r14.x = t3[2].val[0/4];
  r14.y = t3[2].val[0/4+1];
  r14.z = t3[2].val[0/4+2];
  r14.w = t3[2].val[0/4+3];
  r12.z = dot(r14.xyzw, r0.xyzw);
  r15.xyzw = r0.xyzz * r0.yzzx;
  r16.x = t3[3].val[0/4];
  r16.y = t3[3].val[0/4+1];
  r16.z = t3[3].val[0/4+2];
  r16.w = t3[3].val[0/4+3];
  r17.x = dot(r16.xyzw, r15.xyzw);
  r18.x = t3[4].val[0/4];
  r18.y = t3[4].val[0/4+1];
  r18.z = t3[4].val[0/4+2];
  r18.w = t3[4].val[0/4+3];
  r17.y = dot(r18.xyzw, r15.xyzw);
  r19.x = t3[5].val[0/4];
  r19.y = t3[5].val[0/4+1];
  r19.z = t3[5].val[0/4+2];
  r19.w = t3[5].val[0/4+3];
  r17.z = dot(r19.xyzw, r15.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r10.yzw = r17.xyz + r12.xyz;
  r10.yzw = r0.yzw * r0.xxx + r10.yzw;
  r10.yzw = max(float3(0,0,0), r10.yzw);
  r10.yzw = cb0[187].xyz * r10.yzw;
  r0.x = r10.x * r1.w;
  r10.yzw = r10.yzw * r0.xxx;
  r12.xyz = -r4.yzw;
  r12.w = 1;
  r11.x = dot(r11.xyzw, r12.xyzw);
  r11.y = dot(r13.xyzw, r12.xyzw);
  r11.z = dot(r14.xyzw, r12.xyzw);
  r12.xyzw = r4.yzww * r4.zwwy;
  r13.x = dot(r16.xyzw, r12.xyzw);
  r13.y = dot(r18.xyzw, r12.xyzw);
  r13.z = dot(r19.xyzw, r12.xyzw);
  r0.x = r4.z * r4.z;
  r0.x = r4.y * r4.y + -r0.x;
  r11.xyz = r13.xyz + r11.xyz;
  r0.xyz = r0.yzw * r0.xxx + r11.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.xyz = r0.xyz * r10.xxx;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r8.xyz = r8.yzw * cb0[157].xyz + r10.yzw;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r3.xyz;
  r0.xyz = r8.xyz * r6.yzw + r0.xyz;
  r3.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyzw = max(float4(1,1,1,1), r3.xyzw);
  r0.xyzw = r3.xyzw * r0.xyzw;
  r3.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.yzw;
  r2.xzw = max(float3(0,0,0), r2.xzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.yz = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = -r7.xyz + r1.xyz;
    r6.y = t2[r6.z].val[0/4];
    r6.z = t2[r6.z].val[0/4+1];
    r6.w = t2[r6.z].val[0/4+2];
    r6.yzw = float3(1,1,1) + r6.yzw;
    r6.yzw = cmp(r6.yzw < abs(r7.xyz));
    r1.w = (int)r6.z | (int)r6.y;
    r1.w = (int)r6.w | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xzw = r1.www ? r1.xyz : r2.xzw;
  }
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.xzw;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
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
  o1.w = r6.x;
  o2.xyw = float3(0,0.5,0.525490224);
  o3.xyz = r5.xyz;
  o4.w = 1;
  o5.x = r2.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}