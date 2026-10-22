// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[15];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v5.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = r4.xy / cb3[8].zz;
  r5.xy = t4.SampleBias(s2_s, r1.zw, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r5.xy = -r5.xy;
  r5.z = v1.z * r0.w;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r5.xyz = r5.xyz / r0.www;
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.zxy, r5.xyz);
  r6.z = dot(v1.xyz, r5.xyz);
  r5.xyz = float3(0,0,1) + -r6.xyz;
  r5.xyz = cb3[8].www * r5.xyz + r6.xyz;
  r6.xy = r4.xy / cb3[9].zz;
  r6.zw = t5.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.zw, r6.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r6.zw;
  r7.z = v1.z * r0.w;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.zxy, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb3[9].www * r7.xyz + r8.xyz;
  r4.xyz = r4.xyz / cb3[10].zzz;
  r0.w = t6.Sample(s0_s, r4.xz).x;
  r2.w = t6.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r0.w;
  r0.w = r4.z * r2.w + r0.w;
  r2.w = t6.Sample(s0_s, r4.xy).x;
  r2.w = r2.w + -r0.w;
  r0.w = r4.w * r2.w + r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[10].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb3[11].x * r0.w;
  r0.w = r2.w ? 0 : r0.w;
  r0.w = saturate(-v2.z + r0.w);
  r0.w = saturate(v2.y + r0.w);
  r4.xyz = r7.xyz + -r5.xyz;
  r4.xyz = r0.www * r4.xyz + r5.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r2.www * r0.xyz;
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r5.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = sqrt(r0.z);
  r7.xyz = r7.xyz / r0.zzz;
  r0.z = saturate(dot(-r7.xyz, r5.xyz));
  r3.w = 1 + -cb1[1].x;
  r0.z = saturate(r3.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r4.zxy, r2.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r5.x = cb1[1].y * r0.z;
  r5.x = exp2(r5.x);
  r5.y = 1 + -cb1[0].w;
  r5.x = r5.x * r5.y + cb1[0].w;
  r5.y = cmp(r5.x >= cb1[0].y);
  r5.y = r5.y ? 1.000000 : 0;
  r5.x = r5.y * r5.x;
  r5.y = r0.y * r2.w + 1;
  r5.z = cmp(0 >= r5.y);
  r5.y = log2(r5.y);
  r5.y = cb1[0].x * r5.y;
  r5.y = exp2(r5.y);
  r5.y = min(1, r5.y);
  r5.y = r5.z ? 0 : r5.y;
  r5.x = r5.x * r5.y;
  r0.y = -r0.y * r2.w + 1;
  r2.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb1[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r2.w ? 0 : r0.y;
  r0.y = r5.x * r0.y;
  r0.y = cb1[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r5.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r8.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r2.w = saturate(dot(-r7.xyz, r8.xyz));
  r2.w = saturate(r2.w + r3.w);
  r0.x = r2.w * r0.x;
  r0.x = r0.x * r0.y;
  r7.xyz = cb2[9].xyz * r0.xxx;
  r7.xyz = cb2[1].yyy * r7.xyz;
  r5.xyz = r5.xyz * cb2[1].xxx + r7.xyz;
  r5.xyz = cb1[2].xyz * r5.xyz;
  r7.xyz = cb3[2].xyz * r5.xyz;
  r5.xyz = -r5.xyz * cb3[2].xyz + cb3[3].xyz;
  r5.xyz = cb3[11].yyy * r5.xyz + r7.xyz;
  r0.xy = r3.xy / cb3[8].zz;
  r7.xyz = t7.Sample(s0_s, r0.xy).xyz;
  r7.xyz = cb3[5].xyz * r7.xyz;
  r0.xy = r3.xy / cb3[9].zz;
  r8.xyz = t8.Sample(s0_s, r0.xy).xyz;
  r8.xyz = r8.xyz * cb3[7].xyz + -r7.xyz;
  r7.xyz = r0.www * r8.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r0.xy = t9.Sample(s0_s, r1.zw).xy;
  r1.zw = t10.Sample(s0_s, r6.xy).xy;
  r1.w = r1.w + -r0.y;
  r6.x = saturate(r0.w * r1.w + r0.y);
  r0.y = cb3[11].z * r0.z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[11].w * r0.y;
  r0.z = saturate(cb3[12].y + v1.z);
  r0.y = r0.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r6.y = saturate(cb3[12].z * r0.y);
  r0.x = cb3[12].w + r0.x;
  r0.y = cb3[13].x + r1.z;
  r0.y = r0.y + -r0.x;
  r0.x = saturate(r0.w * r0.y + r0.x);
  r0.yz = -cb0[129].xy + v6.xy;
  r1.zw = cb0[152].xx + r0.yz;
  r1.zw = (uint2)r1.zw;
  r0.w = (uint)r1.w << 1;
  r0.w = (int)r0.w + (int)r1.z;
  r0.w = (uint)r0.w % 5;
  r0.w = (uint)r0.w;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t11.SampleBias(s4_s, r0.yz, cb0[143].y).x;
  r0.y = r0.w + r0.y;
  r0.y = cb3[13].y * r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = cmp(cb0[31].w < 1);
  r0.w = r1.x * cb0[65].x + cb0[65].y;
  r1.z = r1.x * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r0.w = r1.z + r0.w;
  r0.z = r0.z ? r1.y : r0.w;
  r0.z = r0.z / cb3[13].z;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb3[13].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = cb3[14].x * r0.z;
  r0.z = max(1, r0.z);
  r0.z = r0.w ? 1 : r0.z;
  r0.y = r0.y * r0.z + r1.y;
  r0.y = r1.x / r0.y;
  r0.y = min(v6.z, r0.y);
  r7.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.x = (int)w4.x * 15;
  r8.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r8.x].val[4/4];
  r9.xyzw = t3.Sample(s1_s, v3.zw).xyzw;
  r10.x = t1[r8.y].val[0/4];
  r10.y = t1[r8.y].val[0/4+1];
  r10.z = t1[r8.y].val[0/4+2];
  r10.w = t1[r8.y].val[0/4+3];
  r11.xyzw = r10.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r9.xyzw = saturate(r9.xyzw * r10.xyzw + r11.xyzw);
  r10.x = t1[r0.x].val[0/4];
  r10.y = t1[r0.x].val[0/4+1];
  r10.z = t1[r0.x].val[0/4+2];
  r10.w = t1[r0.x].val[0/4+3];
  r9.xyzw = r9.xyzw * r9.xyzw;
  o5.xyzw = r9.xyzw * r10.xyzw;
  r0.x = 0.0799999982 * r6.y;
  r9.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
  r0.xzw = r6.xxx * r9.xyz + r0.xxx;
  r9.xyz = -r7.xyz * r6.xxx + r7.xyz;
  r9.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r0.xzw = r0.xzw * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r10.xyz = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r9.xyz = r1.zzz ? r10.xyz : r9.xyz;
  r0.xzw = r1.zzz ? float3(0,0,0) : r0.xzw;
  r1.z = dot(r0.xzw, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r1.z * 2.04040003 + -0.332399994;
  r1.w = r1.z * -4.79510021 + r1.w;
  r1.z = r1.z * 2.75519991 + r1.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  r6.zw = float2(1,0.5) * v3.xy;
  r8.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t2.Sample(s1_s, r6.zw).xyzw;
  r11.xyzw = t2.Sample(s1_s, r8.xy).xyzw;
  r1.w = r11.w * 0.00392156886 + r10.w;
  r1.w = -0.00196078443 + r1.w;
  r12.x = t1[r8.z].val[0/4];
  r12.y = t1[r8.z].val[0/4+1];
  r12.z = t1[r8.z].val[0/4+2];
  r12.w = t1[r8.z].val[0/4+3];
  r8.x = t1[r8.w].val[0/4];
  r8.y = t1[r8.w].val[0/4+1];
  r8.z = t1[r8.w].val[0/4+2];
  r8.w = t1[r8.w].val[0/4+3];
  r1.w = r1.w * r12.w + r8.w;
  r10.xyz = r10.xyz * r10.xyz;
  r8.xyz = r10.xyz * r12.xyz + r8.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r6.zw = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r10.x = t1[r6.z].val[0/4];
  r10.y = t1[r6.z].val[0/4+1];
  r10.z = t1[r6.z].val[0/4+2];
  r10.w = t1[r6.z].val[0/4+3];
  r12.x = t1[r6.w].val[0/4];
  r12.y = t1[r6.w].val[0/4+1];
  r12.z = t1[r6.w].val[0/4+2];
  r12.w = t1[r6.w].val[0/4+3];
  r10.xyzw = r11.xyzw * r10.xyzw + r12.xyzw;
  r4.w = 1;
  r2.w = dot(r10.xyzw, r4.xyzw);
  r2.w = max(0, r2.w);
  r1.w = r2.w * r1.w;
  r8.xyz = r1.www * r8.xyz;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r8.xyz * r9.xyz;
  r10.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r10.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r10.xyz = float3(1.33200002,1.33200002,1.33200002) + r10.xyz;
  r10.xyz = max(float3(1,1,1), r10.xyz);
  r8.xyz = r10.xyz * r8.xyz;
  r0.xzw = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r1.x = -r0.y * r1.y + r1.x;
    r1.x = r1.x / r0.y;
    r2.xyz = r2.xyz * r1.xxx + r3.xyz;
    r1.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r3.x = t0[r1.x].val[0/4];
    r3.y = t0[r1.x].val[0/4+1];
    r3.z = t0[r1.x].val[0/4+2];
    r3.xyz = -r3.xyz + r2.xyz;
    r9.x = t0[r1.y].val[0/4];
    r9.y = t0[r1.y].val[0/4+1];
    r9.z = t0[r1.y].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r3.xyz = cmp(r9.xyz < abs(r3.xyz));
    r1.x = (int)r3.y | (int)r3.x;
    r1.x = (int)r3.z | (int)r1.x;
    r1.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r1.xxx ? r2.xyz : r5.xyz;
  }
  r0.xzw = cb0[145].yyy * r0.xzw + r8.xyz;
  r0.xzw = r0.xzw + r5.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r1.w * r1.z;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o2.w = 0.505882382;
  o2.xy = r6.xy;
  o3.xyz = r7.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r0.y;
  return;
}