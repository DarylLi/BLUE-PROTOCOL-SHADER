// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

TextureCubeArray<float4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2728];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
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
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r3.xyz);
  r4.xyz = r0.xyz * r0.www;
  r4.xyz = r4.xyz * float3(2,2,2) + -r3.xyz;
  r5.xyz = t13.SampleBias(s6_s, v2.xy, cb0[143].y).xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[6].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[2].xyz * r5.xyz;
  r6.xyz = cb4[6].zzz * r5.xyz;
  r5.xyz = -r5.xyz * cb4[6].zzz + cb4[3].xyz;
  r5.xyz = cb4[6].www * r5.xyz + r6.xyz;
  r4.xyz = t15.Sample(s8_s, r4.xyz).xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r4.xyz;
  r4.xyz = cb4[7].xxx * r6.xyz + r4.xyz;
  r4.xyz = cb4[7].yyy * r4.xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[7].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz * cb4[7].www + cb4[5].xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r6.xy = cb4[8].zw * v2.xy;
  r1.w = t14.SampleBias(s7_s, r6.xy, cb0[143].y).x;
  r1.w = saturate(cb4[9].x + r1.w);
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r6.xy = saturate(cb4[8].xy);
  r1.w = r1.w * cb0[139].y + cb0[139].x;
  r7.w = saturate(cb4[9].y);
  r3.w = cmp(0 < cb0[215].x);
  r6.zw = mad((int2)v3.xx, int2(36,36), int2(20,23));
  r4.w = t2[r6.z].val[8/4];
  r4.w = cmp(0 < r4.w);
  if (r4.w != 0) {
    r8.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
    r8.xyz = cb0[213].xyz * r8.xyz;
    r9.xyz = (int3)r8.xyz;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r4.w = 1 + cb0[213].w;
    r8.xyz = r8.xyz / r9.www;
    r8.xyz = frac(r8.xyz);
    r8.xyz = cb0[213].www * r8.xyz;
    r8.xyz = r9.xyz * r4.www + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
    r8.xyz = cb0[214].xyz * r8.xyz;
    r8.x = t1.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r4.w = mad((int)v3.x, 36, 18);
    r4.w = t2[r4.w].val[12/4];
    r4.w = cmp(0 < r4.w);
    r4.w = r3.w ? r4.w : 0;
    r8.x = r4.w ? cb2[5].x : 1;
  }
  r4.w = 0.0799999982 * r6.y;
  r9.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r9.xyz = r6.xxx * r9.xyz + r4.www;
  r6.xyz = -r4.xyz * r6.xxx + r4.xyz;
  r10.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r9.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r9.w = 0;
  r10.w = r6.x;
  r9.xyzw = r4.wwww ? r9.xyzw : r10.xyzw;
  r10.yz = r4.ww ? float2(0,0) : r6.yz;
  r6.xyz = r0.yzy * r0.yzx;
  r11.yw = r0.zz * r0.yx;
  r4.w = r0.x * r0.x + -r6.x;
  r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r11.xz = r6.zy * float2(1,3) + float2(0,-1);
  r11.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r11.xyzw;
  r4.w = 0.429042608 * r4.w;
  r12.x = 0.886227548;
  r5.w = dot(cb2[6].xyzw, r12.xyzw);
  r6.x = dot(cb2[9].xyzw, r11.xyzw);
  r5.w = r6.x + r5.w;
  r6.x = cb2[12].x * r4.w + r5.w;
  r5.w = dot(cb2[7].xyzw, r12.xyzw);
  r13.x = dot(cb2[10].xyzw, r11.xyzw);
  r5.w = r13.x + r5.w;
  r6.y = cb2[12].y * r4.w + r5.w;
  r5.w = dot(cb2[8].xyzw, r12.xyzw);
  r11.x = dot(cb2[11].xyzw, r11.xyzw);
  r5.w = r11.x + r5.w;
  r6.z = cb2[12].z * r4.w + r5.w;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = r3.www ? r6.xyz : 0;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r9.xyz;
  r11.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r4.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r11.xy = -cb0[129].xy + v5.xy;
  r11.xy = cb0[131].zw * r11.xy;
  r11.xy = (uint2)r11.xy;
  r4.w = v5.w * cb1[3].x + cb1[3].y;
  r4.w = log2(r4.w);
  r4.w = cb1[3].z * r4.w;
  r4.xyzw = max(float4(1,1,1,0), r4.xyzw);
  r4.w = (uint)r4.w;
  r5.w = asint(cb1[1].z) + -1;
  r4.w = min((uint)r5.w, (uint)r4.w);
  r11.xy = (uint2)r11.xy >> asuint(cb1[2].xx);
  r4.w = mad((int)r4.w, asint(cb1[1].y), (int)r11.y);
  r4.w = mad((int)r4.w, asint(cb1[1].x), (int)r11.x);
  r5.w = t2[r6.w].val[12/4];
  if (cb1[0].z != 0) {
    r11.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r11.yzw = r11.xyz ? float3(1,1,1) : float3(0,0,0);
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
        r8.x = r6.w ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb1[9].z != 0) {
      r6.w = cb1[9].z;
      r12.x = 0;
      while (true) {
        r12.y = cmp((uint)r12.x >= asuint(cb1[9].z));
        if (r12.y != 0) break;
        r12.y = dot(cb1[10].xyzw, icb[r12.x+0].xyzw);
        r12.y = cmp(v5.w < r12.y);
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
    r11.x = 1;
    r11.x = dot(float4(1,1,1,1), r11.xyzw);
    r8.yzw = r11.yzw;
    r11.y = dot(r8.xyzw, float4(1,1,1,1));
    r11.y = -1 + r11.y;
    r11.x = r11.x * r11.y + 1;
    r11.y = saturate(v5.w * cb1[9].x + cb1[9].y);
    r11.y = r11.y * r11.y;
    r11.x = r11.x + -r6.w;
    r6.w = r11.y * r11.x + r6.w;
    r11.x = min(1, r6.w);
    r11.x = r11.x + r6.w;
    r11.x = cmp(0 < r11.x);
    if (r11.x != 0) {
      r11.x = dot(cb1[4].xyz, cb1[4].xyz);
      r11.x = rsqrt(r11.x);
      r11.xyz = cb1[4].xyz * r11.xxx;
      r11.w = dot(r0.xyz, r11.xyz);
      r12.x = saturate(r11.w);
      r12.y = max(cb0[226].y, r1.w);
      r11.x = dot(r3.xyz, r11.xyz);
      r11.y = r11.x * 2 + 2;
      r11.y = rsqrt(r11.y);
      r11.z = r11.w + r0.w;
      r11.z = saturate(r11.z * r11.y);
      r11.x = saturate(r11.y * r11.x + r11.y);
      r11.y = 9.99999975e-006 + abs(r0.w);
      r11.y = min(1, r11.y);
      r13.xyz = r12.xxx * r9.xyz;
      r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r13.xyz;
      r11.w = r12.y * r12.y;
      r12.z = r11.w * r11.w;
      r12.w = r11.z * r12.z + -r11.z;
      r11.z = r12.w * r11.z + 1;
      r11.z = r11.z * r11.z;
      r11.z = 3.14159274 * r11.z;
      r11.z = r12.z / r11.z;
      r12.y = -r12.y * r12.y + 1;
      r12.z = r11.y * r12.y + r11.w;
      r11.w = r12.x * r12.y + r11.w;
      r11.y = r11.y * r11.w;
      r11.y = r12.x * r12.z + r11.y;
      r11.y = rcp(r11.y);
      r11.y = r11.z * r11.y;
      r11.x = 1 + -r11.x;
      r11.z = r11.x * r11.x;
      r11.z = r11.z * r11.z;
      r11.w = r11.z * r11.x;
      r12.y = saturate(50 * r10.y);
      r11.x = -r11.z * r11.x + 1;
      r10.x = r9.w;
      r14.xyz = r11.xxx * r10.xyz;
      r11.xzw = r12.yyy * r11.www + r14.xyz;
      r11.y = 0.5 * r11.y;
      r11.xyz = r11.yyy * r11.xzw;
      r11.xyz = r12.xxx * r11.xyz;
      r12.xyz = cb1[5].xyz * r6.www;
      r13.xyz = r13.xyz * r12.xyz;
      r11.xyz = r12.yzx * r11.yzx;
      r13.w = r11.z;
    } else {
      r11.xy = float2(0,0);
      r13.xyzw = float4(0,0,0,0);
    }
    r6.w = asuint(cb1[8].z) >> 8;
    r6.w = (int)r5.w & (int)r6.w;
    r12.xyzw = r6.wwww ? r13.xyzw : float4(0,0,0,0);
    r11.xy = r6.ww ? r11.xy : float2(0,0);
  } else {
    r12.xyzw = float4(0,0,0,0);
    r11.xy = float2(0,0);
  }
  r6.w = (uint)r4.w << 1;
  r6.w = t6.Load(r6.w).x;
  r6.w = min(asuint(cb1[0].x), (uint)r6.w);
  bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r11.z = (((uint)r4.w << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  r11.z = t6.Load(r11.z).x;
  r6.w = min(asuint(cb1[0].x), (uint)r6.w);
  r11.w = dot(-r3.xyz, r0.xyz);
  r11.w = r11.w + r11.w;
  r13.xyz = r0.xyz * -r11.www + -r3.xyz;
  r11.w = max(cb0[226].y, r1.w);
  r13.w = r11.w * r11.w;
  r11.w = -r11.w * r11.w + 1;
  r14.x = r0.w + r0.w;
  r14.y = r14.x * r0.w + -1;
  r14.z = 9.99999975e-006 + abs(r0.w);
  r14.z = min(1, r14.z);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r14.w = r13.w * r13.w;
  r15.w = saturate(50 * r10.y);
  r8.yw = float2(1,1);
  r10.w = r9.w;
  r16.xyz = r12.xyz;
  r17.x = r12.w;
  r17.yz = r11.xy;
  r9.w = 0;
  while (true) {
    r16.w = cmp((uint)r9.w >= (uint)r6.w);
    if (r16.w != 0) break;
    r16.w = (int)r9.w + (int)r11.z;
    r16.w = t7.Load(r16.w).x;
    r17.w = (int)r16.w * 6;
    r18.xyzw = t5.Load(r17.w).xyzw;
    r17.w = mad((int)r16.w, 6, 1);
    r19.xyzw = t5.Load(r17.w).xyzw;
    r20.xy = mad((int2)r16.ww, int2(6,6), int2(2,3));
    r21.xyzw = t5.Load(r20.x).xyzw;
    r20.xyzw = t5.Load(r20.y).xyzw;
    r17.w = cmp(r19.w == 0.000000);
    r22.x = cmp(-2 < r20.x);
    r18.xyz = r18.xyz + -r2.xyz;
    r22.y = dot(r18.xyz, r18.xyz);
    r22.z = rsqrt(r22.y);
    r23.xyz = r22.zzz * r18.xyz;
    r22.z = r18.w * r18.w;
    r22.y = r22.y * r22.z;
    r22.y = -r22.y * r22.y + 1;
    r22.y = max(0, r22.y);
    r22.y = r22.y * r22.y;
    r24.xyz = r18.xyz * r18.www;
    r18.w = dot(r24.xyz, r24.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r19.w * r18.w;
    r18.w = exp2(r18.w);
    r18.w = r17.w ? r22.y : r18.w;
    r19.w = dot(r23.xyz, r21.xyz);
    r19.w = r19.w + -r20.x;
    r19.w = saturate(r19.w * r20.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r18.w = r22.x ? r19.w : r18.w;
    r19.w = cmp(0 < r18.w);
    if (r19.w != 0) {
      r19.w = (int)r21.w & 255;
      r19.w = r19.w ? 1 : 0;
      if (r19.w != 0) {
        r22.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r22.xyzw = r22.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r19.w = (uint)r21.w >> 4;
        if (1 == 0) r20.x = 0; else if (1+4 < 32) {         r20.x = (uint)r21.w << (32-(1 + 4)); r20.x = (uint)r20.x >> (32-1);        } else r20.x = (uint)r21.w >> 4;
        r23.x = r20.x ? 1 : 0;
        r21.xyz = (int3)r19.www & int3(2,4,8);
        r23.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r19.w = dot(r23.xyzw, float4(1,1,1,1));
        r20.x = dot(r22.xyzw, float4(1,1,1,1));
        r20.y = dot(r8.xyyy, r22.xyzw);
        r20.y = -1 + r20.y;
        r20.x = r20.x * r20.y + 1;
        r20.xy = r20.xx * r19.ww;
      } else {
        r20.xy = float2(1,1);
      }
      r19.w = r20.x + r20.y;
      r19.w = cmp(0 < r19.w);
      if (r19.w != 0) {
        r16.w = mad((int)r16.w, 6, 4);
        r22.xyzw = t5.Load(r16.w).xyzw;
        r16.w = f16tof32(r20.w);
        r19.w = 0.5 * r16.w;
        r21.xyz = -r19.www * r22.xyz + r18.xyz;
        r18.xyz = r19.www * r22.xyz + r18.xyz;
        r19.w = cmp(0 < r16.w);
        if (r19.w != 0) {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = dot(r18.xyz, r18.xyz);
          r20.y = rsqrt(r20.y);
          r20.w = rsqrt(r20.w);
          r22.x = r20.y * r20.w;
          r22.y = dot(r21.xyz, r18.xyz);
          r22.y = r22.y * r22.x;
          r22.z = r22.y * 0.5 + r22.x;
          r22.z = 0.5 + r22.z;
          r23.y = r22.x / r22.z;
          r22.x = dot(r0.xyz, r21.xyz);
          r22.z = dot(r0.xyz, r18.xyz);
          r20.w = r22.z * r20.w;
          r20.y = r22.x * r20.y + r20.w;
          r23.x = 0.5 * r20.y;
        } else {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = 1 + r20.y;
          r23.y = rcp(r20.w);
          r20.y = rsqrt(r20.y);
          r24.xyz = r21.xyz * r20.yyy;
          r23.x = dot(r0.xyz, r24.xyz);
          r22.y = 1;
        }
        r20.y = cmp(0 < r20.z);
        r20.w = r20.z * r20.z;
        r20.w = saturate(r20.w * r23.y);
        r20.w = sqrt(r20.w);
        r22.x = cmp(r23.x < r20.w);
        r22.z = max(r23.x, -r20.w);
        r22.z = r22.z + r20.w;
        r22.z = r22.z * r22.z;
        r20.w = 4 * r20.w;
        r20.w = r22.z / r20.w;
        r20.w = r22.x ? r20.w : r23.x;
        r20.y = saturate(r20.y ? r20.w : r23.x);
        r17.w = r17.w ? r23.y : 1;
        r18.xyz = r18.xyz + -r21.xyz;
        r20.w = dot(r13.xyz, r18.xyz);
        r23.xyz = r20.www * r13.xyz + -r18.xyz;
        r22.x = dot(r21.xyz, r23.xyz);
        r20.w = r20.w * r20.w;
        r16.w = r16.w * r16.w + -r20.w;
        r16.w = saturate(r22.x / r16.w);
        r18.xyz = r16.www * r18.xyz + r21.xyz;
        r18.xyz = r19.www ? r18.xyz : r21.xyz;
        r16.w = dot(r18.xyz, r18.xyz);
        r16.w = rsqrt(r16.w);
        r18.xyz = r18.xyz * r16.www;
        r19.w = r20.z * r16.w;
        r19.w = saturate(r19.w * r11.w);
        r16.w = saturate(r22.w * r16.w);
        r20.z = dot(r0.xyz, r18.xyz);
        r18.x = dot(r3.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.z + r0.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.w = cmp(0 < r19.w);
        if (r20.w != 0) {
          r21.x = -r19.w * r19.w + 1;
          r21.x = sqrt(r21.x);
          r21.y = dot(r0.ww, r20.zz);
          r21.z = r21.y + -r18.x;
          r22.x = cmp(r21.z >= r21.x);
          if (r22.x != 0) {
            r18.z = 1;
            r18.y = abs(r0.w);
          } else {
            r22.x = -r21.z * r21.z + 1;
            r22.x = rsqrt(r22.x);
            r22.x = r22.x * r19.w;
            r22.z = -r21.z * r20.z + r0.w;
            r22.w = r22.x * r22.z;
            r21.z = -r21.z * r18.x + r14.y;
            r23.x = r20.z * r20.z;
            r23.x = -r0.w * r0.w + -r23.x;
            r23.x = 1 + r23.x;
            r23.x = -r18.x * r18.x + r23.x;
            r21.y = saturate(r21.y * r18.x + r23.x);
            r21.y = sqrt(r21.y);
            r21.yz = r22.xx * r21.yz;
            r23.x = r21.y * r0.w;
            r23.y = r23.x + r23.x;
            r23.z = r20.z * r21.x + r0.w;
            r22.x = r22.x * r22.z + r23.z;
            r22.z = r18.x * r21.x + r21.z;
            r22.z = 1 + r22.z;
            r23.w = r22.z * r21.y;
            r24.x = r22.x * r22.z;
            r24.y = r23.y * r22.x;
            r23.x = r22.x * r23.x;
            r23.x = 0.5 * r23.x;
            r23.x = r23.w * -0.5 + r23.x;
            r23.x = r24.x * r23.x;
            r24.z = -r23.w * 2 + r24.y;
            r24.y = r24.y * r24.z;
            r23.w = r23.w * r23.w + r24.y;
            r24.y = r22.z * r22.z;
            r22.z = r18.x * r21.x + r22.z;
            r22.z = r22.z * -0.5 + -0.5;
            r22.z = r24.x * r22.z;
            r22.z = r23.z * r24.y + r22.z;
            r22.x = r22.x * r22.z + r23.w;
            r22.z = r23.x + r23.x;
            r23.z = r23.x * r23.x;
            r23.z = r22.x * r22.x + r23.z;
            r22.z = r22.z / r23.z;
            r22.x = r22.z * r22.x;
            r22.z = -r22.z * r23.x + 1;
            r21.y = r22.x * r21.y;
            r21.y = r22.z * r22.w + r21.y;
            r22.x = r22.x * r23.y;
            r21.z = r22.z * r21.z + r22.x;
            r20.z = r20.z * r21.x + r21.y;
            r18.x = r18.x * r21.x + r21.z;
            r21.x = r18.x * 2 + 2;
            r21.x = rsqrt(r21.x);
            r20.z = r20.z + r0.w;
            r18.z = saturate(r20.z * r21.x);
            r18.y = saturate(r21.x * r18.x + r21.x);
          }
        }
        r17.w = r17.w * r20.y;
        r21.xyz = r17.www * r15.xyz;
        r18.x = cmp(0 < r16.w);
        r16.w = r16.w * r16.w;
        r20.z = r18.y * 3.5999999 + 0.400000006;
        r16.w = r16.w / r20.z;
        r16.w = r13.w * r13.w + r16.w;
        r16.w = min(1, r16.w);
        r8.z = r18.x ? r16.w : r14.w;
        r16.w = 0.25 * r19.w;
        r18.x = (uint)r8.z >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r18.x = r18.x * 3 + r19.w;
        r16.w = r18.x * r16.w;
        r18.x = 0.00100000005 + r18.y;
        r16.w = r16.w / r18.x;
        r23.x = r16.w + r8.z;
        r23.y = r8.z / r23.x;
        r20.zw = r20.ww ? r23.xy : r8.zw;
        r16.w = cmp(r22.y < 1);
        r19.w = 1.00010002 + -r22.y;
        r22.x = 1 + r22.y;
        r19.w = r19.w / r22.x;
        r19.w = sqrt(r19.w);
        r22.x = 0.25 * r19.w;
        r22.y = (uint)r20.z >> 1;
        r22.y = (int)r22.y + 0x1fbd1df5;
        r19.w = r22.y * 3 + r19.w;
        r19.w = r22.x * r19.w;
        r18.x = r19.w / r18.x;
        r18.x = r20.z + r18.x;
        r18.x = r20.z / r18.x;
        r18.x = sqrt(r18.x);
        r18.x = r20.w * r18.x;
        r16.w = r16.w ? r18.x : r20.w;
        r18.x = r18.z * r8.z + -r18.z;
        r18.x = r18.x * r18.z + 1;
        r18.x = r18.x * r18.x;
        r18.x = 3.14159274 * r18.x;
        r18.x = r8.z / r18.x;
        r16.w = r18.x * r16.w;
        r8.z = sqrt(r8.z);
        r18.x = 1 + -r8.z;
        r18.z = r14.z * r18.x + r8.z;
        r8.z = r20.y * r18.x + r8.z;
        r8.z = r14.z * r8.z;
        r8.z = r20.y * r18.z + r8.z;
        r8.z = rcp(r8.z);
        r8.z = r16.w * r8.z;
        r16.w = 1 + -r18.y;
        r18.x = r16.w * r16.w;
        r18.x = r18.x * r18.x;
        r18.y = r18.x * r16.w;
        r16.w = -r18.x * r16.w + 1;
        r20.yzw = r16.www * r10.wyz;
        r18.xyz = r15.www * r18.yyy + r20.yzw;
        r8.z = 0.5 * r8.z;
        r18.xyz = r8.zzz * r18.xyz;
        r18.xyz = r18.xyz * r17.www;
        r19.xyz = r19.xyz * r18.www;
        r19.xyz = r19.xyz * r20.xxx;
        r20.xyz = r21.xyz * r19.xyz;
        r18.xyz = r19.xyz * r18.xyz;
      } else {
        r20.xyz = float3(0,0,0);
        r18.xyz = float3(0,0,0);
      }
    } else {
      r20.xyz = float3(0,0,0);
      r18.xyz = float3(0,0,0);
    }
    r8.z = (uint)r21.w >> 8;
    r8.z = (int)r5.w & (int)r8.z;
    r19.xyz = r20.xyz + r16.xyz;
    r18.xyz = r18.xyz + r17.xyz;
    r16.xyz = r8.zzz ? r19.xyz : r16.xyz;
    r17.xyz = r8.zzz ? r18.xyz : r17.xyz;
    r9.w = (int)r9.w + 1;
  }
  r8.xyz = r17.xyz + r16.xyz;
  r11.yzw = r14.xxx * r0.xyz + -r3.xyz;
  r0.w = saturate(r0.w);
  r3.x = (int)r4.w + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t6.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t6.Load(r3.x).x;
  r3.z = max(0.00100000005, r1.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r4.w = -1 + cb0[195].z;
  r3.z = r4.w + -r3.z;
  r11.x = 0;
  r12.xyz = float3(0,0,0);
  r4.w = 1;
  r5.w = 0;
  r6.w = 1;
  r8.w = 0;
  while (true) {
    r9.w = cmp((uint)r8.w >= (uint)r3.y);
    if (r9.w != 0) break;
    r9.w = cmp(r4.w < 0.00100000005);
    if (r9.w != 0) {
      break;
    }
    r9.w = (int)r3.x + (int)r8.w;
    r9.w = t7.Load(r9.w).x;
    r13.xyz = -cb3[r9.w+0].xyz + r2.xyz;
    r12.w = dot(r13.xyz, r13.xyz);
    r13.w = sqrt(r12.w);
    r14.x = cmp(r13.w < cb3[r9.w+0].w);
    if (r14.x != 0) {
      r14.x = cmp(0 < cb3[r9.w+341].z);
      if (r14.x != 0) {
        r14.x = (uint)r9.w << 2;
        r14.yzw = cb3[r14.x+1024].xyz * r2.yyy;
        r14.yzw = r2.xxx * cb3[r14.x+1023].xyz + r14.yzw;
        r14.yzw = r2.zzz * cb3[r14.x+1025].xyz + r14.yzw;
        r14.yzw = cb3[r14.x+1026].xyz + r14.yzw;
        r15.xyz = cb3[r14.x+1024].xyz * r11.zzz;
        r15.xyz = r11.yyy * cb3[r14.x+1023].xyz + r15.xyz;
        r15.xyz = r11.www * cb3[r14.x+1025].xyz + r15.xyz;
        r15.xyz = rcp(r15.xyz);
        r16.xyz = -r14.yzw * r15.xyz + -r15.xyz;
        r15.xyz = -r14.yzw * r15.xyz + r15.xyz;
        r15.xyz = max(r16.xyz, r15.xyz);
        r14.x = min(r15.y, r15.z);
        r14.x = min(r15.x, r14.x);
        r15.xyz = r14.xxx * r11.yzw + r2.xyz;
        r16.xyz = cb3[r9.w+682].xyz + cb3[r9.w+0].xyz;
        r16.xyz = -r16.xyz + r15.xyz;
        r14.x = cb3[r9.w+2387].w * 0.699999988;
        r15.xyz = -cb3[r9.w+2387].www * float3(0.5,0.5,0.5) + cb3[r9.w+2387].xyz;
        r17.xyz = cb3[r9.w+2387].xyz * r14.yzw;
        r18.xyz = cmp(r17.xyz < -r15.xyz);
        r19.xyz = r14.yzw * cb3[r9.w+2387].xyz + r15.xyz;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r15.xyz < r17.xyz);
        r14.yzw = r14.yzw * cb3[r9.w+2387].xyz + -r15.xyz;
        r14.yzw = abs(r14.yzw);
        r14.yzw = r17.xyz ? r14.yzw : 0;
        r15.x = dot(r18.xyz, float3(1,1,1));
        r14.y = dot(r14.yzw, float3(1,1,1));
        r14.y = r15.x + r14.y;
        r14.x = 1 / r14.x;
        r14.x = saturate(r14.y * r14.x);
        r14.y = r14.x * -2 + 3;
        r14.x = r14.x * r14.x;
        r14.x = -r14.y * r14.x + 1;
      } else {
        r13.w = saturate(r13.w / cb3[r9.w+0].w);
        r15.x = dot(r11.yzw, r13.xyz);
        r12.w = -cb3[r9.w+0].w * cb3[r9.w+0].w + r12.w;
        r12.w = r15.x * r15.x + -r12.w;
        r15.y = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r15.x;
        r13.xyz = r12.www * r11.yzw + r13.xyz;
        r17.yzw = -cb3[r9.w+682].xyz + r13.xyz;
        r12.w = r13.w * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.x = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r17.x = -r13.x * r12.w + 1;
        r14.xyzw = r15.yyyy ? r17.xyzw : r11.xyzw;
        r16.xyz = r14.yzw;
      }
      r16.w = cb3[r9.w+341].y;
      r13.xyzw = t8.SampleLevel(s3_s, r16.xyzw, r3.z).xyzw;
      r13.xyz = cb3[r9.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r14.xxx;
      r12.xyz = r13.xyz * r4.www + r12.xyz;
      r12.w = -r13.w * r14.x + 1;
      r4.w = r12.w * r4.w;
      r9.w = cb3[r9.w+682].w * r14.x;
      r5.w = r9.w * r6.w + r5.w;
      r9.w = 1 + -r14.x;
      r6.w = r9.w * r6.w;
    }
    r8.w = (int)r8.w + 1;
  }
  r3.xyz = cb0[157].xyz * r12.xyz;
  r4.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r5.w * r4.w;
  r5.w = saturate(r1.w * cb0[197].x + cb0[197].y);
  r6.w = r5.w * -2 + 3;
  r5.w = r5.w * r5.w;
  r5.w = r6.w * r5.w;
  r4.w = max(9.99999975e-005, r4.w);
  r3.w = r3.w / r4.w;
  r3.w = min(cb0[197].z, r3.w);
  r3.w = -1 + r3.w;
  r3.w = r5.w * r3.w + 1;
  r3.xyz = r3.xyz * r3.www;
  r3.w = cmp(cb0[145].x == 0.000000);
  if (r3.w != 0) {
    r3.w = asuint(cb0[144].y);
    r12.xy = r3.ww * float2(32.6650009,11.8149996) + v5.xy;
    r3.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r3.w = frac(r3.w);
    r3.w = 52.9829178 * r3.w;
    r3.w = frac(r3.w);
    r3.w = -0.5 + r3.w;
    r12.xyzw = cb0[1].xyzw * r1.yyyy;
    r12.xyzw = r1.xxxx * cb0[0].xyzw + r12.xyzw;
    r12.xyzw = r1.zzzz * cb0[2].xyzw + r12.xyzw;
    r12.xyzw = cb0[3].xyzw + r12.xyzw;
    r11.xyz = r11.yzw * v5.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r11.yyyy;
    r13.xyzw = r11.xxxx * cb0[0].xyzw + r13.xyzw;
    r11.xyzw = r11.zzzz * cb0[2].xyzw + r13.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r4.w = rcp(r12.w);
    r13.xyz = r12.xyz * r4.www;
    r4.w = rcp(r11.w);
    r12.xy = v5.ww * cb0[30].zw + r12.zw;
    r5.w = rcp(r12.y);
    r11.xyz = r11.xyz * r4.www + -r13.xyz;
    r4.w = dot(r11.xy, r11.xy);
    r4.w = sqrt(r4.w);
    r6.w = 0.5 * r4.w;
    r12.yz = r13.xy * r6.ww + r11.xy;
    r12.yz = -r4.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r11.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r4.w = min(r12.y, r12.z);
    r4.w = r4.w / r6.w;
    r11.xyz = r11.xyz * r4.www;
    r4.w = -r12.x * r5.w + r13.z;
    r4.w = 4 * r4.w;
    r4.w = max(abs(r11.z), r4.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb1[176].xy * r12.xy;
    r11.xy = cb1[176].xy * r11.xy;
    r5.w = 0.0833333358 * r4.w;
    r11.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r11.xyz;
    r12.xyz = r11.xyz * r3.www + r13.xyz;
    r3.w = 1;
    r14.x = 0;
    r15.x = 0;
    r13.xyz = float3(0,0,0);
    r6.w = 0;
    r8.w = 0;
    r9.w = 0;
    r11.w = 0;
    r12.w = 0;
    while (true) {
      r14.w = cmp((uint)r12.w >= 12);
      if (r14.w != 0) break;
      r14.w = (uint)r12.w;
      r16.xyzw = float4(1,2,3,4) + r14.wwww;
      r17.xyzw = r16.xxxy * r11.xyzz + r12.xyzz;
      r18.xyzw = r16.yyzz * r11.xyxy + r12.xyxy;
      r16.xyzw = r16.wwzw * r11.xyzz + r12.xyzz;
      r14.w = r1.w * 0.666666687 + r3.w;
      r19.x = r1.w * 0.666666687 + r14.w;
      r20.x = t11.SampleLevel(s4_s, r17.xy, r3.w).x;
      r20.y = t11.SampleLevel(s4_s, r18.xy, r3.w).x;
      r20.z = t11.SampleLevel(s4_s, r18.zw, r14.w).x;
      r20.w = t11.SampleLevel(s4_s, r16.xy, r14.w).x;
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
        r8.w = r17.y;
        r9.w = r17.z;
        r11.w = -1;
        break;
      }
      r14.x = r16.w;
      r12.w = (int)r12.w + 4;
      r3.w = r19.x;
      r15.x = r16.x;
      r13.xyz = r16.yzw;
      r6.w = r17.x;
      r8.w = r17.y;
      r9.w = r17.z;
      r11.w = r14.w;
    }
    if (r11.w != 0) {
      r13.w = 2;
      r16.xy = r13.yz;
      r16.z = 3;
      r13.yzw = r9.www ? r13.xyw : r16.xyz;
      r15.y = r13.x;
      r15.z = 1;
      r13.xyz = r8.www ? r15.xyz : r13.yzw;
      r14.y = r15.x;
      r14.z = 0;
      r13.xyz = r6.www ? r14.xyz : r13.xyz;
      r3.w = (uint)r12.w;
      r3.w = r13.z + r3.w;
      r4.w = r13.x + -r13.y;
      r4.w = saturate(r13.x / r4.w);
      r3.w = r4.w + r3.w;
      r11.xyz = r11.xyz * r3.www + r12.xyz;
      r11.xy = cb1[176].zw * r11.xy;
      r11.xy = r11.xy * float2(2,-2) + float2(-1,1);
      r11.xy = cb0[66].xy * r11.xy;
      r11.xy = r11.xy / cb0[66].xy;
      r12.xyz = cb0[123].xyw * r11.yyy;
      r12.xyz = r11.xxx * cb0[122].xyw + r12.xyz;
      r12.xyz = r11.zzz * cb0[124].xyw + r12.xyz;
      r12.xyz = cb0[125].xyw + r12.xyz;
      r11.zw = r12.xy / r12.zz;
      r12.xy = r11.zw * cb1[177].xy + cb1[177].zw;
      r11.xy = saturate(abs(r11.xy) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r11.xy, r11.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r11.xy = saturate(abs(r11.zw) * float2(5,5) + float2(-4,-4));
      r4.w = dot(r11.xy, r11.xy);
      r4.w = 1 + -r4.w;
      r4.w = max(0, r4.w);
      r3.w = min(r4.w, r3.w);
      r11.xyz = t12.SampleLevel(s5_s, r12.xy, 0).xyz;
      r11.xyz = min(float3(0,0,0), -r11.xyz);
      r4.w = saturate(-r1.w * 6.5999999 + 2);
      r3.w = r4.w * r3.w;
      r4.w = 1;
      r11.xyz = -r11.xyz * r3.www;
      r11.xyz = cb1[178].xxx * r11.xyz;
      r3.w = -r4.w * r3.w + 1;
      r3.xyz = r3.xyz * r3.www + r11.xyz;
    }
  }
  r11.xyzw = r1.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r3.w = r11.x * r11.x;
  r0.w = -9.27999973 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r11.x + r11.y;
  r11.xy = r0.ww * float2(-1.03999996,1.03999996) + r11.zw;
  r10.xyz = r10.wyz;
  r0.w = r15.w * r11.y;
  r11.xyz = r10.xyz * r11.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb1[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r12.xyz = -cb1[123].xyz + r2.xyz;
    r2.w = dot(r12.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r12.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb1[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r1.w = -0.200000003 + r1.w;
    r1.w = saturate(10 * r1.w);
    r1.w = 1 + -r1.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r1.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r12.xyz = -cb0[67].xyz + r2.xyz;
      r1.w = dot(r12.xyz, r12.xyz);
      r1.w = rsqrt(r1.w);
      r12.xyz = r12.xyz * r1.www;
      r1.w = dot(r12.xyz, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r12.xyz = cb1[122].xyz * r1.www + r12.xyz;
      r13.xyz = cb1[127].xyz * r0.yyy;
      r13.xyz = r0.xxx * cb1[126].xyz + r13.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r13.xyz;
      r1.w = dot(r12.xyz, r0.xyz);
      r1.w = r1.w + r1.w;
      r0.xyz = r0.xyz * -r1.www + r12.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r12.xyz = cb0[13].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb0[12].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r12.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb1[r1.w+132].xyw * r0.yyy;
      r12.xyz = r0.xxx * cb1[r1.w+131].xyw + r12.xyz;
      r0.xyz = r0.zzz * cb1[r1.w+133].xyw + r12.xyz;
      r0.xyz = cb1[r1.w+134].xyw + r0.xyz;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r12.xyzw = t9.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r12.xyz;
  }
  r0.xyz = r3.xyz * r11.xyz;
  r3.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r8.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r8.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r3.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r8.z = cb0[208].z * r0.w;
    r3.xyzw = t10.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v4.w * r3.w;
    r3.xyz = v4.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v4.xyz;
    r8.x = v4.w;
  }
  r8.yzw = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r8.yzw = r8.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r8.yzw + r0.xyz;
  r7.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t2[r5.x].val[0/4];
    r5.z = t2[r5.x].val[0/4+1];
    r5.w = t2[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r8.y = t2[r5.y].val[0/4];
    r8.z = t2[r5.y].val[0/4+1];
    r8.w = t2[r5.y].val[0/4+2];
    r8.yzw = float3(1,1,1) + r8.yzw;
    r5.xyz = cmp(r8.yzw < abs(r5.xzw));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r7.xyzw = r0.wwww ? r2.yzwx : r7.xyzw;
    o0.w = r7.w;
  } else {
    o0.w = r7.w;
  }
  r0.xyz = r6.xyz * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r7.xyz;
  r0.xyz = r0.xyz * r8.xxx + r3.xyz;
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