// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

TextureCube<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

TextureCubeArray<float4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  float4 v2 : TEXCOORD4,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  nointerpolation uint w3 : LIGHTMAP_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.w = dot(r0.zxy, r3.xyz);
  r4.xyz = r3.www * r0.zxy;
  r4.xyz = r4.xyz * float3(2,2,2) + -r3.xyz;
  r4.xyz = t16.Sample(s7_s, r4.xyz).xyz;
  r4.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r4.www + -r4.xyz;
  r4.xyz = cb4[10].xxx * r5.xyz + r4.xyz;
  r4.xyz = cb4[10].yyy * r4.xyz;
  r5.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[10].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r5.xyz ? float3(0,0,0) : r4.xyz;
  r4.w = max(0, r3.w);
  r5.x = 1 + -r4.w;
  r5.x = max(9.99999975e-005, abs(r5.x));
  r5.x = log2(r5.x);
  r5.x = cb4[11].x * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r5.x * 0.999000013 + 0.00100000005;
  r5.xyz = cb4[2].xyz * r5.xxx;
  r6.xyz = cb4[8].xyz * cb3[6].xyz;
  r5.w = dot(r0.zxy, cb3[7].xyz);
  r6.w = saturate(cb3[7].z);
  r7.xyz = cb0[67].xyz + -r2.xyz;
  r7.w = dot(r7.xyz, r7.xyz);
  r7.w = sqrt(r7.w);
  r7.xyz = r7.xyz / r7.www;
  r7.xyz = cb3[7].xyz + r7.xyz;
  r7.x = dot(r7.xyz, r7.xyz);
  r7.x = sqrt(r7.x);
  r7.x = saturate(r7.z / r7.x);
  r7.y = 11 * cb4[12].x;
  r7.y = exp2(r7.y);
  r7.z = cmp(0 >= r7.x);
  r7.x = log2(r7.x);
  r7.x = r7.y * r7.x;
  r7.x = exp2(r7.x);
  r6.w = r7.x * r6.w;
  r6.w = cb4[12].y * r6.w;
  r7.xyw = cb3[5].xyz * r6.www;
  r7.xyz = r7.zzz ? float3(0,0,0) : r7.xyw;
  r6.xyz = r6.xyz * r5.www + r7.xyz;
  r5.xyz = r5.xyz * cb4[11].yyy + r6.xyz;
  r4.xyz = r4.xyz * cb4[10].www + r5.xyz;
  r5.xyz = cb4[9].xyz + -r4.xyz;
  r4.xyz = cb4[12].zzz * r5.xyz + r4.xyz;
  r5.x = dot(v1.xyz, r3.xyz);
  r5.x = max(0, r5.x);
  r5.x = 1 + -r5.x;
  r5.x = max(9.99999975e-005, abs(r5.x));
  r5.x = log2(r5.x);
  r5.x = cb4[13].y * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r5.x * 0.999000013 + 0.00100000005;
  r5.x = min(1, r5.x);
  r5.x = cb4[13].z * r5.x;
  r5.x = max(cb4[13].w, r5.x);
  r5.x = max(0, r5.x);
  r5.w = saturate(cb4[14].x * r5.x);
  r6.xyz = saturate(cb4[5].xyz);
  r6.w = saturate(cb4[11].z);
  r7.x = saturate(cb4[12].w);
  r7.y = saturate(cb4[13].x);
  r7.y = r7.y * cb0[139].y + cb0[139].x;
  r7.z = 0.0799999982 * r7.x;
  r8.xyz = -r7.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r7.xzw = r6.www * r8.xyz + r7.zzz;
  r8.xyz = -r6.xyz * r6.www + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xzw = r7.xzw * cb0[137].www + cb0[137].xyz;
  r6.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xzw * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r6.www ? r9.xyz : r8.xyz;
  r7.xzw = r6.www ? float3(0,0,0) : r7.xzw;
  r9.xy = float2(1,0.5) * v2.xy;
  r9.zw = v2.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t15.Sample(s6_s, r9.xy).xyzw;
  r9.xyzw = t15.Sample(s6_s, r9.zw).xyzw;
  r6.w = r9.w * 0.00392156886 + r10.w;
  r6.w = -0.00196078443 + r6.w;
  r11.xyzw = mad((int4)w3.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r13.x = t1[r11.y].val[0/4];
  r13.y = t1[r11.y].val[0/4+1];
  r13.z = t1[r11.y].val[0/4+2];
  r13.w = t1[r11.y].val[0/4+3];
  r6.w = r6.w * r12.w + r13.w;
  r10.xyz = r10.xyz * r10.xyz;
  r10.xyz = r10.xyz * r12.xyz + r13.xyz;
  r6.w = exp2(r6.w);
  r6.w = -0.0185813606 + r6.w;
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
  r0.w = r6.w * r0.w;
  r9.xyz = r0.www * r10.xyz;
  r9.xyz = cb0[157].xyz * r9.xyz;
  r0.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r9.xyz * r8.xyz;
  r10.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r6.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r10.xy = -cb0[129].xy + v4.xy;
  r10.xy = cb0[131].zw * r10.xy;
  r10.xy = (uint2)r10.xy;
  r6.w = v4.w * cb1[3].x + cb1[3].y;
  r6.w = log2(r6.w);
  r6.w = cb1[3].z * r6.w;
  r6.xyzw = max(float4(1,1,1,0), r6.xyzw);
  r6.w = (uint)r6.w;
  r8.w = asint(cb1[1].z) + -1;
  r6.w = min((uint)r8.w, (uint)r6.w);
  r10.xy = (uint2)r10.xy >> asuint(cb1[2].xx);
  r6.w = mad((int)r6.w, asint(cb1[1].y), (int)r10.y);
  r6.w = mad((int)r6.w, asint(cb1[1].x), (int)r10.x);
  r3.w = r3.w + r3.w;
  r3.yzw = r3.www * r0.zxy + -r3.xyz;
  r4.w = min(1, r4.w);
  r6.w = (int)r6.w + asint(cb1[0].w);
  r8.w = (uint)r6.w << 1;
  r8.w = t3.Load(r8.w).x;
  r8.w = min(asuint(cb1[0].y), (uint)r8.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r6.w = (((uint)r6.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.w = t3.Load(r6.w).x;
  r9.w = max(0.00100000005, r7.y);
  r9.w = log2(r9.w);
  r9.w = -r9.w * 1.20000005 + 1;
  r10.x = -1 + cb0[195].z;
  r9.w = r10.x + -r9.w;
  r3.x = 0;
  r10.xyzw = float4(0,0,0,1);
  r11.xyz = float3(0,1,0);
  while (true) {
    r11.w = cmp((uint)r11.z >= (uint)r8.w);
    if (r11.w != 0) break;
    r11.w = cmp(r10.w < 0.00100000005);
    if (r11.w != 0) {
      break;
    }
    r11.w = (int)r6.w + (int)r11.z;
    r11.w = t4.Load(r11.w).x;
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
        r15.xyz = cb2[r13.y+1024].xyz * r3.zzz;
        r15.xyz = r3.yyy * cb2[r13.y+1023].xyz + r15.xyz;
        r13.yzw = r3.www * cb2[r13.y+1025].xyz + r15.xyz;
        r13.yzw = rcp(r13.yzw);
        r15.xyz = -r14.xyz * r13.yzw + -r13.yzw;
        r13.yzw = -r14.xyz * r13.yzw + r13.yzw;
        r13.yzw = max(r15.xyz, r13.yzw);
        r13.z = min(r13.z, r13.w);
        r13.y = min(r13.y, r13.z);
        r13.yzw = r13.yyy * r3.yzw + r2.xyz;
        r15.xyz = cb2[r11.w+682].xyz + cb2[r11.w+0].xyz;
        r15.xyz = -r15.xyz + r13.yzw;
        r13.y = cb2[r11.w+2387].w * 0.699999988;
        r16.xyz = -cb2[r11.w+2387].www * float3(0.5,0.5,0.5) + cb2[r11.w+2387].xyz;
        r17.xyz = cb2[r11.w+2387].xyz * r14.xyz;
        r18.xyz = cmp(r17.xyz < -r16.xyz);
        r19.xyz = r14.xyz * cb2[r11.w+2387].xyz + r16.xyz;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r16.xyz < r17.xyz);
        r14.xyz = r14.xyz * cb2[r11.w+2387].xyz + -r16.xyz;
        r14.xyz = abs(r14.xyz);
        r14.xyz = r17.xyz ? r14.xyz : 0;
        r13.z = dot(r18.xyz, float3(1,1,1));
        r13.w = dot(r14.xyz, float3(1,1,1));
        r13.z = r13.z + r13.w;
        r13.y = 1 / r13.y;
        r13.y = saturate(r13.z * r13.y);
        r13.z = r13.y * -2 + 3;
        r13.y = r13.y * r13.y;
        r14.x = -r13.z * r13.y + 1;
      } else {
        r13.x = saturate(r13.x / cb2[r11.w+0].w);
        r13.y = dot(r3.yzw, r12.xyz);
        r12.w = -cb2[r11.w+0].w * cb2[r11.w+0].w + r12.w;
        r12.w = r13.y * r13.y + -r12.w;
        r13.z = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r13.y;
        r12.xyz = r12.www * r3.yzw + r12.xyz;
        r12.yzw = -cb2[r11.w+682].xyz + r12.xyz;
        r13.x = r13.x * 2.5 + -1.5;
        r13.x = max(0, r13.x);
        r13.y = r13.x * r13.x;
        r13.x = -r13.x * 2 + 3;
        r12.x = -r13.y * r13.x + 1;
        r14.xyzw = r13.zzzz ? r12.xyzw : r3.xyzw;
        r15.xyz = r14.yzw;
      }
      r15.w = cb2[r11.w+341].y;
      r12.xyzw = t5.SampleLevel(s2_s, r15.xyzw, r9.w).xyzw;
      r12.xyz = cb2[r11.w+341].xxx * r12.xyz;
      r12.xyz = r12.xyz * r14.xxx;
      r10.xyz = r12.xyz * r10.www + r10.xyz;
      r12.x = -r12.w * r14.x + 1;
      r10.w = r12.x * r10.w;
      r11.w = cb2[r11.w+682].w * r14.x;
      r11.x = r11.w * r11.y + r11.x;
      r11.w = 1 + -r14.x;
      r11.y = r11.y * r11.w;
    }
    r11.z = (int)r11.z + 1;
  }
  r10.xyz = cb0[157].xyz * r10.xyz;
  r3.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.x = r11.x * r3.x;
  r6.w = saturate(r7.y * cb0[197].x + cb0[197].y);
  r8.w = r6.w * -2 + 3;
  r6.w = r6.w * r6.w;
  r6.w = r8.w * r6.w;
  r3.x = max(9.99999975e-005, r3.x);
  r0.w = r0.w / r3.x;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r6.w * r0.w + 1;
  r10.xyz = r10.xyz * r0.www;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r11.xy = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r11.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r11.xyzw = cb0[1].xyzw * r1.yyyy;
    r11.xyzw = r1.xxxx * cb0[0].xyzw + r11.xyzw;
    r11.xyzw = r1.zzzz * cb0[2].xyzw + r11.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r3.xyz = r3.yzw * v4.www + r1.xyz;
    r12.xyzw = cb0[1].xyzw * r3.yyyy;
    r12.xyzw = r3.xxxx * cb0[0].xyzw + r12.xyzw;
    r3.xyzw = r3.zzzz * cb0[2].xyzw + r12.xyzw;
    r3.xyzw = cb0[3].xyzw + r3.xyzw;
    r6.w = rcp(r11.w);
    r12.xyz = r11.xyz * r6.www;
    r3.w = rcp(r3.w);
    r11.xy = v4.ww * cb0[30].zw + r11.zw;
    r6.w = rcp(r11.y);
    r3.xyz = r3.xyz * r3.www + -r12.xyz;
    r3.w = dot(r3.xy, r3.xy);
    r3.w = sqrt(r3.w);
    r8.w = 0.5 * r3.w;
    r11.yz = r12.xy * r8.ww + r3.xy;
    r11.yz = -r3.ww * float2(0.5,0.5) + abs(r11.yz);
    r11.yz = max(float2(0,0), r11.yz);
    r11.yz = r11.yz / abs(r3.xy);
    r11.yz = float2(1,1) + -r11.yz;
    r3.w = min(r11.y, r11.z);
    r3.w = r3.w / r8.w;
    r3.xyz = r3.xyz * r3.www;
    r3.w = -r11.x * r6.w + r12.z;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r3.z), r3.w);
    r11.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xy = cb1[176].xy * r11.xy;
    r3.xy = cb1[176].xy * r3.xy;
    r6.w = 0.0833333358 * r3.w;
    r3.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r3.xyz;
    r11.xyz = r3.xyz * r0.www + r12.xyz;
    r0.w = 1;
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
      r16.xyzw = r15.xxxy * r3.xyzz + r11.xyzz;
      r17.xyzw = r15.yyzz * r3.xyxy + r11.xyxy;
      r15.xyzw = r15.wwzw * r3.xyzz + r11.xyzz;
      r14.w = r7.y * 0.666666687 + r0.w;
      r18.x = r7.y * 0.666666687 + r14.w;
      r19.x = t9.SampleLevel(s4_s, r16.xy, r0.w).x;
      r19.y = t9.SampleLevel(s4_s, r17.xy, r0.w).x;
      r19.z = t9.SampleLevel(s4_s, r17.zw, r14.w).x;
      r19.w = t9.SampleLevel(s4_s, r15.xy, r14.w).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r19.xyzw;
      r16.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
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
      r0.w = r18.x;
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
      r3.xyz = t10.SampleLevel(s5_s, r11.xy, 0).xyz;
      r3.xyz = min(float3(0,0,0), -r3.xyz);
      r3.w = saturate(-r7.y * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r3.xyz = -r3.xyz * r0.www;
      r3.xyz = cb1[178].xxx * r3.xyz;
      r0.w = -r3.w * r0.w + 1;
      r10.xyz = r10.xyz * r0.www + r3.xyz;
    }
  }
  r3.xyzw = r7.yyyy * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r3.x * r3.x;
  r4.w = -9.27999973 * r4.w;
  r4.w = exp2(r4.w);
  r0.w = min(r4.w, r0.w);
  r0.w = r0.w * r3.x + r3.y;
  r3.xy = r0.ww * float2(-1.03999996,1.03999996) + r3.zw;
  r0.w = 50 * r7.z;
  r0.w = saturate(r0.w);
  r0.w = r0.w * r3.y;
  r3.xyz = r7.xzw * r3.xxx + r0.www;
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
    r2.w = dot(cb1[122].yzx, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r3.w = -0.200000003 + r7.y;
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
      r12.xyz = cb1[127].xyz * r0.xxx;
      r12.xyz = r0.zzz * cb1[126].xyz + r12.xyz;
      r12.xyz = r0.yyy * cb1[128].xyz + r12.xyz;
      r2.w = dot(r11.xyz, r12.xyz);
      r2.w = r2.w + r2.w;
      r11.xyz = r12.xyz * -r2.www + r11.xyz;
      r11.xyz = r11.xyz * cb1[129].zzz + r2.xyz;
      r11.xyz = cb0[70].xyz + r11.xyz;
      r12.xyz = cb0[13].xyz * r11.yyy;
      r11.xyw = r11.xxx * cb0[12].xyz + r12.xyz;
      r11.xyz = r11.zzz * cb0[14].xyz + r11.xyw;
      r11.xyz = cb0[15].xyz + r11.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb1[r2.w+132].xyw * r11.yyy;
      r11.xyw = r11.xxx * cb1[r2.w+131].xyw + r12.xyz;
      r11.xyz = r11.zzz * cb1[r2.w+133].xyw + r11.xyw;
      r11.xyz = cb1[r2.w+134].xyw + r11.xyz;
      r2.w = cb1[141].z ? cb0[197].w : 0;
      r11.xy = r11.xy / r11.zz;
      r11.xy = max(-cb1[141].xy, r11.xy);
      r11.xy = min(cb1[141].xy, r11.xy);
      r11.xy = r11.xy * cb1[r2.w+139].xy + cb1[r2.w+139].zw;
      r11.xyzw = t6.SampleLevel(s2_s, r11.xy, 0).xyzw;
      r0.w = r11.w * r0.w;
    } else {
      r11.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r10.xyz = r0.www * r10.xyz + r11.xyz;
  }
  r3.xyz = r10.xyz * r3.xyz;
  r10.xyz = r7.xzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r7.xzw * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r10.xyz = r7.xzw * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r10.xyz = float3(1.33200002,1.33200002,1.33200002) + r10.xyz;
  r10.xyz = max(float3(1,1,1), r10.xyz);
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
  r7.y = cmp(0 < r2.w);
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
  r3.w = max(-127, r3.w);
  r3.w = exp2(-r3.w);
  r3.w = cb1[144].z * r3.w;
  r9.w = r7.y ? r9.w : cb1[143].x;
  r3.w = r7.y ? r3.w : cb1[144].x;
  r2.w = r7.y ? r2.w : r4.w;
  r7.y = r7.y ? r8.w : r1.w;
  r8.w = cb1[143].y * r7.y;
  r8.w = max(-127, r8.w);
  r10.w = exp2(-r8.w);
  r10.w = 1 + -r10.w;
  r10.w = r10.w / r8.w;
  r11.x = -r8.w * 0.240226507 + 0.693147182;
  r8.w = cmp(0.00999999978 < abs(r8.w));
  r8.w = r8.w ? r10.w : r11.x;
  r7.y = cb1[144].y * r7.y;
  r7.y = max(-127, r7.y);
  r10.w = exp2(-r7.y);
  r10.w = 1 + -r10.w;
  r10.w = r10.w / r7.y;
  r11.x = -r7.y * 0.240226507 + 0.693147182;
  r7.y = cmp(0.00999999978 < abs(r7.y));
  r7.y = r7.y ? r10.w : r11.x;
  r3.w = r7.y * r3.w;
  r3.w = r9.w * r8.w + r3.w;
  r7.y = r3.w * r2.w;
  r11.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r11.x != 0) {
    r8.w = saturate(r4.w * cb1[150].x + cb1[150].y);
    r11.xz = float2(1,-1) * cb1[149].yx;
    r12.x = dot(r1.xy, r11.xz);
    r12.y = dot(r1.xy, cb1[149].xy);
    r12.z = r1.w;
    r11.xzw = t7.SampleLevel(s3_s, r12.xyz, 0).xyz;
    r12.xyz = t7.SampleLevel(s3_s, r12.xyz, cb1[150].z).xyz;
    r11.xzw = -r12.xyz + r11.xzw;
    r11.xzw = r8.www * r11.xzw + r12.xyz;
    r11.xzw = cb1[145].xyz * r11.xzw;
  } else {
    r11.xzw = cb1[145].xyz;
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
  r1.w = exp2(-r7.y);
  r1.w = min(1, r1.w);
  r12.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r4.w);
  r1.w = r1.w ? r11.y : 0;
  r12.xyzw = r1.wwww ? float4(1,0,0,0) : r12.wxyz;
  r1.w = 1 + -r12.x;
  r11.xyz = r11.xzw * r1.www + r12.yzw;
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
    r13.xyzw = t8.SampleLevel(s0_s, r13.xyz, 0).xyzw;
    r11.xyz = r11.xyz * r13.www + r13.xyz;
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
    r7.y = cmp(r13.x < -r13.x);
    r6.w = r7.y ? r6.w : 0;
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
    r13.xyzw = t2.SampleLevel(s1_s, r14.xyz, 0).xyzw;
    r12.yzw = r13.xyz * r3.www;
    r1.w = 1 + -r13.w;
    r1.w = -r3.w * r1.w + 1;
    r12.yzw = cb0[135].zzz * r12.yzw;
    r11.xyz = r12.yzw * r12.xxx + r11.xyz;
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
  r12.yzw = t11.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r15.xyz = t12.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r12.yzw = -r15.xyz + r12.yzw;
  r12.yzw = r1.www * r12.yzw + r15.xyz;
  r13.xyz = t13.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r14.xyz = t14.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r13.xyz = -r14.xyz + r13.xyz;
  r13.xyz = r1.www * r13.xyz + r14.xyz;
  r1.w = dot(r12.yzw, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r14.xyz = r12.yzw / r1.www;
  r15.yzw = r14.xxx * r13.xyz;
  r16.yzw = r14.yyy * r13.xyz;
  r13.yzw = r14.zzz * r13.xyz;
  r14.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.xyz;
  r15.x = r12.y;
  r14.x = 0.886227548;
  r0.x = dot(r15.xyzw, r14.xyzw);
  r16.x = r12.z;
  r0.y = dot(r16.xyzw, r14.xyzw);
  r13.x = r12.w;
  r0.z = dot(r13.xyzw, r14.xyzw);
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r0.xyz = r3.xyz * r10.xyz + r0.xyz;
  r3.xyz = r7.xzw * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r3.xyz = r3.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r5.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
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
  r0.xyz = r0.xyz * r12.xxx + r11.xyz;
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