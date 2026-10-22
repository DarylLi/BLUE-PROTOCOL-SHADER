// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

TextureCubeArray<float4> t9 : register(t9);

TextureCube<float4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

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

SamplerState s10_s : register(s10);

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2728];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[179];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
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
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r1.w = dot(r4.zxy, r3.xyz);
  r5.xyz = r4.zxy * r1.www;
  r5.xyz = r5.xyz * float3(2,2,2) + -r3.xyz;
  r6.xyz = t17.SampleBias(s8_s, v2.xy, cb0[143].y).xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[6].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb3[2].xyz * r6.xyz;
  r7.xyz = cb3[6].zzz * r6.xyz;
  r6.xyz = -r6.xyz * cb3[6].zzz + cb3[3].xyz;
  r6.xyz = cb3[6].www * r6.xyz + r7.xyz;
  r5.xyz = t19.Sample(s10_s, r5.xyz).xyz;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r3.www + -r5.xyz;
  r5.xyz = cb3[7].xxx * r7.xyz + r5.xyz;
  r5.xyz = cb3[7].yyy * r5.xyz;
  r7.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb3[7].zzz * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r7.xyz ? float3(0,0,0) : r5.xyz;
  r5.xyz = r5.xyz * cb3[7].www + cb3[5].xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r7.xy = cb3[8].zw * v2.xy;
  r3.w = t18.SampleBias(s9_s, r7.xy, cb0[143].y).x;
  r3.w = saturate(cb3[9].x + r3.w);
  r5.xyz = min(float3(1,1,1), r5.xyz);
  r7.xy = saturate(cb3[8].xy);
  r3.w = r3.w * cb0[139].y + cb0[139].x;
  r8.w = saturate(cb3[9].y);
  r9.xyzw = t16.Sample(s7_s, v3.zw).xyzw;
  r5.w = (int)w4.x * 15;
  r10.xyzw = mad((int4)w4.xyyy, int4(15,15,15,15), int4(1,4,6,5));
  r11.x = t1[r10.x].val[0/4];
  r11.y = t1[r10.x].val[0/4+1];
  r11.z = t1[r10.x].val[0/4+2];
  r11.w = t1[r10.x].val[0/4+3];
  r12.xyzw = r11.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r9.xyzw = saturate(r9.xyzw * r11.xyzw + r12.xyzw);
  r11.x = t1[r5.w].val[0/4];
  r11.y = t1[r5.w].val[0/4+1];
  r11.z = t1[r5.w].val[0/4+2];
  r11.w = t1[r5.w].val[0/4+3];
  r9.xyzw = r9.xyzw * r9.xyzw;
  r9.xyzw = r9.xyzw * r11.xyzw;
  r5.w = 0.0799999982 * r7.y;
  r7.yzw = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r7.yzw = r7.xxx * r7.yzw + r5.www;
  r11.xyz = -r5.xyz * r7.xxx + r5.xyz;
  r11.xyz = r11.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.yzw * cb0[137].www + cb0[137].xyz;
  r5.w = cmp(0 != cb0[183].w);
  r12.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r12.w = 0;
  r11.w = r7.x;
  r11.xyzw = r5.wwww ? r12.xyzw : r11.xyzw;
  r7.yz = r5.ww ? float2(0,0) : r7.yz;
  r12.xy = float2(1,0.5) * v3.xy;
  r12.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r13.xyzw = t14.Sample(s7_s, r12.xy).xyzw;
  r12.xyzw = t14.Sample(s7_s, r12.zw).xyzw;
  r5.w = r12.w * 0.00392156886 + r13.w;
  r5.w = -0.00196078443 + r5.w;
  r14.x = t1[r10.y].val[0/4];
  r14.y = t1[r10.y].val[0/4+1];
  r14.z = t1[r10.y].val[0/4+2];
  r14.w = t1[r10.y].val[0/4+3];
  r15.x = t1[r10.z].val[0/4];
  r15.y = t1[r10.z].val[0/4+1];
  r15.z = t1[r10.z].val[0/4+2];
  r15.w = t1[r10.z].val[0/4+3];
  r5.w = r5.w * r14.w + r15.w;
  r10.xyz = r13.xyz * r13.xyz;
  r10.xyz = r10.xyz * r14.xyz + r15.xyz;
  r5.w = exp2(r5.w);
  r5.w = -0.0185813606 + r5.w;
  r13.x = t1[r10.w].val[0/4];
  r13.y = t1[r10.w].val[0/4+1];
  r13.z = t1[r10.w].val[0/4+2];
  r13.w = t1[r10.w].val[0/4+3];
  r14.xy = mad((int2)w4.xx, int2(15,36), int2(7,23));
  r15.x = t1[r14.x].val[0/4];
  r15.y = t1[r14.x].val[0/4+1];
  r15.z = t1[r14.x].val[0/4+2];
  r15.w = t1[r14.x].val[0/4+3];
  r12.xyzw = r12.xyzw * r13.xyzw + r15.xyzw;
  r4.w = 1;
  r4.w = dot(r12.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r4.w = r5.w * r4.w;
  r10.xyz = r4.www * r10.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r12.xyzw = t15.Sample(s7_s, v3.xy).xyzw;
    r12.xyz = r12.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r13.x = r12.w * r12.w;
    r4.w = dot(r12.xyz, r12.xyz);
    r4.w = rsqrt(r4.w);
    r12.xyz = r12.xyz * r4.www;
    r4.w = -r12.w * r12.w + 1;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.zxy * r0.www + -r12.xyz;
    r0.xyz = r4.www * r0.xyz + r12.xyz;
    r5.w = saturate(dot(r12.yzx, r4.xyz));
    r6.w = 1 + -r5.w;
    r13.y = r4.w * r6.w + r5.w;
  } else {
    r0.xyz = r4.zxy;
    r13.xy = float2(1,1);
  }
  r12.x = t2[0].val[0/4];
  r12.y = t2[0].val[0/4+1];
  r12.z = t2[0].val[0/4+2];
  r12.w = t2[0].val[0/4+3];
  r0.w = 1;
  r12.x = dot(r12.xyzw, r0.xyzw);
  r15.x = t2[1].val[0/4];
  r15.y = t2[1].val[0/4+1];
  r15.z = t2[1].val[0/4+2];
  r15.w = t2[1].val[0/4+3];
  r12.y = dot(r15.xyzw, r0.xyzw);
  r15.x = t2[2].val[0/4];
  r15.y = t2[2].val[0/4+1];
  r15.z = t2[2].val[0/4+2];
  r15.w = t2[2].val[0/4+3];
  r12.z = dot(r15.xyzw, r0.xyzw);
  r15.xyzw = r0.xyzz * r0.yzzx;
  r16.x = t2[3].val[0/4];
  r16.y = t2[3].val[0/4+1];
  r16.z = t2[3].val[0/4+2];
  r16.w = t2[3].val[0/4+3];
  r16.x = dot(r16.xyzw, r15.xyzw);
  r17.x = t2[4].val[0/4];
  r17.y = t2[4].val[0/4+1];
  r17.z = t2[4].val[0/4+2];
  r17.w = t2[4].val[0/4+3];
  r16.y = dot(r17.xyzw, r15.xyzw);
  r17.x = t2[5].val[0/4];
  r17.y = t2[5].val[0/4+1];
  r17.z = t2[5].val[0/4+2];
  r17.w = t2[5].val[0/4+3];
  r16.z = dot(r17.xyzw, r15.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r12.xyz = r16.xyz + r12.xyz;
  r0.xyz = r0.yzw * r0.xxx + r12.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r13.x * r13.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r10.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r11.xyz;
  r10.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r5.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r10.xy = -cb0[129].xy + v6.xy;
  r10.xy = cb0[131].zw * r10.xy;
  r10.xy = (uint2)r10.xy;
  r4.w = v6.w * cb1[3].x + cb1[3].y;
  r4.w = log2(r4.w);
  r4.w = cb1[3].z * r4.w;
  r4.w = max(0, r4.w);
  r4.w = (uint)r4.w;
  r5.w = asint(cb1[1].z) + -1;
  r4.w = min((uint)r5.w, (uint)r4.w);
  r10.xy = (uint2)r10.xy >> asuint(cb1[2].xx);
  r4.w = mad((int)r4.w, asint(cb1[1].y), (int)r10.y);
  r4.w = mad((int)r4.w, asint(cb1[1].x), (int)r10.x);
  r5.w = t0[r14.y].val[12/4];
  if (cb1[0].z != 0) {
    r10.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r10.yzw = r10.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r12.xyzw = cb1[51].xyzw * r2.yyyy;
      r12.xyzw = r2.xxxx * cb1[50].xyzw + r12.xyzw;
      r12.xyzw = r2.zzzz * cb1[52].xyzw + r12.xyzw;
      r12.xyzw = cb1[53].xyzw + r12.xyzw;
      r12.xy = r12.xy / r12.ww;
      r13.xy = cmp(r12.xy >= float2(0,0));
      r13.zw = cmp(float2(1,1) >= r12.xy);
      r13.xy = r13.zw ? r13.xy : 0;
      r6.w = r13.y ? r13.x : 0;
      if (r6.w != 0) {
        r6.w = t4.SampleLevel(s2_s, r12.xy, 0).x;
        r12.x = cmp(r12.z < r6.w);
        r6.w = cmp(0.99000001 < r6.w);
        r6.w = (int)r6.w | (int)r12.x;
        r9.x = r6.w ? 1.000000 : 0;
      } else {
        r9.x = 1;
      }
    } else {
      r9.x = 1;
    }
    if (cb1[9].z != 0) {
      r6.w = cb1[9].z;
      r12.x = 0;
      while (true) {
        r12.y = cmp((uint)r12.x >= asuint(cb1[9].z));
        if (r12.y != 0) break;
        r12.y = dot(cb1[10].xyzw, icb[r12.x+0].xyzw);
        r12.y = cmp(v6.w < r12.y);
        if (r12.y != 0) {
          r6.w = r12.x;
          break;
        }
        r12.x = (int)r12.x + 1;
      }
      r12.x = cmp((uint)r6.w < asuint(cb1[9].z));
      if (r12.x != 0) {
        r12.x = (uint)r6.w << 2;
        r13.xyzw = cb1[r12.x+12].xyzw * r2.yyyy;
        r13.xyzw = r2.xxxx * cb1[r12.x+11].xyzw + r13.xyzw;
        r13.xyzw = r2.zzzz * cb1[r12.x+13].xyzw + r13.xyzw;
        r12.xyzw = cb1[r12.x+14].xyzw + r13.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r12.xy = cmp(r13.zw >= cb1[r6.w+27].xy);
        r14.xy = cmp(cb1[r6.w+27].zw >= r13.zw);
        r12.xy = r12.xy ? r14.xy : 0;
        r6.w = r12.y ? r12.x : 0;
        if (r6.w != 0) {
          r13.xyzw = r13.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r12.xy = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r15.x = t3.SampleLevel(s1_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb1[31].zwzw * r13.xyzw;
          r15.y = t3.SampleLevel(s1_s, r13.xy, 0).x;
          r15.z = t3.SampleLevel(s1_s, r13.zw, 0).x;
          r15.w = t3.SampleLevel(s1_s, r14.zw, 0).x;
          r6.w = r12.z * 4000 + -1;
          r13.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r6.wwww);
          r12.zw = r13.zy + -r13.wx;
          r12.xz = r12.xx * r12.zw + r13.wx;
          r6.w = r12.z + -r12.x;
          r6.w = r12.y * r6.w + r12.x;
        } else {
          r6.w = 1;
        }
      } else {
        r6.w = 1;
      }
    } else {
      r6.w = 1;
    }
    r10.x = 1;
    r12.x = dot(float4(1,1,1,1), r10.xyzw);
    r10.x = dot(r9.xyzw, r10.xyzw);
    r10.x = -1 + r10.x;
    r10.x = r12.x * r10.x + 1;
    r10.y = saturate(v6.w * cb1[9].x + cb1[9].y);
    r10.y = r10.y * r10.y;
    r10.x = r10.x + -r6.w;
    r6.w = r10.y * r10.x + r6.w;
    r10.x = min(1, r6.w);
    r10.x = r10.x + r6.w;
    r10.x = cmp(0 < r10.x);
    if (r10.x != 0) {
      r10.x = dot(cb1[4].xyz, cb1[4].xyz);
      r10.x = rsqrt(r10.x);
      r10.xyz = cb1[4].xyz * r10.xxx;
      r10.w = dot(r4.zxy, r10.xyz);
      r12.x = saturate(r10.w);
      r12.y = max(cb0[226].y, r3.w);
      r10.x = dot(r3.xyz, r10.xyz);
      r10.y = r10.x * 2 + 2;
      r10.y = rsqrt(r10.y);
      r10.z = r10.w + r1.w;
      r10.z = saturate(r10.z * r10.y);
      r10.x = saturate(r10.y * r10.x + r10.y);
      r10.y = 9.99999975e-006 + abs(r1.w);
      r10.y = min(1, r10.y);
      r13.xyz = r12.xxx * r11.xyz;
      r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r13.xyz;
      r10.w = r12.y * r12.y;
      r12.z = r10.w * r10.w;
      r12.w = r10.z * r12.z + -r10.z;
      r10.z = r12.w * r10.z + 1;
      r10.z = r10.z * r10.z;
      r10.z = 3.14159274 * r10.z;
      r10.z = r12.z / r10.z;
      r12.y = -r12.y * r12.y + 1;
      r12.z = r10.y * r12.y + r10.w;
      r10.w = r12.x * r12.y + r10.w;
      r10.y = r10.y * r10.w;
      r10.y = r12.x * r12.z + r10.y;
      r10.y = rcp(r10.y);
      r10.y = r10.z * r10.y;
      r10.x = 1 + -r10.x;
      r10.z = r10.x * r10.x;
      r10.z = r10.z * r10.z;
      r10.w = r10.z * r10.x;
      r12.y = saturate(50 * r7.y);
      r10.x = -r10.z * r10.x + 1;
      r7.x = r11.w;
      r14.xyz = r10.xxx * r7.xyz;
      r10.xzw = r12.yyy * r10.www + r14.xyz;
      r10.y = 0.5 * r10.y;
      r10.xyz = r10.yyy * r10.xzw;
      r10.xyz = r12.xxx * r10.xyz;
      r12.xyz = cb1[5].xyz * r6.www;
      r13.xyz = r13.xyz * r12.xyz;
      r10.xyz = r12.yzx * r10.yzx;
      r13.w = r10.z;
    } else {
      r10.xy = float2(0,0);
      r13.xyzw = float4(0,0,0,0);
    }
    r6.w = asuint(cb1[8].z) >> 8;
    r6.w = (int)r5.w & (int)r6.w;
    r12.xyzw = r6.wwww ? r13.xyzw : float4(0,0,0,0);
    r10.xy = r6.ww ? r10.xy : float2(0,0);
  } else {
    r12.xyzw = float4(0,0,0,0);
    r10.xy = float2(0,0);
  }
  r6.w = (uint)r4.w << 1;
  r6.w = t6.Load(r6.w).x;
  r6.w = min(asuint(cb1[0].x), (uint)r6.w);
  bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r10.z = (((uint)r4.w << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  r10.z = t6.Load(r10.z).x;
  r6.w = min(asuint(cb1[0].x), (uint)r6.w);
  r10.w = dot(-r3.yzx, r4.xyz);
  r10.w = r10.w + r10.w;
  r13.xyz = r4.zxy * -r10.www + -r3.xyz;
  r10.w = max(cb0[226].y, r3.w);
  r13.w = r10.w * r10.w;
  r10.w = -r10.w * r10.w + 1;
  r14.x = r1.w + r1.w;
  r14.y = r14.x * r1.w + -1;
  r14.z = 9.99999975e-006 + abs(r1.w);
  r14.z = min(1, r14.z);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r11.xyz;
  r14.w = r13.w * r13.w;
  r15.w = saturate(50 * r7.y);
  r16.y = 1;
  r7.w = r11.w;
  r17.xyz = r12.xyz;
  r18.x = r12.w;
  r18.yz = r10.xy;
  r11.w = 0;
  while (true) {
    r16.z = cmp((uint)r11.w >= (uint)r6.w);
    if (r16.z != 0) break;
    r16.z = (int)r10.z + (int)r11.w;
    r16.z = t7.Load(r16.z).x;
    r16.w = (int)r16.z * 6;
    r19.xyzw = t5.Load(r16.w).xyzw;
    r16.w = mad((int)r16.z, 6, 1);
    r20.xyzw = t5.Load(r16.w).xyzw;
    r21.xy = mad((int2)r16.zz, int2(6,6), int2(2,3));
    r22.xyzw = t5.Load(r21.x).xyzw;
    r21.xyzw = t5.Load(r21.y).xyzw;
    r16.w = cmp(r20.w == 0.000000);
    r17.w = cmp(-2 < r21.x);
    r19.xyz = r19.xyz + -r2.xyz;
    r18.w = dot(r19.xyz, r19.xyz);
    r23.x = rsqrt(r18.w);
    r23.xyz = r23.xxx * r19.xyz;
    r23.w = r19.w * r19.w;
    r18.w = r23.w * r18.w;
    r18.w = -r18.w * r18.w + 1;
    r18.w = max(0, r18.w);
    r18.w = r18.w * r18.w;
    r24.xyz = r19.xyz * r19.www;
    r19.w = dot(r24.xyz, r24.xyz);
    r19.w = min(1, r19.w);
    r19.w = 1 + -r19.w;
    r19.w = log2(r19.w);
    r19.w = r20.w * r19.w;
    r19.w = exp2(r19.w);
    r18.w = r16.w ? r18.w : r19.w;
    r19.w = dot(r23.xyz, r22.xyz);
    r19.w = r19.w + -r21.x;
    r19.w = saturate(r19.w * r21.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r17.w = r17.w ? r19.w : r18.w;
    r18.w = cmp(0 < r17.w);
    if (r18.w != 0) {
      r18.w = (int)r22.w & 255;
      r18.w = r18.w ? 1 : 0;
      if (r18.w != 0) {
        r23.xyzw = (int4)r22.wwww & int4(1,2,4,8);
        r23.xyzw = r23.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r18.w = (uint)r22.w >> 4;
        if (1 == 0) r19.w = 0; else if (1+4 < 32) {         r19.w = (uint)r22.w << (32-(1 + 4)); r19.w = (uint)r19.w >> (32-1);        } else r19.w = (uint)r22.w >> 4;
        r24.x = r19.w ? 1 : 0;
        r22.xyz = (int3)r18.www & int3(2,4,8);
        r24.yzw = r22.xyz ? float3(1,1,1) : float3(0,0,0);
        r18.w = dot(r24.xyzw, float4(1,1,1,1));
        r19.w = dot(r23.xyzw, float4(1,1,1,1));
        r20.w = dot(r9.xyzw, r23.xyzw);
        r20.w = -1 + r20.w;
        r19.w = r19.w * r20.w + 1;
        r21.xy = r19.ww * r18.ww;
      } else {
        r21.xy = float2(1,1);
      }
      r18.w = r21.x + r21.y;
      r18.w = cmp(0 < r18.w);
      if (r18.w != 0) {
        r16.z = mad((int)r16.z, 6, 4);
        r23.xyzw = t5.Load(r16.z).xyzw;
        r16.z = f16tof32(r21.w);
        r18.w = 0.5 * r16.z;
        r22.xyz = -r18.www * r23.xyz + r19.xyz;
        r19.xyz = r18.www * r23.xyz + r19.xyz;
        r18.w = cmp(0 < r16.z);
        if (r18.w != 0) {
          r19.w = dot(r22.xyz, r22.xyz);
          r20.w = dot(r19.xyz, r19.xyz);
          r19.w = rsqrt(r19.w);
          r20.w = rsqrt(r20.w);
          r21.y = r20.w * r19.w;
          r21.w = dot(r22.xyz, r19.xyz);
          r21.w = r21.w * r21.y;
          r23.x = r21.w * 0.5 + r21.y;
          r23.x = 0.5 + r23.x;
          r23.y = r21.y / r23.x;
          r21.y = dot(r4.zxy, r22.xyz);
          r23.z = dot(r4.zxy, r19.xyz);
          r20.w = r23.z * r20.w;
          r19.w = r21.y * r19.w + r20.w;
          r23.x = 0.5 * r19.w;
        } else {
          r19.w = dot(r22.xyz, r22.xyz);
          r20.w = 1 + r19.w;
          r23.y = rcp(r20.w);
          r19.w = rsqrt(r19.w);
          r24.xyz = r22.xyz * r19.www;
          r23.x = dot(r4.zxy, r24.xyz);
          r21.w = 1;
        }
        r19.w = cmp(0 < r21.z);
        r20.w = r21.z * r21.z;
        r20.w = saturate(r20.w * r23.y);
        r20.w = sqrt(r20.w);
        r21.y = cmp(r23.x < r20.w);
        r23.z = max(r23.x, -r20.w);
        r23.z = r23.z + r20.w;
        r23.z = r23.z * r23.z;
        r20.w = 4 * r20.w;
        r20.w = r23.z / r20.w;
        r20.w = r21.y ? r20.w : r23.x;
        r19.w = saturate(r19.w ? r20.w : r23.x);
        r16.w = r16.w ? r23.y : 1;
        r19.xyz = r19.xyz + -r22.xyz;
        r20.w = dot(r13.xyz, r19.xyz);
        r23.xyz = r20.www * r13.xyz + -r19.xyz;
        r21.y = dot(r22.xyz, r23.xyz);
        r20.w = r20.w * r20.w;
        r16.z = r16.z * r16.z + -r20.w;
        r16.z = saturate(r21.y / r16.z);
        r19.xyz = r16.zzz * r19.xyz + r22.xyz;
        r19.xyz = r18.www ? r19.xyz : r22.xyz;
        r16.z = dot(r19.xyz, r19.xyz);
        r16.z = rsqrt(r16.z);
        r19.xyz = r19.xyz * r16.zzz;
        r18.w = r21.z * r16.z;
        r18.w = saturate(r18.w * r10.w);
        r16.z = saturate(r23.w * r16.z);
        r20.w = dot(r4.zxy, r19.xyz);
        r19.x = dot(r3.xyz, r19.xyz);
        r19.y = r19.x * 2 + 2;
        r19.y = rsqrt(r19.y);
        r19.z = r20.w + r1.w;
        r19.z = saturate(r19.z * r19.y);
        r19.y = saturate(r19.y * r19.x + r19.y);
        r21.y = cmp(0 < r18.w);
        if (r21.y != 0) {
          r21.z = -r18.w * r18.w + 1;
          r21.z = sqrt(r21.z);
          r22.x = dot(r1.ww, r20.ww);
          r22.y = r22.x + -r19.x;
          r22.z = cmp(r22.y >= r21.z);
          if (r22.z != 0) {
            r19.z = 1;
            r19.y = abs(r1.w);
          } else {
            r22.z = -r22.y * r22.y + 1;
            r22.z = rsqrt(r22.z);
            r22.z = r22.z * r18.w;
            r23.x = -r22.y * r20.w + r1.w;
            r23.y = r23.x * r22.z;
            r22.y = -r22.y * r19.x + r14.y;
            r23.z = r20.w * r20.w;
            r23.z = -r1.w * r1.w + -r23.z;
            r23.z = 1 + r23.z;
            r23.z = -r19.x * r19.x + r23.z;
            r22.x = saturate(r22.x * r19.x + r23.z);
            r22.x = sqrt(r22.x);
            r22.xy = r22.zz * r22.xy;
            r23.z = r22.x * r1.w;
            r23.w = r23.z + r23.z;
            r24.x = r20.w * r21.z + r1.w;
            r22.z = r22.z * r23.x + r24.x;
            r23.x = r19.x * r21.z + r22.y;
            r23.x = 1 + r23.x;
            r24.yz = r23.xx * r22.xz;
            r24.w = r23.w * r22.z;
            r23.z = r22.z * r23.z;
            r23.z = 0.5 * r23.z;
            r23.z = r24.y * -0.5 + r23.z;
            r25.x = -r24.y * 2 + r24.w;
            r24.w = r25.x * r24.w;
            r24.y = r24.y * r24.y + r24.w;
            r24.w = r23.x * r23.x;
            r23.x = r19.x * r21.z + r23.x;
            r23.x = r23.x * -0.5 + -0.5;
            r23.xz = r24.zz * r23.xz;
            r23.x = r24.x * r24.w + r23.x;
            r22.z = r22.z * r23.x + r24.y;
            r23.x = r23.z + r23.z;
            r24.x = r23.z * r23.z;
            r24.x = r22.z * r22.z + r24.x;
            r23.x = r23.x / r24.x;
            r22.z = r23.x * r22.z;
            r23.x = -r23.x * r23.z + 1;
            r22.x = r22.z * r22.x;
            r22.x = r23.x * r23.y + r22.x;
            r22.z = r22.z * r23.w;
            r22.y = r23.x * r22.y + r22.z;
            r20.w = r20.w * r21.z + r22.x;
            r19.x = r19.x * r21.z + r22.y;
            r21.z = r19.x * 2 + 2;
            r21.z = rsqrt(r21.z);
            r20.w = r20.w + r1.w;
            r19.z = saturate(r20.w * r21.z);
            r19.y = saturate(r21.z * r19.x + r21.z);
          }
        }
        r16.w = r16.w * r19.w;
        r22.xyz = r16.www * r15.xyz;
        r19.x = cmp(0 < r16.z);
        r16.z = r16.z * r16.z;
        r20.w = r19.y * 3.5999999 + 0.400000006;
        r16.z = r16.z / r20.w;
        r16.z = r13.w * r13.w + r16.z;
        r16.z = min(1, r16.z);
        r16.x = r19.x ? r16.z : r14.w;
        r16.z = 0.25 * r18.w;
        r19.x = (uint)r16.x >> 1;
        r19.x = (int)r19.x + 0x1fbd1df5;
        r18.w = r19.x * 3 + r18.w;
        r16.z = r18.w * r16.z;
        r18.w = 0.00100000005 + r19.y;
        r16.z = r16.z / r18.w;
        r23.x = r16.x + r16.z;
        r23.y = r16.x / r23.x;
        r21.yz = r21.yy ? r23.xy : r16.xy;
        r16.z = cmp(r21.w < 1);
        r19.x = 1.00010002 + -r21.w;
        r20.w = 1 + r21.w;
        r19.x = r19.x / r20.w;
        r19.x = sqrt(r19.x);
        r20.w = 0.25 * r19.x;
        r21.w = (uint)r21.y >> 1;
        r21.w = (int)r21.w + 0x1fbd1df5;
        r19.x = r21.w * 3 + r19.x;
        r19.x = r20.w * r19.x;
        r18.w = r19.x / r18.w;
        r18.w = r21.y + r18.w;
        r18.w = r21.y / r18.w;
        r18.w = sqrt(r18.w);
        r18.w = r21.z * r18.w;
        r16.z = r16.z ? r18.w : r21.z;
        r18.w = r19.z * r16.x + -r19.z;
        r18.w = r18.w * r19.z + 1;
        r18.w = r18.w * r18.w;
        r18.w = 3.14159274 * r18.w;
        r18.w = r16.x / r18.w;
        r16.z = r18.w * r16.z;
        r16.x = sqrt(r16.x);
        r18.w = 1 + -r16.x;
        r19.x = r14.z * r18.w + r16.x;
        r16.x = r19.w * r18.w + r16.x;
        r16.x = r16.x * r14.z;
        r16.x = r19.w * r19.x + r16.x;
        r16.x = rcp(r16.x);
        r16.x = r16.z * r16.x;
        r16.z = 1 + -r19.y;
        r18.w = r16.z * r16.z;
        r18.w = r18.w * r18.w;
        r19.x = r18.w * r16.z;
        r16.z = -r18.w * r16.z + 1;
        r19.yzw = r16.zzz * r7.wyz;
        r19.xyz = r15.www * r19.xxx + r19.yzw;
        r16.x = 0.5 * r16.x;
        r19.xyz = r16.xxx * r19.xyz;
        r16.xzw = r19.xyz * r16.www;
        r19.xyz = r20.xyz * r17.www;
        r19.xyz = r19.xyz * r21.xxx;
        r20.xyz = r22.xyz * r19.xyz;
        r16.xzw = r19.xyz * r16.xzw;
      } else {
        r20.xyz = float3(0,0,0);
        r16.xzw = float3(0,0,0);
      }
    } else {
      r20.xyz = float3(0,0,0);
      r16.xzw = float3(0,0,0);
    }
    r17.w = (uint)r22.w >> 8;
    r17.w = (int)r5.w & (int)r17.w;
    r19.xyz = r20.xyz + r17.xyz;
    r16.xzw = r18.xyz + r16.xzw;
    r17.xyz = r17.www ? r19.xyz : r17.xyz;
    r18.xyz = r17.www ? r16.xzw : r18.xyz;
    r11.w = (int)r11.w + 1;
  }
  r9.xyz = r18.xyz + r17.xyz;
  r10.yzw = r14.xxx * r4.zxy + -r3.xyz;
  r1.w = saturate(r1.w);
  r3.x = (int)r4.w + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t6.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t6.Load(r3.x).x;
  r3.z = max(0.00100000005, r3.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r4.w = -1 + cb0[195].z;
  r4.w = r4.w + -r3.z;
  r10.x = 0;
  r12.xyz = float3(0,0,0);
  r5.w = 1;
  r6.w = 0;
  r9.w = 1;
  r11.w = 0;
  while (true) {
    r12.w = cmp((uint)r11.w >= (uint)r3.y);
    if (r12.w != 0) break;
    r12.w = cmp(r5.w < 0.00100000005);
    if (r12.w != 0) {
      break;
    }
    r12.w = (int)r3.x + (int)r11.w;
    r12.w = t7.Load(r12.w).x;
    r13.xyz = -cb2[r12.w+0].xyz + r2.xyz;
    r13.w = dot(r13.xyz, r13.xyz);
    r14.x = sqrt(r13.w);
    r14.y = cmp(r14.x < cb2[r12.w+0].w);
    if (r14.y != 0) {
      r14.y = cmp(0 < cb2[r12.w+341].z);
      if (r14.y != 0) {
        r14.y = (uint)r12.w << 2;
        r15.xyz = cb2[r14.y+1024].xyz * r2.yyy;
        r15.xyz = r2.xxx * cb2[r14.y+1023].xyz + r15.xyz;
        r15.xyz = r2.zzz * cb2[r14.y+1025].xyz + r15.xyz;
        r15.xyz = cb2[r14.y+1026].xyz + r15.xyz;
        r16.xyz = cb2[r14.y+1024].xyz * r10.zzz;
        r16.xyz = r10.yyy * cb2[r14.y+1023].xyz + r16.xyz;
        r14.yzw = r10.www * cb2[r14.y+1025].xyz + r16.xyz;
        r14.yzw = rcp(r14.yzw);
        r16.xyz = -r15.xyz * r14.yzw + -r14.yzw;
        r14.yzw = -r15.xyz * r14.yzw + r14.yzw;
        r14.yzw = max(r16.xyz, r14.yzw);
        r14.z = min(r14.z, r14.w);
        r14.y = min(r14.y, r14.z);
        r14.yzw = r14.yyy * r10.yzw + r2.xyz;
        r16.xyz = cb2[r12.w+682].xyz + cb2[r12.w+0].xyz;
        r16.xyz = -r16.xyz + r14.yzw;
        r14.y = cb2[r12.w+2387].w * 0.699999988;
        r17.xyz = -cb2[r12.w+2387].www * float3(0.5,0.5,0.5) + cb2[r12.w+2387].xyz;
        r18.xyz = cb2[r12.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb2[r12.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb2[r12.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.z = dot(r19.xyz, float3(1,1,1));
        r14.w = dot(r15.xyz, float3(1,1,1));
        r14.z = r14.z + r14.w;
        r14.y = 1 / r14.y;
        r14.y = saturate(r14.z * r14.y);
        r14.z = r14.y * -2 + 3;
        r14.y = r14.y * r14.y;
        r17.x = -r14.z * r14.y + 1;
      } else {
        r14.x = saturate(r14.x / cb2[r12.w+0].w);
        r14.y = dot(r10.yzw, r13.xyz);
        r13.w = -cb2[r12.w+0].w * cb2[r12.w+0].w + r13.w;
        r13.w = r14.y * r14.y + -r13.w;
        r14.z = cmp(r13.w >= 0);
        r13.w = sqrt(r13.w);
        r13.w = r13.w + -r14.y;
        r13.xyz = r13.www * r10.yzw + r13.xyz;
        r13.yzw = -cb2[r12.w+682].xyz + r13.xyz;
        r14.x = r14.x * 2.5 + -1.5;
        r14.x = max(0, r14.x);
        r14.y = r14.x * r14.x;
        r14.x = -r14.x * 2 + 3;
        r13.x = -r14.y * r14.x + 1;
        r17.xyzw = r14.zzzz ? r13.xyzw : r10.xyzw;
        r16.xyz = r17.yzw;
      }
      r16.w = cb2[r12.w+341].y;
      r13.xyzw = t9.SampleLevel(s4_s, r16.xyzw, r4.w).xyzw;
      r13.xyz = cb2[r12.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r17.xxx;
      r12.xyz = r13.xyz * r5.www + r12.xyz;
      r13.x = -r13.w * r17.x + 1;
      r5.w = r13.x * r5.w;
      r12.w = cb2[r12.w+682].w * r17.x;
      r6.w = r12.w * r9.w + r6.w;
      r12.w = 1 + -r17.x;
      r9.w = r12.w * r9.w;
    }
    r11.w = (int)r11.w + 1;
  }
  r12.xyz = cb0[157].xyz * r12.xyz;
  r3.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.w = r6.w * r3.x;
  r3.x = cmp(0 < cb1[116].y);
  if (r3.x != 0) {
    r3.x = cb1[116].x + -r3.z;
    r3.x = -1 + r3.x;
    r3.xyz = t8.SampleLevel(s3_s, r10.yzw, r3.x).xyz;
    r4.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r4.w = cb1[117].x * r4.w;
    r3.xyz = cb0[187].xyz * r3.xyz;
    r6.w = cmp(cb1[116].z < 1);
    r13.xyz = r5.www * r3.xyz + r12.xyz;
    r13.w = r4.w * r9.w + r12.w;
    r3.xyz = r6.www ? float3(0,0,0) : r3.xyz;
    r12.xyzw = r6.wwww ? r13.xyzw : r12.xyzw;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r4.w = saturate(r3.w * cb0[197].x + cb0[197].y);
  r6.w = r4.w * -2 + 3;
  r4.w = r4.w * r4.w;
  r4.w = r6.w * r4.w;
  r6.w = max(9.99999975e-005, r12.w);
  r0.w = r0.w / r6.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r4.w * r0.w + 1;
  r3.xyz = r5.www * r3.xyz;
  r3.xyz = r12.xyz * r0.www + r3.xyz;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xy = r0.ww * float2(32.6650009,11.8149996) + v6.xy;
    r0.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r12.xyzw = cb0[1].xyzw * r1.yyyy;
    r12.xyzw = r1.xxxx * cb0[0].xyzw + r12.xyzw;
    r12.xyzw = r1.zzzz * cb0[2].xyzw + r12.xyzw;
    r12.xyzw = cb0[3].xyzw + r12.xyzw;
    r10.xyz = r10.yzw * v6.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r10.yyyy;
    r13.xyzw = r10.xxxx * cb0[0].xyzw + r13.xyzw;
    r10.xyzw = r10.zzzz * cb0[2].xyzw + r13.xyzw;
    r10.xyzw = cb0[3].xyzw + r10.xyzw;
    r4.w = rcp(r12.w);
    r13.xyz = r12.xyz * r4.www;
    r4.w = rcp(r10.w);
    r12.xy = v6.ww * cb0[30].zw + r12.zw;
    r5.w = rcp(r12.y);
    r10.xyz = r10.xyz * r4.www + -r13.xyz;
    r4.w = dot(r10.xy, r10.xy);
    r4.w = sqrt(r4.w);
    r6.w = 0.5 * r4.w;
    r12.yz = r13.xy * r6.ww + r10.xy;
    r12.yz = -r4.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r10.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r4.w = min(r12.y, r12.z);
    r4.w = r4.w / r6.w;
    r10.xyz = r10.xyz * r4.www;
    r4.w = -r12.x * r5.w + r13.z;
    r4.w = 4 * r4.w;
    r4.w = max(abs(r10.z), r4.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb1[176].xy * r12.xy;
    r10.xy = cb1[176].xy * r10.xy;
    r5.w = 0.0833333358 * r4.w;
    r10.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r10.xyz;
    r12.xyz = r10.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r14.x = 0;
    r15.x = 0;
    r13.xyz = float3(0,0,0);
    r6.w = 0;
    r9.w = 0;
    r10.w = 0;
    r11.w = 0;
    r12.w = 0;
    while (true) {
      r14.w = cmp((uint)r12.w >= 12);
      if (r14.w != 0) break;
      r14.w = (uint)r12.w;
      r16.xyzw = float4(1,2,3,4) + r14.wwww;
      r17.xyzw = r16.xxxy * r10.xyzz + r12.xyzz;
      r18.xyzw = r16.yyzz * r10.xyxy + r12.xyxy;
      r16.xyzw = r16.wwzw * r10.xyzz + r12.xyzz;
      r14.w = r3.w * 0.666666687 + r0.w;
      r19.x = r3.w * 0.666666687 + r14.w;
      r20.x = t12.SampleLevel(s5_s, r17.xy, r0.w).x;
      r20.y = t12.SampleLevel(s5_s, r18.xy, r0.w).x;
      r20.z = t12.SampleLevel(s5_s, r18.zw, r14.w).x;
      r20.w = t12.SampleLevel(s5_s, r16.xy, r14.w).x;
      r16.xy = r17.zw;
      r16.xyzw = r16.xyzw + -r20.xyzw;
      r17.xyzw = r4.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r16.xyzw;
      r17.xyzw = cmp(abs(r17.xyzw) < r5.wwww);
      r18.xy = (int2)r17.zw | (int2)r17.xy;
      r14.w = (int)r18.y | (int)r18.x;
      if (r14.w != 0) {
        r15.x = r16.x;
        r13.xyz = r16.yzw;
        r6.w = r17.x;
        r9.w = r17.y;
        r10.w = r17.z;
        r11.w = -1;
        break;
      }
      r14.x = r16.w;
      r12.w = (int)r12.w + 4;
      r0.w = r19.x;
      r15.x = r16.x;
      r13.xyz = r16.yzw;
      r6.w = r17.x;
      r9.w = r17.y;
      r10.w = r17.z;
      r11.w = r14.w;
    }
    if (r11.w != 0) {
      r13.w = 2;
      r16.xy = r13.yz;
      r16.z = 3;
      r13.yzw = r10.www ? r13.xyw : r16.xyz;
      r15.y = r13.x;
      r15.z = 1;
      r13.xyz = r9.www ? r15.xyz : r13.yzw;
      r14.y = r15.x;
      r14.z = 0;
      r13.xyz = r6.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r12.w;
      r0.w = r13.z + r0.w;
      r4.w = r13.x + -r13.y;
      r4.w = saturate(r13.x / r4.w);
      r0.w = r4.w + r0.w;
      r10.xyz = r10.xyz * r0.www + r12.xyz;
      r10.xy = cb1[176].zw * r10.xy;
      r10.xy = r10.xy * float2(2,-2) + float2(-1,1);
      r10.xy = cb0[66].xy * r10.xy;
      r10.xy = r10.xy / cb0[66].xy;
      r12.xyz = cb0[123].xyw * r10.yyy;
      r12.xyz = r10.xxx * cb0[122].xyw + r12.xyz;
      r12.xyz = r10.zzz * cb0[124].xyw + r12.xyz;
      r12.xyz = cb0[125].xyw + r12.xyz;
      r10.zw = r12.xy / r12.zz;
      r12.xy = r10.zw * cb1[177].xy + cb1[177].zw;
      r10.xy = saturate(abs(r10.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r10.xy, r10.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r10.xy = saturate(abs(r10.zw) * float2(5,5) + float2(-4,-4));
      r4.w = dot(r10.xy, r10.xy);
      r4.w = 1 + -r4.w;
      r4.w = max(0, r4.w);
      r0.w = min(r4.w, r0.w);
      r10.xyz = t13.SampleLevel(s6_s, r12.xy, 0).xyz;
      r10.xyz = min(float3(0,0,0), -r10.xyz);
      r4.w = saturate(-r3.w * 6.5999999 + 2);
      r0.w = r4.w * r0.w;
      r4.w = 1;
      r10.xyz = -r10.xyz * r0.www;
      r10.xyz = cb1[178].xxx * r10.xyz;
      r0.w = -r4.w * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r10.xyz;
    }
  }
  r10.xyzw = r3.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r10.x * r10.x;
  r1.w = -9.27999973 * r1.w;
  r1.w = exp2(r1.w);
  r0.w = min(r1.w, r0.w);
  r0.w = r0.w * r10.x + r10.y;
  r10.xy = r0.ww * float2(-1.03999996,1.03999996) + r10.zw;
  r7.xyz = r7.wyz;
  r0.w = r15.w * r10.y;
  r10.xyz = r7.xyz * r10.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb1[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r12.xyz = -cb1[123].xyz + r2.xyz;
    r1.w = dot(r12.xyz, cb1[124].xyz);
    r1.w = cb1[124].w + -abs(r1.w);
    r1.w = saturate(cb1[129].x * r1.w);
    r2.w = dot(r12.xyz, cb1[125].xyz);
    r2.w = cb1[125].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r1.w = r2.w * r1.w;
    r0.w = r1.w * r0.w;
    r1.w = dot(cb1[122].yzx, r4.xyz);
    r1.w = saturate(r1.w * cb1[130].x + cb1[130].y);
    r2.w = -0.200000003 + r3.w;
    r2.w = saturate(10 * r2.w);
    r2.w = 1 + -r2.w;
    r0.w = r1.w * r0.w;
    r0.w = r0.w * r2.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r12.xyz = -cb0[67].xyz + r2.xyz;
      r1.w = dot(r12.xyz, r12.xyz);
      r1.w = rsqrt(r1.w);
      r12.xyz = r12.xyz * r1.www;
      r1.w = dot(r12.xyz, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r12.xyz = cb1[122].xyz * r1.www + r12.xyz;
      r13.xyz = cb1[127].xyz * r4.xxx;
      r4.xzw = r4.zzz * cb1[126].xyz + r13.xyz;
      r4.xyz = r4.yyy * cb1[128].xyz + r4.xzw;
      r1.w = dot(r12.xyz, r4.xyz);
      r1.w = r1.w + r1.w;
      r4.xyz = r4.xyz * -r1.www + r12.xyz;
      r4.xyz = r4.xyz * cb1[129].zzz + r2.xyz;
      r4.xyz = cb0[70].xyz + r4.xyz;
      r12.xyz = cb0[13].xyz * r4.yyy;
      r4.xyw = r4.xxx * cb0[12].xyz + r12.xyz;
      r4.xyz = r4.zzz * cb0[14].xyz + r4.xyw;
      r4.xyz = cb0[15].xyz + r4.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb1[r1.w+132].xyw * r4.yyy;
      r4.xyw = r4.xxx * cb1[r1.w+131].xyw + r12.xyz;
      r4.xyz = r4.zzz * cb1[r1.w+133].xyw + r4.xyw;
      r4.xyz = cb1[r1.w+134].xyw + r4.xyz;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r4.xy = r4.xy / r4.zz;
      r4.xy = max(-cb1[141].xy, r4.xy);
      r4.xy = min(cb1[141].xy, r4.xy);
      r4.xy = r4.xy * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r4.xyzw = t10.SampleLevel(s4_s, r4.xy, 0).xyzw;
      r0.w = r4.w * r0.w;
    } else {
      r4.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r3.xyz = r0.www * r3.xyz + r4.xyz;
  }
  r3.xyz = r3.xyz * r10.xyz;
  r4.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r3.xyz = r3.xyz * r4.xyz + r9.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r4.xyz = cb0[5].xyw * r2.yyy;
    r4.xyz = r2.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r2.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r9.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r4.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r9.z = cb0[208].z * r0.w;
    r4.xyzw = t11.SampleLevel(s0_s, r9.xyz, 0).xyzw;
    r9.x = v5.w * r4.w;
    r4.xyz = v5.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v5.xyz;
    r9.x = v5.w;
  }
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r7.xyz = r7.xyz + -r3.xyz;
  r3.xyz = cb0[145].yyy * r7.xyz + r3.xyz;
  r8.xyz = max(float3(0,0,0), r6.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r8.xyzw = r0.wwww ? r2.yzwx : r8.xyzw;
    o0.w = r8.w;
  } else {
    o0.w = r8.w;
  }
  r0.xyz = r0.xyz * r5.xyz + r3.xyz;
  r0.xyz = r0.xyz + r8.xyz;
  r0.xyz = r0.xyz * r9.xxx + r4.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb1[166].xyz + -cb1[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb1[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}