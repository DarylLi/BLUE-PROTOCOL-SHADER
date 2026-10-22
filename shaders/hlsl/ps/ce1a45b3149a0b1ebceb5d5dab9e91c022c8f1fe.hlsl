// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

TextureCube<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

TextureCubeArray<float4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

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

cbuffer cb6 : register(b6)
{
  float4 cb6[15];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[8];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2728];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
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
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r4.xyz = t16.Sample(s6_s, r4.xyz).xyz;
  r3.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r3.www + -r4.xyz;
  r4.xyz = cb6[10].xxx * r5.xyz + r4.xyz;
  r4.xyz = cb6[10].yyy * r4.xyz;
  r5.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb6[10].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r5.xyz ? float3(0,0,0) : r4.xyz;
  r3.w = max(0, r0.w);
  r4.w = 1 + -r3.w;
  r4.w = max(9.99999975e-005, abs(r4.w));
  r4.w = log2(r4.w);
  r4.w = cb6[11].x * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r4.w * 0.999000013 + 0.00100000005;
  r5.xyz = cb6[2].xyz * r4.www;
  r6.xyz = cb6[8].xyz * cb5[6].xyz;
  r4.w = dot(r0.xyz, cb5[7].xyz);
  r5.w = saturate(cb5[7].z);
  r7.xyz = cb0[67].xyz + -r2.xyz;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = sqrt(r6.w);
  r7.xyz = r7.xyz / r6.www;
  r7.xyz = cb5[7].xyz + r7.xyz;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = sqrt(r6.w);
  r6.w = saturate(r7.z / r6.w);
  r7.x = 11 * cb6[12].x;
  r7.x = exp2(r7.x);
  r7.y = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = r7.x * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r6.w * r5.w;
  r5.w = cb6[12].y * r5.w;
  r7.xzw = cb5[5].xyz * r5.www;
  r7.xyz = r7.yyy ? float3(0,0,0) : r7.xzw;
  r6.xyz = r6.xyz * r4.www + r7.xyz;
  r5.xyz = r5.xyz * cb6[11].yyy + r6.xyz;
  r4.xyz = r4.xyz * cb6[10].www + r5.xyz;
  r5.xyz = cb6[9].xyz + -r4.xyz;
  r4.xyz = cb6[12].zzz * r5.xyz + r4.xyz;
  r4.w = dot(v1.xyz, r3.xyz);
  r4.w = max(0, r4.w);
  r4.w = 1 + -r4.w;
  r4.w = max(9.99999975e-005, abs(r4.w));
  r4.w = log2(r4.w);
  r4.w = cb6[13].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r4.w * 0.999000013 + 0.00100000005;
  r4.w = min(1, r4.w);
  r4.w = cb6[13].z * r4.w;
  r4.w = max(cb6[13].w, r4.w);
  r4.w = max(0, r4.w);
  r5.w = saturate(cb6[14].x * r4.w);
  r6.xyz = saturate(cb6[5].xyz);
  r4.w = saturate(cb6[11].z);
  r6.w = saturate(cb6[12].w);
  r7.x = saturate(cb6[13].x);
  r7.x = r7.x * cb0[139].y + cb0[139].x;
  r7.y = 0.0799999982 * r6.w;
  r8.xyz = -r6.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r7.yzw = r4.www * r8.xyz + r7.yyy;
  r8.xyz = -r6.xyz * r4.www + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.yzw = r7.yzw * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.yzw * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r4.www ? r9.xyz : r8.xyz;
  r7.yzw = r4.www ? float3(0,0,0) : r7.yzw;
  r4.w = cmp(0 < cb0[215].x);
  r9.xyz = r0.yzy * r0.yzx;
  r10.yw = r0.zz * r0.yx;
  r6.w = r0.x * r0.x + -r9.x;
  r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r10.xz = r9.zy * float2(1,3) + float2(0,-1);
  r9.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r10.xyzw;
  r6.w = 0.429042608 * r6.w;
  r11.x = 0.886227548;
  r8.w = dot(cb2[6].xyzw, r11.xyzw);
  r10.x = dot(cb2[9].xyzw, r9.xyzw);
  r8.w = r10.x + r8.w;
  r10.x = cb2[12].x * r6.w + r8.w;
  r8.w = dot(cb2[7].xyzw, r11.xyzw);
  r10.w = dot(cb2[10].xyzw, r9.xyzw);
  r8.w = r10.w + r8.w;
  r10.y = cb2[12].y * r6.w + r8.w;
  r8.w = dot(cb2[8].xyzw, r11.xyzw);
  r9.x = dot(cb2[11].xyzw, r9.xyzw);
  r8.w = r9.x + r8.w;
  r10.z = cb2[12].z * r6.w + r8.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = r4.www ? r9.xyz : 0;
  r9.xyz = cb0[157].xyz * r9.xyz;
  r4.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r9.xyz * r8.xyz;
  r10.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r6.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r10.xy = -cb0[129].xy + v3.xy;
  r10.xy = cb0[131].zw * r10.xy;
  r10.xy = (uint2)r10.xy;
  r6.w = v3.w * cb1[3].x + cb1[3].y;
  r6.w = log2(r6.w);
  r6.w = cb1[3].z * r6.w;
  r6.xyzw = max(float4(1,1,1,0), r6.xyzw);
  r6.w = (uint)r6.w;
  r8.w = asint(cb1[1].z) + -1;
  r6.w = min((uint)r8.w, (uint)r6.w);
  r10.xy = (uint2)r10.xy >> asuint(cb1[2].xx);
  r6.w = mad((int)r6.w, asint(cb1[1].y), (int)r10.y);
  r6.w = mad((int)r6.w, asint(cb1[1].x), (int)r10.x);
  r0.w = r0.w + r0.w;
  r10.yzw = r0.www * r0.xyz + -r3.xyz;
  r0.w = min(1, r3.w);
  r3.x = (int)r6.w + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t2.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t2.Load(r3.x).x;
  r3.z = max(0.00100000005, r7.x);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r10.x = 0;
  r12.xyz = float3(0,0,0);
  r3.w = 1;
  r6.w = 0;
  r8.w = 1;
  r9.w = 0;
  while (true) {
    r12.w = cmp((uint)r9.w >= (uint)r3.y);
    if (r12.w != 0) break;
    r12.w = cmp(r3.w < 0.00100000005);
    if (r12.w != 0) {
      break;
    }
    r12.w = (int)r3.x + (int)r9.w;
    r12.w = t3.Load(r12.w).x;
    r13.xyz = -cb4[r12.w+0].xyz + r2.xyz;
    r13.w = dot(r13.xyz, r13.xyz);
    r14.x = sqrt(r13.w);
    r14.y = cmp(r14.x < cb4[r12.w+0].w);
    if (r14.y != 0) {
      r14.y = cmp(0 < cb4[r12.w+341].z);
      if (r14.y != 0) {
        r14.y = (uint)r12.w << 2;
        r15.xyz = cb4[r14.y+1024].xyz * r2.yyy;
        r15.xyz = r2.xxx * cb4[r14.y+1023].xyz + r15.xyz;
        r15.xyz = r2.zzz * cb4[r14.y+1025].xyz + r15.xyz;
        r15.xyz = cb4[r14.y+1026].xyz + r15.xyz;
        r16.xyz = cb4[r14.y+1024].xyz * r10.zzz;
        r16.xyz = r10.yyy * cb4[r14.y+1023].xyz + r16.xyz;
        r14.yzw = r10.www * cb4[r14.y+1025].xyz + r16.xyz;
        r14.yzw = rcp(r14.yzw);
        r16.xyz = -r15.xyz * r14.yzw + -r14.yzw;
        r14.yzw = -r15.xyz * r14.yzw + r14.yzw;
        r14.yzw = max(r16.xyz, r14.yzw);
        r14.z = min(r14.z, r14.w);
        r14.y = min(r14.y, r14.z);
        r14.yzw = r14.yyy * r10.yzw + r2.xyz;
        r16.xyz = cb4[r12.w+682].xyz + cb4[r12.w+0].xyz;
        r16.xyz = -r16.xyz + r14.yzw;
        r14.y = cb4[r12.w+2387].w * 0.699999988;
        r17.xyz = -cb4[r12.w+2387].www * float3(0.5,0.5,0.5) + cb4[r12.w+2387].xyz;
        r18.xyz = cb4[r12.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb4[r12.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb4[r12.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.z = dot(r19.xyz, float3(1,1,1));
        r14.w = dot(r15.xyz, float3(1,1,1));
        r14.z = r14.z + r14.w;
        r14.y = 1 / r14.y;
        r14.y = saturate(r14.z * r14.y);
        r14.z = r14.y * -2 + 3;
        r14.y = r14.y * r14.y;
        r15.x = -r14.z * r14.y + 1;
      } else {
        r14.x = saturate(r14.x / cb4[r12.w+0].w);
        r14.y = dot(r10.yzw, r13.xyz);
        r13.w = -cb4[r12.w+0].w * cb4[r12.w+0].w + r13.w;
        r13.w = r14.y * r14.y + -r13.w;
        r14.z = cmp(r13.w >= 0);
        r13.w = sqrt(r13.w);
        r13.w = r13.w + -r14.y;
        r13.xyz = r13.www * r10.yzw + r13.xyz;
        r13.yzw = -cb4[r12.w+682].xyz + r13.xyz;
        r14.x = r14.x * 2.5 + -1.5;
        r14.x = max(0, r14.x);
        r14.y = r14.x * r14.x;
        r14.x = -r14.x * 2 + 3;
        r13.x = -r14.y * r14.x + 1;
        r15.xyzw = r14.zzzz ? r13.xyzw : r10.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb4[r12.w+341].y;
      r13.xyzw = t4.SampleLevel(s2_s, r16.xyzw, r3.z).xyzw;
      r13.xyz = cb4[r12.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r15.xxx;
      r12.xyz = r13.xyz * r3.www + r12.xyz;
      r13.x = -r13.w * r15.x + 1;
      r3.w = r13.x * r3.w;
      r12.w = cb4[r12.w+682].w * r15.x;
      r6.w = r12.w * r8.w + r6.w;
      r12.w = 1 + -r15.x;
      r8.w = r12.w * r8.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r3.xyz = cb0[157].xyz * r12.xyz;
  r3.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r6.w * r3.w;
  r6.w = saturate(r7.x * cb0[197].x + cb0[197].y);
  r8.w = r6.w * -2 + 3;
  r6.w = r6.w * r6.w;
  r6.w = r8.w * r6.w;
  r3.w = max(9.99999975e-005, r3.w);
  r3.w = r4.w / r3.w;
  r3.w = min(cb0[197].z, r3.w);
  r3.w = -1 + r3.w;
  r3.w = r6.w * r3.w + 1;
  r3.xyz = r3.xyz * r3.www;
  r3.w = cmp(cb0[145].x == 0.000000);
  if (r3.w != 0) {
    r3.w = asuint(cb0[144].y);
    r12.xy = r3.ww * float2(32.6650009,11.8149996) + v3.xy;
    r3.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r3.w = frac(r3.w);
    r3.w = 52.9829178 * r3.w;
    r3.w = frac(r3.w);
    r3.w = -0.5 + r3.w;
    r12.xyzw = cb0[1].xyzw * r1.yyyy;
    r12.xyzw = r1.xxxx * cb0[0].xyzw + r12.xyzw;
    r12.xyzw = r1.zzzz * cb0[2].xyzw + r12.xyzw;
    r12.xyzw = cb0[3].xyzw + r12.xyzw;
    r10.xyz = r10.yzw * v3.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r10.yyyy;
    r13.xyzw = r10.xxxx * cb0[0].xyzw + r13.xyzw;
    r10.xyzw = r10.zzzz * cb0[2].xyzw + r13.xyzw;
    r10.xyzw = cb0[3].xyzw + r10.xyzw;
    r4.w = rcp(r12.w);
    r13.xyz = r12.xyz * r4.www;
    r4.w = rcp(r10.w);
    r12.xy = v3.ww * cb0[30].zw + r12.zw;
    r6.w = rcp(r12.y);
    r10.xyz = r10.xyz * r4.www + -r13.xyz;
    r4.w = dot(r10.xy, r10.xy);
    r4.w = sqrt(r4.w);
    r8.w = 0.5 * r4.w;
    r12.yz = r13.xy * r8.ww + r10.xy;
    r12.yz = -r4.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r10.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r4.w = min(r12.y, r12.z);
    r4.w = r4.w / r8.w;
    r10.xyz = r10.xyz * r4.www;
    r4.w = -r12.x * r6.w + r13.z;
    r4.w = 4 * r4.w;
    r4.w = max(abs(r10.z), r4.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb1[176].xy * r12.xy;
    r10.xy = cb1[176].xy * r10.xy;
    r6.w = 0.0833333358 * r4.w;
    r10.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r10.xyz;
    r12.xyz = r10.xyz * r3.www + r13.xyz;
    r3.w = 1;
    r15.x = 0;
    r13.xyz = float3(0,0,0);
    r8.w = 0;
    r9.w = 0;
    r10.w = 0;
    r12.w = 0;
    r14.xw = float2(0,0);
    while (true) {
      r15.w = cmp((uint)r14.w >= 12);
      if (r15.w != 0) break;
      r15.w = (uint)r14.w;
      r16.xyzw = float4(1,2,3,4) + r15.wwww;
      r17.xyzw = r16.xxxy * r10.xyzz + r12.xyzz;
      r18.xyzw = r16.yyzz * r10.xyxy + r12.xyxy;
      r16.xyzw = r16.wwzw * r10.xyzz + r12.xyzz;
      r15.w = r7.x * 0.666666687 + r3.w;
      r19.x = r7.x * 0.666666687 + r15.w;
      r20.x = t8.SampleLevel(s4_s, r17.xy, r3.w).x;
      r20.y = t8.SampleLevel(s4_s, r18.xy, r3.w).x;
      r20.z = t8.SampleLevel(s4_s, r18.zw, r15.w).x;
      r20.w = t8.SampleLevel(s4_s, r16.xy, r15.w).x;
      r16.xy = r17.zw;
      r16.xyzw = r16.xyzw + -r20.xyzw;
      r17.xyzw = r4.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r16.xyzw;
      r17.xyzw = cmp(abs(r17.xyzw) < r6.wwww);
      r18.xy = (int2)r17.zw | (int2)r17.xy;
      r15.w = (int)r18.y | (int)r18.x;
      if (r15.w != 0) {
        r15.x = r16.x;
        r13.xyz = r16.yzw;
        r8.w = r17.x;
        r9.w = r17.y;
        r10.w = r17.z;
        r12.w = -1;
        break;
      }
      r14.x = r16.w;
      r14.w = (int)r14.w + 4;
      r3.w = r19.x;
      r15.x = r16.x;
      r13.xyz = r16.yzw;
      r8.w = r17.x;
      r9.w = r17.y;
      r10.w = r17.z;
      r12.w = r15.w;
    }
    if (r12.w != 0) {
      r13.w = 2;
      r16.xy = r13.yz;
      r16.z = 3;
      r13.yzw = r10.www ? r13.xyw : r16.xyz;
      r15.y = r13.x;
      r15.z = 1;
      r13.xyz = r9.www ? r15.xyz : r13.yzw;
      r14.y = r15.x;
      r14.z = 0;
      r13.xyz = r8.www ? r14.xyz : r13.xyz;
      r3.w = (uint)r14.w;
      r3.w = r13.z + r3.w;
      r4.w = r13.x + -r13.y;
      r4.w = saturate(r13.x / r4.w);
      r3.w = r4.w + r3.w;
      r10.xyz = r10.xyz * r3.www + r12.xyz;
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
      r3.w = dot(r10.xy, r10.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r10.xy = saturate(abs(r10.zw) * float2(5,5) + float2(-4,-4));
      r4.w = dot(r10.xy, r10.xy);
      r4.w = 1 + -r4.w;
      r4.w = max(0, r4.w);
      r3.w = min(r4.w, r3.w);
      r10.xyz = t9.SampleLevel(s5_s, r12.xy, 0).xyz;
      r10.xyz = min(float3(0,0,0), -r10.xyz);
      r4.w = saturate(-r7.x * 6.5999999 + 2);
      r3.w = r4.w * r3.w;
      r4.w = 1;
      r10.xyz = -r10.xyz * r3.www;
      r10.xyz = cb1[178].xxx * r10.xyz;
      r3.w = -r4.w * r3.w + 1;
      r3.xyz = r3.xyz * r3.www + r10.xyz;
    }
  }
  r10.xyzw = r7.xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r3.w = r10.x * r10.x;
  r0.w = -9.27999973 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r10.x + r10.y;
  r10.xy = r0.ww * float2(-1.03999996,1.03999996) + r10.zw;
  r0.w = 50 * r7.z;
  r0.w = saturate(r0.w);
  r0.w = r0.w * r10.y;
  r10.xyz = r7.yzw * r10.xxx + r0.www;
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
    r3.w = -0.200000003 + r7.x;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.w;
    r2.w = cmp(0 < r0.w);
    if (r2.w != 0) {
      r12.xyz = -cb0[67].xyz + r2.xyz;
      r2.w = dot(r12.xyz, r12.xyz);
      r2.w = rsqrt(r2.w);
      r12.xyz = r12.xyz * r2.www;
      r2.w = dot(r12.xyz, -cb1[122].xyz);
      r2.w = r2.w + r2.w;
      r12.xyz = cb1[122].xyz * r2.www + r12.xyz;
      r13.xyz = cb1[127].xyz * r0.yyy;
      r13.xyz = r0.xxx * cb1[126].xyz + r13.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r13.xyz;
      r2.w = dot(r12.xyz, r0.xyz);
      r2.w = r2.w + r2.w;
      r0.xyz = r0.xyz * -r2.www + r12.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r12.xyz = cb0[13].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb0[12].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r12.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb1[r2.w+132].xyw * r0.yyy;
      r12.xyz = r0.xxx * cb1[r2.w+131].xyw + r12.xyz;
      r0.xyz = r0.zzz * cb1[r2.w+133].xyw + r12.xyz;
      r0.xyz = cb1[r2.w+134].xyw + r0.xyz;
      r2.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r2.w+139].xy + cb1[r2.w+139].zw;
      r12.xyzw = t5.SampleLevel(s2_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r12.xyz;
  }
  r0.xyz = r3.xyz * r10.xyz;
  r3.xyz = r7.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r7.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r7.yzw * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r0.w);
  r3.w = dot(r1.xyz, cb0[60].xyz);
  r2.w = r2.w / r3.w;
  r2.w = cb0[210].z * r2.w;
  r2.w = max(0, r2.w);
  r3.w = min(cb1[143].z, cb0[67].z);
  r4.w = cb0[67].z + -r3.w;
  r1.w = r4.w + r1.z;
  r4.w = dot(r1.xyw, r1.xyw);
  r6.w = rsqrt(r4.w);
  r4.w = r6.w * r4.w;
  r2.w = max(cb1[143].w, r2.w);
  r7.x = cmp(0 < r2.w);
  r8.w = r2.w * r6.w;
  r3.w = r8.w * r1.w + r3.w;
  r8.w = -r8.w * r1.w + r1.w;
  r2.w = -r2.w * r6.w + 1;
  r2.w = r2.w * r4.w;
  r9.w = -cb1[146].y + r3.w;
  r9.w = cb1[143].y * r9.w;
  r9.w = max(-127, r9.w);
  r9.w = exp2(-r9.w);
  r9.w = cb1[146].x * r9.w;
  r3.w = -cb1[144].w + r3.w;
  r3.w = cb1[144].y * r3.w;
  r3.xyzw = max(float4(1,1,1,-127), r3.xyzw);
  r3.w = exp2(-r3.w);
  r3.w = cb1[144].z * r3.w;
  r9.w = r7.x ? r9.w : cb1[143].x;
  r3.w = r7.x ? r3.w : cb1[144].x;
  r2.w = r7.x ? r2.w : r4.w;
  r7.x = r7.x ? r8.w : r1.w;
  r8.w = cb1[143].y * r7.x;
  r8.w = max(-127, r8.w);
  r10.x = exp2(-r8.w);
  r10.x = 1 + -r10.x;
  r10.x = r10.x / r8.w;
  r10.y = -r8.w * 0.240226507 + 0.693147182;
  r8.w = cmp(0.00999999978 < abs(r8.w));
  r8.w = r8.w ? r10.x : r10.y;
  r7.x = cb1[144].y * r7.x;
  r7.x = max(-127, r7.x);
  r10.x = exp2(-r7.x);
  r10.x = 1 + -r10.x;
  r10.x = r10.x / r7.x;
  r10.y = -r7.x * 0.240226507 + 0.693147182;
  r7.x = cmp(0.00999999978 < abs(r7.x));
  r7.x = r7.x ? r10.x : r10.y;
  r3.w = r7.x * r3.w;
  r3.w = r9.w * r8.w + r3.w;
  r7.x = r3.w * r2.w;
  r10.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r10.x != 0) {
    r8.w = saturate(r4.w * cb1[150].x + cb1[150].y);
    r10.xz = float2(1,-1) * cb1[149].yx;
    r12.x = dot(r1.xy, r10.xz);
    r12.y = dot(r1.xy, cb1[149].xy);
    r12.z = r1.w;
    r10.xzw = t6.SampleLevel(s3_s, r12.xyz, 0).xyz;
    r12.xyz = t6.SampleLevel(s3_s, r12.xyz, cb1[150].z).xyz;
    r10.xzw = -r12.xyz + r10.xzw;
    r10.xzw = r8.www * r10.xzw + r12.xyz;
    r10.xzw = cb1[145].xyz * r10.xzw;
  } else {
    r10.xzw = cb1[145].xyz;
  }
  r8.w = cmp(cb1[147].w >= 0);
  r9.w = cmp(cb1[146].z == 0.000000);
  r8.w = r8.w ? r9.w : 0;
  if (r8.w != 0) {
    r12.xyz = r6.www * r1.xyw;
    r1.w = saturate(dot(r12.xyz, cb1[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb1[148].w * r1.w;
    r1.w = exp2(r1.w);
    r12.xyz = cb1[148].xyz * r1.www;
    r1.w = -cb1[147].w + r2.w;
    r1.w = max(0, r1.w);
    r1.w = r3.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r12.xyz = r12.xyz * r1.www;
  } else {
    r12.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r7.x);
  r1.w = min(1, r1.w);
  r12.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r4.w);
  r1.w = r1.w ? r10.y : 0;
  r12.xyzw = r1.wwww ? float4(1,0,0,0) : r12.wxyz;
  r1.w = 1 + -r12.x;
  r10.xyz = r10.xzw * r1.www + r12.yzw;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r12.yzw = cb0[5].xyw * r2.yyy;
    r12.yzw = r2.xxx * cb0[4].xyw + r12.yzw;
    r12.yzw = r2.zzz * cb0[6].xyw + r12.yzw;
    r12.yzw = cb0[7].xyw + r12.yzw;
    r12.yz = r12.yz / r12.ww;
    r13.xy = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r12.w * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r13.z = cb0[208].z * r1.w;
    r13.xyzw = t7.SampleLevel(s0_s, r13.xyz, 0).xyzw;
    r10.xyz = r10.xyz * r13.www + r13.xyz;
    r12.x = r13.w * r12.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r12.yzw = cb0[5].xyw * r2.yyy;
    r12.yzw = r2.xxx * cb0[4].xyw + r12.yzw;
    r12.yzw = r2.zzz * cb0[6].xyw + r12.yzw;
    r12.yzw = cb0[7].xyw + r12.yzw;
    r1.w = cmp(0 != cb0[184].x);
    r13.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r12.yz = r12.yz / r12.ww;
    r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r13.xyz;
    r2.w = dot(r13.xyz, r13.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r14.z = sqrt(r3.w);
    r3.w = cb0[181].y * r14.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r13.xyz = r13.xyz * r2.www;
    r2.w = -r13.z * r13.z + 1;
    r2.w = sqrt(r2.w);
    r15.y = r13.z * 0.5 + 0.5;
    r13.xy = r13.xy / r2.ww;
    r2.w = 1 + -abs(r13.x);
    r2.w = sqrt(r2.w);
    r4.w = abs(r13.x) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r13.x) + -0.212114394;
    r4.w = r4.w * abs(r13.x) + 1.57072878;
    r6.w = r4.w * r2.w;
    r6.w = r6.w * -2 + 3.14159274;
    r7.x = cmp(r13.x < -r13.x);
    r6.w = r7.x ? r6.w : 0;
    r2.w = r4.w * r2.w + r6.w;
    r4.w = cmp(r13.y < 0);
    r6.w = 6.28318548 + -r2.w;
    r2.w = r4.w ? r6.w : r2.w;
    r15.x = 0.159154937 * r2.w;
    r13.xy = cb0[180].zw * float2(0.5,0.5) + r15.xy;
    r13.zw = float2(1,1) + cb0[180].xy;
    r13.zw = cb0[180].xy / r13.zw;
    r13.xy = r13.xy * r13.zw;
    r14.xy = r1.ww ? r13.xy : r12.yz;
    r13.xyzw = t1.SampleLevel(s1_s, r14.xyz, 0).xyzw;
    r12.yzw = r13.xyz * r3.www;
    r1.w = 1 + -r13.w;
    r1.w = -r3.w * r1.w + 1;
    r12.yzw = cb0[135].zzz * r12.yzw;
    r10.xyz = r12.yzw * r12.xxx + r10.xyz;
    r12.x = r12.x * r1.w;
  }
  r12.yzw = -cb0[148].xyz + r2.xyz;
  r13.xyz = cb0[150].xyz * r12.yzw;
  r14.xyz = -cb0[149].xyz + r2.xyz;
  r14.xyz = cb0[151].xyz * r14.xyz;
  r12.yzw = r12.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r12.yzw = float3(0.5,0.5,0.5) + -abs(r12.yzw);
  r12.yzw = saturate(float3(6,6,6) * r12.yzw);
  r1.w = r12.y * r12.z;
  r1.w = r1.w * r12.w;
  r15.xyzw = t10.SampleLevel(s0_s, r13.xyz, 0).xyzw;
  r16.xyzw = t11.SampleLevel(s0_s, r14.xyz, 0).xyzw;
  r15.xyzw = -r16.xyzw + r15.xyzw;
  r15.xyzw = r1.wwww * r15.xyzw + r16.xyzw;
  r12.yzw = t12.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r13.xyz = t13.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r12.yzw = -r13.xyz + r12.yzw;
  r12.yzw = r1.www * r12.yzw + r13.xyz;
  r1.w = dot(r15.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r13.xyz = r15.xyz / r1.www;
  r14.yzw = r13.xxx * r12.yzw;
  r16.yzw = r13.yyy * r12.yzw;
  r13.yzw = r13.zzz * r12.yzw;
  r14.x = r15.x;
  r14.x = dot(r14.xyzw, r11.xyzw);
  r16.x = r15.y;
  r14.y = dot(r16.xyzw, r11.xyzw);
  r13.x = r15.z;
  r14.z = dot(r13.xyzw, r11.xyzw);
  r11.xyz = max(float3(0,0,0), r14.xyz);
  r1.w = cmp(0 < cb3[6].w);
  if (r1.w != 0) {
    r13.xyzw = cb3[1].xyzw * r2.yyyy;
    r13.xyzw = r2.xxxx * cb3[0].xyzw + r13.xyzw;
    r13.xyzw = r2.zzzz * cb3[2].xyzw + r13.xyzw;
    r13.xyzw = cb3[3].xyzw + r13.xyzw;
    r12.yz = r13.xy / r13.ww;
    r14.xyzw = t14.SampleLevel(s0_s, r12.yz, 0).xyzw;
    r13.xyw = t15.SampleLevel(s0_s, r12.yz, 0).yzw;
    r15.xyz = float3(6.28318548,12.566371,18.849556) * r13.zzz;
    sincos(r15.xyz, r15.xyz, r16.xyz);
    r16.xyz = float3(1,1,1) + -r16.xyz;
    r1.w = r14.x * r13.z;
    r14.xyz = r15.xyz * r14.yzw;
    r14.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r14.xyz;
    r2.w = dot(r14.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r13.xyz = r16.xyz * r13.xyw;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r13.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r13.xyz = exp2(r13.xyz);
    r13.xyz = min(float3(1,1,1), r13.xyz);
    r14.xy = cmp(r12.yz < cb3[4].xy);
    r12.yz = cmp(cb3[4].zw < r12.yz);
    r12.yz = (int2)r12.yz | (int2)r14.xy;
    r1.w = (int)r12.z | (int)r12.y;
    r12.yzw = cb3[6].xyz * r15.www;
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r13.xyz = r1.www ? float3(0,0,0) : r13.xyz;
    r12.yzw = -r12.yzw * r13.xyz + r11.xyz;
    r12.yzw = max(float3(0,0,0), r12.yzw);
    r12.yzw = r12.yzw * r8.xyz;
  } else {
    r12.yzw = r11.xyz * r8.xyz;
  }
  r0.xyz = r0.xyz * r3.xyz + r12.yzw;
  r3.xyz = r7.yzw * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r3.xyz = r3.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r5.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r3.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r3.x = t0[r3.x].val[0/4];
    r3.z = t0[r3.x].val[0/4+1];
    r3.w = t0[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r2.xyz;
    r4.x = t0[r3.y].val[0/4];
    r4.y = t0[r3.y].val[0/4+1];
    r4.z = t0[r3.y].val[0/4+2];
    r4.xyz = float3(1,1,1) + r4.xyz;
    r3.xyz = cmp(r4.xyz < abs(r3.xzw));
    r1.w = (int)r3.y | (int)r3.x;
    r1.w = (int)r3.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r5.xyzw = r1.wwww ? r2.yzwx : r5.xyzw;
    o0.w = r5.w;
  } else {
    o0.w = r5.w;
  }
  r0.xyz = r9.xyz * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r0.xyz = r0.xyz * r12.xxx + r10.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
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