// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

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

cbuffer cb2 : register(b2)
{
  float4 cb2[33];
}

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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  nointerpolation uint v5 : PRIMITIVE_ID0,
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

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v7.z;
  r1.y = 1;
  r1.xy = v7.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v7.yyyy;
  r2.xyzw = v7.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v7.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r4.xyz = -cb0[70].xyz + v6.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r5.xyz = mad((int3)v5.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t9[r5.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v8.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb2[15].xx * v3.xy;
  r2.w = cb2[15].y + cb0[143].y;
  r5.xw = t10.SampleBias(s2_s, r1.zw, r2.w).xy;
  r6.xy = r5.xw + r5.xw;
  r7.xy = r5.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r7.xy, r7.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r7.z = sqrt(r2.w);
  r8.xyz = r4.xyz / cb2[16].xxx;
  r5.xw = t11.SampleBias(s3_s, r8.xz, cb0[143].y).xy;
  r5.xw = r5.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xw, r5.xw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r9.y = v1.y * r2.w;
  r9.xz = -r5.xw;
  r5.xw = t11.SampleBias(s3_s, r8.yz, cb0[143].y).xy;
  r5.xw = r5.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xw, r5.xw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.x = v1.x * r2.w;
  r10.yz = -r5.xw;
  r5.xw = min(float2(1,1), abs(v1.xz));
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.xxx * r10.xyz + r9.xyz;
  r10.xy = t11.SampleBias(s3_s, r8.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r10.xy, r10.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.xy = -r10.xy;
  r10.z = v1.z * r2.w;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.www * r10.xyz + r9.xyz;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = sqrt(r2.w);
  r9.xyz = r9.xyz / r2.www;
  r10.x = dot(v0.xyz, r9.xyz);
  r10.y = dot(r0.xyz, r9.xyz);
  r10.z = dot(v1.xyz, r9.xyz);
  r9.xyz = float3(0,0,1) + -r10.xyz;
  r9.xyz = cb2[16].yyy * r9.xyz + r10.xyz;
  r9.xyz = cb2[16].www * r7.xyz + r9.xyz;
  r5.xw = cmp(float2(0,0) >= v2.yz);
  r10.xy = log2(v2.yz);
  r10.xy = cb2[17].xx * r10.xy;
  r10.xy = exp2(r10.xy);
  r5.xw = r5.xw ? float2(0,0) : r10.xy;
  r4.xyz = r4.xyz / cb2[17].www;
  r2.w = t12.Sample(s0_s, r4.xz).x;
  r3.w = t12.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r3.w = r3.w + -r2.w;
  r2.w = r4.z * r3.w + r2.w;
  r3.w = t12.Sample(s0_s, r4.xy).x;
  r3.w = r3.w + -r2.w;
  r2.w = r4.w * r3.w + r2.w;
  r3.w = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb2[18].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r4.xy = r2.ww * r5.xw + r5.xw;
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb2[18].yy * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r4.xy = r4.xy + -r5.xw;
  r6.z = r7.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = dot(r6.xyz, cb2[3].xyz);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * r2.w + -r2.w;
  r2.w = cb2[20].y * r3.w + r2.w;
  r2.w = saturate(r2.w * cb2[20].z + cb2[21].y);
  r4.xy = cb2[18].zz * r4.xy + r5.xw;
  r2.w = saturate(-r4.y + r2.w);
  r2.w = saturate(r4.x + r2.w);
  r4.xyz = r9.xyz + -r7.xyz;
  r4.xyz = r2.www * r4.xyz + r7.xyz;
  r6.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[21].zzz * r6.xyz + r4.xyz;
  r3.w = 1 + r4.z;
  r5.x = t9[r5.y].val[0/4];
  r5.y = t9[r5.y].val[0/4+1];
  r5.w = t9[r5.y].val[0/4+2];
  r5.x = r5.x + r5.y;
  r5.x = r5.x + r5.w;
  r5.x = frac(r5.x);
  r5.x = cb0[142].z + r5.x;
  r5.x = cb1[2].x * r5.x;
  r5.x = cb2[21].w * r5.x;
  r5.yw = v4.xy + -v3.xy;
  r5.yw = cb2[23].xx * r5.yw + v3.xy;
  r5.yw = cb2[23].yy * r5.yw;
  r5.xy = r5.xx * cb2[22].zw + r5.yw;
  r5.xy = t13.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r5.x = dot(r5.xy, r5.xy);
  r5.x = 1 + -r5.x;
  r5.x = max(0, r5.x);
  r6.z = sqrt(r5.x);
  r5.xyw = float3(-1,-1,-1) + r6.xyz;
  r5.xyw = v2.xxx * r5.xyw + float3(0,0,1);
  r6.xyz = float3(0,0,1) + -r5.xyw;
  r5.xyw = cb2[23].zzz * r6.xyz + r5.xyw;
  r4.w = 1 + r4.z;
  r5.xyw = float3(-1,-1,1) * r5.xyw;
  r4.z = dot(r4.xyw, r5.xyw);
  r5.xyw = r5.xyw * r3.www;
  r4.xyz = r4.xyw * r4.zzz + -r5.xyw;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r0.xyz = r3.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb2[23].www * cb2[5].xyz;
  r6.xyzw = t14.SampleBias(s5_s, r1.zw, cb0[143].y).xyzw;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyw = r0.www + -r6.xyz;
  r5.xyw = cb2[24].zzz * r5.xyw + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyw);
  r5.xyw = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyw;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.wxy;
  r6.xyz = r5.wxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[24].y, r7.x, r9.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyw = r5.xyw * r9.xxx + r6.xyz;
  r5.xyw = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyw;
  r6.xyz = cb2[7].xyz * r5.xyw;
  r7.xyzw = cmp(abs(r0.yzzx) < abs(r0.xxyy));
  r0.w = r7.y ? r7.x : 0;
  r7.xyz = r7.zzz ? float3(1,2,0) : float3(2,0,1);
  r7.xyz = r0.www ? float3(0,1.40129846e-045,2.80259693e-045) : r7.xyz;
  r9.xy = cmp(abs(r0.xy) < abs(r0.zz));
  r0.w = r7.w ? r9.x : 0;
  r9.xyz = r9.yyy ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r0.www ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r7.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r10.x = dot(abs(r0.xyz), icb[r7.x+0].xyz);
  r10.y = dot(abs(r0.xyz), icb[r9.x+0].xyz);
  r7.xw = float2(-0.577300012,-0.577300012) + r10.xy;
  r7.xw = saturate(float2(2.36574411,2.36574411) * r7.xw);
  r0.w = cmp((int)r7.z < (int)r7.y);
  r7.yz = r0.ww ? r7.zy : r7.yz;
  r0.w = cmp((int)r9.z < (int)r9.y);
  r9.xy = r0.ww ? r9.zy : r9.yz;
  r10.xyz = ddx_coarse(r8.xyz);
  r11.xyz = ddy_coarse(r8.xyz);
  r12.x = dot(r8.xyz, icb[r7.y+0].xyz);
  r12.y = dot(r8.xyz, icb[r7.z+0].xyz);
  r13.x = dot(r10.xyz, icb[r7.y+0].xyz);
  r13.y = dot(r10.xyz, icb[r7.z+0].xyz);
  r14.x = dot(r11.xyz, icb[r7.y+0].xyz);
  r14.y = dot(r11.xyz, icb[r7.z+0].xyz);
  r15.xyz = t15.SampleGrad(s0_s, r12.xy, r13.xyx, r14.xyx).xyz;
  r16.x = dot(r8.xyz, icb[r9.x+0].xyz);
  r16.y = dot(r8.xyz, icb[r9.y+0].xyz);
  r8.x = dot(r10.xyz, icb[r9.x+0].xyz);
  r8.y = dot(r10.xyz, icb[r9.y+0].xyz);
  r10.x = dot(r11.xyz, icb[r9.x+0].xyz);
  r10.y = dot(r11.xyz, icb[r9.y+0].xyz);
  r9.xyz = t15.SampleGrad(s0_s, r16.xy, r8.xyx, r10.xyx).xyz;
  r9.xyz = r9.xyz * r7.www;
  r9.xyz = r15.xyz * r7.xxx + r9.xyz;
  r0.w = r7.x + r7.w;
  r9.xyz = r9.xyz / r0.www;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r3.www + -r9.xyz;
  r9.xyz = cb2[25].yyy * r11.xyz + r9.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r11.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb2[25].x, r15.x, r17.x);
  r11.xyz = r15.xxx * r11.xyz;
  r9.xyz = r9.xyz * r17.xxx + r11.xyz;
  r9.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r11.xyz = cb2[9].xyz * r9.xyz;
  r3.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb2[25].z * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r15.xyz = -r4.www * cb2[12].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r17.xyz = cb2[11].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r15.xyz = r3.www ? r15.xyz : r17.xyz;
  r17.xyz = cb2[11].xyz + -r15.xyz;
  r15.xyz = cb2[25].www * r17.xyz + r15.xyz;
  r17.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r17.xyz, r17.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb2[26].x;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb2[26].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r9.xyz = -r9.xyz * cb2[9].xyz + r15.xyz;
  r9.xyz = r9.xyz * r3.www;
  r9.xyz = cb2[26].zzz * r9.xyz + r11.xyz;
  r5.xyw = -r5.xyw * cb2[7].xyz + r9.xyz;
  r5.xyw = r2.www * r5.xyw + r6.xyz;
  r6.xyz = cb2[26].www * r5.xyw;
  r3.w = saturate(v2.x + v2.x);
  r9.xyz = cb2[14].xyz * r6.xyz + -r6.xyz;
  r6.xyz = r3.www * r9.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t16.SampleBias(s6_s, r1.zw, cb0[143].y).xy;
  r1.z = -cb2[27].x * v2.x + r1.z;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[27].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r9.y = saturate(cb2[27].z + r1.z);
  r9.x = cb2[27].w + r1.w;
  r1.zw = t17.SampleGrad(s0_s, r12.xy, r13.xx, r14.xx).xy;
  r7.yz = t17.SampleGrad(s0_s, r16.xy, r8.yx, r10.yx).xy;
  r7.yz = r7.yz * r7.ww;
  r1.zw = r1.zw * r7.xx + r7.yz;
  r1.zw = r1.zw / r0.ww;
  r0.w = -cb2[27].x * v2.x + r1.z;
  r7.y = saturate(cb2[28].x + r0.w);
  r7.x = cb2[28].y + r1.w;
  r1.zw = r7.xy + -r9.xy;
  r1.zw = saturate(r2.ww * r1.zw + r9.xy);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb2[28].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb2[28].w * r0.w;
  r2.x = saturate(cb2[29].y + v1.z);
  r0.w = r2.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb2[29].z * r0.w);
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb2[30].x;
  r2.xyz = -cb0[129].xxy + v7.xxy;
  r1.y = r2.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[30].z + -r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t18.SampleBias(s7_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r2.xyz = saturate(cb2[32].xxx * r5.xyw);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r5.xyw = min(float3(1,1,1), r6.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb2[29].w);
  r1.xyw = r2.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
  r2.xyz = cb0[213].xyz * r2.xyz;
  r6.xyz = (int3)r2.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r2.w = 1 + cb0[213].w;
  r2.xyz = r2.xyz / r6.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = cb0[213].www * r2.xyz;
  r2.xyz = r6.xyz * r2.www + r2.xyz;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = cb0[214].xyz * r2.xyz;
  r6.x = t9[r5.z].val[4/4];
  r6.y = t9[r5.z].val[4/4+1];
  r2.w = cmp(0 < r6.y);
  if (r2.w != 0) {
    r2.w = t8.SampleLevel(s1_s, r2.xyz, 0).x;
  } else {
    r2.w = 1;
  }
  r6.yzw = saturate(r1.xyw);
  o4.xyz = sqrt(r6.yzw);
  r3.w = 0.0799999982 * r0.w;
  r6.yzw = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyw;
  r6.yzw = r1.zzz * r6.yzw + r3.www;
  r7.xyz = -r5.xyw * r1.zzz + r5.xyw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.yzw = r6.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.www ? r8.xyz : r7.xyz;
  r6.yzw = r3.www ? float3(0,0,0) : r6.yzw;
  r3.w = dot(r6.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r1.xyw = r7.xyz + r1.xyw;
  r8.xyz = t1.SampleLevel(s1_s, r2.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r2.xyz = r0.yzy * r0.yzx;
  r15.yw = r0.zz * r0.yx;
  r2.x = r0.x * r0.x + -r2.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r15.xz = r2.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r2.x = 0.429042608 * r2.x;
  r17.x = r8.y;
  r17.yzw = r9.yzw;
  r16.x = 0.886227548;
  r2.y = dot(r17.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r2.z = dot(r9.xyzw, r15.xyzw);
  r2.y = r2.y + r2.z;
  r9.x = r12.w * r2.x + r2.y;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r2.y = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r2.z = dot(r10.xyzw, r15.xyzw);
  r2.y = r2.y + r2.z;
  r9.y = r13.w * r2.x + r2.y;
  r8.yzw = r11.yzw;
  r2.y = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r14.xyz;
  r2.z = dot(r11.xyzw, r15.xyzw);
  r2.y = r2.y + r2.z;
  r9.z = r14.w * r2.x + r2.y;
  r2.xyz = max(float3(0,0,0), r9.xyz);
  r2.xyz = cb0[157].xyz * r2.xyz;
  r2.xyz = float3(0.318309873,0.318309873,0.318309873) * r2.xyz;
  r4.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyw = r2.xyz * r1.xyw;
  r2.xyz = r5.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r5.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r5.xyw * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r1.xyw = r2.xyz * r1.xyw;
  r2.xyz = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r5.z = cmp(0 < cb0[140].x);
  if (r5.z != 0) {
    r6.yz = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r7.x = t9[r6.y].val[0/4];
    r7.y = t9[r6.y].val[0/4+1];
    r7.z = t9[r6.y].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r6.y = t9[r6.z].val[0/4];
    r6.z = t9[r6.z].val[0/4+1];
    r6.w = t9[r6.z].val[0/4+2];
    r6.yzw = float3(1,1,1) + r6.yzw;
    r6.yzw = cmp(r6.yzw < abs(r7.xyz));
    r5.z = (int)r6.z | (int)r6.y;
    r5.z = (int)r6.w | (int)r5.z;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r5.zzz ? r3.xyz : r4.xyz;
  }
  r1.xyw = cb0[145].yyy * r2.xyz + r1.xyw;
  r1.xyw = r1.xyw + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r4.w * r3.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyw;
  o0.w = 0;
  o1.w = r6.x;
  o2.x = r1.z;
  o2.w = 0.509803951;
  o2.y = r0.w;
  o3.xyz = r5.xyw;
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}