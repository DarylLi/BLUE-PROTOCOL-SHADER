// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

TextureCubeArray<float4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<uint4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
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
  r0.xyz = r0.xyz * r0.www;
  r1.w = dot(r0.zxy, r3.xyz);
  r4.xyz = r1.www * r0.zxy;
  r4.xyz = r4.xyz * float3(2,2,2) + -r3.xyz;
  r5.xyz = t13.SampleBias(s7_s, v2.xy, cb0[143].y).xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[6].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb3[2].xyz * r5.xyz;
  r6.xyz = cb3[6].zzz * r5.xyz;
  r5.xyz = -r5.xyz * cb3[6].zzz + cb3[3].xyz;
  r5.xyz = cb3[6].www * r5.xyz + r6.xyz;
  r4.xyz = t15.Sample(s9_s, r4.xyz).xyz;
  r3.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r3.www + -r4.xyz;
  r4.xyz = cb3[7].xxx * r6.xyz + r4.xyz;
  r4.xyz = cb3[7].yyy * r4.xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb3[7].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz * cb3[7].www + cb3[5].xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r6.xy = cb3[8].zw * v2.xy;
  r3.w = t14.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r3.w = saturate(cb3[9].x + r3.w);
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r6.xy = saturate(cb3[8].xy);
  r3.w = r3.w * cb0[139].y + cb0[139].x;
  r7.w = saturate(cb3[9].y);
  r4.w = 0.0799999982 * r6.y;
  r6.yzw = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r6.yzw = r6.xxx * r6.yzw + r4.www;
  r8.xyz = -r4.xyz * r6.xxx + r4.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.yzw * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r9.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r9.w = 0;
  r8.w = r6.x;
  r8.xyzw = r4.wwww ? r9.xyzw : r8.xyzw;
  r6.yz = r4.ww ? float2(0,0) : r6.yz;
  r9.xy = float2(1,0.5) * v3.xy;
  r9.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t12.Sample(s6_s, r9.xy).xyzw;
  r9.xyzw = t12.Sample(s6_s, r9.zw).xyzw;
  r4.w = r9.w * 0.00392156886 + r10.w;
  r4.w = -0.00196078443 + r4.w;
  r11.xyzw = mad((int4)w4.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r13.x = t1[r11.y].val[0/4];
  r13.y = t1[r11.y].val[0/4+1];
  r13.z = t1[r11.y].val[0/4+2];
  r13.w = t1[r11.y].val[0/4+3];
  r4.w = r4.w * r12.w + r13.w;
  r10.xyz = r10.xyz * r10.xyz;
  r10.xyz = r10.xyz * r12.xyz + r13.xyz;
  r4.w = exp2(r4.w);
  r4.w = -0.0185813606 + r4.w;
  r12.x = t1[r11.z].val[0/4];
  r12.y = t1[r11.z].val[0/4+1];
  r12.z = t1[r11.z].val[0/4+2];
  r12.w = t1[r11.z].val[0/4+3];
  r11.x = t1[r11.w].val[0/4];
  r11.y = t1[r11.w].val[0/4+1];
  r11.z = t1[r11.w].val[0/4+2];
  r11.w = t1[r11.w].val[0/4+3];
  r9.xyzw = r9.xyzw * r12.xyzw + r11.xyzw;
  r0.w = 1;
  r0.w = dot(r9.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r4.w * r0.w;
  r9.xyz = r0.www * r10.xyz;
  r9.xyz = cb0[157].xyz * r9.xyz;
  r0.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r9.xyz * r8.xyz;
  r10.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r4.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r10.xy = -cb0[129].xy + v6.xy;
  r10.xy = cb0[131].zw * r10.xy;
  r10.xy = (uint2)r10.xy;
  r4.w = v6.w * cb1[3].x + cb1[3].y;
  r4.w = log2(r4.w);
  r4.w = cb1[3].z * r4.w;
  r4.xyzw = max(float4(1,1,1,0), r4.xyzw);
  r4.w = (uint)r4.w;
  r5.w = asint(cb1[1].z) + -1;
  r4.w = min((uint)r5.w, (uint)r4.w);
  r10.xy = (uint2)r10.xy >> asuint(cb1[2].xx);
  r4.w = mad((int)r4.w, asint(cb1[1].y), (int)r10.y);
  r4.w = mad((int)r4.w, asint(cb1[1].x), (int)r10.x);
  r5.w = mad((int)v4.x, 36, 23);
  r5.w = t0[r5.w].val[12/4];
  if (cb1[0].z != 0) {
    r10.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r10.yzw = r10.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r11.xyzw = cb1[51].xyzw * r2.yyyy;
      r11.xyzw = r2.xxxx * cb1[50].xyzw + r11.xyzw;
      r11.xyzw = r2.zzzz * cb1[52].xyzw + r11.xyzw;
      r11.xyzw = cb1[53].xyzw + r11.xyzw;
      r11.xy = r11.xy / r11.ww;
      r12.xy = cmp(r11.xy >= float2(0,0));
      r12.zw = cmp(float2(1,1) >= r11.xy);
      r12.xy = r12.zw ? r12.xy : 0;
      r9.w = r12.y ? r12.x : 0;
      if (r9.w != 0) {
        r9.w = t3.SampleLevel(s2_s, r11.xy, 0).x;
        r11.x = cmp(r11.z < r9.w);
        r9.w = cmp(0.99000001 < r9.w);
        r9.w = (int)r9.w | (int)r11.x;
        r9.w = r9.w ? 1.000000 : 0;
      } else {
        r9.w = 1;
      }
    } else {
      r9.w = 1;
    }
    if (cb1[9].z != 0) {
      r11.x = cb1[9].z;
      r11.y = 0;
      while (true) {
        r11.z = cmp((uint)r11.y >= asuint(cb1[9].z));
        if (r11.z != 0) break;
        r11.z = dot(cb1[10].xyzw, icb[r11.y+0].xyzw);
        r11.z = cmp(v6.w < r11.z);
        if (r11.z != 0) {
          r11.x = r11.y;
          break;
        }
        r11.y = (int)r11.y + 1;
      }
      r11.y = cmp((uint)r11.x < asuint(cb1[9].z));
      if (r11.y != 0) {
        r11.y = (uint)r11.x << 2;
        r12.xyzw = cb1[r11.y+12].xyzw * r2.yyyy;
        r12.xyzw = r2.xxxx * cb1[r11.y+11].xyzw + r12.xyzw;
        r12.xyzw = r2.zzzz * cb1[r11.y+13].xyzw + r12.xyzw;
        r12.xyzw = cb1[r11.y+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r11.yz = cmp(r13.zw >= cb1[r11.x+27].xy);
        r11.xw = cmp(cb1[r11.x+27].zw >= r13.zw);
        r11.xy = r11.xw ? r11.yz : 0;
        r11.x = r11.y ? r11.x : 0;
        if (r11.x != 0) {
          r11.xyzw = r13.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r12.xy = frac(r11.zw);
          r11.xyzw = floor(r11.xyzw);
          r13.xyzw = float4(0.5,1.5,0.5,0.5) + r11.zwzw;
          r13.xyzw = cb1[31].zwzw * r13.xyzw;
          r14.x = t2.SampleLevel(s1_s, r13.xy, 0).x;
          r11.xyzw = float4(1.5,1.5,1.5,0.5) + r11.xyzw;
          r11.xyzw = cb1[31].zwzw * r11.xyzw;
          r14.y = t2.SampleLevel(s1_s, r11.xy, 0).x;
          r14.z = t2.SampleLevel(s1_s, r11.zw, 0).x;
          r14.w = t2.SampleLevel(s1_s, r13.zw, 0).x;
          r11.x = r12.z * 4000 + -1;
          r11.xyzw = saturate(r14.xyzw * float4(4000,4000,4000,4000) + -r11.xxxx);
          r11.yz = r11.zy + -r11.wx;
          r11.xy = r12.xx * r11.yz + r11.wx;
          r11.y = r11.y + -r11.x;
          r11.x = r12.y * r11.y + r11.x;
        } else {
          r11.x = 1;
        }
      } else {
        r11.x = 1;
      }
    } else {
      r11.x = 1;
    }
    r10.x = 1;
    r10.x = dot(float4(1,1,1,1), r10.xyzw);
    r10.y = -1 + r9.w;
    r10.x = r10.x * r10.y + 1;
    r10.y = saturate(v6.w * cb1[9].x + cb1[9].y);
    r10.y = r10.y * r10.y;
    r10.x = r10.x + -r11.x;
    r10.x = r10.y * r10.x + r11.x;
    r10.y = min(1, r10.x);
    r10.y = r10.x + r10.y;
    r10.y = cmp(0 < r10.y);
    if (r10.y != 0) {
      r10.y = dot(cb1[4].xyz, cb1[4].xyz);
      r10.y = rsqrt(r10.y);
      r10.yzw = cb1[4].xyz * r10.yyy;
      r11.x = dot(r0.zxy, r10.yzw);
      r11.y = saturate(r11.x);
      r11.z = max(cb0[226].y, r3.w);
      r10.y = dot(r3.xyz, r10.yzw);
      r10.z = r10.y * 2 + 2;
      r10.z = rsqrt(r10.z);
      r10.w = r11.x + r1.w;
      r10.w = saturate(r10.w * r10.z);
      r10.y = saturate(r10.z * r10.y + r10.z);
      r10.z = 9.99999975e-006 + abs(r1.w);
      r10.z = min(1, r10.z);
      r12.xyz = r11.yyy * r8.xyz;
      r12.xyz = float3(0.318309873,0.318309873,0.318309873) * r12.xyz;
      r11.x = r11.z * r11.z;
      r11.w = r11.x * r11.x;
      r12.w = r10.w * r11.w + -r10.w;
      r10.w = r12.w * r10.w + 1;
      r10.w = r10.w * r10.w;
      r10.w = 3.14159274 * r10.w;
      r10.w = r11.w / r10.w;
      r11.z = -r11.z * r11.z + 1;
      r11.w = r10.z * r11.z + r11.x;
      r11.x = r11.y * r11.z + r11.x;
      r10.z = r11.x * r10.z;
      r10.z = r11.y * r11.w + r10.z;
      r10.z = rcp(r10.z);
      r10.z = r10.w * r10.z;
      r10.y = 1 + -r10.y;
      r10.w = r10.y * r10.y;
      r10.w = r10.w * r10.w;
      r11.x = r10.w * r10.y;
      r11.z = saturate(50 * r6.y);
      r10.y = -r10.w * r10.y + 1;
      r6.x = r8.w;
      r13.xyz = r10.yyy * r6.xyz;
      r11.xzw = r11.zzz * r11.xxx + r13.xyz;
      r10.y = 0.5 * r10.z;
      r10.yzw = r10.yyy * r11.xzw;
      r10.yzw = r11.yyy * r10.yzw;
      r11.xyz = cb1[5].xyz * r10.xxx;
      r12.xyz = r12.xyz * r11.xyz;
      r10.xyz = r11.yzx * r10.zwy;
      r12.w = r10.z;
    } else {
      r10.xy = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r10.z = asuint(cb1[8].z) >> 8;
    r10.z = (int)r5.w & (int)r10.z;
    r11.xyzw = r10.zzzz ? r12.xyzw : float4(0,0,0,0);
    r10.xy = r10.zz ? r10.xy : float2(0,0);
  } else {
    r11.xyzw = float4(0,0,0,0);
    r10.xy = float2(0,0);
    r9.w = 0;
  }
  r10.z = (uint)r4.w << 1;
  r10.z = t5.Load(r10.z).x;
  r10.z = min(asuint(cb1[0].x), (uint)r10.z);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r10.w = (((uint)r4.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r10.w = t5.Load(r10.w).x;
  r10.z = min(asuint(cb1[0].x), (uint)r10.z);
  r12.x = dot(-r3.yzx, r0.xyz);
  r12.x = r12.x + r12.x;
  r12.xyz = r0.zxy * -r12.xxx + -r3.xyz;
  r12.w = max(cb0[226].y, r3.w);
  r13.x = r12.w * r12.w;
  r12.w = -r12.w * r12.w + 1;
  r13.y = r1.w + r1.w;
  r13.z = r13.y * r1.w + -1;
  r13.w = 9.99999975e-006 + abs(r1.w);
  r13.w = min(1, r13.w);
  r14.xyz = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
  r14.w = r13.x * r13.x;
  r15.x = saturate(50 * r6.y);
  r16.y = 1;
  r6.w = r8.w;
  r15.yzw = r11.xyz;
  r17.x = r11.w;
  r17.yz = r10.xy;
  r8.w = 0;
  while (true) {
    r16.z = cmp((uint)r8.w >= (uint)r10.z);
    if (r16.z != 0) break;
    r16.z = (int)r8.w + (int)r10.w;
    r16.z = t6.Load(r16.z).x;
    r16.w = (int)r16.z * 6;
    r18.xyzw = t4.Load(r16.w).xyzw;
    r16.w = mad((int)r16.z, 6, 1);
    r19.xyzw = t4.Load(r16.w).xyzw;
    r20.xy = mad((int2)r16.zz, int2(6,6), int2(2,3));
    r21.xyzw = t4.Load(r20.x).xyzw;
    r20.xyzw = t4.Load(r20.y).xyzw;
    r16.w = cmp(r19.w == 0.000000);
    r17.w = cmp(-2 < r20.x);
    r18.xyz = r18.xyz + -r2.xyz;
    r22.x = dot(r18.xyz, r18.xyz);
    r22.y = rsqrt(r22.x);
    r22.yzw = r22.yyy * r18.xyz;
    r23.x = r18.w * r18.w;
    r22.x = r23.x * r22.x;
    r22.x = -r22.x * r22.x + 1;
    r22.x = max(0, r22.x);
    r22.x = r22.x * r22.x;
    r23.xyz = r18.xyz * r18.www;
    r18.w = dot(r23.xyz, r23.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r19.w * r18.w;
    r18.w = exp2(r18.w);
    r18.w = r16.w ? r22.x : r18.w;
    r19.w = dot(r22.yzw, r21.xyz);
    r19.w = r19.w + -r20.x;
    r19.w = saturate(r19.w * r20.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r17.w = r17.w ? r19.w : r18.w;
    r18.w = cmp(0 < r17.w);
    if (r18.w != 0) {
      r18.w = (int)r21.w & 255;
      r18.w = r18.w ? 1 : 0;
      if (r18.w != 0) {
        r22.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r22.xyzw = r22.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r18.w = (uint)r21.w >> 4;
        if (1 == 0) r19.w = 0; else if (1+4 < 32) {         r19.w = (uint)r21.w << (32-(1 + 4)); r19.w = (uint)r19.w >> (32-1);        } else r19.w = (uint)r21.w >> 4;
        r23.x = r19.w ? 1 : 0;
        r21.xyz = (int3)r18.www & int3(2,4,8);
        r23.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r18.w = dot(r23.xyzw, float4(1,1,1,1));
        r19.w = dot(r22.xyzw, float4(1,1,1,1));
        r20.x = r9.w * r22.x + -1;
        r19.w = r19.w * r20.x + 1;
        r20.xy = r19.ww * r18.ww;
      } else {
        r20.xy = float2(1,1);
      }
      r18.w = r20.x + r20.y;
      r18.w = cmp(0 < r18.w);
      if (r18.w != 0) {
        r16.z = mad((int)r16.z, 6, 4);
        r22.xyzw = t4.Load(r16.z).xyzw;
        r16.z = f16tof32(r20.w);
        r18.w = 0.5 * r16.z;
        r21.xyz = -r18.www * r22.xyz + r18.xyz;
        r18.xyz = r18.www * r22.xyz + r18.xyz;
        r18.w = cmp(0 < r16.z);
        if (r18.w != 0) {
          r19.w = dot(r21.xyz, r21.xyz);
          r20.y = dot(r18.xyz, r18.xyz);
          r19.w = rsqrt(r19.w);
          r20.y = rsqrt(r20.y);
          r20.w = r20.y * r19.w;
          r22.x = dot(r21.xyz, r18.xyz);
          r22.x = r22.x * r20.w;
          r22.y = r22.x * 0.5 + r20.w;
          r22.y = 0.5 + r22.y;
          r23.y = r20.w / r22.y;
          r20.w = dot(r0.zxy, r21.xyz);
          r22.y = dot(r0.zxy, r18.xyz);
          r20.y = r22.y * r20.y;
          r19.w = r20.w * r19.w + r20.y;
          r23.x = 0.5 * r19.w;
        } else {
          r19.w = dot(r21.xyz, r21.xyz);
          r20.y = 1 + r19.w;
          r23.y = rcp(r20.y);
          r19.w = rsqrt(r19.w);
          r24.xyz = r21.xyz * r19.www;
          r23.x = dot(r0.zxy, r24.xyz);
          r22.x = 1;
        }
        r19.w = cmp(0 < r20.z);
        r20.y = r20.z * r20.z;
        r20.y = saturate(r20.y * r23.y);
        r20.y = sqrt(r20.y);
        r20.w = cmp(r23.x < r20.y);
        r22.y = max(r23.x, -r20.y);
        r22.y = r22.y + r20.y;
        r22.y = r22.y * r22.y;
        r20.y = 4 * r20.y;
        r20.y = r22.y / r20.y;
        r20.y = r20.w ? r20.y : r23.x;
        r19.w = saturate(r19.w ? r20.y : r23.x);
        r16.w = r16.w ? r23.y : 1;
        r18.xyz = r18.xyz + -r21.xyz;
        r20.y = dot(r12.xyz, r18.xyz);
        r23.xyz = r20.yyy * r12.xyz + -r18.xyz;
        r20.w = dot(r21.xyz, r23.xyz);
        r20.y = r20.y * r20.y;
        r16.z = r16.z * r16.z + -r20.y;
        r16.z = saturate(r20.w / r16.z);
        r18.xyz = r16.zzz * r18.xyz + r21.xyz;
        r18.xyz = r18.www ? r18.xyz : r21.xyz;
        r16.z = dot(r18.xyz, r18.xyz);
        r16.z = rsqrt(r16.z);
        r18.xyz = r18.xyz * r16.zzz;
        r18.w = r20.z * r16.z;
        r18.w = saturate(r18.w * r12.w);
        r16.z = saturate(r22.w * r16.z);
        r20.y = dot(r0.zxy, r18.xyz);
        r18.x = dot(r3.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.y + r1.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.z = cmp(0 < r18.w);
        if (r20.z != 0) {
          r20.w = -r18.w * r18.w + 1;
          r20.w = sqrt(r20.w);
          r21.x = dot(r1.ww, r20.yy);
          r21.y = r21.x + -r18.x;
          r21.z = cmp(r21.y >= r20.w);
          if (r21.z != 0) {
            r18.z = 1;
            r18.y = abs(r1.w);
          } else {
            r21.z = -r21.y * r21.y + 1;
            r21.z = rsqrt(r21.z);
            r21.z = r21.z * r18.w;
            r22.y = -r21.y * r20.y + r1.w;
            r22.z = r22.y * r21.z;
            r21.y = -r21.y * r18.x + r13.z;
            r22.w = r20.y * r20.y;
            r22.w = -r1.w * r1.w + -r22.w;
            r22.w = 1 + r22.w;
            r22.w = -r18.x * r18.x + r22.w;
            r21.x = saturate(r21.x * r18.x + r22.w);
            r21.x = sqrt(r21.x);
            r21.xy = r21.zz * r21.xy;
            r22.w = r21.x * r1.w;
            r23.x = r22.w + r22.w;
            r23.y = r20.y * r20.w + r1.w;
            r21.z = r21.z * r22.y + r23.y;
            r22.y = r18.x * r20.w + r21.y;
            r22.y = 1 + r22.y;
            r23.zw = r22.yy * r21.xz;
            r24.x = r23.x * r21.z;
            r22.w = r21.z * r22.w;
            r22.w = 0.5 * r22.w;
            r22.w = r23.z * -0.5 + r22.w;
            r24.y = -r23.z * 2 + r24.x;
            r24.x = r24.x * r24.y;
            r23.z = r23.z * r23.z + r24.x;
            r24.x = r22.y * r22.y;
            r22.y = r18.x * r20.w + r22.y;
            r22.y = r22.y * -0.5 + -0.5;
            r22.yw = r23.ww * r22.yw;
            r22.y = r23.y * r24.x + r22.y;
            r21.z = r21.z * r22.y + r23.z;
            r22.y = r22.w + r22.w;
            r23.y = r22.w * r22.w;
            r23.y = r21.z * r21.z + r23.y;
            r22.y = r22.y / r23.y;
            r21.z = r22.y * r21.z;
            r22.y = -r22.y * r22.w + 1;
            r21.x = r21.z * r21.x;
            r21.x = r22.y * r22.z + r21.x;
            r21.z = r21.z * r23.x;
            r21.y = r22.y * r21.y + r21.z;
            r20.y = r20.y * r20.w + r21.x;
            r18.x = r18.x * r20.w + r21.y;
            r20.w = r18.x * 2 + 2;
            r20.w = rsqrt(r20.w);
            r20.y = r20.y + r1.w;
            r18.z = saturate(r20.y * r20.w);
            r18.y = saturate(r20.w * r18.x + r20.w);
          }
        }
        r16.w = r16.w * r19.w;
        r21.xyz = r16.www * r14.xyz;
        r18.x = cmp(0 < r16.z);
        r16.z = r16.z * r16.z;
        r20.y = r18.y * 3.5999999 + 0.400000006;
        r16.z = r16.z / r20.y;
        r16.z = r13.x * r13.x + r16.z;
        r16.z = min(1, r16.z);
        r16.x = r18.x ? r16.z : r14.w;
        r16.z = 0.25 * r18.w;
        r18.x = (uint)r16.x >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r18.x = r18.x * 3 + r18.w;
        r16.z = r18.x * r16.z;
        r18.x = 0.00100000005 + r18.y;
        r16.z = r16.z / r18.x;
        r23.x = r16.x + r16.z;
        r23.y = r16.x / r23.x;
        r20.yz = r20.zz ? r23.xy : r16.xy;
        r16.z = cmp(r22.x < 1);
        r18.w = 1.00010002 + -r22.x;
        r20.w = 1 + r22.x;
        r18.w = r18.w / r20.w;
        r18.w = sqrt(r18.w);
        r20.w = 0.25 * r18.w;
        r22.x = (uint)r20.y >> 1;
        r22.x = (int)r22.x + 0x1fbd1df5;
        r18.w = r22.x * 3 + r18.w;
        r18.w = r20.w * r18.w;
        r18.x = r18.w / r18.x;
        r18.x = r20.y + r18.x;
        r18.x = r20.y / r18.x;
        r18.x = sqrt(r18.x);
        r18.x = r20.z * r18.x;
        r16.z = r16.z ? r18.x : r20.z;
        r18.x = r18.z * r16.x + -r18.z;
        r18.x = r18.x * r18.z + 1;
        r18.x = r18.x * r18.x;
        r18.x = 3.14159274 * r18.x;
        r18.x = r16.x / r18.x;
        r16.z = r18.x * r16.z;
        r16.x = sqrt(r16.x);
        r18.x = 1 + -r16.x;
        r18.z = r13.w * r18.x + r16.x;
        r16.x = r19.w * r18.x + r16.x;
        r16.x = r16.x * r13.w;
        r16.x = r19.w * r18.z + r16.x;
        r16.x = rcp(r16.x);
        r16.x = r16.z * r16.x;
        r16.z = 1 + -r18.y;
        r18.x = r16.z * r16.z;
        r18.x = r18.x * r18.x;
        r18.y = r18.x * r16.z;
        r16.z = -r18.x * r16.z + 1;
        r18.xzw = r16.zzz * r6.wyz;
        r18.xyz = r15.xxx * r18.yyy + r18.xzw;
        r16.x = 0.5 * r16.x;
        r18.xyz = r16.xxx * r18.xyz;
        r16.xzw = r18.xyz * r16.www;
        r18.xyz = r19.xyz * r17.www;
        r18.xyz = r18.xyz * r20.xxx;
        r19.xyz = r21.xyz * r18.xyz;
        r16.xzw = r18.xyz * r16.xzw;
      } else {
        r19.xyz = float3(0,0,0);
        r16.xzw = float3(0,0,0);
      }
    } else {
      r19.xyz = float3(0,0,0);
      r16.xzw = float3(0,0,0);
    }
    r17.w = (uint)r21.w >> 8;
    r17.w = (int)r5.w & (int)r17.w;
    r18.xyz = r19.xyz + r15.yzw;
    r16.xzw = r17.xyz + r16.xzw;
    r15.yzw = r17.www ? r18.xyz : r15.yzw;
    r17.xyz = r17.www ? r16.xzw : r17.xyz;
    r8.w = (int)r8.w + 1;
  }
  r10.xyz = r17.xyz + r15.yzw;
  r11.yzw = r13.yyy * r0.zxy + -r3.xyz;
  r1.w = saturate(r1.w);
  r3.x = (int)r4.w + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t5.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t5.Load(r3.x).x;
  r3.z = max(0.00100000005, r3.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r4.w = -1 + cb0[195].z;
  r3.z = r4.w + -r3.z;
  r11.x = 0;
  r12.xyz = float3(0,0,0);
  r4.w = 1;
  r5.w = 0;
  r8.w = 1;
  r9.w = 0;
  while (true) {
    r10.w = cmp((uint)r9.w >= (uint)r3.y);
    if (r10.w != 0) break;
    r10.w = cmp(r4.w < 0.00100000005);
    if (r10.w != 0) {
      break;
    }
    r10.w = (int)r3.x + (int)r9.w;
    r10.w = t6.Load(r10.w).x;
    r13.xyz = -cb2[r10.w+0].xyz + r2.xyz;
    r12.w = dot(r13.xyz, r13.xyz);
    r13.w = sqrt(r12.w);
    r14.x = cmp(r13.w < cb2[r10.w+0].w);
    if (r14.x != 0) {
      r14.x = cmp(0 < cb2[r10.w+341].z);
      if (r14.x != 0) {
        r14.x = (uint)r10.w << 2;
        r14.yzw = cb2[r14.x+1024].xyz * r2.yyy;
        r14.yzw = r2.xxx * cb2[r14.x+1023].xyz + r14.yzw;
        r14.yzw = r2.zzz * cb2[r14.x+1025].xyz + r14.yzw;
        r14.yzw = cb2[r14.x+1026].xyz + r14.yzw;
        r15.yzw = cb2[r14.x+1024].xyz * r11.zzz;
        r15.yzw = r11.yyy * cb2[r14.x+1023].xyz + r15.yzw;
        r15.yzw = r11.www * cb2[r14.x+1025].xyz + r15.yzw;
        r15.yzw = rcp(r15.yzw);
        r16.xyz = -r14.yzw * r15.yzw + -r15.yzw;
        r15.yzw = -r14.yzw * r15.yzw + r15.yzw;
        r15.yzw = max(r16.xyz, r15.yzw);
        r14.x = min(r15.z, r15.w);
        r14.x = min(r15.y, r14.x);
        r15.yzw = r14.xxx * r11.yzw + r2.xyz;
        r16.xyz = cb2[r10.w+682].xyz + cb2[r10.w+0].xyz;
        r16.xyz = -r16.xyz + r15.yzw;
        r14.x = cb2[r10.w+2387].w * 0.699999988;
        r15.yzw = -cb2[r10.w+2387].www * float3(0.5,0.5,0.5) + cb2[r10.w+2387].xyz;
        r17.xyz = cb2[r10.w+2387].xyz * r14.yzw;
        r18.xyz = cmp(r17.xyz < -r15.yzw);
        r19.xyz = r14.yzw * cb2[r10.w+2387].xyz + r15.yzw;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r15.yzw < r17.xyz);
        r14.yzw = r14.yzw * cb2[r10.w+2387].xyz + -r15.yzw;
        r14.yzw = abs(r14.yzw);
        r14.yzw = r17.xyz ? r14.yzw : 0;
        r15.y = dot(r18.xyz, float3(1,1,1));
        r14.y = dot(r14.yzw, float3(1,1,1));
        r14.y = r15.y + r14.y;
        r14.x = 1 / r14.x;
        r14.x = saturate(r14.y * r14.x);
        r14.y = r14.x * -2 + 3;
        r14.x = r14.x * r14.x;
        r14.x = -r14.y * r14.x + 1;
      } else {
        r13.w = saturate(r13.w / cb2[r10.w+0].w);
        r15.y = dot(r11.yzw, r13.xyz);
        r12.w = -cb2[r10.w+0].w * cb2[r10.w+0].w + r12.w;
        r12.w = r15.y * r15.y + -r12.w;
        r15.z = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r15.y;
        r13.xyz = r12.www * r11.yzw + r13.xyz;
        r17.yzw = -cb2[r10.w+682].xyz + r13.xyz;
        r12.w = r13.w * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.x = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r17.x = -r13.x * r12.w + 1;
        r14.xyzw = r15.zzzz ? r17.xyzw : r11.xyzw;
        r16.xyz = r14.yzw;
      }
      r16.w = cb2[r10.w+341].y;
      r13.xyzw = t7.SampleLevel(s3_s, r16.xyzw, r3.z).xyzw;
      r13.xyz = cb2[r10.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r14.xxx;
      r12.xyz = r13.xyz * r4.www + r12.xyz;
      r12.w = -r13.w * r14.x + 1;
      r4.w = r12.w * r4.w;
      r10.w = cb2[r10.w+682].w * r14.x;
      r5.w = r10.w * r8.w + r5.w;
      r10.w = 1 + -r14.x;
      r8.w = r10.w * r8.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r3.xyz = cb0[157].xyz * r12.xyz;
  r4.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r5.w * r4.w;
  r5.w = saturate(r3.w * cb0[197].x + cb0[197].y);
  r8.w = r5.w * -2 + 3;
  r5.w = r5.w * r5.w;
  r5.w = r8.w * r5.w;
  r4.w = max(9.99999975e-005, r4.w);
  r0.w = r0.w / r4.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r5.w * r0.w + 1;
  r3.xyz = r3.xyz * r0.www;
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
    r11.xyz = r11.yzw * v6.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r11.yyyy;
    r13.xyzw = r11.xxxx * cb0[0].xyzw + r13.xyzw;
    r11.xyzw = r11.zzzz * cb0[2].xyzw + r13.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r4.w = rcp(r12.w);
    r13.xyz = r12.xyz * r4.www;
    r4.w = rcp(r11.w);
    r12.xy = v6.ww * cb0[30].zw + r12.zw;
    r5.w = rcp(r12.y);
    r11.xyz = r11.xyz * r4.www + -r13.xyz;
    r4.w = dot(r11.xy, r11.xy);
    r4.w = sqrt(r4.w);
    r8.w = 0.5 * r4.w;
    r12.yz = r13.xy * r8.ww + r11.xy;
    r12.yz = -r4.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r11.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r4.w = min(r12.y, r12.z);
    r4.w = r4.w / r8.w;
    r11.xyz = r11.xyz * r4.www;
    r4.w = -r12.x * r5.w + r13.z;
    r4.w = 4 * r4.w;
    r4.w = max(abs(r11.z), r4.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb1[176].xy * r12.xy;
    r11.xy = cb1[176].xy * r11.xy;
    r5.w = 0.0833333358 * r4.w;
    r11.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r11.xyz;
    r12.xyz = r11.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r14.x = 0;
    r16.x = 0;
    r13.xyz = float3(0,0,0);
    r8.w = 0;
    r9.w = 0;
    r10.w = 0;
    r11.w = 0;
    r12.w = 0;
    while (true) {
      r14.w = cmp((uint)r12.w >= 12);
      if (r14.w != 0) break;
      r14.w = (uint)r12.w;
      r17.xyzw = float4(1,2,3,4) + r14.wwww;
      r18.xyzw = r17.xxxy * r11.xyzz + r12.xyzz;
      r19.xyzw = r17.yyzz * r11.xyxy + r12.xyxy;
      r17.xyzw = r17.wwzw * r11.xyzz + r12.xyzz;
      r14.w = r3.w * 0.666666687 + r0.w;
      r15.y = r3.w * 0.666666687 + r14.w;
      r20.x = t10.SampleLevel(s4_s, r18.xy, r0.w).x;
      r20.y = t10.SampleLevel(s4_s, r19.xy, r0.w).x;
      r20.z = t10.SampleLevel(s4_s, r19.zw, r14.w).x;
      r20.w = t10.SampleLevel(s4_s, r17.xy, r14.w).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r4.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r5.wwww);
      r15.zw = (int2)r18.zw | (int2)r18.xy;
      r14.w = (int)r15.w | (int)r15.z;
      if (r14.w != 0) {
        r16.x = r17.x;
        r13.xyz = r17.yzw;
        r8.w = r18.x;
        r9.w = r18.y;
        r10.w = r18.z;
        r11.w = -1;
        break;
      }
      r14.x = r17.w;
      r12.w = (int)r12.w + 4;
      r0.w = r15.y;
      r16.x = r17.x;
      r13.xyz = r17.yzw;
      r8.w = r18.x;
      r9.w = r18.y;
      r10.w = r18.z;
      r11.w = r14.w;
    }
    if (r11.w != 0) {
      r13.w = 2;
      r17.xy = r13.yz;
      r17.z = 3;
      r13.yzw = r10.www ? r13.xyw : r17.xyz;
      r16.y = r13.x;
      r16.z = 1;
      r13.xyz = r9.www ? r16.xyz : r13.yzw;
      r14.y = r16.x;
      r14.z = 0;
      r13.xyz = r8.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r12.w;
      r0.w = r13.z + r0.w;
      r4.w = r13.x + -r13.y;
      r4.w = saturate(r13.x / r4.w);
      r0.w = r4.w + r0.w;
      r11.xyz = r11.xyz * r0.www + r12.xyz;
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
      r0.w = dot(r11.xy, r11.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r11.xy = saturate(abs(r11.zw) * float2(5,5) + float2(-4,-4));
      r4.w = dot(r11.xy, r11.xy);
      r4.w = 1 + -r4.w;
      r4.w = max(0, r4.w);
      r0.w = min(r4.w, r0.w);
      r11.xyz = t11.SampleLevel(s5_s, r12.xy, 0).xyz;
      r11.xyz = min(float3(0,0,0), -r11.xyz);
      r4.w = saturate(-r3.w * 6.5999999 + 2);
      r0.w = r4.w * r0.w;
      r4.w = 1;
      r11.xyz = -r11.xyz * r0.www;
      r11.xyz = cb1[178].xxx * r11.xyz;
      r0.w = -r4.w * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r11.xyz;
    }
  }
  r11.xyzw = r3.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r11.x * r11.x;
  r1.w = -9.27999973 * r1.w;
  r1.w = exp2(r1.w);
  r0.w = min(r1.w, r0.w);
  r0.w = r0.w * r11.x + r11.y;
  r11.xy = r0.ww * float2(-1.03999996,1.03999996) + r11.zw;
  r6.xyz = r6.wyz;
  r0.w = r15.x * r11.y;
  r11.xyz = r6.xyz * r11.xxx + r0.www;
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
    r1.w = dot(cb1[122].yzx, r0.xyz);
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
      r13.xyz = cb1[127].xyz * r0.xxx;
      r13.xyz = r0.zzz * cb1[126].xyz + r13.xyz;
      r0.xyz = r0.yyy * cb1[128].xyz + r13.xyz;
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
      r12.xyzw = t8.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r12.xyz;
  }
  r0.xyz = r3.xyz * r11.xyz;
  r3.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r10.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r10.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r3.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r10.z = cb0[208].z * r0.w;
    r3.xyzw = t9.SampleLevel(s0_s, r10.xyz, 0).xyzw;
    r10.x = v5.w * r3.w;
    r3.xyz = v5.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v5.xyz;
    r10.x = v5.w;
  }
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r6.xyz = r6.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r7.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r5.x = t0[r5.x].val[0/4];
    r5.z = t0[r5.x].val[0/4+1];
    r5.w = t0[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t0[r5.y].val[0/4];
    r6.y = t0[r5.y].val[0/4+1];
    r6.z = t0[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
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
  r0.xyz = r9.xyz * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r7.xyz;
  r0.xyz = r0.xyz * r10.xxx + r3.xyz;
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