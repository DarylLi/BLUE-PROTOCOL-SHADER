// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
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

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xyzw = mad((int4)v4.xxyy, int4(36,36,15,15), int4(18,20,4,6));
  r4.x = t0[r3.x].val[0/4];
  r4.y = t0[r3.x].val[0/4+1];
  r4.z = t0[r3.x].val[0/4+2];
  r0.w = r4.x + r4.y;
  r0.w = r0.w + r4.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb1[2].x * r0.w;
  r0.w = cb3[7].x * r0.w;
  r4.x = cb3[7].w * r0.w;
  r4.y = cb3[8].x * r0.w;
  r0.w = cb3[8].y * cb0[142].z;
  r0.w = 0.25 * r0.w;
  sincos(r0.w, r3.x, r5.x);
  r6.x = -r3.x;
  r7.x = cb3[8].z * v2.x + cb3[8].w;
  r7.y = v2.y * cb3[9].x + cb3[9].y;
  r4.zw = float2(-0.5,-0.5) + r7.xy;
  r6.y = r5.x;
  r5.x = dot(r6.yx, r4.zw);
  r6.z = r3.x;
  r5.y = dot(r6.zy, r4.zw);
  r4.xy = r5.xy + r4.xy;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r0.w = cb3[9].z + cb0[143].y;
  r4.zw = t5.SampleBias(s1_s, r4.xy, r0.w).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[9].www * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r1.w = dot(-cb1[5].xyz, -cb1[5].xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = -cb1[5].xyz / r1.www;
  r1.w = dot(r6.yzx, r5.xyz);
  r1.w = 1 + r1.w;
  r7.xyz = cb0[67].xyz + -r2.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = r7.xyz / r2.www;
  r2.w = saturate(dot(-r7.xyz, r6.xyz));
  r3.x = 1 + -cb2[1].x;
  r2.w = saturate(r3.x + r2.w);
  r1.w = r2.w * r1.w;
  r1.x = dot(r5.zxy, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.y = cb2[1].y * r1.x;
  r1.y = exp2(r1.y);
  r1.z = 1 + -cb2[0].w;
  r1.y = r1.y * r1.z + cb2[0].w;
  r1.z = cmp(r1.y >= cb2[0].y);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.z * r1.y;
  r1.z = r0.y * r0.w + 1;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r0.y * r0.w + 1;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb2[0].z * r1.y;
  r1.z = r1.w * r1.y;
  r6.xyz = cb1[4].xyz * r1.zzz;
  r1.z = dot(-cb1[8].xyz, -cb1[8].xyz);
  r1.z = sqrt(r1.z);
  r8.xyz = -cb1[8].xyz / r1.zzz;
  r1.z = dot(r8.yzx, r5.xyz);
  r1.z = 1 + r1.z;
  r1.w = saturate(dot(-r7.xyz, r8.xyz));
  r1.w = saturate(r1.w + r3.x);
  r1.z = r1.z * r1.w;
  r1.y = r1.z * r1.y;
  r1.yzw = cb1[9].xyz * r1.yyy;
  r1.yzw = cb1[1].yyy * r1.yzw;
  r1.yzw = r6.xyz * cb1[1].xxx + r1.yzw;
  r1.yzw = cb2[2].xyz * r1.yzw;
  r6.xyz = cb3[3].xyz * r1.yzw;
  r1.yzw = -r1.yzw * cb3[3].xyz + cb3[4].xyz;
  r1.yzw = cb3[10].xxx * r1.yzw + r6.xyz;
  r6.xyz = t6.SampleBias(s2_s, r4.xy, cb0[143].y).xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb3[10].www * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[10].z, r3.x, r8.x);
  r7.xyz = r7.xyz * r3.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb3[6].xyz * r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r4.xy = t7.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r2.w = cmp(0 >= r4.x);
  r3.x = log2(r4.x);
  r3.x = cb3[11].x * r3.x;
  r3.x = exp2(r3.x);
  r2.w = r2.w ? 0 : r3.x;
  r2.w = saturate(cb3[11].y + r2.w);
  r4.x = saturate(cb3[11].z + r4.y);
  r1.x = cb3[11].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x * 0.959999979 + 0.0399999991;
  r1.x = cb3[12].x * r1.x;
  r3.x = saturate(cb3[12].z + v1.z);
  r1.x = r3.x * r1.x;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.x = min(0.5, r1.x);
  r4.y = saturate(cb3[12].w * r1.x);
  r6.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r2.w * cb0[139].y + cb0[139].x;
  o1.w = t0[r3.y].val[4/4];
  r1.x = 0.0799999982 * r4.y;
  r7.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r7.xyz = r4.xxx * r7.xyz + r1.xxx;
  r8.xyz = -r6.xyz * r4.xxx + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.xxx ? r9.xyz : r8.xyz;
  r7.xyz = r1.xxx ? float3(0,0,0) : r7.xyz;
  r1.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.x * 2.04040003 + -0.332399994;
  r2.w = r1.x * -4.79510021 + r2.w;
  r1.x = r1.x * 2.75519991 + r2.w;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r3.xy = float2(1,0.5) * v3.xy;
  r4.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s0_s, r3.xy).xyzw;
  r10.xyzw = t3.Sample(s0_s, r4.zw).xyzw;
  r2.w = r10.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r11.x = t1[r3.z].val[0/4];
  r11.y = t1[r3.z].val[0/4+1];
  r11.z = t1[r3.z].val[0/4+2];
  r11.w = t1[r3.z].val[0/4+3];
  r3.x = t1[r3.w].val[0/4];
  r3.y = t1[r3.w].val[0/4+1];
  r3.z = t1[r3.w].val[0/4+2];
  r3.w = t1[r3.w].val[0/4+3];
  r2.w = r2.w * r11.w + r3.w;
  r9.xyz = r9.xyz * r9.xyz;
  r3.xyz = r9.xyz * r11.xyz + r3.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r4.zw = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r9.x = t1[r4.z].val[0/4];
  r9.y = t1[r4.z].val[0/4+1];
  r9.z = t1[r4.z].val[0/4+2];
  r9.w = t1[r4.z].val[0/4+3];
  r11.x = t1[r4.w].val[0/4];
  r11.y = t1[r4.w].val[0/4+1];
  r11.z = t1[r4.w].val[0/4+2];
  r11.w = t1[r4.w].val[0/4+3];
  r9.xyzw = r10.xyzw * r9.xyzw + r11.xyzw;
  r5.w = 1;
  r3.w = dot(r9.xyzw, r5.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r3.xyz = r2.www * r3.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r9.xyzw = t4.Sample(s0_s, v3.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r9.xyz = r9.xyz * r2.www;
    r2.w = -r9.w * r9.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.zxy * r0.www + -r9.xyz;
    r0.xyz = r2.www * r0.xyz + r9.xyz;
    r3.w = saturate(dot(r9.yzx, r5.xyz));
    r4.z = 1 + -r3.w;
    r10.y = r2.w * r4.z + r3.w;
  } else {
    r0.xyz = r5.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t2[0].val[0/4];
  r9.y = t2[0].val[0/4+1];
  r9.z = t2[0].val[0/4+2];
  r9.w = t2[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r9.xyz = r12.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r3.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r3.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r3.xyz * r0.xyz;
  r3.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t0[r4.z].val[0/4];
    r7.y = t0[r4.z].val[0/4+1];
    r7.z = t0[r4.z].val[0/4+2];
    r7.xyz = -r7.xyz + r2.xyz;
    r8.x = t0[r4.w].val[0/4];
    r8.y = t0[r4.w].val[0/4+1];
    r8.z = t0[r4.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.yzw = r2.www ? r2.xyz : r1.yzw;
  }
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r0.xyz = r0.xyz + r1.yzw;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.w = 0.75686276;
  o2.xy = r4.xy;
  o3.xyz = r6.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}