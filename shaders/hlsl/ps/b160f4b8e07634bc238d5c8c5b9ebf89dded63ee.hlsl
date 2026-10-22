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
  float4 cb2[7];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb4[4].xxx * cb4[1].xyz;
  r5.x = cb4[4].w * v2.x + cb4[5].x;
  r5.y = v2.y * cb4[5].y + cb4[5].z;
  r6.xyzw = t12.SampleBias(s2_s, r5.xy, cb0[143].y).xyzw;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r7.xyz = cb4[5].www * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[4].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb4[3].xyz * r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r5.xy = t13.SampleBias(s3_s, r5.xy, cb0[143].y).yx;
  r0.w = saturate(cb4[6].x + r5.y);
  r5.yzw = min(float3(1,1,1), r7.xyz);
  r5.x = saturate(r5.x);
  r0.w = r0.w * cb0[139].y + cb0[139].x;
  r6.w = saturate(r6.w);
  r7.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r5.yzw;
  r7.xyz = r5.xxx * r7.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r5.yzw * r5.xxx + r5.yzw;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r8.xyz : r5.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r8.xy = -cb0[129].xy + v5.xy;
  r8.xy = cb0[131].zw * r8.xy;
  r8.xy = (uint2)r8.xy;
  r1.w = v5.w * cb1[3].x + cb1[3].y;
  r1.w = log2(r1.w);
  r1.w = cb1[3].z * r1.w;
  r1.w = max(0, r1.w);
  r1.w = (uint)r1.w;
  r3.w = asint(cb1[1].z) + -1;
  r1.w = min((uint)r3.w, (uint)r1.w);
  r8.xy = (uint2)r8.xy >> asuint(cb1[2].xx);
  r1.w = mad((int)r1.w, asint(cb1[1].y), (int)r8.y);
  r1.w = mad((int)r1.w, asint(cb1[1].x), (int)r8.x);
  r3.w = dot(r3.yzx, r0.xyz);
  r4.w = r3.w + r3.w;
  r8.yzw = r4.www * r0.zxy + -r3.xyz;
  r3.w = saturate(r3.w);
  r1.w = (int)r1.w + asint(cb1[0].w);
  r3.x = (uint)r1.w << 1;
  r3.x = t1.Load(r3.x).x;
  r3.x = min(asuint(cb1[0].y), (uint)r3.x);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.w = (((uint)r1.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r1.w = t1.Load(r1.w).x;
  r3.y = max(0.00100000005, r0.w);
  r3.y = log2(r3.y);
  r3.y = -r3.y * 1.20000005 + 1;
  r3.z = -1 + cb0[195].z;
  r3.y = r3.z + -r3.y;
  r8.x = 0;
  r9.xyz = float3(0,0,0);
  r3.z = 1;
  r4.w = 0;
  while (true) {
    r5.w = cmp((uint)r4.w >= (uint)r3.x);
    if (r5.w != 0) break;
    r5.w = cmp(r3.z < 0.00100000005);
    if (r5.w != 0) {
      break;
    }
    r5.w = (int)r1.w + (int)r4.w;
    r5.w = t2.Load(r5.w).x;
    r10.xyz = -cb3[r5.w+0].xyz + r2.xyz;
    r7.w = dot(r10.xyz, r10.xyz);
    r9.w = sqrt(r7.w);
    r10.w = cmp(r9.w < cb3[r5.w+0].w);
    if (r10.w != 0) {
      r10.w = cmp(0 < cb3[r5.w+341].z);
      if (r10.w != 0) {
        r10.w = (uint)r5.w << 2;
        r11.xyz = cb3[r10.w+1024].xyz * r2.yyy;
        r11.xyz = r2.xxx * cb3[r10.w+1023].xyz + r11.xyz;
        r11.xyz = r2.zzz * cb3[r10.w+1025].xyz + r11.xyz;
        r11.xyz = cb3[r10.w+1026].xyz + r11.xyz;
        r12.xyz = cb3[r10.w+1024].xyz * r8.zzz;
        r12.xyz = r8.yyy * cb3[r10.w+1023].xyz + r12.xyz;
        r12.xyz = r8.www * cb3[r10.w+1025].xyz + r12.xyz;
        r12.xyz = rcp(r12.xyz);
        r13.xyz = -r11.xyz * r12.xyz + -r12.xyz;
        r12.xyz = -r11.xyz * r12.xyz + r12.xyz;
        r12.xyz = max(r13.xyz, r12.xyz);
        r10.w = min(r12.y, r12.z);
        r10.w = min(r12.x, r10.w);
        r12.xyz = r10.www * r8.yzw + r2.xyz;
        r13.xyz = cb3[r5.w+682].xyz + cb3[r5.w+0].xyz;
        r12.xyz = -r13.xyz + r12.xyz;
        r10.w = cb3[r5.w+2387].w * 0.699999988;
        r13.xyz = -cb3[r5.w+2387].www * float3(0.5,0.5,0.5) + cb3[r5.w+2387].xyz;
        r14.xyz = cb3[r5.w+2387].xyz * r11.xyz;
        r15.xyz = cmp(r14.xyz < -r13.xyz);
        r16.xyz = r11.xyz * cb3[r5.w+2387].xyz + r13.xyz;
        r16.xyz = abs(r16.xyz);
        r15.xyz = r15.xyz ? r16.xyz : 0;
        r14.xyz = cmp(r13.xyz < r14.xyz);
        r11.xyz = r11.xyz * cb3[r5.w+2387].xyz + -r13.xyz;
        r11.xyz = abs(r11.xyz);
        r11.xyz = r14.xyz ? r11.xyz : 0;
        r11.w = dot(r15.xyz, float3(1,1,1));
        r11.x = dot(r11.xyz, float3(1,1,1));
        r11.x = r11.w + r11.x;
        r10.w = 1 / r10.w;
        r10.w = saturate(r11.x * r10.w);
        r11.x = r10.w * -2 + 3;
        r10.w = r10.w * r10.w;
        r11.x = -r11.x * r10.w + 1;
      } else {
        r9.w = saturate(r9.w / cb3[r5.w+0].w);
        r10.w = dot(r8.yzw, r10.xyz);
        r7.w = -cb3[r5.w+0].w * cb3[r5.w+0].w + r7.w;
        r7.w = r10.w * r10.w + -r7.w;
        r13.x = cmp(r7.w >= 0);
        r7.w = sqrt(r7.w);
        r7.w = r7.w + -r10.w;
        r10.xyz = r7.www * r8.yzw + r10.xyz;
        r10.yzw = -cb3[r5.w+682].xyz + r10.xyz;
        r7.w = r9.w * 2.5 + -1.5;
        r7.w = max(0, r7.w);
        r9.w = r7.w * r7.w;
        r7.w = -r7.w * 2 + 3;
        r10.x = -r9.w * r7.w + 1;
        r11.xyzw = r13.xxxx ? r10.xyzw : r8.xyzw;
        r12.xyz = r11.yzw;
      }
      r12.w = cb3[r5.w+341].y;
      r10.xyzw = t3.SampleLevel(s1_s, r12.xyzw, r3.y).xyzw;
      r10.xyz = cb3[r5.w+341].xxx * r10.xyz;
      r10.xyz = r10.xyz * r11.xxx;
      r9.xyz = r10.xyz * r3.zzz + r9.xyz;
      r5.w = -r10.w * r11.x + 1;
      r3.z = r5.w * r3.z;
    }
    r4.w = (int)r4.w + 1;
  }
  r3.xyz = cb0[157].xyz * r9.xyz;
  r1.w = saturate(r0.w * cb0[197].x + cb0[197].y);
  r4.w = r1.w * -2 + 3;
  r1.w = r1.w * r1.w;
  r1.w = r4.w * r1.w;
  r4.w = min(0, cb0[197].z);
  r4.w = -1 + r4.w;
  r1.w = r1.w * r4.w + 1;
  r3.xyz = r3.xyz * r1.www;
  r8.xyzw = r0.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r1.w = r8.x * r8.x;
  r3.w = -9.27999973 * r3.w;
  r3.w = exp2(r3.w);
  r1.w = min(r3.w, r1.w);
  r1.w = r1.w * r8.x + r8.y;
  r8.xy = r1.ww * float2(-1.03999996,1.03999996) + r8.zw;
  r1.w = 50 * r7.y;
  r1.w = saturate(r1.w);
  r1.w = r1.w * r8.y;
  r8.xyz = r7.xyz * r8.xxx + r1.www;
  r1.w = dot(cb1[122].xyz, float3(1,1,1));
  r1.w = cmp(9.99999975e-005 < abs(r1.w));
  if (r1.w != 0) {
    r2.w = -1;
    r1.w = dot(cb1[122].xyzw, r2.xyzw);
    r1.w = saturate(abs(r1.w) * cb1[129].x + cb1[129].y);
    r1.w = 1 + -r1.w;
    r9.xyz = -cb1[123].xyz + r2.xyz;
    r2.w = dot(r9.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r9.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r1.w = r2.w * r1.w;
    r2.w = dot(cb1[122].yzx, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r0.w = -0.200000003 + r0.w;
    r0.w = saturate(10 * r0.w);
    r0.w = 1 + -r0.w;
    r1.w = r2.w * r1.w;
    r0.w = r1.w * r0.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r9.xyz = -cb0[67].xyz + r2.xyz;
      r1.w = dot(r9.xyz, r9.xyz);
      r1.w = rsqrt(r1.w);
      r9.xyz = r9.xyz * r1.www;
      r1.w = dot(r9.xyz, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r9.xyz = cb1[122].xyz * r1.www + r9.xyz;
      r10.xyz = cb1[127].xyz * r0.xxx;
      r10.xyz = r0.zzz * cb1[126].xyz + r10.xyz;
      r10.xyz = r0.yyy * cb1[128].xyz + r10.xyz;
      r1.w = dot(r9.xyz, r10.xyz);
      r1.w = r1.w + r1.w;
      r9.xyz = r10.xyz * -r1.www + r9.xyz;
      r9.xyz = r9.xyz * cb1[129].zzz + r2.xyz;
      r9.xyz = cb0[70].xyz + r9.xyz;
      r10.xyz = cb0[13].xyz * r9.yyy;
      r9.xyw = r9.xxx * cb0[12].xyz + r10.xyz;
      r9.xyz = r9.zzz * cb0[14].xyz + r9.xyw;
      r9.xyz = cb0[15].xyz + r9.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r10.xyz = cb1[r1.w+132].xyw * r9.yyy;
      r9.xyw = r9.xxx * cb1[r1.w+131].xyw + r10.xyz;
      r9.xyz = r9.zzz * cb1[r1.w+133].xyw + r9.xyw;
      r9.xyz = cb1[r1.w+134].xyw + r9.xyz;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r9.xy = r9.xy / r9.zz;
      r9.xy = max(-cb1[141].xy, r9.xy);
      r9.xy = min(cb1[141].xy, r9.xy);
      r9.xy = r9.xy * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r9.xyzw = t4.SampleLevel(s1_s, r9.xy, 0).xyzw;
      r0.w = r9.w * r0.w;
    } else {
      r9.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r3.xyz = r0.www * r3.xyz + r9.xyz;
  }
  r3.xyz = r3.xyz * r8.xyz;
  r8.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r9.xyz = cb0[5].xyw * r2.yyy;
    r9.xyz = r2.xxx * cb0[4].xyw + r9.xyz;
    r9.xyz = r2.zzz * cb0[6].xyw + r9.xyz;
    r9.xyz = cb0[7].xyw + r9.xyz;
    r9.xy = r9.xy / r9.zz;
    r10.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r9.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r10.z = cb0[208].z * r0.w;
    r9.xyzw = t5.SampleLevel(s0_s, r10.xyz, 0).xyzw;
    r10.x = v4.w * r9.w;
    r9.xyz = v4.xyz * r9.www + r9.xyz;
  } else {
    r9.xyz = v4.xyz;
    r10.x = v4.w;
  }
  r10.yzw = -cb0[148].xyz + r2.xyz;
  r11.xyz = cb0[150].xyz * r10.yzw;
  r12.xyz = -cb0[149].xyz + r2.xyz;
  r12.xyz = cb0[151].xyz * r12.xyz;
  r10.yzw = r10.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r10.yzw = float3(0.5,0.5,0.5) + -abs(r10.yzw);
  r10.yzw = saturate(float3(6,6,6) * r10.yzw);
  r0.w = r10.y * r10.z;
  r0.w = r0.w * r10.w;
  r13.xyzw = t6.SampleLevel(s0_s, r11.xyz, 0).xyzw;
  r14.xyzw = t7.SampleLevel(s0_s, r12.xyz, 0).xyzw;
  r13.xyzw = -r14.xyzw + r13.xyzw;
  r13.xyzw = r0.wwww * r13.xyzw + r14.xyzw;
  r10.yzw = t8.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r11.xyz = t9.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r10.yzw = -r11.xyz + r10.yzw;
  r10.yzw = r0.www * r10.yzw + r11.xyz;
  r0.w = dot(r13.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = 9.99999975e-006 + r0.w;
  r11.xyz = r13.xyz / r0.www;
  r12.yzw = r11.xxx * r10.yzw;
  r14.yzw = r11.yyy * r10.yzw;
  r11.yzw = r11.zzz * r10.yzw;
  r0.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.xyz;
  r12.x = r13.x;
  r0.x = 0.886227548;
  r12.x = dot(r12.xyzw, r0.xyzw);
  r14.x = r13.y;
  r12.y = dot(r14.xyzw, r0.xyzw);
  r11.x = r13.z;
  r12.z = dot(r11.xyzw, r0.xyzw);
  r0.xyz = max(float3(0,0,0), r12.xyz);
  r0.w = cmp(0 < cb2[6].w);
  if (r0.w != 0) {
    r11.xyzw = cb2[1].xyzw * r2.yyyy;
    r11.xyzw = r2.xxxx * cb2[0].xyzw + r11.xyzw;
    r11.xyzw = r2.zzzz * cb2[2].xyzw + r11.xyzw;
    r11.xyzw = cb2[3].xyzw + r11.xyzw;
    r10.yz = r11.xy / r11.ww;
    r12.xyzw = t10.SampleLevel(s0_s, r10.yz, 0).xyzw;
    r11.xyw = t11.SampleLevel(s0_s, r10.yz, 0).yzw;
    r13.xyz = float3(6.28318548,12.566371,18.849556) * r11.zzz;
    sincos(r13.xyz, r13.xyz, r14.xyz);
    r14.xyz = float3(1,1,1) + -r14.xyz;
    r0.w = r12.x * r11.z;
    r12.xyz = r13.xyz * r12.yzw;
    r12.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r12.xyz;
    r1.w = dot(r12.xyz, float3(1,1,1));
    r0.w = r0.w * 0.5 + r1.w;
    r11.xyz = r14.xyz * r11.xyw;
    r11.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r11.xyz;
    r1.w = dot(r11.xyz, float3(1,1,1));
    r0.w = r1.w + r0.w;
    r11.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r0.www;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = min(float3(1,1,1), r11.xyz);
    r12.xy = cmp(r10.yz < cb2[4].xy);
    r10.yz = cmp(cb2[4].zw < r10.yz);
    r10.yz = (int2)r10.yz | (int2)r12.xy;
    r0.w = (int)r10.z | (int)r10.y;
    r10.yzw = cb2[6].xyz * r13.www;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r0.www ? float3(0,0,0) : r11.xyz;
    r10.yzw = -r10.yzw * r11.xyz + r0.xyz;
    r10.yzw = max(float3(0,0,0), r10.yzw);
    r10.yzw = r10.yzw * r5.xyz;
  } else {
    r10.yzw = r5.xyz * r0.xyz;
  }
  r0.xyz = r3.xyz * r8.xyz + r10.yzw;
  r3.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
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
  r0.xyz = r6.xyz + r0.xyz;
  r0.xyz = r0.xyz * r10.xxx + r9.xyz;
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