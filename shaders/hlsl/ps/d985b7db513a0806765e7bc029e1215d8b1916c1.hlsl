// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r0.w = cb1[4].w * cb0[141].w;
  r1.x = v8.x ? 1 : -1;
  r0.w = r1.x * r0.w;
  r1.xyzw = t3.SampleBias(s1_s, v4.xy, cb0[143].y).wxyz;
  r1.yzw = float3(-0.5,-0.5,-0.5) + r1.yzw;
  r1.yzw = cb0[138].www * r1.yzw;
  r1.yzw = r1.yzw * float3(2,2,2) + cb0[138].xyz;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r1.yzw = r2.xxx * r1.yzw;
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r1.yyy * v0.xyz + r0.xyz;
  r0.xyz = r1.www * v1.xyz + r0.xyz;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r2.xyz = r0.xyz * r0.www;
  r1.yzw = cb3[7].xxx * cb3[1].xyz;
  r3.xyzw = t4.SampleBias(s2_s, v4.xy, cb0[143].y).xyzw;
  r4.xyz = t5.SampleBias(s3_s, v4.xy, cb0[143].y).xyz;
  r4.w = cmp(0.00100000005 < abs(v3.w));
  r5.xy = floor(v7.xy);
  r5.x = dot(r5.xy, float2(347.834503,3343.28369));
  r5.x = cos(r5.x);
  r5.x = 1000 * r5.x;
  r5.x = frac(r5.x);
  r5.y = cmp(v3.w < 0);
  r5.z = 1 + v3.w;
  r5.z = cmp(r5.x < r5.z);
  r5.x = cmp(v3.w < r5.x);
  r5.x = r5.y ? r5.z : r5.x;
  r5.x = cmp((int)r5.x == 0);
  r4.w = r4.w ? r5.x : 0;
  if (r4.w != 0) discard;
  r3.w = v2.w * r3.w + -0.100000001;
  r3.w = cmp(r3.w < 0);
  if (r3.w != 0) discard;
  r3.xyz = saturate(r3.xyz);
  r1.x = saturate(r1.x);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r4.xyz = saturate(r4.xyz);
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = saturate(r4.xyz);
  o4.xyz = sqrt(r5.xyz);
  r5.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.xxx ? r7.xyz : r5.xyz;
  r6.xyz = r1.xxx ? float3(0,0,0) : r6.xyz;
  r1.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r1.x * 2.04040003 + -0.332399994;
  r3.w = r1.x * -4.79510021 + r3.w;
  r1.x = r1.x * 2.75519991 + r3.w;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r7.xy = float2(1,0.5) * v5.xy;
  r7.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t1.Sample(s0_s, r7.xy).xyzw;
  r7.xyzw = t1.Sample(s0_s, r7.zw).xyzw;
  r3.w = r7.w * 0.00392156886 + r8.w;
  r3.w = -0.00196078443 + r3.w;
  r3.w = r3.w * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r2.w = 1;
  r4.w = dot(r7.zxyw, r2.xyzw);
  r4.w = max(0, r4.w);
  r9.xyzw = float4(-1,-1,-1,1) * r2.xyzw;
  r2.w = dot(r7.zxyw, r9.xyzw);
  r2.w = max(0, r2.w);
  r2.w = r3.w * r2.w;
  r7.xyz = r2.www * r8.xyz;
  r2.w = r4.w * r3.w;
  r8.xyz = r2.www * r8.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r10.xyzw = t2.Sample(s0_s, v5.xy).xyzw;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = r10.w * r10.w;
    r3.w = dot(r10.xyz, r10.xyz);
    r3.w = rsqrt(r3.w);
    r10.xyz = r10.xyz * r3.www;
    r3.w = -r10.w * r10.w + 1;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r0.www + -r10.xyz;
    r0.xyz = r3.www * r0.xyz + r10.xyz;
    r4.w = saturate(dot(r10.xyz, r2.xyz));
    r5.w = 1 + -r4.w;
    r3.w = r3.w * r5.w + r4.w;
  } else {
    r0.xyz = r2.xyz;
    r2.w = 1;
    r3.w = 1;
  }
  r10.x = t0[0].val[0/4];
  r10.y = t0[0].val[0/4+1];
  r10.z = t0[0].val[0/4+2];
  r10.w = t0[0].val[0/4+3];
  r0.w = 1;
  r11.x = dot(r10.xyzw, r0.xyzw);
  r12.x = t0[1].val[0/4];
  r12.y = t0[1].val[0/4+1];
  r12.z = t0[1].val[0/4+2];
  r12.w = t0[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r0.xyzw);
  r13.x = t0[2].val[0/4];
  r13.y = t0[2].val[0/4+1];
  r13.z = t0[2].val[0/4+2];
  r13.w = t0[2].val[0/4+3];
  r11.z = dot(r13.xyzw, r0.xyzw);
  r14.xyzw = r0.xyzz * r0.yzzx;
  r15.x = t0[3].val[0/4];
  r15.y = t0[3].val[0/4+1];
  r15.z = t0[3].val[0/4+2];
  r15.w = t0[3].val[0/4+3];
  r16.x = dot(r15.xyzw, r14.xyzw);
  r17.x = t0[4].val[0/4];
  r17.y = t0[4].val[0/4+1];
  r17.z = t0[4].val[0/4+2];
  r17.w = t0[4].val[0/4+3];
  r16.y = dot(r17.xyzw, r14.xyzw);
  r18.x = t0[5].val[0/4];
  r18.y = t0[5].val[0/4+1];
  r18.z = t0[5].val[0/4+2];
  r18.w = t0[5].val[0/4+3];
  r16.z = dot(r18.xyzw, r14.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r11.xyz = r16.xyz + r11.xyz;
  r11.xyz = r0.yzw * r0.xxx + r11.xyz;
  r11.xyz = max(float3(0,0,0), r11.xyz);
  r11.xyz = cb0[187].xyz * r11.xyz;
  r0.x = r3.w * r2.w;
  r11.xyz = r11.xyz * r0.xxx;
  r10.x = dot(r10.xyzw, r9.xyzw);
  r10.y = dot(r12.xyzw, r9.xyzw);
  r10.z = dot(r13.xyzw, r9.xyzw);
  r9.xyzw = r2.xyzz * r2.yzzx;
  r12.x = dot(r15.xyzw, r9.xyzw);
  r12.y = dot(r17.xyzw, r9.xyzw);
  r12.z = dot(r18.xyzw, r9.xyzw);
  r0.x = r2.y * r2.y;
  r0.x = r2.x * r2.x + -r0.x;
  r9.xyz = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.xyz = r0.xyz * r2.www;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r7.xyz = r8.xyz * cb0[157].xyz + r11.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r4.xyz;
  r0.xyz = r7.xyz * r5.xyz + r0.xyz;
  r4.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r0.xyz = r4.xyz * r0.xyz;
  r4.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyzw = cb0[45].xyzw * v7.yyyy;
    r5.xyzw = v7.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v7.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xyz = -cb1[5].xyz + r5.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r3.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r5.xyz = r3.www ? float3(0,1,1) : float3(1,1,0);
    r1.yzw = r2.www ? r5.xyz : r1.yzw;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r1.yzw;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.776470602);
  o3.xyz = r3.xyz;
  o4.w = 1;
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}