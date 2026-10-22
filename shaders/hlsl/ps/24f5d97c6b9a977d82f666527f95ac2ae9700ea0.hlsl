// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

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

cbuffer cb1 : register(b1)
{
  float4 cb1[27];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  nointerpolation uint w5 : LIGHTMAP_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r4.xy = cb1[12].xx * v3.xy;
  r5.x = dot(v0.xyz, r1.xyz);
  r5.y = dot(r0.zxy, r1.xyz);
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
  r4.zw = v3.xy * cb1[12].xx + r6.zw;
  r0.w = cb1[13].x + cb0[143].y;
  r5.xy = t4.SampleBias(s3_s, r4.zw, r0.w).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyw = cb1[13].yyy * r7.xyz + r5.xyz;
  r7.xyz = r3.xyz / cb1[14].xxx;
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
  r8.xyz = cb1[14].yyy * r8.xyz + r9.xyz;
  r8.xyz = cb1[14].www * r5.xyw + r8.xyz;
  r9.xy = cmp(float2(0,0) >= v2.yz);
  r9.zw = log2(v2.yz);
  r9.zw = cb1[15].xx * r9.zw;
  r9.zw = exp2(r9.zw);
  r9.xy = r9.xy ? float2(0,0) : r9.zw;
  r3.xyz = r3.xyz / cb1[15].www;
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
  r10.xyz = r6.yyy * r0.zxy;
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
  r1.w = t3.SampleBias(s2_s, r4.xy, cb0[143].y).w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb1[19].z * r2.w + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb1[19].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb1[20].x * r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r0.w = max(r1.w, r0.w);
  r3.xyz = t3.SampleBias(s2_s, r4.zw, cb0[143].y).xyz;
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
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r1.www * r0.xyz;
  r0.xyz = cb1[21].xxx * cb1[4].xyz;
  r4.xyz = t7.SampleBias(s5_s, r4.zw, cb0[143].y).xyz;
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
  r8.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r1.w = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r1.www ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r3.zw = cmp(abs(r5.zx) < abs(r5.yy));
  r1.w = r3.z ? r8.w : 0;
  r9.xyz = r3.www ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r1.www ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r8.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r10.x = dot(abs(r5.zxy), icb[r8.x+0].xyz);
  r10.y = dot(abs(r5.zxy), icb[r9.x+0].xyz);
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
  r14.xyz = t8.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r8.x = dot(r7.xyz, icb[r8.z+0].xyz);
  r8.y = dot(r7.xyz, icb[r8.w+0].xyz);
  r7.x = dot(r9.xyz, icb[r8.z+0].xyz);
  r7.y = dot(r9.xyz, icb[r8.w+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.z+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.w+0].xyz);
  r10.xyz = t8.SampleGrad(s0_s, r8.xy, r7.xyx, r9.xyx).xyz;
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
  r3.xy = t9.SampleGrad(s0_s, r11.xy, r12.xy, r13.xy).xy;
  r6.zw = t9.SampleGrad(s0_s, r8.xy, r7.xx, r9.xx).xy;
  r6.zw = r6.zw * r3.ww;
  r3.xy = r3.xy * r3.zz + r6.zw;
  r3.xy = r3.xy / r1.ww;
  r3.yz = cb1[25].xy + r3.xy;
  r3.x = saturate(r3.y);
  r3.xy = r3.zx + -r6.xy;
  r3.xy = saturate(r0.ww * r3.xy + r6.xy);
  r0.w = dot(r5.zxy, r1.xyz);
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
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb1[26].z * r0.w);
  r1.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
  r4.xyzw = mad((int4)v5.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r4.x].val[4/4];
  r1.w = 0.0799999982 * r0.w;
  r3.yzw = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r3.yzw = r3.xxx * r3.yzw + r1.www;
  r6.xyz = -r1.xyz * r3.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r3.yzw = r3.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r7.xyz : r6.xyz;
  r3.yzw = r1.www ? float3(0,0,0) : r3.yzw;
  r1.w = dot(r3.yzw, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r7.xy = float2(1,0.5) * v4.xy;
  r7.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s1_s, r7.xy).xyzw;
  r7.xyzw = t2.Sample(s1_s, r7.zw).xyzw;
  r2.w = r7.w * 0.00392156886 + r8.w;
  r2.w = -0.00196078443 + r2.w;
  r9.x = t1[r4.y].val[0/4];
  r9.y = t1[r4.y].val[0/4+1];
  r9.z = t1[r4.y].val[0/4+2];
  r9.w = t1[r4.y].val[0/4+3];
  r10.x = t1[r4.z].val[0/4];
  r10.y = t1[r4.z].val[0/4+1];
  r10.z = t1[r4.z].val[0/4+2];
  r10.w = t1[r4.z].val[0/4+3];
  r2.w = r2.w * r9.w + r10.w;
  r4.xyz = r8.xyz * r8.xyz;
  r4.xyz = r4.xyz * r9.xyz + r10.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.x = t1[r4.w].val[0/4];
  r8.y = t1[r4.w].val[0/4+1];
  r8.z = t1[r4.w].val[0/4+2];
  r8.w = t1[r4.w].val[0/4+3];
  r4.w = mad((int)w5.x, 15, 7);
  r9.x = t1[r4.w].val[0/4];
  r9.y = t1[r4.w].val[0/4+1];
  r9.z = t1[r4.w].val[0/4+2];
  r9.w = t1[r4.w].val[0/4+3];
  r7.xyzw = r7.xyzw * r8.xyzw + r9.xyzw;
  r5.w = 1;
  r4.w = dot(r7.xyzw, r5.xyzw);
  r4.w = max(0, r4.w);
  r2.w = r4.w * r2.w;
  r4.xyz = r2.www * r4.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r6.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.xyz = r7.xyz * r4.xyz;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r4.www ? r2.xyz : r0.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.yzw + r4.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r2.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.x = r3.x;
  o2.w = 0.75686276;
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}