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

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r3.yzw = r0.xyz * r0.www;
  r2.xzw = float3(-1,-1,-1) + cb2[1].xyz;
  r2.xzw = cb2[2].xxx * r2.xzw + float3(1,1,1);
  r4.xy = v2.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r1.w = t4.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r4.x = saturate(r1.w * 3 + 1);
  r4.xy = float2(3,1.5) * r4.xx;
  r5.xy = cb0[142].zz + v2.xy;
  r5.xy = float2(100,100) * r5.xy;
  r5.zw = floor(r5.xy);
  r5.zw = (int2)r5.zw;
  r5.zw = mad((int2)r5.zw, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r4.w = mad((int)r5.w, 0x3c6ef35f, (int)r5.z);
  r5.z = mad(0x3c6ef35f, (int)r4.w, (int)r5.w);
  r5.w = mad((int)r4.w, (int)r5.z, 0x3c6ef35f);
  r6.x = mad((int)r5.z, (int)r5.w, (int)r4.w);
  r6.y = mad((int)r5.w, (int)r6.x, (int)r5.z);
  r6.z = mad((int)r6.x, (int)r6.y, (int)r5.w);
  r6.xyz = (uint3)r6.xyz >> int3(16,16,16);
  r6.xyz = (uint3)r6.xyz;
  r4.z = 1.52590219e-005;
  r6.xyz = r6.xyz * r4.zzy;
  r4.y = r6.z * 1.52590219e-005 + r4.y;
  r4.x = min(r4.y, r4.x);
  r4.y = 1 + -r4.x;
  r4.z = -r4.y * 0.5 + 0.5;
  r4.y = r4.y * 0.5 + 0.5;
  r4.zw = max(r6.xy, r4.zz);
  r4.yz = min(r4.zw, r4.yy);
  r5.xy = frac(r5.xy);
  r4.yz = -r5.xy + r4.yz;
  r4.y = dot(r4.yz, r4.yz);
  r4.y = sqrt(r4.y);
  r4.y = -r4.y * 2 + 1;
  r4.y = max(0, r4.y);
  r4.y = r4.y * 10 + -10;
  r4.x = saturate(r4.x * 10 + r4.y);
  r1.w = ceil(r1.w);
  r1.w = r4.x * r1.w + -0.333299994;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  o2.z = cb0[139].y * 0.5 + cb0[139].x;
  r1.w = cmp(0 < cb0[215].x);
  r4.x = t2[r2.y].val[4/4];
  r4.y = t2[r2.y].val[4/4+1];
  r2.y = cmp(0 < r4.y);
  if (r2.y != 0) {
    r4.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.yzw = max(float3(0,0,0), r4.yzw);
    r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
    r4.yzw = cb0[213].xyz * r4.yzw;
    r5.xyz = (int3)r4.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r2.y = 1 + cb0[213].w;
    r4.yzw = r4.yzw / r5.www;
    r4.yzw = frac(r4.yzw);
    r4.yzw = cb0[213].www * r4.yzw;
    r4.yzw = r5.xyz * r2.yyy + r4.yzw;
    r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
    r4.yzw = cb0[214].xyz * r4.yzw;
    r2.y = t1.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r4.y = mad((int)v3.x, 36, 18);
    r4.y = t2[r4.y].val[12/4];
    r4.y = cmp(0 < r4.y);
    r4.y = r1.w ? r4.y : 0;
    r2.y = r4.y ? cb1[5].x : 1;
  }
  r4.yzw = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r5.x = cmp(0 != cb0[183].w);
  r5.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r5.yzw = r5.xxx ? r5.yzw : cb0[136].xyz;
  r4.yzw = r5.xxx ? float3(0,0,0) : r4.yzw;
  r5.x = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r6.x = r5.x * 2.04040003 + -0.332399994;
  r6.x = r5.x * -4.79510021 + r6.x;
  r5.x = r5.x * 2.75519991 + r6.x;
  r5.x = 1.33200002 + r5.x;
  r5.x = max(1, r5.x);
  r6.xyz = r3.zwz * r3.zwy;
  r7.yw = r3.ww * r3.zy;
  r6.x = r3.y * r3.y + -r6.x;
  r8.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.zwy;
  r7.xz = r6.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r7.xyzw;
  r6.x = 0.429042608 * r6.x;
  r8.x = 0.886227548;
  r6.y = dot(cb1[6].xyzw, r8.xyzw);
  r6.z = dot(cb1[9].xyzw, r7.xyzw);
  r6.y = r6.y + r6.z;
  r9.x = cb1[12].x * r6.x + r6.y;
  r6.y = dot(cb1[7].xyzw, r8.xyzw);
  r6.z = dot(cb1[10].xyzw, r7.xyzw);
  r6.y = r6.y + r6.z;
  r9.y = cb1[12].y * r6.x + r6.y;
  r6.y = dot(cb1[8].xyzw, r8.xyzw);
  r6.z = dot(cb1[11].xyzw, r7.xyzw);
  r6.y = r6.y + r6.z;
  r9.z = cb1[12].z * r6.x + r6.y;
  r6.xyz = max(float3(0,0,0), r9.xyz);
  r6.xyz = r1.www ? r6.xyz : 0;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r3.x = 1;
    r7.xyzw = r1.wwww ? cb1[4].wxyz : r3.xyzw;
    r1.w = 1 + -r7.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r7.yzw;
    r0.xyz = r1.www * r0.xyz + r7.yzw;
    r3.x = saturate(dot(r7.yzw, r3.yzw));
    r6.w = 1 + -r3.x;
    r7.y = r1.w * r6.w + r3.x;
  } else {
    r0.xyz = r3.yzw;
    r7.xy = float2(1,1);
  }
  r8.x = t3[0].val[0/4];
  r8.y = t3[0].val[0/4+1];
  r8.z = t3[0].val[0/4+2];
  r8.w = t3[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r9.x = t3[1].val[0/4];
  r9.y = t3[1].val[0/4+1];
  r9.z = t3[1].val[0/4+2];
  r9.w = t3[1].val[0/4+3];
  r8.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t3[2].val[0/4];
  r9.y = t3[2].val[0/4+1];
  r9.z = t3[2].val[0/4+2];
  r9.w = t3[2].val[0/4+3];
  r8.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t3[3].val[0/4];
  r10.y = t3[3].val[0/4+1];
  r10.z = t3[3].val[0/4+2];
  r10.w = t3[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t3[4].val[0/4];
  r11.y = t3[4].val[0/4+1];
  r11.z = t3[4].val[0/4+2];
  r11.w = t3[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t3[5].val[0/4];
  r11.y = t3[5].val[0/4+1];
  r11.z = t3[5].val[0/4+2];
  r11.w = t3[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r8.xyz = r10.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r7.x * r7.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r6.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyzw = r0.xyzw * r5.yzwx;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r2.xzw = max(float3(0,0,0), r2.xzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r5.y].val[0/4];
    r6.y = t2[r5.y].val[0/4+1];
    r6.z = t2[r5.y].val[0/4+2];
    r6.xyz = -r6.xyz + r1.xyz;
    r5.y = t2[r5.z].val[0/4];
    r5.z = t2[r5.z].val[0/4+1];
    r5.w = t2[r5.z].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r5.yzw = cmp(r5.yzw < abs(r6.xyz));
    r1.w = (int)r5.z | (int)r5.y;
    r1.w = (int)r5.w | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xzw = r1.www ? r1.xyz : r2.xzw;
  }
  r0.xyz = cb0[145].yyy * r4.yzw + r0.xyz;
  r0.xyz = r0.xyz + r2.xzw;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r3.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}