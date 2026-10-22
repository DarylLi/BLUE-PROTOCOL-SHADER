// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
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
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyzw = mad((int4)v4.xxxy, int4(36,36,36,15), int4(4,5,20,4));
  r0.w = t0[r3.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v6.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = t5.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r4.xy, r4.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r4.z = sqrt(r1.z);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb1[6].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r4.xyz = r0.xyz * r0.www;
  r5.xyz = cb1[6].yyy * cb1[1].xyz;
  r6.x = t0[r3.y].val[0/4];
  r6.y = t0[r3.y].val[0/4+1];
  r6.z = t0[r3.y].val[0/4+2];
  r7.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r6.xyz;
  r7.xyz = frac(r7.xyz);
  r1.z = dot(r7.xy, r7.yz);
  r1.z = -0.5 + r1.z;
  r1.z = dot(r1.zz, cb1[6].zz);
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r7.xyz = r7.xyz / r1.www;
  r8.xyz = -cb0[67].xyz + r2.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r2.w = r1.w / cb1[6].w;
  r3.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb1[7].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r3.y = 1 + cb1[7].y;
  r2.w = r3.y * r2.w;
  r2.w = r3.x ? 0 : r2.w;
  r2.w = cb0[143].y + r2.w;
  r2.w = -1 + r2.w;
  r8.xyzw = t6.SampleBias(s2_s, v2.xy, r2.w).xyzw;
  r7.xyz = r1.zzz * r7.xyz + r8.xyz;
  r1.z = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r1.z;
  r2.w = r2.w + r2.w;
  r8.xyz = -r2.www * cb1[4].xyz + float3(1,1,1);
  r2.w = r1.z + r1.z;
  r9.xyz = cb1[3].xyz * r2.www;
  r1.z = cmp(r1.z >= 0.5);
  r8.xyz = r1.zzz ? r8.xyz : r9.xyz;
  r1.z = r1.w / cb1[7].z;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[7].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r8.xyz = r8.xyz + -r7.xyz;
  r8.xyz = r8.xyz * r1.zzz;
  r7.xyz = cb1[8].xxx * r8.xyz + r7.xyz;
  r8.xyz = cb1[8].yyy * r7.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.x = r1.x / cb1[9].y;
  r1.yzw = -cb0[129].xxy + v5.xxy;
  r1.y = r1.y * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb1[9].w + -r1.y;
  r3.xy = cb0[152].xx + r1.zw;
  r3.xy = (uint2)r3.xy;
  r2.w = (uint)r3.y << 1;
  r2.w = (int)r2.w + (int)r3.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t7.SampleBias(s3_s, r1.zw, cb0[143].y).x;
  r1.z = r2.w + r1.z;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.yzw = saturate(cb1[11].www * r7.xyz);
  r1.x = r8.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r7.xyz = min(float3(1,1,1), r8.xyz);
  r3.xy = saturate(cb1[8].zw);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb1[9].x);
  r1.xyz = r1.yzw * cb0[136].www + cb0[136].xyz;
  o1.w = t0[r3.z].val[4/4];
  r8.xyz = saturate(r1.xyz);
  o4.xyz = sqrt(r8.xyz);
  r1.w = cb0[137].w * r3.x;
  r8.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r10.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r10.xyz : r8.xyz;
  r9.xyz = r1.www ? float3(0,0,0) : r9.xyz;
  r1.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.xyz = r8.xyz + r1.xyz;
  r3.yz = float2(1,0.5) * v3.xy;
  r10.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r11.xyzw = t3.Sample(s0_s, r3.yz).xyzw;
  r10.xyzw = t3.Sample(s0_s, r10.xy).xyzw;
  r2.w = r10.w * 0.00392156886 + r11.w;
  r2.w = -0.00196078443 + r2.w;
  r12.x = t1[r3.w].val[0/4];
  r12.y = t1[r3.w].val[0/4+1];
  r12.z = t1[r3.w].val[0/4+2];
  r12.w = t1[r3.w].val[0/4+3];
  r3.yzw = mad((int3)w4.xyy, int3(15,15,15), int3(6,5,7));
  r13.x = t1[r3.y].val[0/4];
  r13.y = t1[r3.y].val[0/4+1];
  r13.z = t1[r3.y].val[0/4+2];
  r13.w = t1[r3.y].val[0/4+3];
  r2.w = r2.w * r12.w + r13.w;
  r11.xyz = r11.xyz * r11.xyz;
  r11.xyz = r11.xyz * r12.xyz + r13.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r12.x = t1[r3.z].val[0/4];
  r12.y = t1[r3.z].val[0/4+1];
  r12.z = t1[r3.z].val[0/4+2];
  r12.w = t1[r3.z].val[0/4+3];
  r13.x = t1[r3.w].val[0/4];
  r13.y = t1[r3.w].val[0/4+1];
  r13.z = t1[r3.w].val[0/4+2];
  r13.w = t1[r3.w].val[0/4+3];
  r10.xyzw = r10.xyzw * r12.xyzw + r13.xyzw;
  r4.w = 1;
  r3.y = dot(r10.xyzw, r4.xyzw);
  r3.y = max(0, r3.y);
  r2.w = r3.y * r2.w;
  r3.yzw = r2.www * r11.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r10.xyzw = t4.Sample(s0_s, v3.xy).xyzw;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r11.x = r10.w * r10.w;
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = rsqrt(r2.w);
    r10.xyz = r10.xyz * r2.www;
    r2.w = -r10.w * r10.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.zxy * r0.www + -r10.xyz;
    r0.xyz = r2.www * r0.xyz + r10.xyz;
    r4.w = saturate(dot(r10.yzx, r4.xyz));
    r5.w = 1 + -r4.w;
    r11.y = r2.w * r5.w + r4.w;
  } else {
    r0.xyz = r4.zxy;
    r11.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r12.x = t2[1].val[0/4];
  r12.y = t2[1].val[0/4+1];
  r12.z = t2[1].val[0/4+2];
  r12.w = t2[1].val[0/4+3];
  r10.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t2[2].val[0/4];
  r12.y = t2[2].val[0/4+1];
  r12.z = t2[2].val[0/4+2];
  r12.w = t2[2].val[0/4+3];
  r10.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t2[3].val[0/4];
  r13.y = t2[3].val[0/4+1];
  r13.z = t2[3].val[0/4+2];
  r13.w = t2[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t2[4].val[0/4];
  r14.y = t2[4].val[0/4+1];
  r14.z = t2[4].val[0/4+2];
  r14.w = t2[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t2[5].val[0/4];
  r14.y = t2[5].val[0/4+1];
  r14.z = t2[5].val[0/4+2];
  r14.w = t2[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r10.xyz = r13.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r10.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r11.x * r11.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r3.yzw * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r1.xyz;
  r1.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyz;
  r1.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyz;
  r1.xyz = float3(1.33200002,1.33200002,1.33200002) + r1.xyz;
  r1.xyzw = max(float4(1,1,1,1), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r3.yzw = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyz = -r6.xyz + r2.xyz;
    r2.w = mad((int)v4.x, 36, 19);
    r6.x = t0[r2.w].val[0/4];
    r6.y = t0[r2.w].val[0/4+1];
    r6.z = t0[r2.w].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r2.w = (int)r5.y | (int)r5.x;
    r2.w = (int)r5.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.yzw = r2.www ? r2.xyz : r3.yzw;
  }
  r0.xyz = cb0[145].yyy * r1.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.yzw;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.760784328);
  o2.y = r3.x;
  o3.xyz = r7.xyz;
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}