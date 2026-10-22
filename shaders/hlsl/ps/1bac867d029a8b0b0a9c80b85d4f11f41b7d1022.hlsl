// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture3D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

TextureCubeArray<float4> t11 : register(t11);

Buffer<uint4> t10 : register(t10);

Buffer<uint4> t9 : register(t9);

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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2728];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[168];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
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
  r4.xyz = cb3[4].xxx * cb3[1].xyz;
  r5.x = cb3[4].w * v2.x + cb3[5].x;
  r5.y = v2.y * cb3[5].y + cb3[5].z;
  r6.xyzw = t18.SampleBias(s2_s, r5.xy, cb0[143].y).xyzw;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r7.xyz = cb3[5].www * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[4].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb3[3].xyz * r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r5.xy = t19.SampleBias(s3_s, r5.xy, cb0[143].y).yx;
  r0.w = saturate(cb3[6].x + r5.y);
  r5.yzw = min(float3(1,1,1), r7.xyz);
  r5.x = saturate(r5.x);
  r0.w = r0.w * cb0[139].y + cb0[139].x;
  r6.w = saturate(r6.w);
  r7.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r7.xyz = max(float3(0,0,0), r7.xyz);
  r7.xyz = min(float3(0.99000001,0.99000001,0.99000001), r7.xyz);
  r7.xyz = cb0[213].xyz * r7.xyz;
  r8.xyz = (int3)r7.xyz;
  r8.w = 0;
  r8.xyzw = t0.Load(r8.xyzw).xyzw;
  r8.xyzw = (uint4)r8.xyzw;
  r1.w = 1 + cb0[213].w;
  r7.xyz = r7.xyz / r8.www;
  r7.xyz = frac(r7.xyz);
  r7.xyz = cb0[213].www * r7.xyz;
  r7.xyz = r8.xyz * r1.www + r7.xyz;
  r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
  r7.xyz = cb0[214].xyz * r7.xyz;
  r8.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r5.yzw;
  r8.xyz = r5.xxx * r8.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r9.xyz = -r5.yzw * r5.xxx + r5.yzw;
  r9.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r8.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r10.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r9.xyz = r1.www ? r10.xyz : r9.xyz;
  r8.xyz = r1.www ? float3(0,0,0) : r8.xyz;
  r10.xyz = t1.SampleLevel(s0_s, r7.xyz, 0).zxy;
  r11.xyzw = t2.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t4.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t6.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r10.yyyy;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r10.zzzz;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = r13.xyzw * r10.xxxx;
  r13.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r13.wxyz;
  r14.xyzw = t3.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t5.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r7.xyzw = t7.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = r14.xyzw * r10.yyyy;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r10.zzzz;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r7.xyzw = r7.xyzw * r10.xxxx;
  r7.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r7.xyzw;
  r16.xyz = r0.yzy * r0.yzx;
  r17.yw = r0.zz * r0.yx;
  r1.w = r0.x * r0.x + -r16.x;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r17.xz = r16.zy * float2(1,3) + float2(0,-1);
  r16.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r17.xyzw;
  r1.w = 0.429042608 * r1.w;
  r17.x = r10.y;
  r17.yzw = r11.yzw;
  r18.x = 0.886227548;
  r3.w = dot(r17.xyzw, r18.xyzw);
  r11.yzw = r14.xyz;
  r4.w = dot(r11.xyzw, r16.xyzw);
  r3.w = r4.w + r3.w;
  r11.x = r14.w * r1.w + r3.w;
  r14.x = r10.z;
  r14.yzw = r12.yzw;
  r3.w = dot(r14.xyzw, r18.xyzw);
  r12.yzw = r15.xyz;
  r4.w = dot(r12.xyzw, r16.xyzw);
  r3.w = r4.w + r3.w;
  r11.y = r15.w * r1.w + r3.w;
  r10.yzw = r13.yzw;
  r3.w = dot(r10.xyzw, r18.xyzw);
  r13.yzw = r7.xyz;
  r4.w = dot(r13.xyzw, r16.xyzw);
  r3.w = r4.w + r3.w;
  r11.z = r7.w * r1.w + r3.w;
  r7.xyz = max(float3(0,0,0), r11.xyz);
  r7.xyz = cb0[157].xyz * r7.xyz;
  r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r9.xyz;
  r10.xyz = r5.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r5.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r5.xyz = r5.yzw * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r10.xy = -cb0[129].xy + v5.xy;
  r10.xy = cb0[131].zw * r10.xy;
  r10.xy = (uint2)r10.xy;
  r3.w = v5.w * cb1[3].x + cb1[3].y;
  r3.w = log2(r3.w);
  r3.w = cb1[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r4.w = asint(cb1[1].z) + -1;
  r3.w = min((uint)r4.w, (uint)r3.w);
  r10.xy = (uint2)r10.xy >> asuint(cb1[2].xx);
  r3.w = mad((int)r3.w, asint(cb1[1].y), (int)r10.y);
  r3.w = mad((int)r3.w, asint(cb1[1].x), (int)r10.x);
  r4.w = dot(r3.xyz, r0.xyz);
  r5.w = r4.w + r4.w;
  r10.yzw = r5.www * r0.xyz + -r3.xyz;
  r4.w = saturate(r4.w);
  r3.x = (int)r3.w + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t9.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t9.Load(r3.x).x;
  r3.z = max(0.00100000005, r0.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r10.x = 0;
  r11.xyz = float3(0,0,0);
  r3.w = 1;
  r5.w = 0;
  r7.w = 1;
  r8.w = 0;
  while (true) {
    r9.w = cmp((uint)r8.w >= (uint)r3.y);
    if (r9.w != 0) break;
    r9.w = cmp(r3.w < 0.00100000005);
    if (r9.w != 0) {
      break;
    }
    r9.w = (int)r3.x + (int)r8.w;
    r9.w = t10.Load(r9.w).x;
    r12.xyz = -cb2[r9.w+0].xyz + r2.xyz;
    r11.w = dot(r12.xyz, r12.xyz);
    r12.w = sqrt(r11.w);
    r13.x = cmp(r12.w < cb2[r9.w+0].w);
    if (r13.x != 0) {
      r13.x = cmp(0 < cb2[r9.w+341].z);
      if (r13.x != 0) {
        r13.x = (uint)r9.w << 2;
        r13.yzw = cb2[r13.x+1024].xyz * r2.yyy;
        r13.yzw = r2.xxx * cb2[r13.x+1023].xyz + r13.yzw;
        r13.yzw = r2.zzz * cb2[r13.x+1025].xyz + r13.yzw;
        r13.yzw = cb2[r13.x+1026].xyz + r13.yzw;
        r14.xyz = cb2[r13.x+1024].xyz * r10.zzz;
        r14.xyz = r10.yyy * cb2[r13.x+1023].xyz + r14.xyz;
        r14.xyz = r10.www * cb2[r13.x+1025].xyz + r14.xyz;
        r14.xyz = rcp(r14.xyz);
        r15.xyz = -r13.yzw * r14.xyz + -r14.xyz;
        r14.xyz = -r13.yzw * r14.xyz + r14.xyz;
        r14.xyz = max(r15.xyz, r14.xyz);
        r13.x = min(r14.y, r14.z);
        r13.x = min(r14.x, r13.x);
        r14.xyz = r13.xxx * r10.yzw + r2.xyz;
        r15.xyz = cb2[r9.w+682].xyz + cb2[r9.w+0].xyz;
        r14.xyz = -r15.xyz + r14.xyz;
        r13.x = cb2[r9.w+2387].w * 0.699999988;
        r15.xyz = -cb2[r9.w+2387].www * float3(0.5,0.5,0.5) + cb2[r9.w+2387].xyz;
        r16.xyz = cb2[r9.w+2387].xyz * r13.yzw;
        r17.xyz = cmp(r16.xyz < -r15.xyz);
        r19.xyz = r13.yzw * cb2[r9.w+2387].xyz + r15.xyz;
        r19.xyz = abs(r19.xyz);
        r17.xyz = r17.xyz ? r19.xyz : 0;
        r16.xyz = cmp(r15.xyz < r16.xyz);
        r13.yzw = r13.yzw * cb2[r9.w+2387].xyz + -r15.xyz;
        r13.yzw = abs(r13.yzw);
        r13.yzw = r16.xyz ? r13.yzw : 0;
        r15.x = dot(r17.xyz, float3(1,1,1));
        r13.y = dot(r13.yzw, float3(1,1,1));
        r13.y = r15.x + r13.y;
        r13.x = 1 / r13.x;
        r13.x = saturate(r13.y * r13.x);
        r13.y = r13.x * -2 + 3;
        r13.x = r13.x * r13.x;
        r13.x = -r13.y * r13.x + 1;
      } else {
        r12.w = saturate(r12.w / cb2[r9.w+0].w);
        r15.x = dot(r10.yzw, r12.xyz);
        r11.w = -cb2[r9.w+0].w * cb2[r9.w+0].w + r11.w;
        r11.w = r15.x * r15.x + -r11.w;
        r15.y = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r11.w = r11.w + -r15.x;
        r12.xyz = r11.www * r10.yzw + r12.xyz;
        r16.yzw = -cb2[r9.w+682].xyz + r12.xyz;
        r11.w = r12.w * 2.5 + -1.5;
        r11.w = max(0, r11.w);
        r12.x = r11.w * r11.w;
        r11.w = -r11.w * 2 + 3;
        r16.x = -r12.x * r11.w + 1;
        r13.xyzw = r15.yyyy ? r16.xyzw : r10.xyzw;
        r14.xyz = r13.yzw;
      }
      r14.w = cb2[r9.w+341].y;
      r12.xyzw = t11.SampleLevel(s1_s, r14.xyzw, r3.z).xyzw;
      r12.xyz = cb2[r9.w+341].xxx * r12.xyz;
      r12.xyz = r12.xyz * r13.xxx;
      r11.xyz = r12.xyz * r3.www + r11.xyz;
      r11.w = -r12.w * r13.x + 1;
      r3.w = r11.w * r3.w;
      r9.w = cb2[r9.w+682].w * r13.x;
      r5.w = r9.w * r7.w + r5.w;
      r9.w = 1 + -r13.x;
      r7.w = r9.w * r7.w;
    }
    r8.w = (int)r8.w + 1;
  }
  r3.xyz = cb0[157].xyz * r11.xyz;
  r3.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r5.w * r3.w;
  r5.w = saturate(r0.w * cb0[197].x + cb0[197].y);
  r7.w = r5.w * -2 + 3;
  r5.w = r5.w * r5.w;
  r5.w = r7.w * r5.w;
  r3.w = max(9.99999975e-005, r3.w);
  r1.w = r1.w / r3.w;
  r1.w = min(cb0[197].z, r1.w);
  r1.w = -1 + r1.w;
  r1.w = r5.w * r1.w + 1;
  r3.xyz = r3.xyz * r1.www;
  r10.xyzw = r0.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r1.w = r10.x * r10.x;
  r3.w = -9.27999973 * r4.w;
  r3.w = exp2(r3.w);
  r1.w = min(r3.w, r1.w);
  r1.w = r1.w * r10.x + r10.y;
  r10.xy = r1.ww * float2(-1.03999996,1.03999996) + r10.zw;
  r1.w = 50 * r8.y;
  r1.w = saturate(r1.w);
  r1.w = r1.w * r10.y;
  r10.xyz = r8.xyz * r10.xxx + r1.www;
  r1.w = dot(cb1[122].xyz, float3(1,1,1));
  r1.w = cmp(9.99999975e-005 < abs(r1.w));
  if (r1.w != 0) {
    r2.w = -1;
    r1.w = dot(cb1[122].xyzw, r2.xyzw);
    r1.w = saturate(abs(r1.w) * cb1[129].x + cb1[129].y);
    r1.w = 1 + -r1.w;
    r11.xyz = -cb1[123].xyz + r2.xyz;
    r2.w = dot(r11.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r11.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r1.w = r2.w * r1.w;
    r2.w = dot(cb1[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r0.w = -0.200000003 + r0.w;
    r0.w = saturate(10 * r0.w);
    r0.w = 1 + -r0.w;
    r1.w = r2.w * r1.w;
    r0.w = r1.w * r0.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r11.xyz = -cb0[67].xyz + r2.xyz;
      r1.w = dot(r11.xyz, r11.xyz);
      r1.w = rsqrt(r1.w);
      r11.xyz = r11.xyz * r1.www;
      r1.w = dot(r11.xyz, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r11.xyz = cb1[122].xyz * r1.www + r11.xyz;
      r12.xyz = cb1[127].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb1[126].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r12.xyz;
      r1.w = dot(r11.xyz, r0.xyz);
      r1.w = r1.w + r1.w;
      r0.xyz = r0.xyz * -r1.www + r11.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r11.xyz = cb0[13].xyz * r0.yyy;
      r11.xyz = r0.xxx * cb0[12].xyz + r11.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r11.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r11.xyz = cb1[r1.w+132].xyw * r0.yyy;
      r11.xyz = r0.xxx * cb1[r1.w+131].xyw + r11.xyz;
      r0.xyz = r0.zzz * cb1[r1.w+133].xyw + r11.xyz;
      r0.xyz = cb1[r1.w+134].xyw + r0.xyz;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r11.xyzw = t12.SampleLevel(s1_s, r0.xy, 0).xyzw;
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
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r10.xyz = cb0[5].xyw * r2.yyy;
    r10.xyz = r2.xxx * cb0[4].xyw + r10.xyz;
    r10.xyz = r2.zzz * cb0[6].xyw + r10.xyz;
    r10.xyz = cb0[7].xyw + r10.xyz;
    r10.xy = r10.xy / r10.zz;
    r11.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r10.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r11.z = cb0[208].z * r0.w;
    r10.xyzw = t13.SampleLevel(s0_s, r11.xyz, 0).xyzw;
    r11.x = v4.w * r10.w;
    r10.xyz = v4.xyz * r10.www + r10.xyz;
  } else {
    r10.xyz = v4.xyz;
    r11.x = v4.w;
  }
  r11.yzw = -cb0[148].xyz + r2.xyz;
  r12.xyz = cb0[150].xyz * r11.yzw;
  r13.xyz = -cb0[149].xyz + r2.xyz;
  r13.xyz = cb0[151].xyz * r13.xyz;
  r11.yzw = r11.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r11.yzw = float3(0.5,0.5,0.5) + -abs(r11.yzw);
  r11.yzw = saturate(float3(6,6,6) * r11.yzw);
  r0.w = r11.y * r11.z;
  r0.w = r0.w * r11.w;
  r11.yzw = t14.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r14.xyz = t15.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r11.yzw = -r14.xyz + r11.yzw;
  r11.yzw = r0.www * r11.yzw + r14.xyz;
  r12.xyz = t16.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r13.xyz = t17.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r12.xyz = -r13.xyz + r12.xyz;
  r12.xyz = r0.www * r12.xyz + r13.xyz;
  r0.w = dot(r11.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.w = 9.99999975e-006 + r0.w;
  r13.xyz = r11.yzw / r0.www;
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
  r6.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r3.x = t8[r3.x].val[0/4];
    r3.z = t8[r3.x].val[0/4+1];
    r3.w = t8[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r2.xyz;
    r4.x = t8[r3.y].val[0/4];
    r4.y = t8[r3.y].val[0/4+1];
    r4.z = t8[r3.y].val[0/4+2];
    r4.xyz = float3(1,1,1) + r4.xyz;
    r3.xyz = cmp(r4.xyz < abs(r3.xzw));
    r0.w = (int)r3.y | (int)r3.x;
    r0.w = (int)r3.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r6.xyzw = r0.wwww ? r2.yzwx : r6.xyzw;
    o0.w = r6.w;
  } else {
    o0.w = r6.w;
  }
  r0.xyz = r7.xyz * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r0.xyz = r0.xyz * r11.xxx + r10.xyz;
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