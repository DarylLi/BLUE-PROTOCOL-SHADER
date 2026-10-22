// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t7 : register(t7);

TextureCube<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[26];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www;
  r1.zw = cb3[19].xx * v3.xy;
  r1.zw = t3.SampleBias(s1_s, r1.zw, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[19].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.yzx;
  r4.xyw = r4.xxx * v0.yzx + r5.xyz;
  r4.xyz = r4.zzz * v1.yzx + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r4.xyz * r0.www;
  r1.zw = v3.xy * cb3[1].xy + cb3[2].xy;
  r2.w = -0.5 * cb3[20].z;
  r2.w = cb3[20].z * cb3[20].w + r2.w;
  r6.x = dot(v0.xyz, r3.xyz);
  r6.y = dot(r0.xyz, r3.xyz);
  r6.z = dot(v1.xyz, r3.xyz);
  r0.xy = r6.xy * r2.ww + r1.zw;
  r3.xyzw = t4.SampleBias(s2_s, r0.xy, cb0[143].y).xyzw;
  r0.x = cb3[21].x * r3.w;
  r0.y = -r3.w * cb3[21].x + 1;
  r6.xyz = float3(-1,1,1) * r6.xyz;
  r7.xyz = float3(1,1,1) / r6.xyz;
  r1.zw = v3.xy * cb3[3].xy + cb3[4].xy;
  r1.zw = float2(4,4) * r1.zw;
  r1.zw = frac(r1.zw);
  r8.xy = r1.zw * float2(2,-2) + float2(-1,1);
  r8.z = -1;
  r7.xyz = -r7.xyz * r8.xyz + abs(r7.xyz);
  r0.z = min(r7.x, r7.y);
  r0.z = min(r0.z, r7.z);
  r1.zw = r0.zz * r6.xy + r8.xy;
  r0.z = r0.z * r6.z + cb3[6].x;
  r6.x = -1 + r0.z;
  r6.yz = cb3[6].yz + r1.zw;
  r7.xyz = t6.Sample(s4_s, r6.xyz).xyz;
  r7.xyz = r7.xyz * cb3[8].xyz + cb3[10].xyz;
  r7.xyz = cb3[22].yyy * r7.xyz;
  r7.xyz = r7.xyz * r0.yyy;
  r0.y = cmp(cb0[31].w < 1);
  r0.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.z = r1.x + r0.z;
  r0.y = r0.y ? r1.y : r0.z;
  r0.y = r0.y / cb3[22].z;
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[22].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb3[23].x * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r0.z ? 1 : r0.y;
  r1.xyz = r7.xyz * r0.yyy;
  r7.xyz = -r7.xyz * r0.yyy + cb3[11].xyz;
  r1.xyz = cb3[23].yyy * r7.xyz + r1.xyz;
  r6.xyz = t7.Sample(s5_s, r6.xyz).xyz;
  r0.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.yyy + -r6.xyz;
  r6.xyz = cb3[23].zzz * r7.xyz + r6.xyz;
  r6.xyz = cb3[13].xyz * r6.xyz;
  r0.y = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.yyy + -r3.xyz;
  r3.xyz = cb3[24].yyy * r7.xyz + r3.xyz;
  r0.y = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r7.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[24].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r3.xyz = r3.xyz * r9.xxx + r7.xyz;
  r3.xyz = r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = r3.xyz * cb3[15].xyz + -r6.xyz;
  r0.xyz = r0.xxx * r3.xyz + r6.xyz;
  r3.xyz = cb3[17].xyz + -r0.xyz;
  r0.xyz = saturate(cb3[24].zzz * r3.xyz + r0.xyz);
  r3.xy = cb3[18].xy * v3.xy;
  r3.xy = t5.SampleBias(s3_s, r3.xy, cb0[143].y).yx;
  r1.w = saturate(cb3[25].z + r3.y);
  r2.w = cmp(0.00100000005 < abs(v2.w));
  r3.zw = floor(v5.xy);
  r3.z = dot(r3.zw, float2(347.834503,3343.28369));
  r3.z = cos(r3.z);
  r3.z = 1000 * r3.z;
  r3.z = frac(r3.z);
  r3.w = cmp(v2.w < 0);
  r4.w = 1 + v2.w;
  r4.w = cmp(r3.z < r4.w);
  r3.z = cmp(v2.w < r3.z);
  r3.z = r3.w ? r4.w : r3.z;
  r3.z = cmp((int)r3.z == 0);
  r2.w = r2.w ? r3.z : 0;
  if (r2.w != 0) discard;
  r3.x = saturate(r3.x);
  r3.y = saturate(cb3[25].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = 0.0799999982 * r3.y;
  r6.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r6.xyz = r3.xxx * r6.xyz + r1.www;
  r7.xyz = -r0.xyz * r3.xxx + r0.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r3.zw = float2(1,0.5) * v4.xy;
  r8.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s0_s, r3.zw).xyzw;
  r8.xyzw = t1.Sample(s0_s, r8.xy).xyzw;
  r2.w = r8.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r5.w = 1;
  r3.z = dot(r8.xyzw, r5.xyzw);
  r3.z = max(0, r3.z);
  r2.w = r3.z * r2.w;
  r8.xyz = r2.www * r9.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r9.xyzw = t2.Sample(s0_s, v4.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r9.xyz = r9.xyz * r2.www;
    r2.w = -r9.w * r9.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r4.xyz = r4.zxy * r0.www + -r9.xyz;
    r4.xyz = r2.www * r4.xyz + r9.xyz;
    r0.w = saturate(dot(r9.yzx, r5.xyz));
    r3.z = 1 + -r0.w;
    r10.y = r2.w * r3.z + r0.w;
  } else {
    r4.xyz = r5.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t0[0].val[0/4];
  r9.y = t0[0].val[0/4+1];
  r9.z = t0[0].val[0/4+2];
  r9.w = t0[0].val[0/4+3];
  r4.w = 1;
  r9.x = dot(r9.xyzw, r4.xyzw);
  r11.x = t0[1].val[0/4];
  r11.y = t0[1].val[0/4+1];
  r11.z = t0[1].val[0/4+2];
  r11.w = t0[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r4.xyzw);
  r11.x = t0[2].val[0/4];
  r11.y = t0[2].val[0/4+1];
  r11.z = t0[2].val[0/4+2];
  r11.w = t0[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r4.xyzw);
  r11.xyzw = r4.xyzz * r4.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.w = r4.y * r4.y;
  r0.w = r4.x * r4.x + -r0.w;
  r4.x = t0[6].val[0/4];
  r4.y = t0[6].val[0/4+1];
  r4.z = t0[6].val[0/4+2];
  r9.xyz = r12.xyz + r9.xyz;
  r4.xyz = r4.xyz * r0.www + r9.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[187].xyz * r4.xyz;
  r0.w = r10.x * r10.y;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r8.xyz * cb0[157].xyz + r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r7.xyz;
  r8.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r4.xyz = r8.xyz * r4.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r2.xyz = -cb0[70].xyz + r2.xyz;
    r7.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r2.www ? r2.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.75686276;
  o2.xy = r3.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}