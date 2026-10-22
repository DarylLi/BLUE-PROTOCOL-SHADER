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

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD15,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r0.w = mad((int)v4.x, 36, 3);
  r2.x = t2[r0.w].val[0/4];
  r2.y = t2[r0.w].val[0/4+1];
  r2.z = t2[r0.w].val[0/4+2];
  r2.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r2.xyz = r2.xyz / r0.www;
  r3.x = dot(v0.xyz, r2.xyz);
  r3.y = dot(r0.xyz, r2.xyz);
  r3.z = dot(v1.xyz, r2.xyz);
  r2.xyzw = t4.SampleBias(s1_s, v3.xy, cb0[143].y).wxyz;
  r2.yzw = float3(-0.5,-0.5,-0.5) + r2.yzw;
  r2.yzw = r2.yzw + r2.yzw;
  r4.xyz = cb0[17].xyz + cb0[16].xyz;
  r5.x = dot(v0.xyz, r4.xyz);
  r5.y = dot(r0.xyz, r4.xyz);
  r4.xy = r5.xy * r2.yz;
  r4.z = 0;
  r2.yzw = -r3.xyz * r2.www + r4.xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = sqrt(r0.w);
  r2.yzw = r2.yzw / r0.www;
  r2.yzw = r2.yzw * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = rsqrt(r0.w);
  r2.yzw = r2.yzw * r0.www;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.yyy * v0.xyz + r0.xyz;
  r0.xyz = r2.www * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.yzw = cb2[6].xxx * cb2[1].xyz;
  r3.xyzw = t5.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r4.xyz = t6.SampleBias(s3_s, v3.xy, cb0[143].y).xyz;
  r1.w = cmp(cb1[0].x != 0.000000);
  r4.w = cmp(0.00100000005 < abs(cb1[0].x));
  r1.w = r1.w ? r4.w : 0;
  r5.xy = floor(v6.xy);
  r4.w = dot(r5.xy, float2(347.834503,3343.28369));
  r4.w = cos(r4.w);
  r4.w = 1000 * r4.w;
  r4.w = frac(r4.w);
  r5.x = cmp(cb1[0].x < 0);
  r5.y = 1 + cb1[0].x;
  r5.y = cmp(r4.w < r5.y);
  r4.w = cmp(cb1[0].x < r4.w);
  r4.w = r5.x ? r5.y : r4.w;
  r4.w = cmp((int)r4.w == 0);
  r1.w = r1.w ? r4.w : 0;
  if (r1.w != 0) discard;
  r1.w = r3.w * v3.z + -0.100000001;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r3.xyz = saturate(r3.xyz);
  r2.x = saturate(r2.x);
  r1.w = r2.x * cb0[139].y + cb0[139].x;
  r4.xyz = saturate(r4.xyz);
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r2.x = mad((int)v4.x, 36, 20);
  r5.x = t2[r2.x].val[4/4];
  r5.y = t2[r2.x].val[4/4+1];
  r2.x = cmp(0 < r5.y);
  if (r2.x != 0) {
    r5.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.yzw = max(float3(0,0,0), r5.yzw);
    r5.yzw = min(float3(0.99000001,0.99000001,0.99000001), r5.yzw);
    r5.yzw = cb0[213].xyz * r5.yzw;
    r6.xyz = (int3)r5.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r2.x = 1 + cb0[213].w;
    r5.yzw = r5.yzw / r6.www;
    r5.yzw = frac(r5.yzw);
    r5.yzw = cb0[213].www * r5.yzw;
    r5.yzw = r6.xyz * r2.xxx + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) + r5.yzw;
    r5.yzw = cb0[214].xyz * r5.yzw;
    r2.x = t1.SampleLevel(s0_s, r5.yzw, 0).x;
  } else {
    r2.x = 1;
  }
  r5.yzw = saturate(r4.xyz);
  o4.xyz = sqrt(r5.yzw);
  r5.yzw = ddx_coarse(v2.xyz);
  r6.xyz = ddy_coarse(v2.xyz);
  r3.w = dot(r5.yzw, r5.yzw);
  r4.w = dot(r6.xyz, r6.xyz);
  r3.w = max(r4.w, r3.w);
  r3.w = log2(r3.w);
  r3.w = cb0[183].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = saturate(r3.w * cb0[183].x + cb0[183].y);
  o2.z = max(r3.w, r1.w);
  r5.yzw = r3.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r5.yzw = r1.www ? r6.xyz : r5.yzw;
  r6.x = t3[0].val[0/4];
  r6.y = t3[0].val[0/4+1];
  r6.z = t3[0].val[0/4+2];
  r6.w = t3[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r6.xyzw, r0.xyzw);
  r9.x = t3[1].val[0/4];
  r9.y = t3[1].val[0/4+1];
  r9.z = t3[1].val[0/4+2];
  r9.w = t3[1].val[0/4+3];
  r8.y = dot(r9.xyzw, r0.xyzw);
  r10.x = t3[2].val[0/4];
  r10.y = t3[2].val[0/4+1];
  r10.z = t3[2].val[0/4+2];
  r10.w = t3[2].val[0/4+3];
  r8.z = dot(r10.xyzw, r0.xyzw);
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
  r3.w = r0.y * r0.y;
  r3.w = r0.x * r0.x + -r3.w;
  r11.x = t3[6].val[0/4];
  r11.y = t3[6].val[0/4+1];
  r11.z = t3[6].val[0/4+2];
  r8.xyz = r12.xyz + r8.xyz;
  r8.xyz = r11.xyz * r3.www + r8.xyz;
  r8.xyz = max(float3(0,0,0), r8.xyz);
  r8.xyz = cb0[187].xyz * r8.xyz;
  r13.xyzw = float4(-1,-1,-1,1) * r0.xyzw;
  r6.x = dot(r6.xyzw, r13.xyzw);
  r6.y = dot(r9.xyzw, r13.xyzw);
  r6.z = dot(r10.xyzw, r13.xyzw);
  r6.xyz = r6.xyz + r12.xyz;
  r6.xyz = r11.xyz * r3.www + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[187].xyz * r6.xyz;
  r4.xyz = r6.xyz * r4.xyz;
  r4.xyz = r8.xyz * r5.yzw + r4.xyz;
  r6.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r4.xyz = r6.xyz * r4.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r5.yzw = r6.xyz + r5.yzw;
  r2.yzw = max(float3(0,0,0), r2.yzw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r1.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r0.www ? r1.xyz : r2.yzw;
  }
  r1.xyz = cb0[145].yyy * r5.yzw + r4.xyz;
  r1.xyz = r1.xyz + r2.yzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r0.w = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.xyw = float3(0,0.5,0.525490224);
  o3.xyz = r3.xyz;
  o4.w = 1;
  o5.x = r2.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}