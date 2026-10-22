// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

struct t8_t {
  float val[4];
};
StructuredBuffer<t8_t> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[31];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[28];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[363];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v5.xy;
  r1.zw = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v5.ww * r1.zw;
  r2.z = v5.w;
  r2.xyz = float3(2,-2,1) * r2.xyz;
  r3.xyzw = cb0[45].xyzw * v5.yyyy;
  r3.xyzw = v5.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v5.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r3.xyz * r0.www;
  r5.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.zw = t11.SampleBias(s3_s, v3.xy, cb0[143].y).zw;
  r5.xyz = cb3[2].xyz * r1.zzz;
  r6.xyz = cb3[4].xyz * r1.www;
  r6.xyz = cb3[23].yyy * r6.xyz;
  r5.xyz = r5.xyz * cb3[23].xxx + r6.xyz;
  r6.xyz = cb3[5].xyz + -r5.xyz;
  r5.xyz = cb3[23].zzz * r6.xyz + r5.xyz;
  r0.w = -1 + cb0[143].y;
  r1.zw = t12.SampleBias(s4_s, v3.xy, r0.w).yz;
  r6.xyz = -cb3[9].xyz + cb3[8].xyz;
  r6.xyz = r1.www * r6.xyz + cb3[9].xyz;
  r7.xyz = -cb3[13].xyz + cb3[12].xyz;
  r7.xyz = r1.www * r7.xyz + cb3[13].xyz;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = saturate(r1.zzz * r7.xyz + r6.xyz);
  r7.xyz = t13.SampleBias(s5_s, v3.xy, r0.w).xyw;
  r0.w = -cb1[27].x + r4.z;
  r0.w = max(0, r0.w);
  r2.w = max(cb3[23].w, cb1[27].y);
  r0.w = r0.w / r2.w;
  r0.w = min(1, r0.w);
  r0.w = saturate(r0.w + r0.w);
  r0.w = r7.y * r0.w;
  r8.xyz = t14.SampleBias(s6_s, v3.zw, cb0[143].y).yzw;
  r7.yw = r8.xy * float2(2,2) + float2(-1,-1);
  r7.yw = cb3[14].xy * r7.yw;
  r7.yw = float2(128,128) * r7.yw;
  r2.w = dot(r0.xyz, r3.xyz);
  r2.w = max(0, r2.w);
  r2.w = 1 + -r2.w;
  r2.w = max(9.99999975e-005, abs(r2.w));
  r2.w = log2(r2.w);
  r2.w = cb3[24].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w * cb3[24].z + cb3[24].y;
  r2.w = saturate(cb3[24].w * r2.w);
  r2.w = r2.w * -cb3[25].x + cb3[25].x;
  r7.yw = r7.yw * r2.ww + v3.zw;
  r7.yw = t14.SampleBias(s6_s, r7.yw, cb0[143].y).xw;
  r2.w = cmp(r7.w == 0.000000);
  r3.w = cmp(r8.z == r7.w);
  r2.w = (int)r2.w | (int)r3.w;
  r2.w = r2.w ? r7.y : 0;
  r2.w = cb3[25].y * r2.w;
  r3.w = 1 + -r7.z;
  r3.w = cmp(r3.w >= 0.5);
  o6.z = r3.w ? 0 : 1;
  r3.w = saturate(cb0[142].w * cb2[0].x + cb2[0].y);
  r7.yz = cb0[152].xx + r1.xy;
  r7.yz = (uint2)r7.yz;
  r4.w = (uint)r7.z << 1;
  r4.w = (int)r4.w + (int)r7.y;
  r4.w = (uint)r4.w % 5;
  r4.w = (uint)r4.w;
  r1.xy = float2(0.015625,0.015625) * r1.xy;
  r1.x = t15.SampleBias(s7_s, r1.xy, cb0[143].y).x;
  r1.x = r4.w + r1.x;
  r1.y = 0.166666672 * r1.x;
  r1.y = cb3[27].z * r3.w + r1.y;
  r4.w = -cb3[28].x + v2.w;
  r1.x = r1.x * 0.166666672 + r3.w;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r1.x = r4.w * r1.x;
  r1.x = saturate(ceil(r1.x));
  r7.yzw = cb0[67].xyz + -r4.xyz;
  r3.w = dot(r7.yzw, r7.yzw);
  r3.w = sqrt(r3.w);
  r4.w = 0.763943851 * cb0[128].x;
  r5.w = cb0[130].x / cb0[130].y;
  r5.w = 1.77777779 / r5.w;
  r5.w = max(1, r5.w);
  r4.w = r5.w * r4.w;
  r7.yz = r3.ww * r4.ww + float2(-0.5,-300);
  r7.yz = saturate(float2(0.00333889807,0.000175438603) * r7.yz);
  r3.w = r7.y * -0.600000024 + 1;
  r3.w = r7.z * -0.200000003 + r3.w;
  r3.w = cb3[29].w * r3.w;
  o6.x = 0.5 * r3.w;
  r3.w = 1 + -v2.y;
  o6.w = cb3[30].x * r3.w;
  r7.yzw = -cb3[18].xyz + cb3[17].xyz;
  r7.yzw = r1.www * r7.yzw + cb3[18].xyz;
  r8.xyz = -cb3[22].xyz + cb3[21].xyz;
  r8.xyz = r1.www * r8.xyz + cb3[22].xyz;
  r8.xyz = r8.xyz + -r7.yzw;
  r7.yzw = saturate(r1.zzz * r8.xyz + r7.yzw);
  r1.z = -0.5 + r7.x;
  r1.z = saturate(10 * r1.z);
  r1.x = r1.y * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r8.xw = saturate(cb3[25].zw);
  o2.z = r8.x * cb0[139].y + cb0[139].x;
  r1.xyw = r4.xyz * cb0[211].xyz + cb0[212].xyz;
  r1.xyw = max(float3(0,0,0), r1.xyw);
  r1.xyw = min(float3(0.99000001,0.99000001,0.99000001), r1.xyw);
  r1.xyw = cb0[213].xyz * r1.xyw;
  r9.xyz = (int3)r1.xyw;
  r9.w = 0;
  r9.xyzw = t0.Load(r9.xyzw).xyzw;
  r9.xyzw = (uint4)r9.xyzw;
  r3.w = 1 + cb0[213].w;
  r1.xyw = r1.xyw / r9.www;
  r1.xyw = frac(r1.xyw);
  r1.xyw = cb0[213].www * r1.xyw;
  r1.xyw = r9.xyz * r3.www + r1.xyw;
  r1.xyw = float3(0.5,0.5,0.5) + r1.xyw;
  r1.xyw = cb0[214].xyz * r1.xyw;
  r3.w = firstbithigh(asint(cb1[23].w));
  r4.w = cmp((int)r3.w == -1);
  r3.w = (int)-r3.w + 31;
  r3.w = r4.w ? -1 : r3.w;
  r3.w = cb1[23].w ? r3.w : 0;
  r4.w = dot(cb0[r3.w+358].xyz, cb0[r3.w+358].xyz);
  r4.w = rsqrt(r4.w);
  r9.xyz = cb0[r3.w+358].xyz * r4.www;
  r3.w = dot(r0.xyz, r9.xyz);
  r3.w = r3.w * 0.5 + 0.5;
  r4.w = 1 + -cb0[327].x;
  r4.w = v2.x * r4.w + cb0[327].x;
  r3.w = r4.w * r3.w;
  r4.w = 0.699999988 + r1.z;
  r4.w = min(1, r4.w);
  r5.w = max(r7.y, r7.z);
  r5.w = max(r5.w, r7.w);
  r7.x = r5.w * r4.w;
  r5.w = max(0.00100000005, r5.w);
  r5.w = r7.x / r5.w;
  r3.x = dot(-r3.xyz, r9.xyz);
  r3.x = saturate(3 * r3.x);
  r9.xyz = r7.yzw * r5.www + -r7.yzw;
  o4.xyz = r3.xxx * r9.xyz + r7.yzw;
  r3.x = cmp(r3.w >= cb0[327].x);
  o4.w = r3.x ? 1.000000 : 0;
  o5.y = 0.5 * r0.w;
  r3.x = 0.0799999982 * r2.w;
  r3.yzw = -r2.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r3.xyz = r0.www * r3.yzw + r3.xxx;
  r7.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r9.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r3.xyz = r0.www ? r3.xyz : r7.xyz;
  r7.xyz = t1.SampleLevel(s0_s, r1.xyw, 0).xyz;
  r3.w = t2.SampleLevel(s0_s, r1.xyw, 0).y;
  r3.w = r3.w * 2 + -1;
  r5.w = t4.SampleLevel(s0_s, r1.xyw, 0).y;
  r5.w = r5.w * 2 + -1;
  r7.w = t6.SampleLevel(s0_s, r1.xyw, 0).y;
  r7.w = r7.w * 2 + -1;
  r3.w = r3.w * r7.x;
  r10.y = 1.73205125 * r3.w;
  r3.w = r5.w * r7.y;
  r10.w = 1.73205125 * r3.w;
  r3.w = r7.w * r7.z;
  r11.y = 1.73205125 * r3.w;
  r3.w = t3.SampleLevel(s0_s, r1.xyw, 0).y;
  r3.w = r3.w * 2 + -1;
  r5.w = t5.SampleLevel(s0_s, r1.xyw, 0).y;
  r5.w = r5.w * 2 + -1;
  r1.x = t7.SampleLevel(s0_s, r1.xyw, 0).y;
  r1.x = r1.x * 2 + -1;
  r1.y = r3.w * r7.x;
  r1.w = r5.w * r7.y;
  r1.x = r1.x * r7.z;
  r10.xz = r7.xy;
  r3.w = dot(r10.xy, float2(0.886227548,-1.02332771));
  r12.x = r1.y * 2.21557164 + r3.w;
  r1.y = dot(r10.zw, float2(0.886227548,-1.02332771));
  r12.y = r1.w * 2.21557164 + r1.y;
  r11.x = r7.z;
  r1.y = dot(r11.xy, float2(0.886227548,-1.02332771));
  r12.z = r1.x * 2.21557164 + r1.y;
  r1.xyw = max(float3(0,0,0), r12.xyz);
  r1.xyw = cb0[157].xyz * r1.xyw;
  r7.xyw = float3(0.318309873,0.318309873,0.318309873) * r1.ywx;
  r1.x = cmp(r7.x >= r7.y);
  r1.x = r1.x ? 1.000000 : 0;
  r10.xy = r7.yx;
  r10.zw = float2(-1,0.666666687);
  r11.xy = r1.yw * float2(0.318309873,0.318309873) + -r10.xy;
  r11.zw = float2(1,-1);
  r10.xyzw = r1.xxxx * r11.xyzw + r10.xyzw;
  r1.x = cmp(r7.w >= r10.x);
  r1.x = r1.x ? 1.000000 : 0;
  r7.xyz = r10.xyw;
  r10.xyw = r7.wyx;
  r10.xyzw = r10.xyzw + -r7.xyzw;
  r7.xyzw = r1.xxxx * r10.xyzw + r7.xyzw;
  r1.x = min(r7.w, r7.y);
  r1.x = r7.x + -r1.x;
  r1.y = r7.w + -r7.y;
  r1.w = r1.x * 6 + 1.00000001e-010;
  r1.y = r1.y / r1.w;
  r1.y = r7.z + r1.y;
  r1.w = 1.00000001e-010 + r7.x;
  r1.x = r1.x / r1.w;
  r1.x = cb0[361].z * r1.x;
  r7.yzw = float3(1,0.666666687,0.333333343) + abs(r1.yyy);
  r7.yzw = frac(r7.yzw);
  r7.yzw = r7.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r7.yzw = saturate(float3(-1,-1,-1) + abs(r7.yzw));
  r7.yzw = float3(-1,-1,-1) + r7.yzw;
  r1.xyw = r1.xxx * r7.yzw + float3(1,1,1);
  r1.xyw = r7.xxx * r1.xyw;
  r1.xyw = cb0[361].xxx * r1.xyw;
  r3.w = dot(r1.xyw, float3(0.300000012,0.589999974,0.109999999));
  r5.w = min(cb0[361].y, r3.w);
  r3.w = max(1.00000001e-010, r3.w);
  r3.w = r5.w / r3.w;
  r7.x = t8[0].val[8/4];
  r7.y = t8[0].val[8/4+1];
  r7.x = dot(r7.xy, float2(1,1));
  r10.x = t8[1].val[8/4];
  r10.y = t8[1].val[8/4+1];
  r7.y = dot(r10.xy, float2(1,1));
  r10.x = t8[2].val[8/4];
  r10.y = t8[2].val[8/4+1];
  r7.z = dot(r10.xy, float2(1,1));
  r10.x = t8[3].val[8/4];
  r10.y = t8[4].val[8/4];
  r10.z = t8[5].val[8/4];
  r7.xyz = r10.xyz + r7.xyz;
  r7.xyz = max(float3(0,0,0), r7.xyz);
  r7.xyz = cb0[362].xyz * r7.xyz;
  r1.xyw = r1.xyw * r3.www + r7.xyz;
  r1.xyw = r1.xyw * r6.xyz;
  r7.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r1.xyw = r7.xyz * r1.xyw;
  r7.xyz = r0.www ? float3(0,0,0) : r9.xyz;
  r3.xyz = r7.xyz + r3.xyz;
  r8.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xyz = -cb1[5].xyz + r4.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xyz));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r3.w = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r5.yzw = r3.www ? float3(0,1,1) : float3(1,1,0);
    r5.x = 1;
    r8.xyzw = r0.wwww ? r5.yzwx : r8.xyzw;
  }
  r1.xyw = cb0[145].yyy * r3.xyz + r1.xyw;
  r1.xyw = r1.xyw + r8.xyz;
  r2.xy = r2.xy / r2.zz;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r0.w = t10.SampleLevel(s2_s, r2.xy, 0).x;
  r3.x = r0.w * cb0[65].x + cb0[65].y;
  r0.w = r0.w * cb0[65].z + -cb0[65].w;
  r0.w = 1 / r0.w;
  r0.w = r3.x + r0.w;
  r3.xyzw = t9.SampleLevel(s1_s, r2.xy, 0).xyzw;
  r2.x = cmp(0 < r3.w);
  r0.w = -5 + r0.w;
  r0.w = cmp(r0.w < r2.z);
  r0.w = r0.w ? r2.x : 0;
  r2.xyz = r6.xyz + -r3.xyz;
  r3.xyz = r8.www * r2.xyz + r3.xyz;
  r6.w = v4.y;
  r3.xyzw = r0.wwww ? r3.xyzw : r6.xyzw;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r1.xyw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.549019635);
  o2.y = r2.w;
  o3.xyz = r3.xyz;
  o3.w = r1.z;
  o5.z = v2.x;
  o5.w = cb3[30].z;
  o5.x = r4.w;
  o6.y = r3.w;
  return;
}