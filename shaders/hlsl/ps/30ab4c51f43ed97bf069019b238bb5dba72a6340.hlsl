// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 r0,r1,r2,r3,r4,r5;
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
  r2.xy = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t2[r2.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v5.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r2.xzw = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r1.w = dot(r2.xzw, r2.xzw);
  r1.w = rsqrt(r1.w);
  r2.xzw = r2.xzw * r1.www;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.www * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.xzw = float3(-1,-1,-1) + cb1[1].xyz;
  r2.xzw = cb1[2].xxx * r2.xzw + float3(1,1,1);
  r3.xy = v2.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r0.w = t3.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r1.w = saturate(r0.w * 3 + 1);
  r3.xy = float2(3,1.5) * r1.ww;
  r4.xy = cb0[142].zz + v2.xy;
  r4.xy = float2(100,100) * r4.xy;
  r4.zw = floor(r4.xy);
  r4.zw = (int2)r4.zw;
  r4.zw = mad((int2)r4.zw, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r1.w = mad((int)r4.w, 0x3c6ef35f, (int)r4.z);
  r3.w = mad(0x3c6ef35f, (int)r1.w, (int)r4.w);
  r4.z = mad((int)r1.w, (int)r3.w, 0x3c6ef35f);
  r5.x = mad((int)r3.w, (int)r4.z, (int)r1.w);
  r5.y = mad((int)r4.z, (int)r5.x, (int)r3.w);
  r5.z = mad((int)r5.x, (int)r5.y, (int)r4.z);
  r5.xyz = (uint3)r5.xyz >> int3(16,16,16);
  r5.xyz = (uint3)r5.xyz;
  r3.z = 1.52590219e-005;
  r5.xyz = r5.xyz * r3.zzy;
  r1.w = r5.z * 1.52590219e-005 + r3.y;
  r1.w = min(r1.w, r3.x);
  r3.x = 1 + -r1.w;
  r3.y = -r3.x * 0.5 + 0.5;
  r3.x = r3.x * 0.5 + 0.5;
  r3.yz = max(r5.xy, r3.yy);
  r3.xy = min(r3.yz, r3.xx);
  r3.zw = frac(r4.xy);
  r3.xy = r3.xy + -r3.zw;
  r3.x = dot(r3.xy, r3.xy);
  r3.x = sqrt(r3.x);
  r3.x = -r3.x * 2 + 1;
  r3.x = max(0, r3.x);
  r3.x = r3.x * 10 + -10;
  r1.w = saturate(r1.w * 10 + r3.x);
  r0.w = ceil(r0.w);
  r0.w = r1.w * r0.w + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  o2.z = cb0[139].y * 0.5 + cb0[139].x;
  r3.x = t2[r2.y].val[4/4];
  r3.y = t2[r2.y].val[4/4+1];
  r0.w = cmp(0 < r3.y);
  if (r0.w != 0) {
    r3.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r4.xyz = (int3)r3.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r0.w = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r4.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r4.xyz * r0.www + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r0.w = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r3.yzw = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.yzw;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r3.yzw = r1.www ? r3.yzw : cb0[136].xyz;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r3.yzw = r4.xyz + r3.yzw;
  r2.xyz = max(float3(0,0,0), r2.xzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t2[r4.x].val[0/4];
    r4.z = t2[r4.x].val[0/4+1];
    r4.w = t2[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r1.xyz;
    r5.x = t2[r4.y].val[0/4];
    r5.y = t2[r4.y].val[0/4+1];
    r5.z = t2[r4.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xzw));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r3.yzw + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}