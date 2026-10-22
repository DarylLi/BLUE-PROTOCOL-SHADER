// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

TextureCubeArray<float4> t10 : register(t10);

TextureCube<float4> t9 : register(t9);

Buffer<uint4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 cb4[7];
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
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r4.yzw = r0.xyz * r0.www;
  r1.w = dot(r4.yzw, r3.xyz);
  r5.xyz = r4.yzw * r1.www;
  r5.xyz = r5.xyz * float3(2,2,2) + -r3.xyz;
  r6.xyz = cb4[4].xxx * cb4[1].xyz;
  r5.xyz = t15.Sample(s7_s, r5.xyz).xyz;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r3.www + -r5.xyz;
  r5.xyz = cb4[4].yyy * r7.xyz + r5.xyz;
  r5.xyz = cb4[4].zzz * r5.xyz;
  r7.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb4[4].www * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r7.xyz ? float3(0,0,0) : r5.xyz;
  r5.xyz = r5.xyz * cb4[5].xxx + cb4[3].xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r5.xyz = min(float3(1,1,1), r5.xyz);
  r7.xyz = saturate(cb4[5].yzw);
  r3.w = r7.z * cb0[139].y + cb0[139].x;
  r8.w = saturate(cb4[6].x);
  r5.w = cmp(0 < cb0[215].x);
  r7.zw = mad((int2)v2.xx, int2(36,36), int2(20,23));
  r6.w = t2[r7.z].val[8/4];
  r6.w = cmp(0 < r6.w);
  if (r6.w != 0) {
    r9.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r9.xyz = max(float3(0,0,0), r9.xyz);
    r9.xyz = min(float3(0.99000001,0.99000001,0.99000001), r9.xyz);
    r9.xyz = cb0[213].xyz * r9.xyz;
    r10.xyz = (int3)r9.xyz;
    r10.w = 0;
    r10.xyzw = t0.Load(r10.xyzw).xyzw;
    r10.xyzw = (uint4)r10.xyzw;
    r6.w = 1 + cb0[213].w;
    r9.xyz = r9.xyz / r10.www;
    r9.xyz = frac(r9.xyz);
    r9.xyz = cb0[213].www * r9.xyz;
    r9.xyz = r10.xyz * r6.www + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) + r9.xyz;
    r9.xyz = cb0[214].xyz * r9.xyz;
    r9.x = t1.SampleLevel(s0_s, r9.xyz, 0).x;
  } else {
    r6.w = mad((int)v2.x, 36, 18);
    r6.w = t2[r6.w].val[12/4];
    r6.w = cmp(0 < r6.w);
    r6.w = r5.w ? r6.w : 0;
    r9.x = r6.w ? cb2[5].x : 1;
  }
  r6.w = 0.0799999982 * r7.y;
  r10.xyz = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r10.xyz = r7.xxx * r10.xyz + r6.www;
  r7.xyz = -r5.xyz * r7.xxx + r5.xyz;
  r11.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r10.xyz * cb0[137].www + cb0[137].xyz;
  r6.w = cmp(0 != cb0[183].w);
  r10.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r10.w = 0;
  r11.w = r7.x;
  r10.xyzw = r6.wwww ? r10.xyzw : r11.xyzw;
  r11.yz = r6.ww ? float2(0,0) : r7.yz;
  r7.xyz = r4.zwz * r4.zwy;
  r12.yw = r4.ww * r4.zy;
  r6.w = r4.y * r4.y + -r7.x;
  r13.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
  r12.xz = r7.zy * float2(1,3) + float2(0,-1);
  r12.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r12.xyzw;
  r6.w = 0.429042608 * r6.w;
  r13.x = 0.886227548;
  r7.x = dot(cb2[6].xyzw, r13.xyzw);
  r7.y = dot(cb2[9].xyzw, r12.xyzw);
  r7.x = r7.x + r7.y;
  r7.x = cb2[12].x * r6.w + r7.x;
  r14.x = dot(cb2[7].xyzw, r13.xyzw);
  r14.y = dot(cb2[10].xyzw, r12.xyzw);
  r14.x = r14.x + r14.y;
  r7.y = cb2[12].y * r6.w + r14.x;
  r13.x = dot(cb2[8].xyzw, r13.xyzw);
  r12.x = dot(cb2[11].xyzw, r12.xyzw);
  r12.x = r13.x + r12.x;
  r7.z = cb2[12].z * r6.w + r12.x;
  r7.xyz = max(float3(0,0,0), r7.xyz);
  r7.xyz = r5.www ? r7.xyz : 0;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r4.x = 1;
    r12.xyzw = r5.wwww ? cb2[4].wxyz : r4.xyzw;
    r4.x = 1 + -r12.x;
    r4.x = -r4.x * r4.x + 1;
    r0.xyz = r0.xyz * r0.www + -r12.yzw;
    r0.xyz = r4.xxx * r0.xyz + r12.yzw;
    r5.w = saturate(dot(r12.yzw, r4.yzw));
    r6.w = 1 + -r5.w;
    r12.y = r4.x * r6.w + r5.w;
  } else {
    r0.xyz = r4.yzw;
    r12.xy = float2(1,1);
  }
  r13.x = t3[0].val[0/4];
  r13.y = t3[0].val[0/4+1];
  r13.z = t3[0].val[0/4+2];
  r13.w = t3[0].val[0/4+3];
  r0.w = 1;
  r13.x = dot(r13.xyzw, r0.xyzw);
  r14.x = t3[1].val[0/4];
  r14.y = t3[1].val[0/4+1];
  r14.z = t3[1].val[0/4+2];
  r14.w = t3[1].val[0/4+3];
  r13.y = dot(r14.xyzw, r0.xyzw);
  r14.x = t3[2].val[0/4];
  r14.y = t3[2].val[0/4+1];
  r14.z = t3[2].val[0/4+2];
  r14.w = t3[2].val[0/4+3];
  r13.z = dot(r14.xyzw, r0.xyzw);
  r14.xyzw = r0.xyzz * r0.yzzx;
  r15.x = t3[3].val[0/4];
  r15.y = t3[3].val[0/4+1];
  r15.z = t3[3].val[0/4+2];
  r15.w = t3[3].val[0/4+3];
  r15.x = dot(r15.xyzw, r14.xyzw);
  r16.x = t3[4].val[0/4];
  r16.y = t3[4].val[0/4+1];
  r16.z = t3[4].val[0/4+2];
  r16.w = t3[4].val[0/4+3];
  r15.y = dot(r16.xyzw, r14.xyzw);
  r16.x = t3[5].val[0/4];
  r16.y = t3[5].val[0/4+1];
  r16.z = t3[5].val[0/4+2];
  r16.w = t3[5].val[0/4+3];
  r15.z = dot(r16.xyzw, r14.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r13.xyz = r15.xyz + r13.xyz;
  r0.xyz = r0.yzw * r0.xxx + r13.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r12.x * r12.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r10.xyz;
  r7.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r5.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r7.xy = -cb0[129].xy + v4.xy;
  r7.xy = cb0[131].zw * r7.xy;
  r7.xy = (uint2)r7.xy;
  r4.x = v4.w * cb1[3].x + cb1[3].y;
  r4.x = log2(r4.x);
  r4.x = cb1[3].z * r4.x;
  r4.x = max(0, r4.x);
  r4.x = (uint)r4.x;
  r5.w = asint(cb1[1].z) + -1;
  r4.x = min((uint)r5.w, (uint)r4.x);
  r7.xy = (uint2)r7.xy >> asuint(cb1[2].xx);
  r4.x = mad((int)r4.x, asint(cb1[1].y), (int)r7.y);
  r4.x = mad((int)r4.x, asint(cb1[1].x), (int)r7.x);
  r5.w = t2[r7.w].val[12/4];
  if (cb1[0].z != 0) {
    r7.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r7.yzw = r7.xyz ? float3(1,1,1) : float3(0,0,0);
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
        r6.w = t5.SampleLevel(s2_s, r12.xy, 0).x;
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
        r12.y = cmp(v4.w < r12.y);
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
          r15.x = t4.SampleLevel(s1_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb1[31].zwzw * r13.xyzw;
          r15.y = t4.SampleLevel(s1_s, r13.xy, 0).x;
          r15.z = t4.SampleLevel(s1_s, r13.zw, 0).x;
          r15.w = t4.SampleLevel(s1_s, r14.zw, 0).x;
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
    r7.x = 1;
    r7.x = dot(float4(1,1,1,1), r7.xyzw);
    r9.yzw = r7.yzw;
    r7.y = dot(r9.xyzw, float4(1,1,1,1));
    r7.y = -1 + r7.y;
    r7.x = r7.x * r7.y + 1;
    r7.y = saturate(v4.w * cb1[9].x + cb1[9].y);
    r7.y = r7.y * r7.y;
    r7.x = r7.x + -r6.w;
    r6.w = r7.y * r7.x + r6.w;
    r7.x = min(1, r6.w);
    r7.x = r7.x + r6.w;
    r7.x = cmp(0 < r7.x);
    if (r7.x != 0) {
      r7.x = dot(cb1[4].xyz, cb1[4].xyz);
      r7.x = rsqrt(r7.x);
      r7.xyz = cb1[4].xyz * r7.xxx;
      r7.w = dot(r4.yzw, r7.xyz);
      r12.x = saturate(r7.w);
      r12.y = max(cb0[226].y, r3.w);
      r7.x = dot(r3.xyz, r7.xyz);
      r7.y = r7.x * 2 + 2;
      r7.y = rsqrt(r7.y);
      r7.z = r7.w + r1.w;
      r7.z = saturate(r7.z * r7.y);
      r7.x = saturate(r7.y * r7.x + r7.y);
      r7.y = 9.99999975e-006 + abs(r1.w);
      r7.y = min(1, r7.y);
      r13.xyz = r12.xxx * r10.xyz;
      r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r13.xyz;
      r7.w = r12.y * r12.y;
      r12.z = r7.w * r7.w;
      r12.w = r7.z * r12.z + -r7.z;
      r7.z = r12.w * r7.z + 1;
      r7.z = r7.z * r7.z;
      r7.z = 3.14159274 * r7.z;
      r7.z = r12.z / r7.z;
      r12.y = -r12.y * r12.y + 1;
      r12.z = r7.y * r12.y + r7.w;
      r7.w = r12.x * r12.y + r7.w;
      r7.y = r7.y * r7.w;
      r7.y = r12.x * r12.z + r7.y;
      r7.y = rcp(r7.y);
      r7.y = r7.z * r7.y;
      r7.x = 1 + -r7.x;
      r7.z = r7.x * r7.x;
      r7.z = r7.z * r7.z;
      r7.w = r7.z * r7.x;
      r12.y = saturate(50 * r11.y);
      r7.x = -r7.z * r7.x + 1;
      r11.x = r10.w;
      r14.xyz = r7.xxx * r11.xyz;
      r7.xzw = r12.yyy * r7.www + r14.xyz;
      r7.y = 0.5 * r7.y;
      r7.xyz = r7.yyy * r7.xzw;
      r7.xyz = r12.xxx * r7.xyz;
      r12.xyz = cb1[5].xyz * r6.www;
      r13.xyz = r13.xyz * r12.xyz;
      r7.xyz = r12.yzx * r7.yzx;
      r13.w = r7.z;
    } else {
      r7.xy = float2(0,0);
      r13.xyzw = float4(0,0,0,0);
    }
    r6.w = asuint(cb1[8].z) >> 8;
    r6.w = (int)r5.w & (int)r6.w;
    r12.xyzw = r6.wwww ? r13.xyzw : float4(0,0,0,0);
    r7.xy = r6.ww ? r7.xy : float2(0,0);
  } else {
    r12.xyzw = float4(0,0,0,0);
    r7.xy = float2(0,0);
  }
  r6.w = (uint)r4.x << 1;
  r6.w = t7.Load(r6.w).x;
  r6.w = min(asuint(cb1[0].x), (uint)r6.w);
  bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r7.z = (((uint)r4.x << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  r7.z = t7.Load(r7.z).x;
  r6.w = min(asuint(cb1[0].x), (uint)r6.w);
  r7.w = dot(-r3.xyz, r4.yzw);
  r7.w = r7.w + r7.w;
  r13.xyz = r4.yzw * -r7.www + -r3.xyz;
  r7.w = max(cb0[226].y, r3.w);
  r13.w = r7.w * r7.w;
  r7.w = -r7.w * r7.w + 1;
  r14.x = r1.w + r1.w;
  r14.y = r14.x * r1.w + -1;
  r14.z = 9.99999975e-006 + abs(r1.w);
  r14.z = min(1, r14.z);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r14.w = r13.w * r13.w;
  r15.w = saturate(50 * r11.y);
  r9.yw = float2(1,1);
  r11.w = r10.w;
  r16.xyz = r12.xyz;
  r17.x = r12.w;
  r17.yz = r7.xy;
  r10.w = 0;
  while (true) {
    r16.w = cmp((uint)r10.w >= (uint)r6.w);
    if (r16.w != 0) break;
    r16.w = (int)r7.z + (int)r10.w;
    r16.w = t8.Load(r16.w).x;
    r17.w = (int)r16.w * 6;
    r18.xyzw = t6.Load(r17.w).xyzw;
    r17.w = mad((int)r16.w, 6, 1);
    r19.xyzw = t6.Load(r17.w).xyzw;
    r20.xy = mad((int2)r16.ww, int2(6,6), int2(2,3));
    r21.xyzw = t6.Load(r20.x).xyzw;
    r20.xyzw = t6.Load(r20.y).xyzw;
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
        r20.y = dot(r9.xyyy, r22.xyzw);
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
        r22.xyzw = t6.Load(r16.w).xyzw;
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
          r22.x = dot(r4.yzw, r21.xyz);
          r22.z = dot(r4.yzw, r18.xyz);
          r20.w = r22.z * r20.w;
          r20.y = r22.x * r20.y + r20.w;
          r23.x = 0.5 * r20.y;
        } else {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = 1 + r20.y;
          r23.y = rcp(r20.w);
          r20.y = rsqrt(r20.y);
          r24.xyz = r21.xyz * r20.yyy;
          r23.x = dot(r4.yzw, r24.xyz);
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
        r19.w = saturate(r19.w * r7.w);
        r16.w = saturate(r22.w * r16.w);
        r20.z = dot(r4.yzw, r18.xyz);
        r18.x = dot(r3.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.z + r1.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.w = cmp(0 < r19.w);
        if (r20.w != 0) {
          r21.x = -r19.w * r19.w + 1;
          r21.x = sqrt(r21.x);
          r21.y = dot(r1.ww, r20.zz);
          r21.z = r21.y + -r18.x;
          r22.x = cmp(r21.z >= r21.x);
          if (r22.x != 0) {
            r18.z = 1;
            r18.y = abs(r1.w);
          } else {
            r22.x = -r21.z * r21.z + 1;
            r22.x = rsqrt(r22.x);
            r22.x = r22.x * r19.w;
            r22.z = -r21.z * r20.z + r1.w;
            r22.w = r22.x * r22.z;
            r21.z = -r21.z * r18.x + r14.y;
            r23.x = r20.z * r20.z;
            r23.x = -r1.w * r1.w + -r23.x;
            r23.x = 1 + r23.x;
            r23.x = -r18.x * r18.x + r23.x;
            r21.y = saturate(r21.y * r18.x + r23.x);
            r21.y = sqrt(r21.y);
            r21.yz = r22.xx * r21.yz;
            r23.x = r21.y * r1.w;
            r23.y = r23.x + r23.x;
            r23.z = r20.z * r21.x + r1.w;
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
            r20.z = r20.z + r1.w;
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
        r9.z = r18.x ? r16.w : r14.w;
        r16.w = 0.25 * r19.w;
        r18.x = (uint)r9.z >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r18.x = r18.x * 3 + r19.w;
        r16.w = r18.x * r16.w;
        r18.x = 0.00100000005 + r18.y;
        r16.w = r16.w / r18.x;
        r23.x = r16.w + r9.z;
        r23.y = r9.z / r23.x;
        r20.zw = r20.ww ? r23.xy : r9.zw;
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
        r18.x = r18.z * r9.z + -r18.z;
        r18.x = r18.x * r18.z + 1;
        r18.x = r18.x * r18.x;
        r18.x = 3.14159274 * r18.x;
        r18.x = r9.z / r18.x;
        r16.w = r18.x * r16.w;
        r9.z = sqrt(r9.z);
        r18.x = 1 + -r9.z;
        r18.z = r14.z * r18.x + r9.z;
        r9.z = r20.y * r18.x + r9.z;
        r9.z = r14.z * r9.z;
        r9.z = r20.y * r18.z + r9.z;
        r9.z = rcp(r9.z);
        r9.z = r16.w * r9.z;
        r16.w = 1 + -r18.y;
        r18.x = r16.w * r16.w;
        r18.x = r18.x * r18.x;
        r18.y = r18.x * r16.w;
        r16.w = -r18.x * r16.w + 1;
        r20.yzw = r16.www * r11.wyz;
        r18.xyz = r15.www * r18.yyy + r20.yzw;
        r9.z = 0.5 * r9.z;
        r18.xyz = r9.zzz * r18.xyz;
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
    r9.z = (uint)r21.w >> 8;
    r9.z = (int)r5.w & (int)r9.z;
    r19.xyz = r20.xyz + r16.xyz;
    r18.xyz = r18.xyz + r17.xyz;
    r16.xyz = r9.zzz ? r19.xyz : r16.xyz;
    r17.xyz = r9.zzz ? r18.xyz : r17.xyz;
    r10.w = (int)r10.w + 1;
  }
  r7.xyz = r17.xyz + r16.xyz;
  r9.yzw = r14.xxx * r4.yzw + -r3.xyz;
  r1.w = saturate(r1.w);
  r3.x = (int)r4.x + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t7.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t7.Load(r3.x).x;
  r3.z = max(0.00100000005, r3.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r4.x = -1 + cb0[195].z;
  r4.x = r4.x + -r3.z;
  r9.x = 0;
  r12.xyz = float3(0,0,0);
  r5.w = 1;
  r6.w = 0;
  r7.w = 1;
  r10.w = 0;
  while (true) {
    r12.w = cmp((uint)r10.w >= (uint)r3.y);
    if (r12.w != 0) break;
    r12.w = cmp(r5.w < 0.00100000005);
    if (r12.w != 0) {
      break;
    }
    r12.w = (int)r3.x + (int)r10.w;
    r12.w = t8.Load(r12.w).x;
    r13.xyz = -cb3[r12.w+0].xyz + r2.xyz;
    r13.w = dot(r13.xyz, r13.xyz);
    r14.x = sqrt(r13.w);
    r14.y = cmp(r14.x < cb3[r12.w+0].w);
    if (r14.y != 0) {
      r14.y = cmp(0 < cb3[r12.w+341].z);
      if (r14.y != 0) {
        r14.y = (uint)r12.w << 2;
        r15.xyz = cb3[r14.y+1024].xyz * r2.yyy;
        r15.xyz = r2.xxx * cb3[r14.y+1023].xyz + r15.xyz;
        r15.xyz = r2.zzz * cb3[r14.y+1025].xyz + r15.xyz;
        r15.xyz = cb3[r14.y+1026].xyz + r15.xyz;
        r16.xyz = cb3[r14.y+1024].xyz * r9.zzz;
        r16.xyz = r9.yyy * cb3[r14.y+1023].xyz + r16.xyz;
        r14.yzw = r9.www * cb3[r14.y+1025].xyz + r16.xyz;
        r14.yzw = rcp(r14.yzw);
        r16.xyz = -r15.xyz * r14.yzw + -r14.yzw;
        r14.yzw = -r15.xyz * r14.yzw + r14.yzw;
        r14.yzw = max(r16.xyz, r14.yzw);
        r14.z = min(r14.z, r14.w);
        r14.y = min(r14.y, r14.z);
        r14.yzw = r14.yyy * r9.yzw + r2.xyz;
        r16.xyz = cb3[r12.w+682].xyz + cb3[r12.w+0].xyz;
        r16.xyz = -r16.xyz + r14.yzw;
        r14.y = cb3[r12.w+2387].w * 0.699999988;
        r17.xyz = -cb3[r12.w+2387].www * float3(0.5,0.5,0.5) + cb3[r12.w+2387].xyz;
        r18.xyz = cb3[r12.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb3[r12.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb3[r12.w+2387].xyz + -r17.xyz;
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
        r14.x = saturate(r14.x / cb3[r12.w+0].w);
        r14.y = dot(r9.yzw, r13.xyz);
        r13.w = -cb3[r12.w+0].w * cb3[r12.w+0].w + r13.w;
        r13.w = r14.y * r14.y + -r13.w;
        r14.z = cmp(r13.w >= 0);
        r13.w = sqrt(r13.w);
        r13.w = r13.w + -r14.y;
        r13.xyz = r13.www * r9.yzw + r13.xyz;
        r13.yzw = -cb3[r12.w+682].xyz + r13.xyz;
        r14.x = r14.x * 2.5 + -1.5;
        r14.x = max(0, r14.x);
        r14.y = r14.x * r14.x;
        r14.x = -r14.x * 2 + 3;
        r13.x = -r14.y * r14.x + 1;
        r17.xyzw = r14.zzzz ? r13.xyzw : r9.xyzw;
        r16.xyz = r17.yzw;
      }
      r16.w = cb3[r12.w+341].y;
      r13.xyzw = t10.SampleLevel(s4_s, r16.xyzw, r4.x).xyzw;
      r13.xyz = cb3[r12.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r17.xxx;
      r12.xyz = r13.xyz * r5.www + r12.xyz;
      r13.x = -r13.w * r17.x + 1;
      r5.w = r13.x * r5.w;
      r12.w = cb3[r12.w+682].w * r17.x;
      r6.w = r12.w * r7.w + r6.w;
      r12.w = 1 + -r17.x;
      r7.w = r12.w * r7.w;
    }
    r10.w = (int)r10.w + 1;
  }
  r12.xyz = cb0[157].xyz * r12.xyz;
  r3.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.w = r6.w * r3.x;
  r3.x = cmp(0 < cb1[116].y);
  if (r3.x != 0) {
    r3.x = cb1[116].x + -r3.z;
    r3.x = -1 + r3.x;
    r3.xyz = t9.SampleLevel(s3_s, r9.yzw, r3.x).xyz;
    r4.x = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r4.x = cb1[117].x * r4.x;
    r3.xyz = cb0[187].xyz * r3.xyz;
    r6.w = cmp(cb1[116].z < 1);
    r13.xyz = r5.www * r3.xyz + r12.xyz;
    r13.w = r4.x * r7.w + r12.w;
    r3.xyz = r6.www ? float3(0,0,0) : r3.xyz;
    r12.xyzw = r6.wwww ? r13.xyzw : r12.xyzw;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r4.x = saturate(r3.w * cb0[197].x + cb0[197].y);
  r6.w = r4.x * -2 + 3;
  r4.x = r4.x * r4.x;
  r4.x = r6.w * r4.x;
  r6.w = max(9.99999975e-005, r12.w);
  r0.w = r0.w / r6.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r4.x * r0.w + 1;
  r3.xyz = r5.www * r3.xyz;
  r3.xyz = r12.xyz * r0.www + r3.xyz;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xy = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r12.xyzw = cb0[1].xyzw * r1.yyyy;
    r12.xyzw = r1.xxxx * cb0[0].xyzw + r12.xyzw;
    r12.xyzw = r1.zzzz * cb0[2].xyzw + r12.xyzw;
    r12.xyzw = cb0[3].xyzw + r12.xyzw;
    r9.xyz = r9.yzw * v4.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r9.yyyy;
    r13.xyzw = r9.xxxx * cb0[0].xyzw + r13.xyzw;
    r9.xyzw = r9.zzzz * cb0[2].xyzw + r13.xyzw;
    r9.xyzw = cb0[3].xyzw + r9.xyzw;
    r4.x = rcp(r12.w);
    r13.xyz = r12.xyz * r4.xxx;
    r4.x = rcp(r9.w);
    r12.xy = v4.ww * cb0[30].zw + r12.zw;
    r5.w = rcp(r12.y);
    r9.xyz = r9.xyz * r4.xxx + -r13.xyz;
    r4.x = dot(r9.xy, r9.xy);
    r4.x = sqrt(r4.x);
    r6.w = 0.5 * r4.x;
    r12.yz = r13.xy * r6.ww + r9.xy;
    r12.yz = -r4.xx * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r9.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r4.x = min(r12.y, r12.z);
    r4.x = r4.x / r6.w;
    r9.xyz = r9.xyz * r4.xxx;
    r4.x = -r12.x * r5.w + r13.z;
    r4.x = 4 * r4.x;
    r4.x = max(abs(r9.z), r4.x);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb1[176].xy * r12.xy;
    r9.xy = cb1[176].xy * r9.xy;
    r5.w = 0.0833333358 * r4.x;
    r9.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r9.xyz;
    r12.xyz = r9.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r14.x = 0;
    r15.x = 0;
    r13.xyz = float3(0,0,0);
    r6.w = 0;
    r7.w = 0;
    r9.w = 0;
    r10.w = 0;
    r12.w = 0;
    while (true) {
      r14.w = cmp((uint)r12.w >= 12);
      if (r14.w != 0) break;
      r14.w = (uint)r12.w;
      r16.xyzw = float4(1,2,3,4) + r14.wwww;
      r17.xyzw = r16.xxxy * r9.xyzz + r12.xyzz;
      r18.xyzw = r16.yyzz * r9.xyxy + r12.xyxy;
      r16.xyzw = r16.wwzw * r9.xyzz + r12.xyzz;
      r14.w = r3.w * 0.666666687 + r0.w;
      r19.x = r3.w * 0.666666687 + r14.w;
      r20.x = t13.SampleLevel(s5_s, r17.xy, r0.w).x;
      r20.y = t13.SampleLevel(s5_s, r18.xy, r0.w).x;
      r20.z = t13.SampleLevel(s5_s, r18.zw, r14.w).x;
      r20.w = t13.SampleLevel(s5_s, r16.xy, r14.w).x;
      r16.xy = r17.zw;
      r16.xyzw = r16.xyzw + -r20.xyzw;
      r17.xyzw = r4.xxxx * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r16.xyzw;
      r17.xyzw = cmp(abs(r17.xyzw) < r5.wwww);
      r18.xy = (int2)r17.zw | (int2)r17.xy;
      r14.w = (int)r18.y | (int)r18.x;
      if (r14.w != 0) {
        r15.x = r16.x;
        r13.xyz = r16.yzw;
        r6.w = r17.x;
        r7.w = r17.y;
        r9.w = r17.z;
        r10.w = -1;
        break;
      }
      r14.x = r16.w;
      r12.w = (int)r12.w + 4;
      r0.w = r19.x;
      r15.x = r16.x;
      r13.xyz = r16.yzw;
      r6.w = r17.x;
      r7.w = r17.y;
      r9.w = r17.z;
      r10.w = r14.w;
    }
    if (r10.w != 0) {
      r13.w = 2;
      r16.xy = r13.yz;
      r16.z = 3;
      r13.yzw = r9.www ? r13.xyw : r16.xyz;
      r15.y = r13.x;
      r15.z = 1;
      r13.xyz = r7.www ? r15.xyz : r13.yzw;
      r14.y = r15.x;
      r14.z = 0;
      r13.xyz = r6.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r12.w;
      r0.w = r13.z + r0.w;
      r4.x = r13.x + -r13.y;
      r4.x = saturate(r13.x / r4.x);
      r0.w = r4.x + r0.w;
      r9.xyz = r9.xyz * r0.www + r12.xyz;
      r9.xy = cb1[176].zw * r9.xy;
      r9.xy = r9.xy * float2(2,-2) + float2(-1,1);
      r9.xy = cb0[66].xy * r9.xy;
      r9.xy = r9.xy / cb0[66].xy;
      r12.xyz = cb0[123].xyw * r9.yyy;
      r12.xyz = r9.xxx * cb0[122].xyw + r12.xyz;
      r12.xyz = r9.zzz * cb0[124].xyw + r12.xyz;
      r12.xyz = cb0[125].xyw + r12.xyz;
      r9.zw = r12.xy / r12.zz;
      r12.xy = r9.zw * cb1[177].xy + cb1[177].zw;
      r9.xy = saturate(abs(r9.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r9.xy, r9.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r9.xy = saturate(abs(r9.zw) * float2(5,5) + float2(-4,-4));
      r4.x = dot(r9.xy, r9.xy);
      r4.x = 1 + -r4.x;
      r4.x = max(0, r4.x);
      r0.w = min(r4.x, r0.w);
      r9.xyz = t14.SampleLevel(s6_s, r12.xy, 0).xyz;
      r9.xyz = min(float3(0,0,0), -r9.xyz);
      r4.x = saturate(-r3.w * 6.5999999 + 2);
      r0.w = r4.x * r0.w;
      r4.x = 1;
      r9.xyz = -r9.xyz * r0.www;
      r9.xyz = cb1[178].xxx * r9.xyz;
      r0.w = -r4.x * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r9.xyz;
    }
  }
  r9.xyzw = r3.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r9.x * r9.x;
  r1.w = -9.27999973 * r1.w;
  r1.w = exp2(r1.w);
  r0.w = min(r1.w, r0.w);
  r0.w = r0.w * r9.x + r9.y;
  r9.xy = r0.ww * float2(-1.03999996,1.03999996) + r9.zw;
  r11.xyz = r11.wyz;
  r0.w = r15.w * r9.y;
  r9.xyz = r11.xyz * r9.xxx + r0.www;
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
    r1.w = dot(cb1[122].xyz, r4.yzw);
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
      r13.xyz = cb1[127].xyz * r4.zzz;
      r4.xyz = r4.yyy * cb1[126].xyz + r13.xyz;
      r4.xyz = r4.www * cb1[128].xyz + r4.xyz;
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
      r4.xyzw = t11.SampleLevel(s4_s, r4.xy, 0).xyzw;
      r0.w = r4.w * r0.w;
    } else {
      r4.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r3.xyz = r0.www * r3.xyz + r4.xyz;
  }
  r3.xyz = r3.xyz * r9.xyz;
  r4.xyz = r11.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r11.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r11.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r3.xyz = r3.xyz * r4.xyz + r7.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r4.xyz = cb0[5].xyw * r2.yyy;
    r4.xyz = r2.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r2.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r7.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r4.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r7.z = cb0[208].z * r0.w;
    r4.xyzw = t12.SampleLevel(s0_s, r7.xyz, 0).xyzw;
    r7.x = v3.w * r4.w;
    r4.xyz = v3.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v3.xyz;
    r7.x = v3.w;
  }
  r7.yzw = r11.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r7.yzw = r7.yzw + -r3.xyz;
  r3.xyz = cb0[145].yyy * r7.yzw + r3.xyz;
  r8.xyz = max(float3(0,0,0), r6.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.y = t2[r6.y].val[0/4];
    r7.z = t2[r6.y].val[0/4+1];
    r7.w = t2[r6.y].val[0/4+2];
    r7.yzw = float3(1,1,1) + r7.yzw;
    r6.xyz = cmp(r7.yzw < abs(r6.xzw));
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
  r0.xyz = r0.xyz * r7.xxx + r4.xyz;
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