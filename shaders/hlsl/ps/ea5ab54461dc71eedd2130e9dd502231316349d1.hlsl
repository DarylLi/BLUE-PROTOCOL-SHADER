// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t22 : register(t22);

Texture3D<float4> t21 : register(t21);

Texture3D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture3D<float4> t15 : register(t15);

TextureCube<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

TextureCubeArray<float4> t12 : register(t12);

Buffer<uint4> t11 : register(t11);

Buffer<uint4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

struct t8_t {
  float val[4];
};
StructuredBuffer<t8_t> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[15];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  r4.xyz = t22.Sample(s6_s, r4.xyz).xyz;
  r3.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r3.www + -r4.xyz;
  r4.xyz = cb4[10].xxx * r5.xyz + r4.xyz;
  r4.xyz = cb4[10].yyy * r4.xyz;
  r5.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[10].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r5.xyz ? float3(0,0,0) : r4.xyz;
  r3.w = max(0, r0.w);
  r4.w = 1 + -r3.w;
  r4.w = max(9.99999975e-005, abs(r4.w));
  r4.w = log2(r4.w);
  r4.w = cb4[11].x * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r4.w * 0.999000013 + 0.00100000005;
  r5.xyz = cb4[2].xyz * r4.www;
  r6.xyz = cb4[8].xyz * cb3[6].xyz;
  r4.w = dot(r0.xyz, cb3[7].xyz);
  r5.w = saturate(cb3[7].z);
  r7.xyz = cb0[67].xyz + -r2.xyz;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = sqrt(r6.w);
  r7.xyz = r7.xyz / r6.www;
  r7.xyz = cb3[7].xyz + r7.xyz;
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = sqrt(r6.w);
  r6.w = saturate(r7.z / r6.w);
  r7.x = 11 * cb4[12].x;
  r7.x = exp2(r7.x);
  r7.y = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = r7.x * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r6.w * r5.w;
  r5.w = cb4[12].y * r5.w;
  r7.xzw = cb3[5].xyz * r5.www;
  r7.xyz = r7.yyy ? float3(0,0,0) : r7.xzw;
  r6.xyz = r6.xyz * r4.www + r7.xyz;
  r5.xyz = r5.xyz * cb4[11].yyy + r6.xyz;
  r4.xyz = r4.xyz * cb4[10].www + r5.xyz;
  r5.xyz = cb4[9].xyz + -r4.xyz;
  r4.xyz = cb4[12].zzz * r5.xyz + r4.xyz;
  r4.w = dot(v1.xyz, r3.xyz);
  r4.w = max(0, r4.w);
  r4.w = 1 + -r4.w;
  r4.w = max(9.99999975e-005, abs(r4.w));
  r4.w = log2(r4.w);
  r4.w = cb4[13].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r4.w * 0.999000013 + 0.00100000005;
  r4.w = min(1, r4.w);
  r4.w = cb4[13].z * r4.w;
  r4.w = max(cb4[13].w, r4.w);
  r4.w = max(0, r4.w);
  r5.w = saturate(cb4[14].x * r4.w);
  r6.xyz = saturate(cb4[5].xyz);
  r4.w = saturate(cb4[11].z);
  r6.w = saturate(cb4[12].w);
  r7.x = saturate(cb4[13].x);
  r7.x = r7.x * cb0[139].y + cb0[139].x;
  r7.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r7.yzw = max(float3(0,0,0), r7.yzw);
  r7.yzw = min(float3(0.99000001,0.99000001,0.99000001), r7.yzw);
  r7.yzw = cb0[213].xyz * r7.yzw;
  r8.xyz = (int3)r7.yzw;
  r8.w = 0;
  r8.xyzw = t0.Load(r8.xyzw).xyzw;
  r8.xyzw = (uint4)r8.xyzw;
  r9.x = 1 + cb0[213].w;
  r7.yzw = r7.yzw / r8.www;
  r7.yzw = frac(r7.yzw);
  r7.yzw = cb0[213].www * r7.yzw;
  r7.yzw = r8.xyz * r9.xxx + r7.yzw;
  r7.yzw = float3(0.5,0.5,0.5) + r7.yzw;
  r7.yzw = cb0[214].xyz * r7.yzw;
  r8.x = 0.0799999982 * r6.w;
  r8.yzw = -r6.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r8.xyz = r4.www * r8.yzw + r8.xxx;
  r9.xyz = -r6.xyz * r4.www + r6.xyz;
  r9.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r8.xyz * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r10.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r9.xyz = r4.www ? r10.xyz : r9.xyz;
  r8.xyz = r4.www ? float3(0,0,0) : r8.xyz;
  r10.xyz = t1.SampleLevel(s0_s, r7.yzw, 0).zxy;
  r11.xyzw = t2.SampleLevel(s0_s, r7.yzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t4.SampleLevel(s0_s, r7.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t6.SampleLevel(s0_s, r7.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r10.yyyy;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r10.zzzz;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = r13.xyzw * r10.xxxx;
  r13.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r13.wxyz;
  r14.xyzw = t3.SampleLevel(s0_s, r7.yzw, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t5.SampleLevel(s0_s, r7.yzw, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = t7.SampleLevel(s0_s, r7.yzw, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = r14.xyzw * r10.yyyy;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r10.zzzz;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyzw = r16.xyzw * r10.xxxx;
  r16.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r16.xyzw;
  r7.yzw = r0.yzy * r0.yzx;
  r17.yw = r0.zz * r0.yx;
  r4.w = r0.x * r0.x + -r7.y;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r17.xz = r7.wz * float2(1,3) + float2(0,-1);
  r17.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r17.xyzw;
  r4.w = 0.429042608 * r4.w;
  r19.x = r10.y;
  r19.yzw = r11.yzw;
  r18.x = 0.886227548;
  r6.w = dot(r19.xyzw, r18.xyzw);
  r11.yzw = r14.xyz;
  r7.y = dot(r11.xyzw, r17.xyzw);
  r6.w = r7.y + r6.w;
  r11.x = r14.w * r4.w + r6.w;
  r14.x = r10.z;
  r14.yzw = r12.yzw;
  r6.w = dot(r14.xyzw, r18.xyzw);
  r12.yzw = r15.xyz;
  r7.y = dot(r12.xyzw, r17.xyzw);
  r6.w = r7.y + r6.w;
  r11.y = r15.w * r4.w + r6.w;
  r10.yzw = r13.yzw;
  r6.w = dot(r10.xyzw, r18.xyzw);
  r13.yzw = r16.xyz;
  r7.y = dot(r13.xyzw, r17.xyzw);
  r6.w = r7.y + r6.w;
  r11.z = r16.w * r4.w + r6.w;
  r7.yzw = max(float3(0,0,0), r11.xyz);
  r7.yzw = cb0[157].xyz * r7.yzw;
  r7.yzw = float3(0.318309873,0.318309873,0.318309873) * r7.yzw;
  r4.w = dot(r7.yzw, float3(0.300000012,0.589999974,0.109999999));
  r7.yzw = r7.yzw * r9.xyz;
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
  r3.y = t10.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t10.Load(r3.x).x;
  r3.z = max(0.00100000005, r7.x);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r10.x = 0;
  r11.xyz = float3(0,0,0);
  r3.w = 1;
  r6.w = 0;
  r8.w = 1;
  r9.w = 0;
  while (true) {
    r11.w = cmp((uint)r9.w >= (uint)r3.y);
    if (r11.w != 0) break;
    r11.w = cmp(r3.w < 0.00100000005);
    if (r11.w != 0) {
      break;
    }
    r11.w = (int)r3.x + (int)r9.w;
    r11.w = t11.Load(r11.w).x;
    r12.xyz = -cb2[r11.w+0].xyz + r2.xyz;
    r12.w = dot(r12.xyz, r12.xyz);
    r13.x = sqrt(r12.w);
    r13.y = cmp(r13.x < cb2[r11.w+0].w);
    if (r13.y != 0) {
      r13.y = cmp(0 < cb2[r11.w+341].z);
      if (r13.y != 0) {
        r13.y = (uint)r11.w << 2;
        r14.xyz = cb2[r13.y+1024].xyz * r2.yyy;
        r14.xyz = r2.xxx * cb2[r13.y+1023].xyz + r14.xyz;
        r14.xyz = r2.zzz * cb2[r13.y+1025].xyz + r14.xyz;
        r14.xyz = cb2[r13.y+1026].xyz + r14.xyz;
        r15.xyz = cb2[r13.y+1024].xyz * r10.zzz;
        r15.xyz = r10.yyy * cb2[r13.y+1023].xyz + r15.xyz;
        r13.yzw = r10.www * cb2[r13.y+1025].xyz + r15.xyz;
        r13.yzw = rcp(r13.yzw);
        r15.xyz = -r14.xyz * r13.yzw + -r13.yzw;
        r13.yzw = -r14.xyz * r13.yzw + r13.yzw;
        r13.yzw = max(r15.xyz, r13.yzw);
        r13.z = min(r13.z, r13.w);
        r13.y = min(r13.y, r13.z);
        r13.yzw = r13.yyy * r10.yzw + r2.xyz;
        r15.xyz = cb2[r11.w+682].xyz + cb2[r11.w+0].xyz;
        r15.xyz = -r15.xyz + r13.yzw;
        r13.y = cb2[r11.w+2387].w * 0.699999988;
        r16.xyz = -cb2[r11.w+2387].www * float3(0.5,0.5,0.5) + cb2[r11.w+2387].xyz;
        r17.xyz = cb2[r11.w+2387].xyz * r14.xyz;
        r19.xyz = cmp(r17.xyz < -r16.xyz);
        r20.xyz = r14.xyz * cb2[r11.w+2387].xyz + r16.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r17.xyz = cmp(r16.xyz < r17.xyz);
        r14.xyz = r14.xyz * cb2[r11.w+2387].xyz + -r16.xyz;
        r14.xyz = abs(r14.xyz);
        r14.xyz = r17.xyz ? r14.xyz : 0;
        r13.z = dot(r19.xyz, float3(1,1,1));
        r13.w = dot(r14.xyz, float3(1,1,1));
        r13.z = r13.z + r13.w;
        r13.y = 1 / r13.y;
        r13.y = saturate(r13.z * r13.y);
        r13.z = r13.y * -2 + 3;
        r13.y = r13.y * r13.y;
        r14.x = -r13.z * r13.y + 1;
      } else {
        r13.x = saturate(r13.x / cb2[r11.w+0].w);
        r13.y = dot(r10.yzw, r12.xyz);
        r12.w = -cb2[r11.w+0].w * cb2[r11.w+0].w + r12.w;
        r12.w = r13.y * r13.y + -r12.w;
        r13.z = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r13.y;
        r12.xyz = r12.www * r10.yzw + r12.xyz;
        r12.yzw = -cb2[r11.w+682].xyz + r12.xyz;
        r13.x = r13.x * 2.5 + -1.5;
        r13.x = max(0, r13.x);
        r13.y = r13.x * r13.x;
        r13.x = -r13.x * 2 + 3;
        r12.x = -r13.y * r13.x + 1;
        r14.xyzw = r13.zzzz ? r12.xyzw : r10.xyzw;
        r15.xyz = r14.yzw;
      }
      r15.w = cb2[r11.w+341].y;
      r12.xyzw = t12.SampleLevel(s2_s, r15.xyzw, r3.z).xyzw;
      r12.xyz = cb2[r11.w+341].xxx * r12.xyz;
      r12.xyz = r12.xyz * r14.xxx;
      r11.xyz = r12.xyz * r3.www + r11.xyz;
      r12.x = -r12.w * r14.x + 1;
      r3.w = r12.x * r3.w;
      r11.w = cb2[r11.w+682].w * r14.x;
      r6.w = r11.w * r8.w + r6.w;
      r11.w = 1 + -r14.x;
      r8.w = r11.w * r8.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r3.xyz = cb0[157].xyz * r11.xyz;
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
    r11.xy = r3.ww * float2(32.6650009,11.8149996) + v3.xy;
    r3.w = dot(r11.xy, float2(0.0671105608,0.00583714992));
    r3.w = frac(r3.w);
    r3.w = 52.9829178 * r3.w;
    r3.w = frac(r3.w);
    r3.w = -0.5 + r3.w;
    r11.xyzw = cb0[1].xyzw * r1.yyyy;
    r11.xyzw = r1.xxxx * cb0[0].xyzw + r11.xyzw;
    r11.xyzw = r1.zzzz * cb0[2].xyzw + r11.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r10.xyz = r10.yzw * v3.www + r1.xyz;
    r12.xyzw = cb0[1].xyzw * r10.yyyy;
    r12.xyzw = r10.xxxx * cb0[0].xyzw + r12.xyzw;
    r10.xyzw = r10.zzzz * cb0[2].xyzw + r12.xyzw;
    r10.xyzw = cb0[3].xyzw + r10.xyzw;
    r4.w = rcp(r11.w);
    r12.xyz = r11.xyz * r4.www;
    r4.w = rcp(r10.w);
    r11.xy = v3.ww * cb0[30].zw + r11.zw;
    r6.w = rcp(r11.y);
    r10.xyz = r10.xyz * r4.www + -r12.xyz;
    r4.w = dot(r10.xy, r10.xy);
    r4.w = sqrt(r4.w);
    r8.w = 0.5 * r4.w;
    r11.yz = r12.xy * r8.ww + r10.xy;
    r11.yz = -r4.ww * float2(0.5,0.5) + abs(r11.yz);
    r11.yz = max(float2(0,0), r11.yz);
    r11.yz = r11.yz / abs(r10.xy);
    r11.yz = float2(1,1) + -r11.yz;
    r4.w = min(r11.y, r11.z);
    r4.w = r4.w / r8.w;
    r10.xyz = r10.xyz * r4.www;
    r4.w = -r11.x * r6.w + r12.z;
    r4.w = 4 * r4.w;
    r4.w = max(abs(r10.z), r4.w);
    r11.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xy = cb1[176].xy * r11.xy;
    r10.xy = cb1[176].xy * r10.xy;
    r6.w = 0.0833333358 * r4.w;
    r10.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r10.xyz;
    r11.xyz = r10.xyz * r3.www + r12.xyz;
    r3.w = 1;
    r14.x = 0;
    r12.xyz = float3(0,0,0);
    r8.w = 0;
    r9.w = 0;
    r10.w = 0;
    r11.w = 0;
    r13.xw = float2(0,0);
    while (true) {
      r14.w = cmp((uint)r13.w >= 12);
      if (r14.w != 0) break;
      r14.w = (uint)r13.w;
      r15.xyzw = float4(1,2,3,4) + r14.wwww;
      r16.xyzw = r15.xxxy * r10.xyzz + r11.xyzz;
      r17.xyzw = r15.yyzz * r10.xyxy + r11.xyxy;
      r15.xyzw = r15.wwzw * r10.xyzz + r11.xyzz;
      r14.w = r7.x * 0.666666687 + r3.w;
      r19.x = r7.x * 0.666666687 + r14.w;
      r20.x = t16.SampleLevel(s4_s, r16.xy, r3.w).x;
      r20.y = t16.SampleLevel(s4_s, r17.xy, r3.w).x;
      r20.z = t16.SampleLevel(s4_s, r17.zw, r14.w).x;
      r20.w = t16.SampleLevel(s4_s, r15.xy, r14.w).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r20.xyzw;
      r16.xyzw = r4.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r6.wwww);
      r17.xy = (int2)r16.zw | (int2)r16.xy;
      r14.w = (int)r17.y | (int)r17.x;
      if (r14.w != 0) {
        r14.x = r15.x;
        r12.xyz = r15.yzw;
        r8.w = r16.x;
        r9.w = r16.y;
        r10.w = r16.z;
        r11.w = -1;
        break;
      }
      r13.x = r15.w;
      r13.w = (int)r13.w + 4;
      r3.w = r19.x;
      r14.x = r15.x;
      r12.xyz = r15.yzw;
      r8.w = r16.x;
      r9.w = r16.y;
      r10.w = r16.z;
      r11.w = r14.w;
    }
    if (r11.w != 0) {
      r12.w = 2;
      r15.xy = r12.yz;
      r15.z = 3;
      r12.yzw = r10.www ? r12.xyw : r15.xyz;
      r14.y = r12.x;
      r14.z = 1;
      r12.xyz = r9.www ? r14.xyz : r12.yzw;
      r13.y = r14.x;
      r13.z = 0;
      r12.xyz = r8.www ? r13.xyz : r12.xyz;
      r3.w = (uint)r13.w;
      r3.w = r12.z + r3.w;
      r4.w = r12.x + -r12.y;
      r4.w = saturate(r12.x / r4.w);
      r3.w = r4.w + r3.w;
      r10.xyz = r10.xyz * r3.www + r11.xyz;
      r10.xy = cb1[176].zw * r10.xy;
      r10.xy = r10.xy * float2(2,-2) + float2(-1,1);
      r10.xy = cb0[66].xy * r10.xy;
      r10.xy = r10.xy / cb0[66].xy;
      r11.xyz = cb0[123].xyw * r10.yyy;
      r11.xyz = r10.xxx * cb0[122].xyw + r11.xyz;
      r11.xyz = r10.zzz * cb0[124].xyw + r11.xyz;
      r11.xyz = cb0[125].xyw + r11.xyz;
      r10.zw = r11.xy / r11.zz;
      r11.xy = r10.zw * cb1[177].xy + cb1[177].zw;
      r10.xy = saturate(abs(r10.xy) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r10.xy, r10.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r10.xy = saturate(abs(r10.zw) * float2(5,5) + float2(-4,-4));
      r4.w = dot(r10.xy, r10.xy);
      r4.w = 1 + -r4.w;
      r4.w = max(0, r4.w);
      r3.w = min(r4.w, r3.w);
      r10.xyz = t17.SampleLevel(s5_s, r11.xy, 0).xyz;
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
  r0.w = 50 * r8.y;
  r0.w = saturate(r0.w);
  r0.w = r0.w * r10.y;
  r10.xyz = r8.xyz * r10.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb1[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r11.xyz = -cb1[123].xyz + r2.xyz;
    r2.w = dot(r11.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r11.xyz, cb1[125].xyz);
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
      r11.xyz = -cb0[67].xyz + r2.xyz;
      r2.w = dot(r11.xyz, r11.xyz);
      r2.w = rsqrt(r2.w);
      r11.xyz = r11.xyz * r2.www;
      r2.w = dot(r11.xyz, -cb1[122].xyz);
      r2.w = r2.w + r2.w;
      r11.xyz = cb1[122].xyz * r2.www + r11.xyz;
      r12.xyz = cb1[127].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb1[126].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r12.xyz;
      r2.w = dot(r11.xyz, r0.xyz);
      r2.w = r2.w + r2.w;
      r0.xyz = r0.xyz * -r2.www + r11.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r11.xyz = cb0[13].xyz * r0.yyy;
      r11.xyz = r0.xxx * cb0[12].xyz + r11.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r11.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r11.xyz = cb1[r2.w+132].xyw * r0.yyy;
      r11.xyz = r0.xxx * cb1[r2.w+131].xyw + r11.xyz;
      r0.xyz = r0.zzz * cb1[r2.w+133].xyw + r11.xyz;
      r0.xyz = cb1[r2.w+134].xyw + r0.xyz;
      r2.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r2.w+139].xy + cb1[r2.w+139].zw;
      r11.xyzw = t13.SampleLevel(s2_s, r0.xy, 0).xyzw;
      r0.x = r11.w * r0.w;
    } else {
      r11.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r11.xyz;
  }
  r0.xyz = r3.xyz * r10.xyz;
  r3.xyz = r8.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r8.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r8.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
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
    r11.x = dot(r1.xy, r10.xz);
    r11.y = dot(r1.xy, cb1[149].xy);
    r11.z = r1.w;
    r10.xzw = t14.SampleLevel(s3_s, r11.xyz, 0).xyz;
    r11.xyz = t14.SampleLevel(s3_s, r11.xyz, cb1[150].z).xyz;
    r10.xzw = -r11.xyz + r10.xzw;
    r10.xzw = r8.www * r10.xzw + r11.xyz;
    r10.xzw = cb1[145].xyz * r10.xzw;
  } else {
    r10.xzw = cb1[145].xyz;
  }
  r8.w = cmp(cb1[147].w >= 0);
  r9.w = cmp(cb1[146].z == 0.000000);
  r8.w = r8.w ? r9.w : 0;
  if (r8.w != 0) {
    r11.xyz = r6.www * r1.xyw;
    r1.w = saturate(dot(r11.xyz, cb1[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb1[148].w * r1.w;
    r1.w = exp2(r1.w);
    r11.xyz = cb1[148].xyz * r1.www;
    r1.w = -cb1[147].w + r2.w;
    r1.w = max(0, r1.w);
    r1.w = r3.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r11.xyz = r11.xyz * r1.www;
  } else {
    r11.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r7.x);
  r1.w = min(1, r1.w);
  r11.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r4.w);
  r1.w = r1.w ? r10.y : 0;
  r11.xyzw = r1.wwww ? float4(1,0,0,0) : r11.wxyz;
  r1.w = 1 + -r11.x;
  r10.xyz = r10.xzw * r1.www + r11.yzw;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r11.yzw = cb0[5].xyw * r2.yyy;
    r11.yzw = r2.xxx * cb0[4].xyw + r11.yzw;
    r11.yzw = r2.zzz * cb0[6].xyw + r11.yzw;
    r11.yzw = cb0[7].xyw + r11.yzw;
    r11.yz = r11.yz / r11.ww;
    r12.xy = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r11.w * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r12.z = cb0[208].z * r1.w;
    r12.xyzw = t15.SampleLevel(s0_s, r12.xyz, 0).xyzw;
    r10.xyz = r10.xyz * r12.www + r12.xyz;
    r11.x = r12.w * r11.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r11.yzw = cb0[5].xyw * r2.yyy;
    r11.yzw = r2.xxx * cb0[4].xyw + r11.yzw;
    r11.yzw = r2.zzz * cb0[6].xyw + r11.yzw;
    r11.yzw = cb0[7].xyw + r11.yzw;
    r1.w = cmp(0 != cb0[184].x);
    r12.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r11.yz = r11.yz / r11.ww;
    r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r12.xyz;
    r2.w = dot(r12.xyz, r12.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r13.z = sqrt(r3.w);
    r3.w = cb0[181].y * r13.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r12.xyz = r12.xyz * r2.www;
    r2.w = -r12.z * r12.z + 1;
    r2.w = sqrt(r2.w);
    r14.y = r12.z * 0.5 + 0.5;
    r12.xy = r12.xy / r2.ww;
    r2.w = 1 + -abs(r12.x);
    r2.w = sqrt(r2.w);
    r4.w = abs(r12.x) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r12.x) + -0.212114394;
    r4.w = r4.w * abs(r12.x) + 1.57072878;
    r6.w = r4.w * r2.w;
    r6.w = r6.w * -2 + 3.14159274;
    r7.x = cmp(r12.x < -r12.x);
    r6.w = r7.x ? r6.w : 0;
    r2.w = r4.w * r2.w + r6.w;
    r4.w = cmp(r12.y < 0);
    r6.w = 6.28318548 + -r2.w;
    r2.w = r4.w ? r6.w : r2.w;
    r14.x = 0.159154937 * r2.w;
    r12.xy = cb0[180].zw * float2(0.5,0.5) + r14.xy;
    r12.zw = float2(1,1) + cb0[180].xy;
    r12.zw = cb0[180].xy / r12.zw;
    r12.xy = r12.xy * r12.zw;
    r13.xy = r1.ww ? r12.xy : r11.yz;
    r12.xyzw = t9.SampleLevel(s1_s, r13.xyz, 0).xyzw;
    r11.yzw = r12.xyz * r3.www;
    r1.w = 1 + -r12.w;
    r1.w = -r3.w * r1.w + 1;
    r11.yzw = cb0[135].zzz * r11.yzw;
    r10.xyz = r11.yzw * r11.xxx + r10.xyz;
    r11.x = r11.x * r1.w;
  }
  r11.yzw = -cb0[148].xyz + r2.xyz;
  r12.xyz = cb0[150].xyz * r11.yzw;
  r13.xyz = -cb0[149].xyz + r2.xyz;
  r13.xyz = cb0[151].xyz * r13.xyz;
  r11.yzw = r11.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r11.yzw = float3(0.5,0.5,0.5) + -abs(r11.yzw);
  r11.yzw = saturate(float3(6,6,6) * r11.yzw);
  r1.w = r11.y * r11.z;
  r1.w = r1.w * r11.w;
  r11.yzw = t18.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r14.xyz = t19.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r11.yzw = -r14.xyz + r11.yzw;
  r11.yzw = r1.www * r11.yzw + r14.xyz;
  r12.xyz = t20.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r13.xyz = t21.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r12.xyz = -r13.xyz + r12.xyz;
  r12.xyz = r1.www * r12.xyz + r13.xyz;
  r1.w = dot(r11.yzw, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r13.xyz = r11.yzw / r1.www;
  r14.yzw = r13.xxx * r12.xyz;
  r15.yzw = r13.yyy * r12.xyz;
  r12.yzw = r13.zzz * r12.xyz;
  r14.x = r11.y;
  r13.x = dot(r14.xyzw, r18.xyzw);
  r15.x = r11.z;
  r13.y = dot(r15.xyzw, r18.xyzw);
  r12.x = r11.w;
  r13.z = dot(r12.xyzw, r18.xyzw);
  r11.yzw = max(float3(0,0,0), r13.xyz);
  r11.yzw = r11.yzw * r9.xyz;
  r0.xyz = r0.xyz * r3.xyz + r11.yzw;
  r3.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r3.xyz = r3.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r5.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r3.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r3.x = t8[r3.x].val[0/4];
    r3.z = t8[r3.x].val[0/4+1];
    r3.w = t8[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r2.xyz;
    r4.x = t8[r3.y].val[0/4];
    r4.y = t8[r3.y].val[0/4+1];
    r4.z = t8[r3.y].val[0/4+2];
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
  r0.xyz = r7.yzw * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r0.xyz = r0.xyz * r11.xxx + r10.xyz;
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