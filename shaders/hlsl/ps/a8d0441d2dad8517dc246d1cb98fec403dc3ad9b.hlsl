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
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r3.xy = cb3[6].xx * v2.xy;
  r4.x = dot(v0.xyz, r2.xyz);
  r4.y = dot(r0.zxy, r2.xyz);
  r0.w = dot(v1.xyz, r2.xyz);
  r3.zw = -r4.xy / r0.ww;
  r3.zw = cb3[6].yy * r3.zw;
  r0.w = min(1, abs(r0.w));
  r1.w = cb3[6].z + -cb3[6].w;
  r0.w = r0.w * r1.w + cb3[6].w;
  r1.w = floor(r0.w);
  r0.w = 1 / r0.w;
  r4.xy = r3.zw * r0.ww;
  r4.zw = ddx_coarse(r3.xy);
  r3.xy = ddy_coarse(r3.xy);
  r1.w = 2 + r1.w;
  r2.w = 1;
  r5.xyzw = float4(0,0,1,1);
  r6.x = 0;
  while (true) {
    r6.y = (int)r6.x;
    r6.y = cmp(r6.y >= r1.w);
    if (r6.y != 0) break;
    r6.yz = v2.xy * cb3[6].xx + r5.xy;
    r6.y = t3.SampleGrad(s1_s, r6.yz, r4.w, r3.y).z;
    r6.z = cmp(r2.w < r6.y);
    if (r6.z != 0) {
      r6.z = r5.z + -r5.w;
      r6.w = r6.y + -r2.w;
      r6.z = r6.z + r6.w;
      r6.z = r6.w / r6.z;
      r6.zw = -r6.zz * r4.xy + r5.xy;
      r5.xy = r6.zw;
      break;
    }
    r6.z = r2.w + -r0.w;
    r5.xy = r3.zw * r0.ww + r5.xy;
    r6.x = (int)r6.x + 1;
    r5.z = r2.w;
    r5.w = r6.y;
    r2.w = r6.z;
  }
  r3.xy = v2.xy * cb3[6].xx + r5.xy;
  r0.w = cb3[7].x + cb0[143].y;
  r3.zw = t4.SampleBias(s2_s, r3.xy, r0.w).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[7].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r5.xyz = cb3[7].zzz * cb3[1].xyz;
  r6.xyz = t5.SampleBias(s3_s, r3.xy, cb0[143].y).xyz;
  r1.w = t3.SampleBias(s1_s, r3.xy, cb0[143].y).z;
  r1.w = -1 + r1.w;
  r1.w = cb3[8].y * r1.w + 1;
  r3.xyz = r6.xyz * r1.www;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = -r6.xyz * r1.www + r2.www;
  r3.xyz = cb3[8].zzz * r6.xyz + r3.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r6.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[8].x, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r3.xyz = r3.xyz * r8.xxx + r6.xyz;
  r3.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb3[3].xyz * r3.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r1.w = dot(r4.zxy, r2.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb3[10].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb3[10].y * r1.w;
  r2.x = saturate(cb3[10].w + v1.z);
  r1.w = r2.x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r2.y = saturate(cb3[11].x * r1.w);
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r2.x = saturate(cb3[9].w);
  r1.w = saturate(cb3[11].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = 0.0799999982 * r2.y;
  r6.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r6.xyz = r2.xxx * r6.xyz + r1.www;
  r7.xyz = -r3.xyz * r2.xxx + r3.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = r1.w * 2.04040003 + -0.332399994;
  r2.z = r1.w * -4.79510021 + r2.z;
  r1.w = r1.w * 2.75519991 + r2.z;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r2.zw = float2(1,0.5) * v3.xy;
  r8.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s0_s, r2.zw).xyzw;
  r8.xyzw = t1.Sample(s0_s, r8.xy).xyzw;
  r2.z = r8.w * 0.00392156886 + r9.w;
  r2.z = -0.00196078443 + r2.z;
  r2.z = r2.z * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.z = exp2(r2.z);
  r2.z = -0.0185813606 + r2.z;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r2.w = dot(r8.xyzw, r4.xyzw);
  r2.w = max(0, r2.w);
  r2.z = r2.z * r2.w;
  r8.xyz = r2.zzz * r9.xyz;
  r2.z = cmp(cb0[186].y != 0.000000);
  if (r2.z != 0) {
    r9.xyzw = t2.Sample(s0_s, v3.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.z = dot(r9.xyz, r9.xyz);
    r2.z = rsqrt(r2.z);
    r9.xyz = r9.xyz * r2.zzz;
    r2.z = -r9.w * r9.w + 1;
    r2.z = -r2.z * r2.z + 1;
    r0.xyz = r0.zxy * r0.www + -r9.xyz;
    r0.xyz = r2.zzz * r0.xyz + r9.xyz;
    r2.w = saturate(dot(r9.yzx, r4.xyz));
    r3.w = 1 + -r2.w;
    r10.y = r2.z * r3.w + r2.w;
  } else {
    r0.xyz = r4.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t0[0].val[0/4];
  r9.y = t0[0].val[0/4+1];
  r9.z = t0[0].val[0/4+2];
  r9.w = t0[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r11.x = t0[1].val[0/4];
  r11.y = t0[1].val[0/4+1];
  r11.z = t0[1].val[0/4+2];
  r11.w = t0[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t0[2].val[0/4];
  r11.y = t0[2].val[0/4+1];
  r11.z = t0[2].val[0/4+2];
  r11.w = t0[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
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
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r9.xyz = r12.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.z = cmp(0 < cb0[140].x);
  if (r2.z != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r7.xyz = -cb1[5].xyz + r1.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.z = (int)r7.y | (int)r7.x;
    r2.z = (int)r7.z | (int)r2.z;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r2.zzz ? r1.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.75686276;
  o2.xy = r2.xy;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}