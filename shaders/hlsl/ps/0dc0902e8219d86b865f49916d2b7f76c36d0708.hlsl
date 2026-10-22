// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[27];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v5.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xy = cb2[12].xx * v4.xy;
  r5.x = dot(v0.xyz, r1.xyz);
  r5.y = dot(r0.xyz, r1.xyz);
  r0.w = dot(v1.xyz, r1.xyz);
  r4.zw = -r5.xy / r0.ww;
  r4.zw = cb2[12].yy * r4.zw;
  r0.w = min(1, abs(r0.w));
  r1.w = cb2[12].z + -cb2[12].w;
  r0.w = r0.w * r1.w + cb2[12].w;
  r1.w = floor(r0.w);
  r0.w = 1 / r0.w;
  r5.xy = r4.zw * r0.ww;
  r5.zw = ddx_coarse(r4.xy);
  r6.xy = ddy_coarse(r4.xy);
  r1.w = 2 + r1.w;
  r6.zw = float2(0,0);
  r2.w = 1;
  r3.w = 1;
  r7.xy = float2(1,0);
  while (true) {
    r7.z = (int)r7.y;
    r7.z = cmp(r7.z >= r1.w);
    if (r7.z != 0) break;
    r7.zw = v4.xy * cb2[12].xx + r6.zw;
    r7.z = t3.SampleGrad(s2_s, r7.zw, r5.z, r6.x).z;
    r7.w = cmp(r2.w < r7.z);
    if (r7.w != 0) {
      r7.w = -r7.x + r3.w;
      r8.x = r7.z + -r2.w;
      r7.w = r8.x + r7.w;
      r7.w = r8.x / r7.w;
      r8.xy = -r7.ww * r5.xy + r6.zw;
      r6.zw = r8.xy;
      break;
    }
    r7.w = r2.w + -r0.w;
    r6.zw = r4.zw * r0.ww + r6.zw;
    r7.y = (int)r7.y + 1;
    r3.w = r2.w;
    r7.x = r7.z;
    r2.w = r7.w;
  }
  r4.zw = v4.xy * cb2[12].xx + r6.zw;
  r0.w = cb2[13].x + cb0[143].y;
  r5.xy = t4.SampleBias(s3_s, r4.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyw = cb2[13].yyy * r7.xyz + r5.xyz;
  r7.xy = r3.xy / cb2[14].xx;
  r7.zw = t5.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.zw, r7.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.xy = -r7.zw;
  r8.z = v1.z * r0.w;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb2[14].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb2[14].www * r5.xyw + r8.xyz;
  r7.zw = cmp(float2(0,0) >= v2.yz);
  r9.xy = log2(v2.yz);
  r9.xy = cb2[15].xx * r9.xy;
  r9.xy = exp2(r9.xy);
  r7.zw = r7.zw ? float2(0,0) : r9.xy;
  r3.xyz = r3.xyz / cb2[15].www;
  r0.w = t6.Sample(s0_s, r3.xz).x;
  r1.w = t6.Sample(s0_s, r3.yz).x;
  r3.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r1.w = r1.w + -r0.w;
  r0.w = r3.z * r1.w + r0.w;
  r1.w = t6.Sample(s0_s, r3.xy).x;
  r1.w = r1.w + -r0.w;
  r0.w = r3.w * r1.w + r0.w;
  r1.w = cmp(0 >= abs(r0.w));
  r0.w = log2(abs(r0.w));
  r0.w = cb2[16].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r3.xy = r0.ww * r7.zw + r7.zw;
  r3.zw = cmp(float2(0,0) >= r3.xy);
  r3.xy = log2(r3.xy);
  r3.xy = cb2[16].yy * r3.xy;
  r3.xy = exp2(r3.xy);
  r3.xy = r3.zw ? float2(0,0) : r3.xy;
  r3.xy = r3.xy + -r7.zw;
  r6.z = r5.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r9.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r9.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r1.w = dot(r6.xyz, cb2[3].xyz);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r0.w + -r0.w;
  r0.w = cb2[18].y * r1.w + r0.w;
  r0.w = saturate(r0.w * cb2[18].z + cb2[19].y);
  r3.xy = cb2[16].zz * r3.xy + r7.zw;
  r0.w = saturate(-r3.y + r0.w);
  r0.w = saturate(r3.x + r0.w);
  r1.w = t3.SampleBias(s2_s, r4.xy, cb0[143].y).w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb2[19].z * r2.w + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[19].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb2[20].x * r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r0.w = max(r1.w, r0.w);
  r3.xyz = t3.SampleBias(s2_s, r4.zw, cb0[143].y).xyz;
  r1.w = cb2[20].y + -r3.z;
  r1.w = 1 + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[20].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb2[20].w * r2.w + r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = r8.xyz + -r5.xyw;
  r5.xyz = r0.www * r6.xyz + r5.xyw;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r1.www * r0.xyz;
  r0.xyz = cb2[21].xxx * cb2[4].xyz;
  r4.xyz = t7.SampleBias(s5_s, r4.zw, cb0[143].y).xyz;
  r1.w = -1 + r3.z;
  r1.w = cb2[21].w * r1.w + 1;
  r6.xyz = r4.xyz * r1.www;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = -r4.xyz * r1.www + r2.www;
  r4.xyz = cb2[22].xxx * r4.xyz + r6.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r6.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[21].z, r8.x, r9.x);
  r6.xyz = r8.xxx * r6.xyz;
  r4.xyz = r4.xyz * r9.xxx + r6.xyz;
  r4.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r6.xyz = cb2[6].xyz * r4.xyz;
  r8.xyz = t8.Sample(s0_s, r7.xy).xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r1.www + -r8.xyz;
  r8.xyz = cb2[22].www * r9.xyz + r8.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb2[22].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = cb2[8].xyz * r8.xyz;
  r1.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = saturate(cb2[23].x * r1.w);
  r2.w = 1 + -r1.w;
  r2.w = r2.w + r2.w;
  r10.xyz = -r2.www * cb2[11].xyz + float3(1,1,1);
  r2.w = r1.w + r1.w;
  r11.xyz = cb2[10].xyz * r2.www;
  r1.w = cmp(r1.w >= 0.5);
  r10.xyz = r1.www ? r10.xyz : r11.xyz;
  r11.xyz = cb2[10].xyz + -r10.xyz;
  r10.xyz = cb2[23].yyy * r11.xyz + r10.xyz;
  r11.xyz = -cb0[67].xyz + r2.xyz;
  r1.w = dot(r11.xyz, r11.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[23].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[23].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r8.xyz = -r8.xyz * cb2[8].xyz + r10.xyz;
  r8.xyz = r8.xyz * r1.www;
  r8.xyz = cb2[24].xxx * r8.xyz + r9.xyz;
  r4.xyz = -r4.xyz * cb2[6].xyz + r8.xyz;
  r4.xyz = r0.www * r4.xyz + r6.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r1.w = cmp(0 >= r3.x);
  r2.w = log2(r3.x);
  r2.w = cb2[24].y * r2.w;
  r2.w = exp2(r2.w);
  r1.w = r1.w ? 0 : r2.w;
  r6.y = saturate(cb2[24].z + r1.w);
  r6.x = cb2[24].w + r3.y;
  r3.xy = t9.Sample(s0_s, r7.xy).xy;
  r3.yz = cb2[25].xy + r3.xy;
  r3.x = saturate(r3.y);
  r3.xy = r3.zx + -r6.xy;
  r3.xy = saturate(r0.ww * r3.xy + r6.xy);
  r0.w = dot(r5.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb2[25].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb2[25].w * r0.w;
  r1.x = saturate(cb2[26].y + v1.z);
  r0.w = r1.x * r0.w;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb2[26].z * r0.w);
  r1.x = cmp(0.00100000005 < abs(v3.w));
  r1.yz = floor(v6.xy);
  r1.y = dot(r1.yz, float2(347.834503,3343.28369));
  r1.y = cos(r1.y);
  r1.y = 1000 * r1.y;
  r1.y = frac(r1.y);
  r1.z = cmp(v3.w < 0);
  r1.w = 1 + v3.w;
  r1.w = cmp(r1.y < r1.w);
  r1.y = cmp(v3.w < r1.y);
  r1.y = r1.z ? r1.w : r1.y;
  r1.y = cmp((int)r1.y == 0);
  r1.x = r1.x ? r1.y : 0;
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
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
    r1.w = t1.SampleLevel(s1_s, r3.yzw, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = 0.0799999982 * r0.w;
  r3.yzw = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r3.yzw = r3.xxx * r3.yzw + r2.www;
  r4.xyz = -r1.xyz * r3.xxx + r1.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r3.yzw = r3.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.yzw;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r3.yzw = r2.www ? r3.yzw : r4.xyz;
  r4.x = t2[0].val[0/4];
  r4.y = t2[0].val[0/4+1];
  r4.z = t2[0].val[0/4+2];
  r4.w = t2[0].val[0/4+3];
  r5.w = 1;
  r4.x = dot(r4.xyzw, r5.xyzw);
  r7.x = t2[1].val[0/4];
  r7.y = t2[1].val[0/4+1];
  r7.z = t2[1].val[0/4+2];
  r7.w = t2[1].val[0/4+3];
  r4.y = dot(r7.xyzw, r5.xyzw);
  r7.x = t2[2].val[0/4];
  r7.y = t2[2].val[0/4+1];
  r7.z = t2[2].val[0/4+2];
  r7.w = t2[2].val[0/4+3];
  r4.z = dot(r7.xyzw, r5.xyzw);
  r7.xyzw = r5.xyzz * r5.yzzx;
  r8.x = t2[3].val[0/4];
  r8.y = t2[3].val[0/4+1];
  r8.z = t2[3].val[0/4+2];
  r8.w = t2[3].val[0/4+3];
  r8.x = dot(r8.xyzw, r7.xyzw);
  r9.x = t2[4].val[0/4];
  r9.y = t2[4].val[0/4+1];
  r9.z = t2[4].val[0/4+2];
  r9.w = t2[4].val[0/4+3];
  r8.y = dot(r9.xyzw, r7.xyzw);
  r9.x = t2[5].val[0/4];
  r9.y = t2[5].val[0/4+1];
  r9.z = t2[5].val[0/4+2];
  r9.w = t2[5].val[0/4+3];
  r8.z = dot(r9.xyzw, r7.xyzw);
  r4.w = r5.y * r5.y;
  r4.w = r5.x * r5.x + -r4.w;
  r7.x = t2[6].val[0/4];
  r7.y = t2[6].val[0/4+1];
  r7.z = t2[6].val[0/4+2];
  r4.xyz = r8.xyz + r4.xyz;
  r4.xyz = r7.xyz * r4.www + r4.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[187].xyz * r4.xyz;
  r4.xyz = r4.xyz * r3.yzw;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.xyz = r7.xyz * r4.xyz;
  r6.xyz = r2.www ? float3(0,0,0) : r6.xyz;
  r3.yzw = r6.xyz + r3.yzw;
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r2.www ? r2.xyz : r0.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.yzw + r4.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r2.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r3.x;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}