// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[30];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r4.xyzw = mad((int4)v4.xxyy, int4(36,36,15,15), int4(4,20,4,6));
  r0.w = t0[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v6.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = r3.xy / cb1[18].yy;
  r1.z = t5.SampleBias(s2_s, r1.zw, cb0[143].y).x;
  r1.w = cb1[18].z + -cb1[18].w;
  r1.z = saturate(r1.z * r1.w + cb1[18].w);
  r1.z = cb1[19].x + r1.z;
  r1.z = r1.z * -cb1[19].y + cb1[19].y;
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r2.w = cb1[19].w * r1.w;
  r1.z = r1.z * r2.w + cb0[143].y;
  r5.xy = t6.SampleBias(s3_s, v2.xy, r1.z).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb1[20].xxx * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r5.xyz = r0.xyz * r0.www;
  r6.xyz = cb1[20].yyy * cb1[1].xyz;
  r7.xyz = t7.SampleBias(s4_s, v2.xy, r1.z).yzw;
  r8.xyz = -cb1[5].xyz + cb1[4].xyz;
  r8.xyz = r7.xxx * r8.xyz + cb1[5].xyz;
  r9.xyzw = r3.xyxy / cb1[21].xxyy;
  r1.z = t5.Sample(s0_s, r9.xy).x;
  r2.w = t5.Sample(s0_s, r9.zw).x;
  r3.w = r1.w / cb1[21].z;
  r4.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb1[21].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.x ? 0 : r3.w;
  r2.w = r2.w + -r1.z;
  r1.z = r3.w * r2.w + r1.z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[22].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = saturate(cb1[22].y * r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r9.xyz = cb1[7].xyz + -r8.xyz;
  r8.xyz = r1.zzz * r9.xyz + r8.xyz;
  r2.w = saturate(dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r3.w = 1 + -r2.w;
  r3.w = r3.w + r3.w;
  r9.xyz = -r3.www * cb1[10].xyz + float3(1,1,1);
  r3.w = r2.w + r2.w;
  r10.xyz = cb1[9].xyz * r3.www;
  r2.w = cmp(r2.w >= 0.5);
  r9.xyz = r2.www ? r9.xyz : r10.xyz;
  r10.xyz = cb1[9].xyz + -r9.xyz;
  r9.xyz = cb1[22].zzz * r10.xyz + r9.xyz;
  r2.w = r1.w / cb1[22].w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb1[23].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r9.xyz = r9.xyz * r2.www;
  r8.xyz = cb1[23].yyy * r9.xyz + r8.xyz;
  r7.xw = r3.xy / cb1[23].ww;
  r3.w = t8.SampleBias(s5_s, r7.xw, cb0[143].y).x;
  r3.w = cb1[24].x * r3.w;
  r4.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb1[24].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r9.xyz = -cb1[14].xyz + cb1[13].xyz;
  r9.xyz = r9.xyz * r3.www;
  r9.xyz = r4.xxx ? float3(0,0,0) : r9.xyz;
  r9.xyz = cb1[14].xyz + r9.xyz;
  r10.xyz = r9.xyz * r7.yyy;
  r9.xyz = -r9.xyz * r7.yyy + cb1[7].xyz;
  r9.xyz = r9.xyz * r1.zzz;
  r9.xyz = cb1[24].www * r9.xyz + r10.xyz;
  r1.z = saturate(dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r3.w = 1 + -r1.z;
  r3.w = r3.w + r3.w;
  r10.xyz = -r3.www * cb1[10].xyz + float3(1,1,1);
  r3.w = r1.z + r1.z;
  r11.xyz = cb1[9].xyz * r3.www;
  r1.z = cmp(r1.z >= 0.5);
  r10.xyz = r1.zzz ? r10.xyz : r11.xyz;
  r11.xyz = cb1[9].xyz + -r10.xyz;
  r10.xyz = cb1[22].zzz * r11.xyz + r10.xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r10.xyz = r10.xyz * r2.www;
  r10.xyz = cb1[23].yyy * r10.xyz;
  r9.xyz = cb1[25].xxx * r10.xyz + r9.xyz;
  r1.z = saturate(10 * r7.y);
  r7.xyw = r9.xyz + -r8.xyz;
  r7.xyw = r1.zzz * r7.xyw + r8.xyz;
  r1.z = dot(r7.xyw, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.zzz + -r7.xyw;
  r7.xyw = cb1[25].yyy * r8.xyz + r7.xyw;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyw);
  r7.xyw = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyw;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.wxy;
  r8.xyz = r7.wxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb1[20].w, r4.x, r9.x);
  r8.xyz = r8.xyz * r4.xxx;
  r7.xyw = r7.xyw * r9.xxx + r8.xyz;
  r7.xyw = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyw;
  r7.xyw = cb1[16].xyz * r7.xyw;
  r7.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyw);
  r1.z = dot(r5.zxy, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb1[25].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb1[25].w * r1.z;
  r2.x = saturate(cb1[26].y + v1.z);
  r1.z = r2.x * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb1[26].z * r1.z);
  r2.xy = r3.xy / cb1[27].xx;
  r2.x = t5.SampleBias(s2_s, r2.xy, cb0[143].y).x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb1[27].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = cb1[27].z * r2.x;
  r2.x = r2.y ? -0 : -r2.x;
  r2.x = cb1[28].x + r2.x;
  r2.x = 1 + r2.x;
  r1.w = r1.w / cb1[28].y;
  r2.y = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb1[28].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.y ? 0 : r1.w;
  r1.w = saturate(r2.x * r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r7.z * r1.w;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb1[28].w;
  r2.xyz = -cb0[129].xxy + v5.xxy;
  r1.y = r2.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb1[29].y + -r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t9.SampleBias(s6_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r1.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r7.xyw);
  r2.x = saturate(cb1[26].w);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  o1.w = t0[r4.y].val[4/4];
  r2.x = cb0[137].w * r1.z;
  r2.yzw = r1.xyw * cb0[136].www + cb0[136].xyz;
  r7.xyz = r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r2.x = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.yzw;
  r2.yzw = r2.xxx ? r8.xyz : r2.yzw;
  r7.xyz = r2.xxx ? float3(0,0,0) : r7.xyz;
  r2.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.x * 2.04040003 + -0.332399994;
  r3.w = r2.x * -4.79510021 + r3.w;
  r2.x = r2.x * 2.75519991 + r3.w;
  r2.x = 1.33200002 + r2.x;
  r2.x = max(1, r2.x);
  r4.xy = float2(1,0.5) * v3.xy;
  r8.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s1_s, r4.xy).xyzw;
  r8.xyzw = t3.Sample(s1_s, r8.xy).xyzw;
  r3.w = r8.w * 0.00392156886 + r9.w;
  r3.w = -0.00196078443 + r3.w;
  r10.x = t1[r4.z].val[0/4];
  r10.y = t1[r4.z].val[0/4+1];
  r10.z = t1[r4.z].val[0/4+2];
  r10.w = t1[r4.z].val[0/4+3];
  r4.x = t1[r4.w].val[0/4];
  r4.y = t1[r4.w].val[0/4+1];
  r4.z = t1[r4.w].val[0/4+2];
  r4.w = t1[r4.w].val[0/4+3];
  r3.w = r3.w * r10.w + r4.w;
  r9.xyz = r9.xyz * r9.xyz;
  r4.xyz = r9.xyz * r10.xyz + r4.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r9.xy = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r10.x = t1[r9.x].val[0/4];
  r10.y = t1[r9.x].val[0/4+1];
  r10.z = t1[r9.x].val[0/4+2];
  r10.w = t1[r9.x].val[0/4+3];
  r9.x = t1[r9.y].val[0/4];
  r9.y = t1[r9.y].val[0/4+1];
  r9.z = t1[r9.y].val[0/4+2];
  r9.w = t1[r9.y].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r9.xyzw;
  r5.w = 1;
  r4.w = dot(r8.xyzw, r5.xyzw);
  r4.w = max(0, r4.w);
  r3.w = r4.w * r3.w;
  r4.xyz = r3.www * r4.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r8.xyzw = t4.Sample(s1_s, v3.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r3.w = dot(r8.xyz, r8.xyz);
    r3.w = rsqrt(r3.w);
    r8.xyz = r8.xyz * r3.www;
    r3.w = -r8.w * r8.w + 1;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.zxy * r0.www + -r8.xyz;
    r0.xyz = r3.www * r0.xyz + r8.xyz;
    r4.w = saturate(dot(r8.yzx, r5.xyz));
    r5.w = 1 + -r4.w;
    r9.y = r3.w * r5.w + r4.w;
  } else {
    r0.xyz = r5.zxy;
    r9.xy = float2(1,1);
  }
  r8.x = t2[0].val[0/4];
  r8.y = t2[0].val[0/4+1];
  r8.z = t2[0].val[0/4+2];
  r8.w = t2[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r8.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r8.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
  r11.x = t2[3].val[0/4];
  r11.y = t2[3].val[0/4+1];
  r11.z = t2[3].val[0/4+2];
  r11.w = t2[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t2[4].val[0/4];
  r12.y = t2[4].val[0/4+1];
  r12.z = t2[4].val[0/4+2];
  r12.w = t2[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t2[5].val[0/4];
  r12.y = t2[5].val[0/4+1];
  r12.z = t2[5].val[0/4+2];
  r12.w = t2[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r8.xyz = r11.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r4.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyzw = r0.xyzw * r2.yzwx;
  r4.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r0.xyz = r4.xyz * r0.xyz;
  r2.yzw = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.yzw;
  r4.xyz = max(float3(0,0,0), r6.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r3.www ? r3.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r2.yzw + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.75686276);
  o2.y = r1.z;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}