// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  r4.xy = cb2[12].xx * v4.xy;
  r0.w = cb2[12].z + cb0[143].y;
  r4.zw = t2.SampleBias(s2_s, r4.xy, r0.w).xy;
  r5.xy = r4.zw + r4.zw;
  r6.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyw = cb2[12].www * r7.xyz + r6.xyz;
  r7.xyz = r3.xyz / cb2[13].zzz;
  r4.zw = t3.SampleBias(s3_s, r7.xz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.zw, r4.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r4.zw;
  r4.zw = t3.SampleBias(s3_s, r7.yz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.zw, r4.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r4.zw;
  r4.zw = min(float2(1,1), abs(v1.xz));
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r4.zzz * r9.xyz + r8.xyz;
  r9.xy = t3.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r4.www * r9.xyz + r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb2[13].www * r8.xyz + r9.xyz;
  r8.xyz = cb2[14].yyy * r6.xyw + r8.xyz;
  r4.zw = cmp(float2(0,0) >= v2.yz);
  r9.xy = log2(v2.yz);
  r9.xy = cb2[14].zz * r9.xy;
  r9.xy = exp2(r9.xy);
  r4.zw = r4.zw ? float2(0,0) : r9.xy;
  r3.xyz = r3.xyz / cb2[15].yyy;
  r0.w = t4.Sample(s0_s, r3.xz).x;
  r1.w = t4.Sample(s0_s, r3.yz).x;
  r3.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r1.w = r1.w + -r0.w;
  r0.w = r3.z * r1.w + r0.w;
  r1.w = t4.Sample(s0_s, r3.xy).x;
  r1.w = r1.w + -r0.w;
  r0.w = r3.w * r1.w + r0.w;
  r1.w = cmp(0 >= abs(r0.w));
  r0.w = log2(abs(r0.w));
  r0.w = cb2[15].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r3.xy = r0.ww * r4.zw + r4.zw;
  r3.zw = cmp(float2(0,0) >= r3.xy);
  r3.xy = log2(r3.xy);
  r3.xy = cb2[15].ww * r3.xy;
  r3.xy = exp2(r3.xy);
  r3.xy = r3.zw ? float2(0,0) : r3.xy;
  r3.xy = r3.xy + -r4.zw;
  r5.z = r6.z;
  r5.xyz = float3(-1,-1,1) + r5.xyz;
  r9.xyz = r5.yyy * r0.xyz;
  r5.xyw = r5.xxx * v0.xyz + r9.xyz;
  r5.xyz = r5.zzz * v1.xyz + r5.xyw;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r5.xyz = r5.xyz / r1.www;
  r1.w = dot(r5.xyz, cb2[3].xyz);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r0.w + -r0.w;
  r0.w = cb2[17].w * r1.w + r0.w;
  r0.w = saturate(r0.w * cb2[18].x + cb2[18].w);
  r3.xy = cb2[16].xx * r3.xy + r4.zw;
  r0.w = saturate(-r3.y + r0.w);
  r0.w = saturate(r3.x + r0.w);
  r3.xyzw = t5.SampleBias(s4_s, r4.xy, cb0[143].y).xyzw;
  r1.w = r3.w * -2 + 1;
  r1.w = cb2[19].x * r1.w + r3.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[19].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb2[19].z * r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r0.w = max(r1.w, r0.w);
  r1.w = cb2[19].w + -r3.z;
  r1.w = 1 + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[20].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb2[20].y * r2.w + r1.w;
  r0.w = r1.w * r0.w;
  r5.xyz = r8.xyz + -r6.xyw;
  r5.xyz = r0.www * r5.xyz + r6.xyw;
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
  r5.xyz = cb2[20].zzz * cb2[4].xyz;
  r4.xyz = t6.SampleBias(s5_s, r4.xy, cb0[143].y).xyz;
  r1.w = -1 + r3.z;
  r1.w = cb2[21].y * r1.w + 1;
  r6.xyz = r4.xyz * r1.www;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = -r4.xyz * r1.www + r2.www;
  r4.xyz = cb2[21].zzz * r4.xyz + r6.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r6.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[21].x, r8.x, r9.x);
  r6.xyz = r8.xxx * r6.xyz;
  r4.xyz = r4.xyz * r9.xxx + r6.xyz;
  r4.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r6.xyz = cb2[6].xyz * r4.xyz;
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
  r14.xyz = t7.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r8.x = dot(r7.xyz, icb[r8.z+0].xyz);
  r8.y = dot(r7.xyz, icb[r8.w+0].xyz);
  r7.x = dot(r9.xyz, icb[r8.z+0].xyz);
  r7.y = dot(r9.xyz, icb[r8.w+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.z+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.w+0].xyz);
  r10.xyz = t7.SampleGrad(s0_s, r8.xy, r7.xyx, r9.xyx).xyz;
  r10.xyz = r10.xyz * r3.www;
  r10.xyz = r14.xyz * r3.zzz + r10.xyz;
  r1.w = r3.z + r3.w;
  r10.xyz = r10.xyz / r1.www;
  r2.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r14.xyz = r2.www + -r10.xyz;
  r10.xyz = cb2[22].yyy * r14.xyz + r10.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r14.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r14.zxy;
  sincos(cb2[22].x, r15.x, r16.x);
  r14.xyz = r15.xxx * r14.xyz;
  r10.xyz = r10.xyz * r16.xxx + r14.xyz;
  r10.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r14.xyz = cb2[8].xyz * r10.xyz;
  r2.w = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = saturate(cb2[22].z * r2.w);
  r4.w = 1 + -r2.w;
  r4.w = r4.w + r4.w;
  r15.xyz = -r4.www * cb2[11].xyz + float3(1,1,1);
  r4.w = r2.w + r2.w;
  r16.xyz = cb2[10].xyz * r4.www;
  r2.w = cmp(r2.w >= 0.5);
  r15.xyz = r2.www ? r15.xyz : r16.xyz;
  r16.xyz = cb2[10].xyz + -r15.xyz;
  r15.xyz = cb2[22].www * r16.xyz + r15.xyz;
  r16.xyz = -cb0[67].xyz + r2.xyz;
  r2.w = dot(r16.xyz, r16.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb2[23].x;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[23].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r4.w ? 0 : r2.w;
  r10.xyz = -r10.xyz * cb2[8].xyz + r15.xyz;
  r10.xyz = r10.xyz * r2.www;
  r10.xyz = cb2[23].zzz * r10.xyz + r14.xyz;
  r4.xyz = -r4.xyz * cb2[6].xyz + r10.xyz;
  r4.xyz = r0.www * r4.xyz + r6.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r2.w = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = cb2[23].w * r3.x;
  r3.x = exp2(r3.x);
  r2.w = r2.w ? 0 : r3.x;
  r6.y = saturate(cb2[24].x + r2.w);
  r6.x = cb2[24].y + r3.y;
  r3.xy = t8.SampleGrad(s0_s, r11.xy, r12.xy, r13.xy).xy;
  r6.zw = t8.SampleGrad(s0_s, r8.xy, r7.xx, r9.xx).xy;
  r6.zw = r6.zw * r3.ww;
  r3.xy = r3.xy * r3.zz + r6.zw;
  r3.xy = r3.xy / r1.ww;
  r3.yz = cb2[24].zw + r3.xy;
  r3.x = saturate(r3.y);
  r3.xy = r3.zx + -r6.xy;
  r3.xy = saturate(r0.ww * r3.xy + r6.xy);
  r0.w = dot(r0.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb2[25].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb2[25].y * r0.w;
  r1.x = saturate(cb2[25].w + v1.z);
  r0.w = r1.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb2[26].x * r0.w);
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
  r4.xyz = r2.www ? float3(0,0,0) : r6.xyz;
  r3.yzw = r4.xyz + r3.yzw;
  r4.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r2.w = (int)r5.y | (int)r5.x;
    r2.w = (int)r5.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r2.www ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.yzw + r4.xyz;
  r3.yzw = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.yzw = frac(r3.yzw);
  r3.yzw = r3.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.yzw = r3.yzw * r3.yzz;
  r2.w = dot(r3.yzw, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r2.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
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