// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

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

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r3.xy = cb1[6].xx * v2.xy;
  r4.x = dot(v0.xyz, r1.xyz);
  r4.y = dot(r0.xyz, r1.xyz);
  r0.w = dot(v1.xyz, r1.xyz);
  r3.zw = -r4.xy / r0.ww;
  r3.zw = cb1[6].yy * r3.zw;
  r0.w = min(1, abs(r0.w));
  r1.w = cb1[6].z + -cb1[6].w;
  r0.w = r0.w * r1.w + cb1[6].w;
  r1.w = floor(r0.w);
  r0.w = 1 / r0.w;
  r4.xy = r3.zw * r0.ww;
  r4.zw = ddx_coarse(r3.xy);
  r3.xy = ddy_coarse(r3.xy);
  r1.w = 2 + r1.w;
  r2.w = 1;
  r5.xyzw = float4(0,0,1,1);
  r6.x = 0;
  while (true) {
    r6.y = (int)r6.x;
    r6.y = cmp(r6.y >= r1.w);
    if (r6.y != 0) break;
    r6.yz = v2.xy * cb1[6].xx + r5.xy;
    r6.y = t3.SampleGrad(s1_s, r6.yz, r4.w, r3.y).z;
    r6.z = cmp(r2.w < r6.y);
    if (r6.z != 0) {
      r6.z = r5.z + -r5.w;
      r6.w = r6.y + -r2.w;
      r6.z = r6.z + r6.w;
      r6.z = r6.w / r6.z;
      r6.zw = -r6.zz * r4.xy + r5.xy;
      r5.xy = r6.zw;
      break;
    }
    r6.z = r2.w + -r0.w;
    r5.xy = r3.zw * r0.ww + r5.xy;
    r6.x = (int)r6.x + 1;
    r5.z = r2.w;
    r5.w = r6.y;
    r2.w = r6.z;
  }
  r3.xy = v2.xy * cb1[6].xx + r5.xy;
  r0.w = cb1[7].x + cb0[143].y;
  r3.zw = t4.SampleBias(s2_s, r3.xy, r0.w).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb1[7].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb1[7].zzz * cb1[1].xyz;
  r5.xyz = t5.SampleBias(s3_s, r3.xy, cb0[143].y).xyz;
  r0.w = t3.SampleBias(s1_s, r3.xy, cb0[143].y).z;
  r0.w = -1 + r0.w;
  r0.w = cb1[8].y * r0.w + 1;
  r3.xyz = r5.xyz * r0.www;
  r1.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = -r5.xyz * r0.www + r1.www;
  r3.xyz = cb1[8].zzz * r5.xyz + r3.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r5.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb1[8].x, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r3.xyz = r3.xyz * r7.xxx + r5.xyz;
  r3.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb1[3].xyz * r3.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r0.w = dot(r0.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb1[10].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb1[10].y * r0.w;
  r1.x = saturate(cb1[10].w + v1.z);
  r0.w = r1.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r1.y = saturate(cb1[11].x * r0.w);
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r1.x = saturate(cb1[9].w);
  r0.w = saturate(cb1[11].y);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v3.x, 36, 20);
  r1.z = t2[r0.w].val[4/4];
  r1.w = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r1.w);
  if (r0.w != 0) {
    r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r0.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r0.w = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = 0.0799999982 * r1.y;
  r5.xyz = -r1.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r5.xyz = r1.xxx * r5.xyz + r1.www;
  r6.xyz = -r3.xyz * r1.xxx + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = r1.www ? r5.xyz : r6.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r5.xyz = r6.xyz + r5.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.www ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r4.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r1.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r1.z;
  o2.w = 0.505882382;
  o2.xy = r1.xy;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}