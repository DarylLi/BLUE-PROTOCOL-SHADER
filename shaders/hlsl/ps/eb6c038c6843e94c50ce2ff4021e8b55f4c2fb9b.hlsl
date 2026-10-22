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

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
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
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
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

  r0.xy = t4.Sample(s1_s, v1.zw).zw;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r1.x = dot(r0.xy, r0.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r0.z = sqrt(r1.x);
  r0.w = -r0.x;
  r1.x = dot(r0.zw, r0.zw);
  r1.x = rsqrt(r1.x);
  r1.yz = r1.xx * r0.wz;
  r1.x = 0;
  r2.xyz = r1.xyz * r0.zxy;
  r2.xyz = r0.yzx * r1.yzx + -r2.xyz;
  r1.xyw = cb3[11].yzx * r1.yyy;
  r1.xyz = r1.zzz * cb3[9].yzx + r1.xyw;
  r3.xyz = cb3[10].yzx * r2.yyy;
  r2.xyw = r2.xxx * cb3[9].yzx + r3.xyz;
  r2.xyz = r2.zzz * cb3[11].yzx + r2.xyw;
  r3.xyz = cb3[10].yzx * r0.yyy;
  r0.xyw = r0.xxx * cb3[9].yzx + r3.xyz;
  r0.xyz = r0.zzz * cb3[11].yzx + r0.xyw;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r2.xyz = r3.yyy * r2.xyz;
  r1.xyz = r3.xxx * r1.xyz + r2.xyz;
  r0.xyz = r3.zzz * r0.xyz + r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r0.xyz * r0.www;
  r2.xyz = cb4[7].xxx * cb4[1].xyz;
  r3.xy = cb4[5].xy * v3.xy;
  r3.xyz = t5.SampleBias(s2_s, r3.xy, cb0[143].y).xyz;
  r3.xyz = saturate(cb4[6].xyz * r3.xyz);
  o2.z = cb0[139].y * 0.5 + cb0[139].x;
  r4.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r5.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r4.xyzw * cb2[1].xyzw + r5.xyzw);
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = cb2[0].xyzw * r4.xyzw;
  r4.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0240000002,0.0240000002,0.0240000002) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r6.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r2.www ? r6.xyz : r4.xyz;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r6.xy = float2(1,0.5) * v3.xy;
  r6.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t1.Sample(s0_s, r6.xy).xyzw;
  r6.xyzw = t1.Sample(s0_s, r6.zw).xyzw;
  r3.w = r6.w * 0.00392156886 + r7.w;
  r3.w = -0.00196078443 + r3.w;
  r3.w = r3.w * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r1.w = 1;
  r1.w = dot(r6.xyzw, r1.xyzw);
  r1.w = max(0, r1.w);
  r1.w = r3.w * r1.w;
  r6.xyz = r1.www * r7.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r7.xyzw = t2.Sample(s0_s, v3.xy).xyzw;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.x = r7.w * r7.w;
    r1.w = dot(r7.xyz, r7.xyz);
    r1.w = rsqrt(r1.w);
    r7.xyz = r7.xyz * r1.www;
    r1.w = -r7.w * r7.w + 1;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.zxy * r0.www + -r7.xyz;
    r0.xyz = r1.www * r0.xyz + r7.xyz;
    r3.w = saturate(dot(r7.yzx, r1.xyz));
    r4.w = 1 + -r3.w;
    r8.y = r1.w * r4.w + r3.w;
  } else {
    r0.xyz = r1.zxy;
    r8.xy = float2(1,1);
  }
  r7.x = t0[0].val[0/4];
  r7.y = t0[0].val[0/4+1];
  r7.z = t0[0].val[0/4+2];
  r7.w = t0[0].val[0/4+3];
  r0.w = 1;
  r7.x = dot(r7.xyzw, r0.xyzw);
  r9.x = t0[1].val[0/4];
  r9.y = t0[1].val[0/4+1];
  r9.z = t0[1].val[0/4+2];
  r9.w = t0[1].val[0/4+3];
  r7.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t0[2].val[0/4];
  r9.y = t0[2].val[0/4+1];
  r9.z = t0[2].val[0/4+2];
  r9.w = t0[2].val[0/4+3];
  r7.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t0[3].val[0/4];
  r10.y = t0[3].val[0/4+1];
  r10.z = t0[3].val[0/4+2];
  r10.w = t0[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t0[4].val[0/4];
  r11.y = t0[4].val[0/4+1];
  r11.z = t0[4].val[0/4+2];
  r11.w = t0[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t0[5].val[0/4];
  r11.y = t0[5].val[0/4+1];
  r11.z = t0[5].val[0/4+2];
  r11.w = t0[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r7.xyz = r10.xyz + r7.xyz;
  r0.xyz = r0.yzw * r0.xxx + r7.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r8.x * r8.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r6.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r4.xyz;
  r6.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r0.xyz = r6.xyz * r0.xyz;
  r4.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyzw = cb0[45].xyzw * v4.yyyy;
    r5.xyzw = v4.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v4.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xyz = -cb1[5].xyz + r5.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r3.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r5.xyz = r3.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r5.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r1.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.300000012,0.505882382);
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}