// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

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
  float4 cb3[27];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD9,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v7.yyyy;
  r1.xyzw = v7.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v7.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v6.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xy = cb3[12].xx * v4.xy;
  r5.x = dot(v0.xyz, r1.xyz);
  r5.y = dot(r0.zxy, r1.xyz);
  r0.w = dot(v1.xyz, r1.xyz);
  r4.zw = -r5.xy / r0.ww;
  r4.zw = cb3[12].yy * r4.zw;
  r0.w = min(1, abs(r0.w));
  r1.w = cb3[12].z + -cb3[12].w;
  r0.w = r0.w * r1.w + cb3[12].w;
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
    r7.zw = v4.xy * cb3[12].xx + r6.zw;
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
  r4.zw = v4.xy * cb3[12].xx + r6.zw;
  r0.w = cb3[13].x + cb0[143].y;
  r5.xy = t4.SampleBias(s3_s, r4.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyw = cb3[13].yyy * r7.xyz + r5.xyz;
  r7.xyz = r3.xyz / cb3[14].xxx;
  r8.xy = t5.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.y = v1.y * r0.w;
  r9.xz = -r8.xy;
  r8.xy = t5.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r10.x = v1.x * r0.w;
  r10.yz = -r8.xy;
  r8.xy = min(float2(1,1), abs(v1.xz));
  r10.xyz = r10.xyz + -r9.xyz;
  r8.xzw = r8.xxx * r10.xyz + r9.xyz;
  r9.xy = t5.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xzw;
  r8.xyz = r8.yyy * r9.xyz + r8.xzw;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.zxy, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb3[14].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb3[14].www * r5.xyw + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v2.yz);
  r9.zw = log2(v2.yz);
  r9.zw = cb3[15].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r3.xyz = r3.xyz / cb3[15].www;
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
  r0.w = cb3[16].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r3.xy = r0.ww * r9.xy + r9.xy;
  r3.zw = cmp(float2(0,0) >= r3.xy);
  r3.xy = log2(r3.xy);
  r3.xy = cb3[16].yy * r3.xy;
  r3.xy = exp2(r3.xy);
  r3.xy = r3.zw ? float2(0,0) : r3.xy;
  r3.xy = r3.xy + -r9.xy;
  r6.z = r5.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.zxy;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r1.w = dot(r6.xyz, cb3[3].xyz);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r0.w + -r0.w;
  r0.w = cb3[18].y * r1.w + r0.w;
  r0.w = saturate(r0.w * cb3[18].z + cb3[19].y);
  r3.xy = cb3[16].zz * r3.xy + r9.xy;
  r0.w = saturate(-r3.y + r0.w);
  r0.w = saturate(r3.x + r0.w);
  r1.w = t3.SampleBias(s2_s, r4.xy, cb0[143].y).w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb3[19].z * r2.w + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[19].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb3[20].x * r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r0.w = max(r1.w, r0.w);
  r3.xyz = t3.SampleBias(s2_s, r4.zw, cb0[143].y).xyz;
  r1.w = cb3[20].y + -r3.z;
  r1.w = 1 + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[20].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb3[20].w * r2.w + r1.w;
  r0.w = r1.w * r0.w;
  r6.xyz = r8.xyz + -r5.xyw;
  r5.xyz = r0.www * r6.xyz + r5.xyw;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r1.www * r0.xyz;
  r6.xyz = cb3[21].xxx * cb3[4].xyz;
  r4.xyz = t7.SampleBias(s5_s, r4.zw, cb0[143].y).xyz;
  r2.w = -1 + r3.z;
  r2.w = cb3[21].w * r2.w + 1;
  r8.xyz = r4.xyz * r2.www;
  r3.z = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = -r4.xyz * r2.www + r3.zzz;
  r4.xyz = cb3[22].xxx * r4.xyz + r8.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r8.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[21].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r4.xyz = r4.xyz * r10.xxx + r8.xyz;
  r4.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r8.xyz = cb3[6].xyz * r4.xyz;
  r9.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r2.w = r9.y ? r9.x : 0;
  r9.xyz = r9.zzz ? float3(1,2,0) : float3(2,0,1);
  r9.xyz = r2.www ? float3(0,1.40129846e-045,2.80259693e-045) : r9.xyz;
  r3.zw = cmp(abs(r5.zx) < abs(r5.yy));
  r2.w = r3.z ? r9.w : 0;
  r10.xyz = r3.www ? float3(2,1,3) : float3(1,3,2);
  r10.xyz = r2.www ? float3(3,2,1) : r10.xyz;
  r10.xyz = (int3)-r9.xyz + (int3)r10.xyz;
  r10.xyz = max(int3(0,0,0), (int3)r10.xyz);
  r10.xyz = min(int3(2,2,2), (int3)r10.xyz);
  r11.x = dot(abs(r5.zxy), icb[r9.x+0].xyz);
  r11.y = dot(abs(r5.zxy), icb[r10.x+0].xyz);
  r3.zw = float2(-0.577300012,-0.577300012) + r11.xy;
  r3.zw = saturate(float2(2.36574411,2.36574411) * r3.zw);
  r2.w = cmp((int)r9.z < (int)r9.y);
  r9.xy = r2.ww ? r9.zy : r9.yz;
  r2.w = cmp((int)r10.z < (int)r10.y);
  r9.zw = r2.ww ? r10.zy : r10.yz;
  r10.xyz = ddx_coarse(r7.xyz);
  r11.xyz = ddy_coarse(r7.xyz);
  r12.x = dot(r7.xyz, icb[r9.x+0].xyz);
  r12.y = dot(r7.xyz, icb[r9.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r14.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r14.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r15.xyz = t8.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r9.x = dot(r7.xyz, icb[r9.z+0].xyz);
  r9.y = dot(r7.xyz, icb[r9.w+0].xyz);
  r7.x = dot(r10.xyz, icb[r9.z+0].xyz);
  r7.y = dot(r10.xyz, icb[r9.w+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.z+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.w+0].xyz);
  r11.xyz = t8.SampleGrad(s0_s, r9.xy, r7.xyx, r10.xyx).xyz;
  r11.xyz = r11.xyz * r3.www;
  r11.xyz = r15.xyz * r3.zzz + r11.xyz;
  r2.w = r3.z + r3.w;
  r11.xyz = r11.xyz / r2.www;
  r4.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r15.xyz = r4.www + -r11.xyz;
  r11.xyz = cb3[22].www * r15.xyz + r11.xyz;
  r4.w = dot(float3(0.577350259,0.577350259,0.577350259), r11.xyz);
  r11.xyz = -r4.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = float3(0.577350259,0.577350259,0.577350259) * r11.zxy;
  r15.xyz = r11.zxy * float3(0.577350259,0.577350259,0.577350259) + -r15.zxy;
  sincos(cb3[22].z, r16.x, r17.x);
  r15.xyz = r16.xxx * r15.xyz;
  r11.xyz = r11.xyz * r17.xxx + r15.xyz;
  r11.xyz = r4.www * float3(0.577350259,0.577350259,0.577350259) + r11.xyz;
  r15.xyz = cb3[8].xyz * r11.xyz;
  r4.w = dot(r15.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = saturate(cb3[23].x * r4.w);
  r6.w = 1 + -r4.w;
  r6.w = r6.w + r6.w;
  r16.xyz = -r6.www * cb3[11].xyz + float3(1,1,1);
  r6.w = r4.w + r4.w;
  r17.xyz = cb3[10].xyz * r6.www;
  r4.w = cmp(r4.w >= 0.5);
  r16.xyz = r4.www ? r16.xyz : r17.xyz;
  r17.xyz = cb3[10].xyz + -r16.xyz;
  r16.xyz = cb3[23].yyy * r17.xyz + r16.xyz;
  r17.xyz = -cb0[67].xyz + r2.xyz;
  r4.w = dot(r17.xyz, r17.xyz);
  r4.w = sqrt(r4.w);
  r4.w = r4.w / cb3[23].z;
  r6.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb3[23].w * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r6.w ? 0 : r4.w;
  r11.xyz = -r11.xyz * cb3[8].xyz + r16.xyz;
  r11.xyz = r11.xyz * r4.www;
  r11.xyz = cb3[24].xxx * r11.xyz + r15.xyz;
  r4.xyz = -r4.xyz * cb3[6].xyz + r11.xyz;
  r4.xyz = r0.www * r4.xyz + r8.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r4.w = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = cb3[24].y * r3.x;
  r3.x = exp2(r3.x);
  r3.x = r4.w ? 0 : r3.x;
  r8.y = saturate(cb3[24].z + r3.x);
  r8.x = cb3[24].w + r3.y;
  r3.xy = t9.SampleGrad(s0_s, r12.xy, r13.xy, r14.xy).xy;
  r7.xy = t9.SampleGrad(s0_s, r9.xy, r7.xy, r10.xy).xy;
  r7.xy = r7.xy * r3.ww;
  r3.xy = r3.xy * r3.zz + r7.xy;
  r3.xy = r3.xy / r2.ww;
  r3.yz = cb3[25].xy + r3.xy;
  r3.x = saturate(r3.y);
  r3.xy = r3.zx + -r8.xy;
  r3.xy = saturate(r0.ww * r3.xy + r8.xy);
  r0.w = dot(r5.zxy, r1.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb3[25].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb3[25].w * r0.w;
  r1.x = saturate(cb3[26].y + v1.z);
  r0.w = r1.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb3[26].z * r0.w);
  r1.x = cmp(0.00100000005 < abs(v3.w));
  r1.yz = floor(v7.xy);
  r1.y = dot(r1.yz, float2(347.834503,3343.28369));
  r1.y = cos(r1.y);
  r1.y = 1000 * r1.y;
  r1.y = frac(r1.y);
  r1.z = cmp(v3.w < 0);
  r2.w = 1 + v3.w;
  r2.w = cmp(r1.y < r2.w);
  r1.y = cmp(v3.w < r1.y);
  r1.y = r1.z ? r2.w : r1.y;
  r1.y = cmp((int)r1.y == 0);
  r1.x = r1.x ? r1.y : 0;
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
  r2.w = 0.0799999982 * r0.w;
  r3.yzw = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r3.yzw = r3.xxx * r3.yzw + r2.www;
  r4.xyz = -r1.xyz * r3.xxx + r1.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r3.yzw = r3.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r2.www ? r7.xyz : r4.xyz;
  r3.yzw = r2.www ? float3(0,0,0) : r3.yzw;
  r2.w = dot(r3.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r2.w * 2.04040003 + -0.332399994;
  r4.w = r2.w * -4.79510021 + r4.w;
  r2.w = r2.w * 2.75519991 + r4.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xy = float2(1,0.5) * v5.xy;
  r7.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t1.Sample(s1_s, r7.xy).xyzw;
  r7.xyzw = t1.Sample(s1_s, r7.zw).xyzw;
  r4.w = r7.w * 0.00392156886 + r8.w;
  r4.w = -0.00196078443 + r4.w;
  r4.w = r4.w * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r4.w = exp2(r4.w);
  r4.w = -0.0185813606 + r4.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r5.w = 1;
  r5.w = dot(r7.xyzw, r5.xyzw);
  r5.w = max(0, r5.w);
  r4.w = r5.w * r4.w;
  r7.xyz = r4.www * r8.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r8.xyzw = t2.Sample(s1_s, v5.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r4.w = dot(r8.xyz, r8.xyz);
    r4.w = rsqrt(r4.w);
    r8.xyz = r8.xyz * r4.www;
    r4.w = -r8.w * r8.w + 1;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.zxy * r1.www + -r8.xyz;
    r10.xyz = r4.www * r0.xyz + r8.xyz;
    r0.x = saturate(dot(r8.yzx, r5.xyz));
    r0.y = 1 + -r0.x;
    r9.y = r4.w * r0.y + r0.x;
  } else {
    r10.xyz = r5.zxy;
    r9.xy = float2(1,1);
  }
  r8.x = t0[0].val[0/4];
  r8.y = t0[0].val[0/4+1];
  r8.z = t0[0].val[0/4+2];
  r8.w = t0[0].val[0/4+3];
  r10.w = 1;
  r0.x = dot(r8.xyzw, r10.xyzw);
  r8.x = t0[1].val[0/4];
  r8.y = t0[1].val[0/4+1];
  r8.z = t0[1].val[0/4+2];
  r8.w = t0[1].val[0/4+3];
  r0.y = dot(r8.xyzw, r10.xyzw);
  r8.x = t0[2].val[0/4];
  r8.y = t0[2].val[0/4+1];
  r8.z = t0[2].val[0/4+2];
  r8.w = t0[2].val[0/4+3];
  r0.z = dot(r8.xyzw, r10.xyzw);
  r8.xyzw = r10.xyzz * r10.yzzx;
  r11.x = t0[3].val[0/4];
  r11.y = t0[3].val[0/4+1];
  r11.z = t0[3].val[0/4+2];
  r11.w = t0[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r8.xyzw);
  r12.x = t0[4].val[0/4];
  r12.y = t0[4].val[0/4+1];
  r12.z = t0[4].val[0/4+2];
  r12.w = t0[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r8.xyzw);
  r12.x = t0[5].val[0/4];
  r12.y = t0[5].val[0/4+1];
  r12.z = t0[5].val[0/4+2];
  r12.w = t0[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r8.xyzw);
  r1.w = r10.y * r10.y;
  r1.w = r10.x * r10.x + -r1.w;
  r8.x = t0[6].val[0/4];
  r8.y = t0[6].val[0/4+1];
  r8.z = t0[6].val[0/4+2];
  r0.xyz = r11.xyz + r0.xyz;
  r0.xyz = r8.xyz * r1.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.w = r9.x * r9.y;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r4.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r0.xyz = r7.xyz * r0.xyz;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = max(float3(0,0,0), r6.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r4.www ? r2.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r3.yzw + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r1.w * r2.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r3.x;
  o2.w = 0.75686276;
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}