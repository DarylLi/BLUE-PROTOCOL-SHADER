// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r0.w = (int)w5.x * 15;
  r1.xyzw = mad((int4)v5.xxyy, int4(36,36,15,15), int4(4,20,1,4));
  r1.x = t0[r1.x].val[12/4];
  r1.x = cb0[141].w * r1.x;
  r2.x = v8.x ? 1 : -1;
  r1.x = r2.x * r1.x;
  r2.xyzw = t6.SampleBias(s1_s, v3.xy, cb0[143].y).wxyz;
  r2.yzw = float3(-0.5,-0.5,-0.5) + r2.yzw;
  r2.yzw = cb0[138].www * r2.yzw;
  r2.yzw = r2.yzw * float3(2,2,2) + cb0[138].xyz;
  r3.x = dot(r2.yzw, r2.yzw);
  r3.x = rsqrt(r3.x);
  r2.yzw = r3.xxx * r2.yzw;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.yyy * v0.xyz + r0.xyz;
  r0.xyz = r2.www * v1.xyz + r0.xyz;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r0.xyz = r2.yyy * r0.xyz;
  r3.xyz = r0.xyz * r1.xxx;
  r2.yzw = cb2[7].xxx * cb2[1].xyz;
  r4.xyzw = t7.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r5.xyz = t8.SampleBias(s3_s, v3.xy, cb0[143].y).xyz;
  r5.w = cmp(cb1[0].x != 0.000000);
  r6.x = cmp(0.00100000005 < abs(cb1[0].x));
  r5.w = r5.w ? r6.x : 0;
  r6.xy = floor(v7.xy);
  r6.x = dot(r6.xy, float2(347.834503,3343.28369));
  r6.x = cos(r6.x);
  r6.x = 1000 * r6.x;
  r6.x = frac(r6.x);
  r6.y = cmp(cb1[0].x < 0);
  r6.z = 1 + cb1[0].x;
  r6.z = cmp(r6.x < r6.z);
  r6.x = cmp(cb1[0].x < r6.x);
  r6.x = r6.y ? r6.z : r6.x;
  r6.x = cmp((int)r6.x == 0);
  r5.w = r5.w ? r6.x : 0;
  if (r5.w != 0) discard;
  r4.w = v2.w * r4.w + -0.100000001;
  r4.w = cmp(r4.w < 0);
  if (r4.w != 0) discard;
  r4.xyz = saturate(r4.xyz);
  r2.x = saturate(r2.x);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r5.xyz = saturate(r5.xyz);
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  o1.w = t0[r1.y].val[4/4];
  r6.xyzw = t5.Sample(s0_s, v4.zw).xyzw;
  r7.x = t1[r1.z].val[0/4];
  r7.y = t1[r1.z].val[0/4+1];
  r7.z = t1[r1.z].val[0/4+2];
  r7.w = t1[r1.z].val[0/4+3];
  r8.xyzw = r7.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * r7.xyzw + r8.xyzw);
  r7.x = t1[r0.w].val[0/4];
  r7.y = t1[r0.w].val[0/4+1];
  r7.z = t1[r0.w].val[0/4+2];
  r7.w = t1[r0.w].val[0/4+3];
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = r6.xyzw * r7.xyzw;
  r6.xyz = saturate(r5.xyz);
  o4.xyz = sqrt(r6.xyz);
  r6.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.www ? r8.xyz : r6.xyz;
  r7.xyz = r0.www ? float3(0,0,0) : r7.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.y = r0.w * 2.04040003 + -0.332399994;
  r1.y = r0.w * -4.79510021 + r1.y;
  r0.w = r0.w * 2.75519991 + r1.y;
  r0.w = 1.33200002 + r0.w;
  r0.w = max(1, r0.w);
  r1.yz = float2(1,0.5) * v4.xy;
  r8.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s0_s, r1.yz).xyzw;
  r8.xyzw = t3.Sample(s0_s, r8.xy).xyzw;
  r1.y = r8.w * 0.00392156886 + r9.w;
  r1.y = -0.00196078443 + r1.y;
  r10.x = t1[r1.w].val[0/4];
  r10.y = t1[r1.w].val[0/4+1];
  r10.z = t1[r1.w].val[0/4+2];
  r10.w = t1[r1.w].val[0/4+3];
  r11.xyz = mad((int3)w5.xyy, int3(15,15,15), int3(6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r1.y = r1.y * r10.w + r12.w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * r10.xyz + r12.xyz;
  r1.y = exp2(r1.y);
  r1.y = -0.0185813606 + r1.y;
  r10.x = t1[r11.y].val[0/4];
  r10.y = t1[r11.y].val[0/4+1];
  r10.z = t1[r11.y].val[0/4+2];
  r10.w = t1[r11.y].val[0/4+3];
  r11.x = t1[r11.z].val[0/4];
  r11.y = t1[r11.z].val[0/4+1];
  r11.z = t1[r11.z].val[0/4+2];
  r11.w = t1[r11.z].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r11.xyzw;
  r3.w = 1;
  r1.z = dot(r8.zxyw, r3.xyzw);
  r10.xyzw = float4(-1,-1,-1,1) * r3.xyzw;
  r1.w = dot(r8.zxyw, r10.xyzw);
  r1.zw = max(float2(0,0), r1.zw);
  r1.w = r1.y * r1.w;
  r8.xyz = r1.www * r9.xyz;
  r1.y = r1.y * r1.z;
  r1.yzw = r1.yyy * r9.xyz;
  r2.x = cmp(cb0[186].y != 0.000000);
  if (r2.x != 0) {
    r9.xyzw = t4.Sample(s0_s, v4.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.x = r9.w * r9.w;
    r3.w = dot(r9.xyz, r9.xyz);
    r3.w = rsqrt(r3.w);
    r9.xyz = r9.xyz * r3.www;
    r3.w = -r9.w * r9.w + 1;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r1.xxx + -r9.xyz;
    r11.xyz = r3.www * r0.xyz + r9.xyz;
    r0.x = saturate(dot(r9.xyz, r3.xyz));
    r0.y = 1 + -r0.x;
    r0.x = r3.w * r0.y + r0.x;
  } else {
    r11.xyz = r3.xyz;
    r2.x = 1;
    r0.x = 1;
  }
  r9.x = t2[0].val[0/4];
  r9.y = t2[0].val[0/4+1];
  r9.z = t2[0].val[0/4+2];
  r9.w = t2[0].val[0/4+3];
  r11.w = 1;
  r12.x = dot(r9.xyzw, r11.xyzw);
  r13.x = t2[1].val[0/4];
  r13.y = t2[1].val[0/4+1];
  r13.z = t2[1].val[0/4+2];
  r13.w = t2[1].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r14.x = t2[2].val[0/4];
  r14.y = t2[2].val[0/4+1];
  r14.z = t2[2].val[0/4+2];
  r14.w = t2[2].val[0/4+3];
  r12.z = dot(r14.xyzw, r11.xyzw);
  r15.xyzw = r11.xyzz * r11.yzzx;
  r16.x = t2[3].val[0/4];
  r16.y = t2[3].val[0/4+1];
  r16.z = t2[3].val[0/4+2];
  r16.w = t2[3].val[0/4+3];
  r17.x = dot(r16.xyzw, r15.xyzw);
  r18.x = t2[4].val[0/4];
  r18.y = t2[4].val[0/4+1];
  r18.z = t2[4].val[0/4+2];
  r18.w = t2[4].val[0/4+3];
  r17.y = dot(r18.xyzw, r15.xyzw);
  r19.x = t2[5].val[0/4];
  r19.y = t2[5].val[0/4+1];
  r19.z = t2[5].val[0/4+2];
  r19.w = t2[5].val[0/4+3];
  r17.z = dot(r19.xyzw, r15.xyzw);
  r0.y = r11.y * r11.y;
  r0.y = r11.x * r11.x + -r0.y;
  r11.x = t2[6].val[0/4];
  r11.y = t2[6].val[0/4+1];
  r11.z = t2[6].val[0/4+2];
  r12.xyz = r17.xyz + r12.xyz;
  r12.xyz = r11.xyz * r0.yyy + r12.xyz;
  r12.xyz = max(float3(0,0,0), r12.xyz);
  r12.xyz = cb0[187].xyz * r12.xyz;
  r0.x = r2.x * r0.x;
  r0.xyz = r12.xyz * r0.xxx;
  r9.x = dot(r9.xyzw, r10.xyzw);
  r9.y = dot(r13.xyzw, r10.xyzw);
  r9.z = dot(r14.xyzw, r10.xyzw);
  r10.xyzw = r3.xyzz * r3.yzzx;
  r12.x = dot(r16.xyzw, r10.xyzw);
  r12.y = dot(r18.xyzw, r10.xyzw);
  r12.z = dot(r19.xyzw, r10.xyzw);
  r1.x = r3.y * r3.y;
  r1.x = r3.x * r3.x + -r1.x;
  r9.xyz = r12.xyz + r9.xyz;
  r9.xyz = r11.xyz * r1.xxx + r9.xyz;
  r9.xyz = max(float3(0,0,0), r9.xyz);
  r9.xyz = cb0[187].xyz * r9.xyz;
  r9.xyz = r9.xyz * r2.xxx;
  r8.xyz = r8.xyz * cb0[157].xyz + r9.xyz;
  r0.xyz = r1.yzw * cb0[157].xyz + r0.xyz;
  r1.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = r8.xyz * r5.xyz;
  r0.xyz = r0.xyz * r6.xyz + r1.yzw;
  r1.yzw = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.yzw = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.yzw;
  r1.yzw = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.yzw;
  r1.yzw = float3(1.33200002,1.33200002,1.33200002) + r1.yzw;
  r1.yzw = max(float3(1,1,1), r1.yzw);
  r0.xyz = r1.yzw * r0.xyz;
  r1.yzw = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyzw = cb0[45].xyzw * v7.yyyy;
    r5.xyzw = v7.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v7.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r5.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r3.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r5.xyz = r3.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r5.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.yzw + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.x * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.xyw = float3(0,0.5,0.525490224);
  o3.xyz = r4.xyz;
  o4.w = 1;
  o6.xyzw = float4(0,0,0,0);
  return;
}