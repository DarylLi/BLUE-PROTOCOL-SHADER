// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[27];
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
  nointerpolation uint v4 : PRIMITIVE_ID0,
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
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r4.xy = cb1[12].xx * v3.xy;
  r5.x = dot(v0.xyz, r1.xyz);
  r5.y = dot(r0.xyz, r1.xyz);
  r0.w = dot(v1.xyz, r1.xyz);
  r4.zw = -r5.xy / r0.ww;
  r4.zw = cb1[12].yy * r4.zw;
  r0.w = min(1, abs(r0.w));
  r1.w = cb1[12].z + -cb1[12].w;
  r0.w = r0.w * r1.w + cb1[12].w;
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
    r7.zw = v3.xy * cb1[12].xx + r6.zw;
    r7.z = t10.SampleGrad(s2_s, r7.zw, r5.z, r6.x).z;
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
  r4.zw = v3.xy * cb1[12].xx + r6.zw;
  r0.w = cb1[13].x + cb0[143].y;
  r5.xy = t11.SampleBias(s3_s, r4.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyw = cb1[13].yyy * r7.xyz + r5.xyz;
  r7.xyz = r3.xyz / cb1[14].xxx;
  r8.xy = t12.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.y = v1.y * r0.w;
  r9.xz = -r8.xy;
  r8.xy = t12.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
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
  r9.xy = t12.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
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
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb1[14].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb1[14].www * r5.xyw + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v2.yz);
  r9.zw = log2(v2.yz);
  r9.zw = cb1[15].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r3.xyz = r3.xyz / cb1[15].www;
  r0.w = t13.Sample(s0_s, r3.xz).x;
  r1.w = t13.Sample(s0_s, r3.yz).x;
  r3.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r1.w = r1.w + -r0.w;
  r0.w = r3.z * r1.w + r0.w;
  r1.w = t13.Sample(s0_s, r3.xy).x;
  r1.w = r1.w + -r0.w;
  r0.w = r3.w * r1.w + r0.w;
  r1.w = cmp(0 >= abs(r0.w));
  r0.w = log2(abs(r0.w));
  r0.w = cb1[16].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r3.xy = r0.ww * r9.xy + r9.xy;
  r3.zw = cmp(float2(0,0) >= r3.xy);
  r3.xy = log2(r3.xy);
  r3.xy = cb1[16].yy * r3.xy;
  r3.xy = exp2(r3.xy);
  r3.xy = r3.zw ? float2(0,0) : r3.xy;
  r3.xy = r3.xy + -r9.xy;
  r6.z = r5.z;
  r6.xyz = float3(-1,-1,1) + r6.xyz;
  r10.xyz = r6.yyy * r0.xyz;
  r6.xyw = r6.xxx * v0.xyz + r10.xyz;
  r6.xyz = r6.zzz * v1.xyz + r6.xyw;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r1.w = dot(r6.xyz, cb1[3].xyz);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r0.w + -r0.w;
  r0.w = cb1[18].y * r1.w + r0.w;
  r0.w = saturate(r0.w * cb1[18].z + cb1[19].y);
  r3.xy = cb1[16].zz * r3.xy + r9.xy;
  r0.w = saturate(-r3.y + r0.w);
  r0.w = saturate(r3.x + r0.w);
  r1.w = t10.SampleBias(s2_s, r4.xy, cb0[143].y).w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb1[19].z * r2.w + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb1[19].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb1[20].x * r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r0.w = max(r1.w, r0.w);
  r3.xyz = t10.SampleBias(s2_s, r4.zw, cb0[143].y).xyz;
  r1.w = cb1[20].y + -r3.z;
  r1.w = 1 + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb1[20].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb1[20].w * r2.w + r1.w;
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
  r0.xyz = r1.www * r0.xyz;
  r5.xyz = cb1[21].xxx * cb1[4].xyz;
  r4.xyz = t14.SampleBias(s5_s, r4.zw, cb0[143].y).xyz;
  r1.w = -1 + r3.z;
  r1.w = cb1[21].w * r1.w + 1;
  r6.xyz = r4.xyz * r1.www;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = -r4.xyz * r1.www + r2.www;
  r4.xyz = cb1[22].xxx * r4.xyz + r6.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r6.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb1[21].z, r8.x, r9.x);
  r6.xyz = r8.xxx * r6.xyz;
  r4.xyz = r4.xyz * r9.xxx + r6.xyz;
  r4.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r6.xyz = cb1[6].xyz * r4.xyz;
  r8.xyzw = cmp(abs(r0.yzzx) < abs(r0.xxyy));
  r1.w = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r1.www ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r3.zw = cmp(abs(r0.xy) < abs(r0.zz));
  r1.w = r3.z ? r8.w : 0;
  r9.xyz = r3.www ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r1.www ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r8.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r10.x = dot(abs(r0.xyz), icb[r8.x+0].xyz);
  r10.y = dot(abs(r0.xyz), icb[r9.x+0].xyz);
  r3.zw = float2(-0.577300012,-0.577300012) + r10.xy;
  r3.zw = saturate(float2(2.36574411,2.36574411) * r3.zw);
  r1.w = cmp((int)r8.z < (int)r8.y);
  r8.xy = r1.ww ? r8.zy : r8.yz;
  r1.w = cmp((int)r9.z < (int)r9.y);
  r8.zw = r1.ww ? r9.zy : r9.yz;
  r9.xyz = ddx_coarse(r7.xyz);
  r10.xyz = ddy_coarse(r7.xyz);
  r11.x = dot(r7.xyz, icb[r8.x+0].xyz);
  r11.y = dot(r7.xyz, icb[r8.y+0].xyz);
  r12.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r12.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r13.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r13.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r14.xyz = t15.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r8.x = dot(r7.xyz, icb[r8.z+0].xyz);
  r8.y = dot(r7.xyz, icb[r8.w+0].xyz);
  r7.x = dot(r9.xyz, icb[r8.z+0].xyz);
  r7.y = dot(r9.xyz, icb[r8.w+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.z+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.w+0].xyz);
  r10.xyz = t15.SampleGrad(s0_s, r8.xy, r7.xyx, r9.xyx).xyz;
  r10.xyz = r10.xyz * r3.www;
  r10.xyz = r14.xyz * r3.zzz + r10.xyz;
  r1.w = r3.z + r3.w;
  r10.xyz = r10.xyz / r1.www;
  r2.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r14.xyz = r2.www + -r10.xyz;
  r10.xyz = cb1[22].www * r14.xyz + r10.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r14.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r14.zxy;
  sincos(cb1[22].z, r15.x, r16.x);
  r14.xyz = r15.xxx * r14.xyz;
  r10.xyz = r10.xyz * r16.xxx + r14.xyz;
  r10.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = cb1[8].xyz * r10.xyz;
  r2.w = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = saturate(cb1[23].x * r2.w);
  r4.w = 1 + -r2.w;
  r4.w = r4.w + r4.w;
  r15.xyz = -r4.www * cb1[11].xyz + float3(1,1,1);
  r4.w = r2.w + r2.w;
  r16.xyz = cb1[10].xyz * r4.www;
  r2.w = cmp(r2.w >= 0.5);
  r15.xyz = r2.www ? r15.xyz : r16.xyz;
  r16.xyz = cb1[10].xyz + -r15.xyz;
  r15.xyz = cb1[23].yyy * r16.xyz + r15.xyz;
  r16.xyz = -cb0[67].xyz + r2.xyz;
  r2.w = dot(r16.xyz, r16.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb1[23].z;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb1[23].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r10.xyz = -r10.xyz * cb1[8].xyz + r15.xyz;
  r10.xyz = r10.xyz * r2.www;
  r10.xyz = cb1[24].xxx * r10.xyz + r14.xyz;
  r4.xyz = -r4.xyz * cb1[6].xyz + r10.xyz;
  r4.xyz = r0.www * r4.xyz + r6.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r2.w = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = cb1[24].y * r3.x;
  r3.x = exp2(r3.x);
  r2.w = r2.w ? 0 : r3.x;
  r6.y = saturate(cb1[24].z + r2.w);
  r6.x = cb1[24].w + r3.y;
  r3.xy = t16.SampleGrad(s0_s, r11.xy, r12.xy, r13.xy).xy;
  r6.zw = t16.SampleGrad(s0_s, r8.xy, r7.xx, r9.xx).xy;
  r6.zw = r6.zw * r3.ww;
  r3.xy = r3.xy * r3.zz + r6.zw;
  r3.xy = r3.xy / r1.ww;
  r3.yz = cb1[25].xy + r3.xy;
  r3.x = saturate(r3.y);
  r3.xy = r3.zx + -r6.xy;
  r3.xy = saturate(r0.ww * r3.xy + r6.xy);
  r0.w = dot(r0.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb1[25].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb1[25].w * r0.w;
  r1.x = saturate(cb1[26].y + v1.z);
  r0.w = r1.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb1[26].z * r0.w);
  r1.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
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
  r1.w = mad((int)v4.x, 36, 20);
  r4.x = t9[r1.w].val[4/4];
  r4.y = t9[r1.w].val[4/4+1];
  r1.w = cmp(0 < r4.y);
  if (r1.w != 0) {
    r1.w = t8.SampleLevel(s1_s, r3.yzw, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = 0.0799999982 * r0.w;
  r4.yzw = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r4.yzw = r3.xxx * r4.yzw + r2.www;
  r6.xyz = -r1.xyz * r3.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r4.yzw = r2.www ? float3(0,0,0) : r4.yzw;
  r2.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r2.w * 2.04040003 + -0.332399994;
  r5.w = r2.w * -4.79510021 + r5.w;
  r2.w = r2.w * 2.75519991 + r5.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xyz = t1.SampleLevel(s1_s, r3.yzw, 0).zxy;
  r8.xyzw = t2.SampleLevel(s1_s, r3.yzw, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t4.SampleLevel(s1_s, r3.yzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t6.SampleLevel(s1_s, r3.yzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = r8.xyzw * r7.yyyy;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r7.zzzz;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r7.xxxx;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = t3.SampleLevel(s1_s, r3.yzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t5.SampleLevel(s1_s, r3.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t7.SampleLevel(s1_s, r3.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r7.xxxx;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r3.yzw = r0.yzy * r0.yzx;
  r14.yw = r0.zz * r0.yx;
  r3.y = r0.x * r0.x + -r3.y;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r14.xz = r3.wz * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r3.y = 0.429042608 * r3.y;
  r16.x = r7.y;
  r16.yzw = r8.yzw;
  r15.x = 0.886227548;
  r3.z = dot(r16.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r3.w = dot(r8.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r8.x = r11.w * r3.y + r3.z;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r3.z = dot(r11.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r3.w = dot(r9.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r8.y = r12.w * r3.y + r3.z;
  r7.yzw = r10.yzw;
  r3.z = dot(r7.xyzw, r15.xyzw);
  r10.yzw = r13.xyz;
  r3.w = dot(r10.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r8.z = r13.w * r3.y + r3.z;
  r3.yzw = max(float3(0,0,0), r8.xyz);
  r3.yzw = cb0[157].xyz * r3.yzw;
  r3.yzw = float3(0.318309873,0.318309873,0.318309873) * r3.yzw;
  r5.w = dot(r3.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.yzw = r3.yzw * r6.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r3.yzw = r7.xyz * r3.yzw;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r6.x = cmp(0 < cb0[140].x);
  if (r6.x != 0) {
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t9[r6.x].val[0/4];
    r6.z = t9[r6.x].val[0/4+1];
    r6.w = t9[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t9[r6.y].val[0/4];
    r7.y = t9[r6.y].val[0/4+1];
    r7.z = t9[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r6.x = (int)r6.y | (int)r6.x;
    r6.x = (int)r6.z | (int)r6.x;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r6.xxx ? r2.xyz : r5.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.yzw + r3.yzw;
  r2.xyz = r2.xyz + r5.xyz;
  r3.yzw = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.yzw = frac(r3.yzw);
  r3.yzw = r3.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.yzw = r3.yzw * r3.yzz;
  r3.y = dot(r3.yzw, float3(20.390625,60.703125,2.42812085));
  r3.y = frac(r3.y);
  r3.y = -0.5 + r3.y;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r5.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.y * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r4.x;
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