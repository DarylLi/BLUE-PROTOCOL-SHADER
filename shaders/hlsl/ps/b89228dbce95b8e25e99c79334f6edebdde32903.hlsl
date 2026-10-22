// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

TextureCubeArray<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[7];
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
  r4.xyz = cb5[4].xxx * cb5[1].xyz;
  r5.x = cb5[4].w * v2.x + cb5[5].x;
  r5.y = v2.y * cb5[5].y + cb5[5].z;
  r6.xyzw = t12.SampleBias(s2_s, r5.xy, cb0[143].y).xyzw;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r7.xyz = cb5[5].www * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb5[4].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb5[3].xyz * r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r5.xy = t13.SampleBias(s3_s, r5.xy, cb0[143].y).yx;
  r0.w = saturate(cb5[6].x + r5.y);
  r5.yzw = min(float3(1,1,1), r7.xyz);
  r5.x = saturate(r5.x);
  r0.w = r0.w * cb0[139].y + cb0[139].x;
  r6.w = saturate(r6.w);
  r7.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r5.yzw;
  r7.xyz = r5.xxx * r7.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r8.xyz = -r5.yzw * r5.xxx + r5.yzw;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.w = cmp(0 < cb0[215].x);
  r9.xyz = r0.yzy * r0.yzx;
  r10.yw = r0.zz * r0.yx;
  r3.w = r0.x * r0.x + -r9.x;
  r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r10.xz = r9.zy * float2(1,3) + float2(0,-1);
  r9.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r10.xyzw;
  r3.w = 0.429042608 * r3.w;
  r11.x = 0.886227548;
  r4.w = dot(cb2[6].xyzw, r11.xyzw);
  r5.x = dot(cb2[9].xyzw, r9.xyzw);
  r4.w = r5.x + r4.w;
  r10.x = cb2[12].x * r3.w + r4.w;
  r4.w = dot(cb2[7].xyzw, r11.xyzw);
  r5.x = dot(cb2[10].xyzw, r9.xyzw);
  r4.w = r5.x + r4.w;
  r10.y = cb2[12].y * r3.w + r4.w;
  r4.w = dot(cb2[8].xyzw, r11.xyzw);
  r5.x = dot(cb2[11].xyzw, r9.xyzw);
  r4.w = r5.x + r4.w;
  r10.z = cb2[12].z * r3.w + r4.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = r1.www ? r9.xyz : 0;
  r9.xyz = cb0[157].xyz * r9.xyz;
  r1.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r9.xyz * r8.xyz;
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
  r3.y = t1.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t1.Load(r3.x).x;
  r3.z = max(0.00100000005, r0.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r10.x = 0;
  r12.xyz = float3(0,0,0);
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
    r9.w = t2.Load(r9.w).x;
    r13.xyz = -cb4[r9.w+0].xyz + r2.xyz;
    r12.w = dot(r13.xyz, r13.xyz);
    r13.w = sqrt(r12.w);
    r14.x = cmp(r13.w < cb4[r9.w+0].w);
    if (r14.x != 0) {
      r14.x = cmp(0 < cb4[r9.w+341].z);
      if (r14.x != 0) {
        r14.x = (uint)r9.w << 2;
        r14.yzw = cb4[r14.x+1024].xyz * r2.yyy;
        r14.yzw = r2.xxx * cb4[r14.x+1023].xyz + r14.yzw;
        r14.yzw = r2.zzz * cb4[r14.x+1025].xyz + r14.yzw;
        r14.yzw = cb4[r14.x+1026].xyz + r14.yzw;
        r15.xyz = cb4[r14.x+1024].xyz * r10.zzz;
        r15.xyz = r10.yyy * cb4[r14.x+1023].xyz + r15.xyz;
        r15.xyz = r10.www * cb4[r14.x+1025].xyz + r15.xyz;
        r15.xyz = rcp(r15.xyz);
        r16.xyz = -r14.yzw * r15.xyz + -r15.xyz;
        r15.xyz = -r14.yzw * r15.xyz + r15.xyz;
        r15.xyz = max(r16.xyz, r15.xyz);
        r14.x = min(r15.y, r15.z);
        r14.x = min(r15.x, r14.x);
        r15.xyz = r14.xxx * r10.yzw + r2.xyz;
        r16.xyz = cb4[r9.w+682].xyz + cb4[r9.w+0].xyz;
        r15.xyz = -r16.xyz + r15.xyz;
        r14.x = cb4[r9.w+2387].w * 0.699999988;
        r16.xyz = -cb4[r9.w+2387].www * float3(0.5,0.5,0.5) + cb4[r9.w+2387].xyz;
        r17.xyz = cb4[r9.w+2387].xyz * r14.yzw;
        r18.xyz = cmp(r17.xyz < -r16.xyz);
        r19.xyz = r14.yzw * cb4[r9.w+2387].xyz + r16.xyz;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r16.xyz < r17.xyz);
        r14.yzw = r14.yzw * cb4[r9.w+2387].xyz + -r16.xyz;
        r14.yzw = abs(r14.yzw);
        r14.yzw = r17.xyz ? r14.yzw : 0;
        r16.x = dot(r18.xyz, float3(1,1,1));
        r14.y = dot(r14.yzw, float3(1,1,1));
        r14.y = r16.x + r14.y;
        r14.x = 1 / r14.x;
        r14.x = saturate(r14.y * r14.x);
        r14.y = r14.x * -2 + 3;
        r14.x = r14.x * r14.x;
        r14.x = -r14.y * r14.x + 1;
      } else {
        r13.w = saturate(r13.w / cb4[r9.w+0].w);
        r16.x = dot(r10.yzw, r13.xyz);
        r12.w = -cb4[r9.w+0].w * cb4[r9.w+0].w + r12.w;
        r12.w = r16.x * r16.x + -r12.w;
        r16.y = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r16.x;
        r13.xyz = r12.www * r10.yzw + r13.xyz;
        r17.yzw = -cb4[r9.w+682].xyz + r13.xyz;
        r12.w = r13.w * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.x = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r17.x = -r13.x * r12.w + 1;
        r14.xyzw = r16.yyyy ? r17.xyzw : r10.xyzw;
        r15.xyz = r14.yzw;
      }
      r15.w = cb4[r9.w+341].y;
      r13.xyzw = t3.SampleLevel(s1_s, r15.xyzw, r3.z).xyzw;
      r13.xyz = cb4[r9.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r14.xxx;
      r12.xyz = r13.xyz * r3.www + r12.xyz;
      r12.w = -r13.w * r14.x + 1;
      r3.w = r12.w * r3.w;
      r9.w = cb4[r9.w+682].w * r14.x;
      r5.w = r9.w * r7.w + r5.w;
      r9.w = 1 + -r14.x;
      r7.w = r9.w * r7.w;
    }
    r8.w = (int)r8.w + 1;
  }
  r3.xyz = cb0[157].xyz * r12.xyz;
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
  r1.w = 50 * r7.y;
  r1.w = saturate(r1.w);
  r1.w = r1.w * r10.y;
  r10.xyz = r7.xyz * r10.xxx + r1.www;
  r1.w = dot(cb1[122].xyz, float3(1,1,1));
  r1.w = cmp(9.99999975e-005 < abs(r1.w));
  if (r1.w != 0) {
    r2.w = -1;
    r1.w = dot(cb1[122].xyzw, r2.xyzw);
    r1.w = saturate(abs(r1.w) * cb1[129].x + cb1[129].y);
    r1.w = 1 + -r1.w;
    r12.xyz = -cb1[123].xyz + r2.xyz;
    r2.w = dot(r12.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r12.xyz, cb1[125].xyz);
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
      r12.xyzw = t4.SampleLevel(s1_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r12.xyz;
  }
  r0.xyz = r3.xyz * r10.xyz;
  r3.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r10.xyz = cb0[5].xyw * r2.yyy;
    r10.xyz = r2.xxx * cb0[4].xyw + r10.xyz;
    r10.xyz = r2.zzz * cb0[6].xyw + r10.xyz;
    r10.xyz = cb0[7].xyw + r10.xyz;
    r10.xy = r10.xy / r10.zz;
    r12.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r10.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r12.z = cb0[208].z * r0.w;
    r10.xyzw = t5.SampleLevel(s0_s, r12.xyz, 0).xyzw;
    r12.x = v4.w * r10.w;
    r10.xyz = v4.xyz * r10.www + r10.xyz;
  } else {
    r10.xyz = v4.xyz;
    r12.x = v4.w;
  }
  r12.yzw = -cb0[148].xyz + r2.xyz;
  r13.xyz = cb0[150].xyz * r12.yzw;
  r14.xyz = -cb0[149].xyz + r2.xyz;
  r14.xyz = cb0[151].xyz * r14.xyz;
  r12.yzw = r12.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r12.yzw = float3(0.5,0.5,0.5) + -abs(r12.yzw);
  r12.yzw = saturate(float3(6,6,6) * r12.yzw);
  r0.w = r12.y * r12.z;
  r0.w = r0.w * r12.w;
  r15.xyzw = t6.SampleLevel(s0_s, r13.xyz, 0).xyzw;
  r16.xyzw = t7.SampleLevel(s0_s, r14.xyz, 0).xyzw;
  r15.xyzw = -r16.xyzw + r15.xyzw;
  r15.xyzw = r0.wwww * r15.xyzw + r16.xyzw;
  r12.yzw = t8.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r13.xyz = t9.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r12.yzw = -r13.xyz + r12.yzw;
  r12.yzw = r0.www * r12.yzw + r13.xyz;
  r0.w = dot(r15.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = 9.99999975e-006 + r0.w;
  r13.xyz = r15.xyz / r0.www;
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
  r0.w = cmp(0 < cb3[6].w);
  if (r0.w != 0) {
    r13.xyzw = cb3[1].xyzw * r2.yyyy;
    r13.xyzw = r2.xxxx * cb3[0].xyzw + r13.xyzw;
    r13.xyzw = r2.zzzz * cb3[2].xyzw + r13.xyzw;
    r13.xyzw = cb3[3].xyzw + r13.xyzw;
    r12.yz = r13.xy / r13.ww;
    r14.xyzw = t10.SampleLevel(s0_s, r12.yz, 0).xyzw;
    r13.xyw = t11.SampleLevel(s0_s, r12.yz, 0).yzw;
    r15.xyz = float3(6.28318548,12.566371,18.849556) * r13.zzz;
    sincos(r15.xyz, r15.xyz, r16.xyz);
    r16.xyz = float3(1,1,1) + -r16.xyz;
    r0.w = r14.x * r13.z;
    r14.xyz = r15.xyz * r14.yzw;
    r14.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r14.xyz;
    r1.w = dot(r14.xyz, float3(1,1,1));
    r0.w = r0.w * 0.5 + r1.w;
    r13.xyz = r16.xyz * r13.xyw;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r1.w = dot(r13.xyz, float3(1,1,1));
    r0.w = r1.w + r0.w;
    r13.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r0.www;
    r13.xyz = exp2(r13.xyz);
    r13.xyz = min(float3(1,1,1), r13.xyz);
    r14.xy = cmp(r12.yz < cb3[4].xy);
    r12.yz = cmp(cb3[4].zw < r12.yz);
    r12.yz = (int2)r12.yz | (int2)r14.xy;
    r0.w = (int)r12.z | (int)r12.y;
    r12.yzw = cb3[6].xyz * r15.www;
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r13.xyz = r0.www ? float3(0,0,0) : r13.xyz;
    r12.yzw = -r12.yzw * r13.xyz + r11.xyz;
    r12.yzw = max(float3(0,0,0), r12.yzw);
    r12.yzw = r12.yzw * r8.xyz;
  } else {
    r12.yzw = r11.xyz * r8.xyz;
  }
  r0.xyz = r0.xyz * r3.xyz + r12.yzw;
  r3.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r3.xyz = r3.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r6.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r3.x = t0[r3.x].val[0/4];
    r3.z = t0[r3.x].val[0/4+1];
    r3.w = t0[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r2.xyz;
    r4.x = t0[r3.y].val[0/4];
    r4.y = t0[r3.y].val[0/4+1];
    r4.z = t0[r3.y].val[0/4+2];
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
  r0.xyz = r9.xyz * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r0.xyz = r0.xyz * r12.xxx + r10.xyz;
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