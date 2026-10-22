// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r1.w = t4.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r3.x = saturate(r1.w * 3 + 1);
  r3.xy = float2(3,1.5) * r3.xx;
  r4.xy = cb0[142].zz + v2.xy;
  r4.xy = float2(100,100) * r4.xy;
  r4.zw = floor(r4.xy);
  r4.zw = (int2)r4.zw;
  r4.zw = mad((int2)r4.zw, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r3.w = mad((int)r4.w, 0x3c6ef35f, (int)r4.z);
  r4.z = mad(0x3c6ef35f, (int)r3.w, (int)r4.w);
  r4.w = mad((int)r3.w, (int)r4.z, 0x3c6ef35f);
  r5.x = mad((int)r4.z, (int)r4.w, (int)r3.w);
  r5.y = mad((int)r4.w, (int)r5.x, (int)r4.z);
  r5.z = mad((int)r5.x, (int)r5.y, (int)r4.w);
  r5.xyz = (uint3)r5.xyz >> int3(16,16,16);
  r5.xyz = (uint3)r5.xyz;
  r3.z = 1.52590219e-005;
  r5.xyz = r5.xyz * r3.zzy;
  r3.y = r5.z * 1.52590219e-005 + r3.y;
  r3.x = min(r3.y, r3.x);
  r3.y = 1 + -r3.x;
  r3.z = -r3.y * 0.5 + 0.5;
  r3.y = r3.y * 0.5 + 0.5;
  r3.zw = max(r5.xy, r3.zz);
  r3.yz = min(r3.zw, r3.yy);
  r4.xy = frac(r4.xy);
  r3.yz = -r4.xy + r3.yz;
  r3.y = dot(r3.yz, r3.yz);
  r3.y = sqrt(r3.y);
  r3.y = -r3.y * 2 + 1;
  r3.y = max(0, r3.y);
  r3.y = r3.y * 10 + -10;
  r3.x = saturate(r3.x * 10 + r3.y);
  r1.w = ceil(r1.w);
  r1.w = r3.x * r1.w + -0.333299994;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  o2.z = cb0[139].y * 0.5 + cb0[139].x;
  r3.x = t2[r2.y].val[4/4];
  r3.y = t2[r2.y].val[4/4+1];
  r1.w = cmp(0 < r3.y);
  if (r1.w != 0) {
    r3.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r4.xyz = (int3)r3.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r1.w = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r4.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r4.xyz * r1.www + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r1.w = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r1.w = 1;
  }
  r3.yzw = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r2.y = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.yzw;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r3.yzw = r2.yyy ? r3.yzw : cb0[136].xyz;
  r5.x = t3[0].val[0/4];
  r5.y = t3[0].val[0/4+1];
  r5.z = t3[0].val[0/4+2];
  r5.w = t3[0].val[0/4+3];
  r0.w = 1;
  r5.x = dot(r5.xyzw, r0.xyzw);
  r6.x = t3[1].val[0/4];
  r6.y = t3[1].val[0/4+1];
  r6.z = t3[1].val[0/4+2];
  r6.w = t3[1].val[0/4+3];
  r5.y = dot(r6.xyzw, r0.xyzw);
  r6.x = t3[2].val[0/4];
  r6.y = t3[2].val[0/4+1];
  r6.z = t3[2].val[0/4+2];
  r6.w = t3[2].val[0/4+3];
  r5.z = dot(r6.xyzw, r0.xyzw);
  r6.xyzw = r0.xyzz * r0.yzzx;
  r7.x = t3[3].val[0/4];
  r7.y = t3[3].val[0/4+1];
  r7.z = t3[3].val[0/4+2];
  r7.w = t3[3].val[0/4+3];
  r7.x = dot(r7.xyzw, r6.xyzw);
  r8.x = t3[4].val[0/4];
  r8.y = t3[4].val[0/4+1];
  r8.z = t3[4].val[0/4+2];
  r8.w = t3[4].val[0/4+3];
  r7.y = dot(r8.xyzw, r6.xyzw);
  r8.x = t3[5].val[0/4];
  r8.y = t3[5].val[0/4+1];
  r8.z = t3[5].val[0/4+2];
  r8.w = t3[5].val[0/4+3];
  r7.z = dot(r8.xyzw, r6.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r6.x = t3[6].val[0/4];
  r6.y = t3[6].val[0/4+1];
  r6.z = t3[6].val[0/4+2];
  r5.xyz = r7.xyz + r5.xyz;
  r5.xyz = r6.xyz * r0.www + r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r3.yzw;
  r4.xyz = r2.yyy ? float3(0,0,0) : r4.xyz;
  r3.yzw = r4.xyz + r3.yzw;
  r2.xyz = max(float3(0,0,0), r2.xzw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t2[r4.x].val[0/4];
    r4.z = t2[r4.x].val[0/4+1];
    r4.w = t2[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r1.xyz;
    r6.x = t2[r4.y].val[0/4];
    r6.y = t2[r4.y].val[0/4+1];
    r6.z = t2[r4.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r4.xyz = cmp(r6.xyz < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r0.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r3.yzw + r5.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r0.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}