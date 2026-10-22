// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture2D<float4> t25 : register(t25);

Texture3D<float4> t24 : register(t24);

Texture3D<float4> t23 : register(t23);

Texture3D<float4> t22 : register(t22);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

TextureCube<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

TextureCubeArray<float4> t15 : register(t15);

TextureCube<float4> t14 : register(t14);

Buffer<uint4> t13 : register(t13);

Buffer<uint4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

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

cbuffer cb5 : register(b5)
{
  float4 cb5[15];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2728];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
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
  r4.xyz = r0.xyz * r0.www;
  r3.w = dot(r4.xyz, r3.xyz);
  r5.xyz = r4.xyz * r3.www;
  r5.xyz = r5.xyz * float3(2,2,2) + -r3.xyz;
  r5.xyz = t27.Sample(s7_s, r5.xyz).xyz;
  r4.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r4.www + -r5.xyz;
  r5.xyz = cb5[10].xxx * r6.xyz + r5.xyz;
  r5.xyz = cb5[10].yyy * r5.xyz;
  r6.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb5[10].zzz * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r6.xyz ? float3(0,0,0) : r5.xyz;
  r4.w = max(0, r3.w);
  r5.w = 1 + -r4.w;
  r5.w = max(9.99999975e-005, abs(r5.w));
  r5.w = log2(r5.w);
  r5.w = cb5[11].x * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r5.w * 0.999000013 + 0.00100000005;
  r6.xyz = cb5[2].xyz * r5.www;
  r7.xyz = cb5[8].xyz * cb4[6].xyz;
  r5.w = dot(r4.xyz, cb4[7].xyz);
  r6.w = saturate(cb4[7].z);
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r7.w = dot(r8.xyz, r8.xyz);
  r7.w = sqrt(r7.w);
  r8.xyz = r8.xyz / r7.www;
  r8.xyz = cb4[7].xyz + r8.xyz;
  r7.w = dot(r8.xyz, r8.xyz);
  r7.w = sqrt(r7.w);
  r7.w = saturate(r8.z / r7.w);
  r8.x = 11 * cb5[12].x;
  r8.x = exp2(r8.x);
  r8.y = cmp(0 >= r7.w);
  r7.w = log2(r7.w);
  r7.w = r8.x * r7.w;
  r7.w = exp2(r7.w);
  r6.w = r7.w * r6.w;
  r6.w = cb5[12].y * r6.w;
  r8.xzw = cb4[5].xyz * r6.www;
  r8.xyz = r8.yyy ? float3(0,0,0) : r8.xzw;
  r7.xyz = r7.xyz * r5.www + r8.xyz;
  r6.xyz = r6.xyz * cb5[11].yyy + r7.xyz;
  r5.xyz = r5.xyz * cb5[10].www + r6.xyz;
  r6.xyz = cb5[9].xyz + -r5.xyz;
  r5.xyz = cb5[12].zzz * r6.xyz + r5.xyz;
  r5.w = dot(v1.xyz, r3.xyz);
  r5.w = max(0, r5.w);
  r5.w = 1 + -r5.w;
  r5.w = max(9.99999975e-005, abs(r5.w));
  r5.w = log2(r5.w);
  r5.w = cb5[13].y * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r5.w * 0.999000013 + 0.00100000005;
  r5.w = min(1, r5.w);
  r5.w = cb5[13].z * r5.w;
  r5.w = max(cb5[13].w, r5.w);
  r5.w = max(0, r5.w);
  r6.w = saturate(cb5[14].x * r5.w);
  r7.xyz = saturate(cb5[5].xyz);
  r5.w = saturate(cb5[11].z);
  r7.w = saturate(cb5[12].w);
  r8.x = saturate(cb5[13].x);
  r8.x = r8.x * cb0[139].y + cb0[139].x;
  r8.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r8.yzw = max(float3(0,0,0), r8.yzw);
  r8.yzw = min(float3(0.99000001,0.99000001,0.99000001), r8.yzw);
  r8.yzw = cb0[213].xyz * r8.yzw;
  r9.xyz = (int3)r8.yzw;
  r9.w = 0;
  r9.xyzw = t0.Load(r9.xyzw).xyzw;
  r9.xyzw = (uint4)r9.xyzw;
  r10.x = 1 + cb0[213].w;
  r8.yzw = r8.yzw / r9.www;
  r8.yzw = frac(r8.yzw);
  r8.yzw = cb0[213].www * r8.yzw;
  r8.yzw = r9.xyz * r10.xxx + r8.yzw;
  r8.yzw = float3(0.5,0.5,0.5) + r8.yzw;
  r8.yzw = cb0[214].xyz * r8.yzw;
  r9.x = 0.0799999982 * r7.w;
  r9.yzw = -r7.www * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
  r9.xyz = r5.www * r9.yzw + r9.xxx;
  r10.xyz = -r7.xyz * r5.www + r7.xyz;
  r10.xyz = r10.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r5.w = cmp(0 != cb0[183].w);
  r11.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r10.xyz = r5.www ? r11.xyz : r10.xyz;
  r9.xyz = r5.www ? float3(0,0,0) : r9.xyz;
  r11.xyz = t1.SampleLevel(s0_s, r8.yzw, 0).zxy;
  r12.xyzw = t2.SampleLevel(s0_s, r8.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t4.SampleLevel(s0_s, r8.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t6.SampleLevel(s0_s, r8.yzw, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r11.yyyy;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = r13.xyzw * r11.zzzz;
  r13.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r13.wxyz;
  r14.xyzw = r14.xyzw * r11.xxxx;
  r14.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r14.wxyz;
  r15.xyzw = t3.SampleLevel(s0_s, r8.yzw, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = t5.SampleLevel(s0_s, r8.yzw, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r17.xyzw = t7.SampleLevel(s0_s, r8.yzw, 0).xyzw;
  r17.xyzw = r17.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = r15.xyzw * r11.yyyy;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyzw = r16.xyzw * r11.zzzz;
  r16.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r16.xyzw;
  r17.xyzw = r17.xyzw * r11.xxxx;
  r17.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r17.xyzw;
  r18.xyz = r4.yzy * r4.yzx;
  r19.yw = r4.zz * r4.yx;
  r5.w = r4.x * r4.x + -r18.x;
  r20.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r19.xz = r18.zy * float2(1,3) + float2(0,-1);
  r18.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r19.xyzw;
  r5.w = 0.429042608 * r5.w;
  r19.x = r11.y;
  r19.yzw = r12.yzw;
  r20.x = 0.886227548;
  r7.w = dot(r19.xyzw, r20.xyzw);
  r12.yzw = r15.xyz;
  r9.w = dot(r12.xyzw, r18.xyzw);
  r7.w = r9.w + r7.w;
  r12.x = r15.w * r5.w + r7.w;
  r15.x = r11.z;
  r15.yzw = r13.yzw;
  r7.w = dot(r15.xyzw, r20.xyzw);
  r13.yzw = r16.xyz;
  r9.w = dot(r13.xyzw, r18.xyzw);
  r7.w = r9.w + r7.w;
  r12.y = r16.w * r5.w + r7.w;
  r11.yzw = r14.yzw;
  r7.w = dot(r11.xyzw, r20.xyzw);
  r14.yzw = r17.xyz;
  r9.w = dot(r14.xyzw, r18.xyzw);
  r7.w = r9.w + r7.w;
  r12.z = r17.w * r5.w + r7.w;
  r11.xyz = max(float3(0,0,0), r12.xyz);
  r11.xyz = cb0[157].xyz * r11.xyz;
  r5.w = cmp(cb0[186].y != 0.000000);
  if (r5.w != 0) {
    r8.yzw = t8.SampleLevel(s0_s, r8.yzw, 0).xyz;
    r8.yzw = r8.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r5.w = dot(r8.yzw, r8.yzw);
    r12.x = sqrt(r5.w);
    r5.w = max(9.99999975e-005, r12.x);
    r8.yzw = r8.yzw / r5.www;
    r5.w = 1 + -r12.x;
    r5.w = -r5.w * r5.w + 1;
    r0.xyz = r0.xyz * r0.www + -r8.yzw;
    r0.xyz = r5.www * r0.xyz + r8.yzw;
    r7.w = saturate(dot(r8.yzw, r4.xyz));
    r8.y = 1 + -r7.w;
    r12.y = r5.w * r8.y + r7.w;
  } else {
    r0.xyz = r4.xyz;
    r12.xy = float2(1,1);
  }
  r13.x = t10[0].val[0/4];
  r13.y = t10[0].val[0/4+1];
  r13.z = t10[0].val[0/4+2];
  r13.w = t10[0].val[0/4+3];
  r0.w = 1;
  r13.x = dot(r13.xyzw, r0.xyzw);
  r14.x = t10[1].val[0/4];
  r14.y = t10[1].val[0/4+1];
  r14.z = t10[1].val[0/4+2];
  r14.w = t10[1].val[0/4+3];
  r13.y = dot(r14.xyzw, r0.xyzw);
  r14.x = t10[2].val[0/4];
  r14.y = t10[2].val[0/4+1];
  r14.z = t10[2].val[0/4+2];
  r14.w = t10[2].val[0/4+3];
  r13.z = dot(r14.xyzw, r0.xyzw);
  r14.xyzw = r0.xyzz * r0.yzzx;
  r15.x = t10[3].val[0/4];
  r15.y = t10[3].val[0/4+1];
  r15.z = t10[3].val[0/4+2];
  r15.w = t10[3].val[0/4+3];
  r15.x = dot(r15.xyzw, r14.xyzw);
  r16.x = t10[4].val[0/4];
  r16.y = t10[4].val[0/4+1];
  r16.z = t10[4].val[0/4+2];
  r16.w = t10[4].val[0/4+3];
  r15.y = dot(r16.xyzw, r14.xyzw);
  r16.x = t10[5].val[0/4];
  r16.y = t10[5].val[0/4+1];
  r16.z = t10[5].val[0/4+2];
  r16.w = t10[5].val[0/4+3];
  r15.z = dot(r16.xyzw, r14.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r8.yzw = r15.xyz + r13.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r12.x * r12.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r11.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r10.xyz;
  r8.yzw = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.yzw = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.yzw;
  r7.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.yzw;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r8.yz = -cb0[129].xy + v3.xy;
  r8.yz = cb0[131].zw * r8.yz;
  r8.yz = (uint2)r8.yz;
  r5.w = v3.w * cb1[3].x + cb1[3].y;
  r5.w = log2(r5.w);
  r5.w = cb1[3].z * r5.w;
  r5.w = max(0, r5.w);
  r5.w = (uint)r5.w;
  r7.w = asint(cb1[1].z) + -1;
  r5.w = min((uint)r7.w, (uint)r5.w);
  r8.yz = (uint2)r8.yz >> asuint(cb1[2].xx);
  r5.w = mad((int)r5.w, asint(cb1[1].y), (int)r8.z);
  r5.w = mad((int)r5.w, asint(cb1[1].x), (int)r8.y);
  r3.w = r3.w + r3.w;
  r3.yzw = r3.www * r4.xyz + -r3.xyz;
  r4.w = min(1, r4.w);
  r5.w = (int)r5.w + asint(cb1[0].w);
  r7.w = (uint)r5.w << 1;
  r7.w = t12.Load(r7.w).x;
  r7.w = min(asuint(cb1[0].y), (uint)r7.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r5.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.w = t12.Load(r5.w).x;
  r8.y = max(0.00100000005, r8.x);
  r8.y = log2(r8.y);
  r8.y = -r8.y * 1.20000005 + 1;
  r8.z = -1 + cb0[195].z;
  r8.z = r8.z + -r8.y;
  r3.x = 0;
  r8.w = 1;
  r9.w = 0;
  r10.w = 1;
  r11.xyzw = float4(0,0,0,0);
  while (true) {
    r12.x = cmp((uint)r11.w >= (uint)r7.w);
    if (r12.x != 0) break;
    r12.x = cmp(r8.w < 0.00100000005);
    if (r12.x != 0) {
      break;
    }
    r12.x = (int)r5.w + (int)r11.w;
    r12.x = t13.Load(r12.x).x;
    r12.yzw = -cb3[r12.x+0].xyz + r2.xyz;
    r13.x = dot(r12.yzw, r12.yzw);
    r13.y = sqrt(r13.x);
    r13.z = cmp(r13.y < cb3[r12.x+0].w);
    if (r13.z != 0) {
      r13.z = cmp(0 < cb3[r12.x+341].z);
      if (r13.z != 0) {
        r13.z = (uint)r12.x << 2;
        r14.xyz = cb3[r13.z+1024].xyz * r2.yyy;
        r14.xyz = r2.xxx * cb3[r13.z+1023].xyz + r14.xyz;
        r14.xyz = r2.zzz * cb3[r13.z+1025].xyz + r14.xyz;
        r14.xyz = cb3[r13.z+1026].xyz + r14.xyz;
        r15.xyz = cb3[r13.z+1024].xyz * r3.zzz;
        r15.xyz = r3.yyy * cb3[r13.z+1023].xyz + r15.xyz;
        r15.xyz = r3.www * cb3[r13.z+1025].xyz + r15.xyz;
        r15.xyz = rcp(r15.xyz);
        r16.xyz = -r14.xyz * r15.xyz + -r15.xyz;
        r15.xyz = -r14.xyz * r15.xyz + r15.xyz;
        r15.xyz = max(r16.xyz, r15.xyz);
        r13.z = min(r15.y, r15.z);
        r13.z = min(r15.x, r13.z);
        r15.xyz = r13.zzz * r3.yzw + r2.xyz;
        r16.xyz = cb3[r12.x+682].xyz + cb3[r12.x+0].xyz;
        r15.xyz = -r16.xyz + r15.xyz;
        r13.z = cb3[r12.x+2387].w * 0.699999988;
        r16.xyz = -cb3[r12.x+2387].www * float3(0.5,0.5,0.5) + cb3[r12.x+2387].xyz;
        r17.xyz = cb3[r12.x+2387].xyz * r14.xyz;
        r18.xyz = cmp(r17.xyz < -r16.xyz);
        r19.xyz = r14.xyz * cb3[r12.x+2387].xyz + r16.xyz;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r16.xyz < r17.xyz);
        r14.xyz = r14.xyz * cb3[r12.x+2387].xyz + -r16.xyz;
        r14.xyz = abs(r14.xyz);
        r14.xyz = r17.xyz ? r14.xyz : 0;
        r13.w = dot(r18.xyz, float3(1,1,1));
        r14.x = dot(r14.xyz, float3(1,1,1));
        r13.w = r14.x + r13.w;
        r13.z = 1 / r13.z;
        r13.z = saturate(r13.w * r13.z);
        r13.w = r13.z * -2 + 3;
        r13.z = r13.z * r13.z;
        r14.x = -r13.w * r13.z + 1;
      } else {
        r13.y = saturate(r13.y / cb3[r12.x+0].w);
        r13.z = dot(r3.yzw, r12.yzw);
        r13.x = -cb3[r12.x+0].w * cb3[r12.x+0].w + r13.x;
        r13.x = r13.z * r13.z + -r13.x;
        r13.w = cmp(r13.x >= 0);
        r13.x = sqrt(r13.x);
        r13.x = r13.x + -r13.z;
        r12.yzw = r13.xxx * r3.yzw + r12.yzw;
        r16.yzw = -cb3[r12.x+682].xyz + r12.yzw;
        r12.y = r13.y * 2.5 + -1.5;
        r12.y = max(0, r12.y);
        r12.z = r12.y * r12.y;
        r12.y = -r12.y * 2 + 3;
        r16.x = -r12.z * r12.y + 1;
        r14.xyzw = r13.wwww ? r16.xyzw : r3.xyzw;
        r15.xyz = r14.yzw;
      }
      r15.w = cb3[r12.x+341].y;
      r13.xyzw = t15.SampleLevel(s3_s, r15.xyzw, r8.z).xyzw;
      r12.yzw = cb3[r12.x+341].xxx * r13.xyz;
      r12.yzw = r12.yzw * r14.xxx;
      r11.xyz = r12.yzw * r8.www + r11.xyz;
      r12.y = -r13.w * r14.x + 1;
      r8.w = r12.y * r8.w;
      r12.x = cb3[r12.x+682].w * r14.x;
      r9.w = r12.x * r10.w + r9.w;
      r12.x = 1 + -r14.x;
      r10.w = r12.x * r10.w;
    }
    r11.w = (int)r11.w + 1;
  }
  r11.xyz = cb0[157].xyz * r11.xyz;
  r3.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.w = r9.w * r3.x;
  r3.x = cmp(0 < cb1[116].y);
  if (r3.x != 0) {
    r3.x = cb1[116].x + -r8.y;
    r3.x = -1 + r3.x;
    r12.xyz = t14.SampleLevel(s2_s, r3.yzw, r3.x).xyz;
    r3.x = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r3.x = cb1[117].x * r3.x;
    r12.xyz = cb0[187].xyz * r12.xyz;
    r5.w = cmp(cb1[116].z < 1);
    r13.xyz = r8.www * r12.xyz + r11.xyz;
    r13.w = r3.x * r10.w + r11.w;
    r12.xyz = r5.www ? float3(0,0,0) : r12.xyz;
    r11.xyzw = r5.wwww ? r13.xyzw : r11.xyzw;
  } else {
    r12.xyz = float3(0,0,0);
  }
  r3.x = saturate(r8.x * cb0[197].x + cb0[197].y);
  r5.w = r3.x * -2 + 3;
  r3.x = r3.x * r3.x;
  r3.x = r5.w * r3.x;
  r5.w = max(9.99999975e-005, r11.w);
  r0.w = r0.w / r5.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r3.x * r0.w + 1;
  r8.yzw = r12.xyz * r8.www;
  r8.yzw = r11.xyz * r0.www + r8.yzw;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r11.xy = r0.ww * float2(32.6650009,11.8149996) + v3.xy;
    r0.w = dot(r11.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r11.xyzw = cb0[1].xyzw * r1.yyyy;
    r11.xyzw = r1.xxxx * cb0[0].xyzw + r11.xyzw;
    r11.xyzw = r1.zzzz * cb0[2].xyzw + r11.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r3.xyz = r3.yzw * v3.www + r1.xyz;
    r12.xyzw = cb0[1].xyzw * r3.yyyy;
    r12.xyzw = r3.xxxx * cb0[0].xyzw + r12.xyzw;
    r3.xyzw = r3.zzzz * cb0[2].xyzw + r12.xyzw;
    r3.xyzw = cb0[3].xyzw + r3.xyzw;
    r5.w = rcp(r11.w);
    r12.xyz = r11.xyz * r5.www;
    r3.w = rcp(r3.w);
    r11.xy = v3.ww * cb0[30].zw + r11.zw;
    r5.w = rcp(r11.y);
    r3.xyz = r3.xyz * r3.www + -r12.xyz;
    r3.w = dot(r3.xy, r3.xy);
    r3.w = sqrt(r3.w);
    r7.w = 0.5 * r3.w;
    r11.yz = r12.xy * r7.ww + r3.xy;
    r11.yz = -r3.ww * float2(0.5,0.5) + abs(r11.yz);
    r11.yz = max(float2(0,0), r11.yz);
    r11.yz = r11.yz / abs(r3.xy);
    r11.yz = float2(1,1) + -r11.yz;
    r3.w = min(r11.y, r11.z);
    r3.w = r3.w / r7.w;
    r3.xyz = r3.xyz * r3.www;
    r3.w = -r11.x * r5.w + r12.z;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r3.z), r3.w);
    r11.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xy = cb1[176].xy * r11.xy;
    r3.xy = cb1[176].xy * r3.xy;
    r5.w = 0.0833333358 * r3.w;
    r3.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r3.xyz;
    r11.xyz = r3.xyz * r0.www + r12.xyz;
    r0.w = 1;
    r14.x = 0;
    r12.xyz = float3(0,0,0);
    r7.w = 0;
    r9.w = 0;
    r10.w = 0;
    r11.w = 0;
    r13.xw = float2(0,0);
    while (true) {
      r14.w = cmp((uint)r13.w >= 12);
      if (r14.w != 0) break;
      r14.w = (uint)r13.w;
      r15.xyzw = float4(1,2,3,4) + r14.wwww;
      r16.xyzw = r15.xxxy * r3.xyzz + r11.xyzz;
      r17.xyzw = r15.yyzz * r3.xyxy + r11.xyxy;
      r15.xyzw = r15.wwzw * r3.xyzz + r11.xyzz;
      r14.w = r8.x * 0.666666687 + r0.w;
      r18.x = r8.x * 0.666666687 + r14.w;
      r19.x = t19.SampleLevel(s5_s, r16.xy, r0.w).x;
      r19.y = t19.SampleLevel(s5_s, r17.xy, r0.w).x;
      r19.z = t19.SampleLevel(s5_s, r17.zw, r14.w).x;
      r19.w = t19.SampleLevel(s5_s, r15.xy, r14.w).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r19.xyzw;
      r16.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r5.wwww);
      r17.xy = (int2)r16.zw | (int2)r16.xy;
      r14.w = (int)r17.y | (int)r17.x;
      if (r14.w != 0) {
        r14.x = r15.x;
        r12.xyz = r15.yzw;
        r7.w = r16.x;
        r9.w = r16.y;
        r10.w = r16.z;
        r11.w = -1;
        break;
      }
      r13.x = r15.w;
      r13.w = (int)r13.w + 4;
      r0.w = r18.x;
      r14.x = r15.x;
      r12.xyz = r15.yzw;
      r7.w = r16.x;
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
      r12.xyz = r7.www ? r13.xyz : r12.xyz;
      r0.w = (uint)r13.w;
      r0.w = r12.z + r0.w;
      r3.w = r12.x + -r12.y;
      r3.w = saturate(r12.x / r3.w);
      r0.w = r3.w + r0.w;
      r3.xyz = r3.xyz * r0.www + r11.xyz;
      r3.xy = cb1[176].zw * r3.xy;
      r3.xy = r3.xy * float2(2,-2) + float2(-1,1);
      r3.xy = cb0[66].xy * r3.xy;
      r3.xy = r3.xy / cb0[66].xy;
      r11.xyz = cb0[123].xyw * r3.yyy;
      r11.xyz = r3.xxx * cb0[122].xyw + r11.xyz;
      r11.xyz = r3.zzz * cb0[124].xyw + r11.xyz;
      r11.xyz = cb0[125].xyw + r11.xyz;
      r3.zw = r11.xy / r11.zz;
      r11.xy = r3.zw * cb1[177].xy + cb1[177].zw;
      r3.xy = saturate(abs(r3.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r3.xy, r3.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r3.xy = saturate(abs(r3.zw) * float2(5,5) + float2(-4,-4));
      r3.x = dot(r3.xy, r3.xy);
      r3.x = 1 + -r3.x;
      r3.x = max(0, r3.x);
      r0.w = min(r3.x, r0.w);
      r3.xyz = t20.SampleLevel(s6_s, r11.xy, 0).xyz;
      r3.xyz = min(float3(0,0,0), -r3.xyz);
      r3.w = saturate(-r8.x * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r3.xyz = -r3.xyz * r0.www;
      r3.xyz = cb1[178].xxx * r3.xyz;
      r0.w = -r3.w * r0.w + 1;
      r8.yzw = r8.yzw * r0.www + r3.xyz;
    }
  }
  r3.xyzw = r8.xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r3.x * r3.x;
  r4.w = -9.27999973 * r4.w;
  r4.w = exp2(r4.w);
  r0.w = min(r4.w, r0.w);
  r0.w = r0.w * r3.x + r3.y;
  r3.xy = r0.ww * float2(-1.03999996,1.03999996) + r3.zw;
  r0.w = 50 * r9.y;
  r0.w = saturate(r0.w);
  r0.w = r0.w * r3.y;
  r3.xyz = r9.xyz * r3.xxx + r0.www;
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
    r2.w = dot(cb1[122].xyz, r4.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r3.w = -0.200000003 + r8.x;
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
      r12.xyz = cb1[127].xyz * r4.yyy;
      r4.xyw = r4.xxx * cb1[126].xyz + r12.xyz;
      r4.xyz = r4.zzz * cb1[128].xyz + r4.xyw;
      r2.w = dot(r11.xyz, r4.xyz);
      r2.w = r2.w + r2.w;
      r4.xyz = r4.xyz * -r2.www + r11.xyz;
      r4.xyz = r4.xyz * cb1[129].zzz + r2.xyz;
      r4.xyz = cb0[70].xyz + r4.xyz;
      r11.xyz = cb0[13].xyz * r4.yyy;
      r4.xyw = r4.xxx * cb0[12].xyz + r11.xyz;
      r4.xyz = r4.zzz * cb0[14].xyz + r4.xyw;
      r4.xyz = cb0[15].xyz + r4.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r11.xyz = cb1[r2.w+132].xyw * r4.yyy;
      r4.xyw = r4.xxx * cb1[r2.w+131].xyw + r11.xyz;
      r4.xyz = r4.zzz * cb1[r2.w+133].xyw + r4.xyw;
      r4.xyz = cb1[r2.w+134].xyw + r4.xyz;
      r2.w = cb1[141].z ? cb0[197].w : 0;
      r4.xy = r4.xy / r4.zz;
      r4.xy = max(-cb1[141].xy, r4.xy);
      r4.xy = min(cb1[141].xy, r4.xy);
      r4.xy = r4.xy * cb1[r2.w+139].xy + cb1[r2.w+139].zw;
      r4.xyzw = t16.SampleLevel(s3_s, r4.xy, 0).xyzw;
      r0.w = r4.w * r0.w;
    } else {
      r4.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r8.yzw = r0.www * r8.yzw + r4.xyz;
  }
  r3.xyz = r8.yzw * r3.xyz;
  r4.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
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
  r5.w = rsqrt(r4.w);
  r4.w = r5.w * r4.w;
  r2.w = max(cb1[143].w, r2.w);
  r7.w = cmp(0 < r2.w);
  r8.x = r2.w * r5.w;
  r3.w = r8.x * r1.w + r3.w;
  r8.x = -r8.x * r1.w + r1.w;
  r2.w = -r2.w * r5.w + 1;
  r2.w = r2.w * r4.w;
  r8.y = -cb1[146].y + r3.w;
  r8.y = cb1[143].y * r8.y;
  r8.y = max(-127, r8.y);
  r8.y = exp2(-r8.y);
  r8.y = cb1[146].x * r8.y;
  r3.w = -cb1[144].w + r3.w;
  r3.w = cb1[144].y * r3.w;
  r3.w = max(-127, r3.w);
  r3.w = exp2(-r3.w);
  r3.w = cb1[144].z * r3.w;
  r8.y = r7.w ? r8.y : cb1[143].x;
  r3.w = r7.w ? r3.w : cb1[144].x;
  r2.w = r7.w ? r2.w : r4.w;
  r7.w = r7.w ? r8.x : r1.w;
  r8.x = cb1[143].y * r7.w;
  r8.x = max(-127, r8.x);
  r8.z = exp2(-r8.x);
  r8.z = 1 + -r8.z;
  r8.z = r8.z / r8.x;
  r8.w = -r8.x * 0.240226507 + 0.693147182;
  r8.x = cmp(0.00999999978 < abs(r8.x));
  r8.x = r8.x ? r8.z : r8.w;
  r7.w = cb1[144].y * r7.w;
  r7.w = max(-127, r7.w);
  r8.z = exp2(-r7.w);
  r8.z = 1 + -r8.z;
  r8.z = r8.z / r7.w;
  r8.w = -r7.w * 0.240226507 + 0.693147182;
  r7.w = cmp(0.00999999978 < abs(r7.w));
  r7.w = r7.w ? r8.z : r8.w;
  r3.w = r7.w * r3.w;
  r3.w = r8.y * r8.x + r3.w;
  r7.w = r3.w * r2.w;
  r8.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r8.x != 0) {
    r8.x = saturate(r4.w * cb1[150].x + cb1[150].y);
    r8.zw = float2(1,-1) * cb1[149].yx;
    r11.x = dot(r1.xy, r8.zw);
    r11.y = dot(r1.xy, cb1[149].xy);
    r11.z = r1.w;
    r12.xyz = t17.SampleLevel(s4_s, r11.xyz, 0).xyz;
    r11.xyz = t17.SampleLevel(s4_s, r11.xyz, cb1[150].z).xyz;
    r12.xyz = r12.xyz + -r11.xyz;
    r8.xzw = r8.xxx * r12.xyz + r11.xyz;
    r8.xzw = cb1[145].xyz * r8.xzw;
  } else {
    r8.xzw = cb1[145].xyz;
  }
  r9.w = cmp(cb1[147].w >= 0);
  r10.w = cmp(cb1[146].z == 0.000000);
  r9.w = r9.w ? r10.w : 0;
  if (r9.w != 0) {
    r11.xyz = r5.www * r1.xyw;
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
  r1.w = exp2(-r7.w);
  r1.w = min(1, r1.w);
  r11.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r4.w);
  r1.w = r1.w ? r8.y : 0;
  r11.xyzw = r1.wwww ? float4(1,0,0,0) : r11.wxyz;
  r1.w = 1 + -r11.x;
  r8.xyz = r8.xzw * r1.www + r11.yzw;
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
    r12.xyzw = t18.SampleLevel(s0_s, r12.xyz, 0).xyzw;
    r8.xyz = r8.xyz * r12.www + r12.xyz;
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
    r5.w = r4.w * r2.w;
    r5.w = r5.w * -2 + 3.14159274;
    r7.w = cmp(r12.x < -r12.x);
    r5.w = r7.w ? r5.w : 0;
    r2.w = r4.w * r2.w + r5.w;
    r4.w = cmp(r12.y < 0);
    r5.w = 6.28318548 + -r2.w;
    r2.w = r4.w ? r5.w : r2.w;
    r14.x = 0.159154937 * r2.w;
    r12.xy = cb0[180].zw * float2(0.5,0.5) + r14.xy;
    r12.zw = float2(1,1) + cb0[180].xy;
    r12.zw = cb0[180].xy / r12.zw;
    r12.xy = r12.xy * r12.zw;
    r13.xy = r1.ww ? r12.xy : r11.yz;
    r12.xyzw = t11.SampleLevel(s1_s, r13.xyz, 0).xyzw;
    r11.yzw = r12.xyz * r3.www;
    r1.w = 1 + -r12.w;
    r1.w = -r3.w * r1.w + 1;
    r11.yzw = cb0[135].zzz * r11.yzw;
    r8.xyz = r11.yzw * r11.xxx + r8.xyz;
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
  r14.xyzw = t21.SampleLevel(s0_s, r12.xyz, 0).xyzw;
  r15.xyzw = t22.SampleLevel(s0_s, r13.xyz, 0).xyzw;
  r14.xyzw = -r15.xyzw + r14.xyzw;
  r14.xyzw = r1.wwww * r14.xyzw + r15.xyzw;
  r11.yzw = t23.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r12.xyz = t24.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r11.yzw = -r12.xyz + r11.yzw;
  r11.yzw = r1.www * r11.yzw + r12.xyz;
  r1.w = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r12.xyz = r14.xyz / r1.www;
  r13.yzw = r12.xxx * r11.yzw;
  r15.yzw = r12.yyy * r11.yzw;
  r12.yzw = r12.zzz * r11.yzw;
  r13.x = r14.x;
  r13.x = dot(r13.xyzw, r20.xyzw);
  r15.x = r14.y;
  r13.y = dot(r15.xyzw, r20.xyzw);
  r12.x = r14.z;
  r13.z = dot(r12.xyzw, r20.xyzw);
  r11.yzw = max(float3(0,0,0), r13.xyz);
  r1.w = cmp(0 < cb2[6].w);
  if (r1.w != 0) {
    r12.xyzw = cb2[1].xyzw * r2.yyyy;
    r12.xyzw = r2.xxxx * cb2[0].xyzw + r12.xyzw;
    r12.xyzw = r2.zzzz * cb2[2].xyzw + r12.xyzw;
    r12.xyzw = cb2[3].xyzw + r12.xyzw;
    r12.xy = r12.xy / r12.ww;
    r13.xyzw = t25.SampleLevel(s0_s, r12.xy, 0).xyzw;
    r14.xyz = t26.SampleLevel(s0_s, r12.xy, 0).yzw;
    r15.xyz = float3(6.28318548,12.566371,18.849556) * r12.zzz;
    sincos(r15.xyz, r15.xyz, r16.xyz);
    r16.xyz = float3(1,1,1) + -r16.xyz;
    r1.w = r13.x * r12.z;
    r13.xyz = r15.xyz * r13.yzw;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r13.xyz = r16.xyz * r14.xyz;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r13.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r13.xyz = exp2(r13.xyz);
    r13.xyz = min(float3(1,1,1), r13.xyz);
    r12.zw = cmp(r12.xy < cb2[4].xy);
    r12.xy = cmp(cb2[4].zw < r12.xy);
    r12.xy = (int2)r12.xy | (int2)r12.zw;
    r1.w = (int)r12.y | (int)r12.x;
    r12.xyz = cb2[6].xyz * r14.www;
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r13.xyz = r1.www ? float3(0,0,0) : r13.xyz;
    r12.xyz = -r12.xyz * r13.xyz + r11.yzw;
    r12.xyz = max(float3(0,0,0), r12.xyz);
    r12.xyz = r12.xyz * r10.xyz;
  } else {
    r12.xyz = r11.yzw * r10.xyz;
  }
  r3.xyz = r3.xyz * r4.xyz + r12.xyz;
  r4.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r4.xyz = r4.xyz + -r3.xyz;
  r3.xyz = cb0[145].yyy * r4.xyz + r3.xyz;
  r6.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r4.x = t9[r4.x].val[0/4];
    r4.z = t9[r4.x].val[0/4+1];
    r4.w = t9[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r5.x = t9[r4.y].val[0/4];
    r5.y = t9[r4.y].val[0/4+1];
    r5.z = t9[r4.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xzw));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r6.xyzw = r1.wwww ? r2.yzwx : r6.xyzw;
    o0.w = r6.w;
  } else {
    o0.w = r6.w;
  }
  r0.xyz = r0.xyz * r7.xyz + r3.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r0.xyz = r0.xyz * r11.xxx + r8.xyz;
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