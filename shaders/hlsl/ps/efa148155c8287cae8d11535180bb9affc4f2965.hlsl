// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

TextureCubeArray<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

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
  float4 cb4[13];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
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
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = -r2.xyz * r0.www;
  r5.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.x = r1.x / cb4[6].x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb4[6].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb4[6].z * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r6.x = cb4[7].y * v2.x + cb4[7].z;
  r6.y = cb4[7].w * v2.y + cb4[8].x;
  r1.yz = r6.xy / cb4[8].yy;
  r1.yz = cb4[8].zw + r1.yz;
  r1.yzw = t15.SampleBias(s4_s, r1.yz, cb0[143].y).xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.yzw);
  r1.yzw = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.wyz;
  r7.xyz = r1.wyz * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[7].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r1.yzw = r1.yzw * r9.xxx + r7.xyz;
  r1.yzw = r2.www * float3(0.577350259,0.577350259,0.577350259) + r1.yzw;
  r1.yzw = cb4[2].xyz * r1.yzw;
  r6.zw = cb4[9].yy * v2.xy;
  r2.w = t16.SampleBias(s5_s, r6.zw, cb0[143].y).x;
  r4.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[9].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = cb4[9].w * r2.w;
  r2.w = r4.w ? 0 : r2.w;
  r2.w = cb0[142].z * cb4[9].x + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * cb4[10].y + cb4[10].x;
  r2.w = max(cb4[10].w, r2.w);
  r2.w = min(cb4[10].z, r2.w);
  r2.w = cb4[11].x * r2.w;
  r2.w = cb3[3].y * r2.w;
  r1.yzw = r2.www * r1.yzw;
  r7.xyz = r1.xxx * r1.yzw;
  r1.xyz = -r1.xxx * r1.yzw + cb4[3].xyz;
  r1.xyz = cb4[11].yyy * r1.xyz + r7.xyz;
  r7.xyzw = t17.SampleBias(s6_s, r6.xy, cb0[143].y).xyzw;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.www + -r7.xyz;
  r8.xyz = cb4[12].xxx * r8.xyz + r7.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb4[11].w, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = cb4[5].xyz * r8.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r6.xy = t18.SampleBias(s7_s, r6.xy, cb0[143].y).yx;
  r1.w = saturate(cb4[12].y + r6.y);
  r6.yzw = min(float3(1,1,1), r8.xyz);
  r6.x = saturate(r6.x);
  r1.w = r1.w * cb0[139].y + cb0[139].x;
  r7.w = saturate(r7.w);
  r8.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r6.yzw;
  r8.xyz = r6.xxx * r8.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r9.xyz = -r6.yzw * r6.xxx + r6.yzw;
  r9.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r8.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r10.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r9.xyz = r2.www ? r10.xyz : r9.xyz;
  r8.xyz = r2.www ? float3(0,0,0) : r8.xyz;
  r10.xy = float2(1,0.5) * v3.xy;
  r10.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r11.xyzw = t13.Sample(s3_s, r10.xy).xyzw;
  r10.xyzw = t13.Sample(s3_s, r10.zw).xyzw;
  r2.w = r10.w * 0.00392156886 + r11.w;
  r2.w = -0.00196078443 + r2.w;
  r12.xyzw = mad((int4)w4.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r13.x = t1[r12.x].val[0/4];
  r13.y = t1[r12.x].val[0/4+1];
  r13.z = t1[r12.x].val[0/4+2];
  r13.w = t1[r12.x].val[0/4+3];
  r14.x = t1[r12.y].val[0/4];
  r14.y = t1[r12.y].val[0/4+1];
  r14.z = t1[r12.y].val[0/4+2];
  r14.w = t1[r12.y].val[0/4+3];
  r2.w = r2.w * r13.w + r14.w;
  r11.xyz = r11.xyz * r11.xyz;
  r11.xyz = r11.xyz * r13.xyz + r14.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r13.x = t1[r12.z].val[0/4];
  r13.y = t1[r12.z].val[0/4+1];
  r13.z = t1[r12.z].val[0/4+2];
  r13.w = t1[r12.z].val[0/4+3];
  r12.x = t1[r12.w].val[0/4];
  r12.y = t1[r12.w].val[0/4+1];
  r12.z = t1[r12.w].val[0/4+2];
  r12.w = t1[r12.w].val[0/4+3];
  r10.xyzw = r10.xyzw * r13.xyzw + r12.xyzw;
  r5.w = 1;
  r4.w = dot(r10.xyzw, r5.xyzw);
  r4.w = max(0, r4.w);
  r2.w = r4.w * r2.w;
  r10.xyz = r2.www * r11.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r11.xyzw = t14.Sample(s3_s, v3.xy).xyzw;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r12.x = r11.w * r11.w;
    r2.w = dot(r11.xyz, r11.xyz);
    r2.w = rsqrt(r2.w);
    r11.xyz = r11.xyz * r2.www;
    r2.w = -r11.w * r11.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.zxy * r0.www + -r11.xyz;
    r0.xyz = r2.www * r0.xyz + r11.xyz;
    r4.w = saturate(dot(r11.yzx, r5.xyz));
    r5.w = 1 + -r4.w;
    r12.y = r2.w * r5.w + r4.w;
  } else {
    r0.xyz = r5.zxy;
    r12.xy = float2(1,1);
  }
  r11.x = t2[0].val[0/4];
  r11.y = t2[0].val[0/4+1];
  r11.z = t2[0].val[0/4+2];
  r11.w = t2[0].val[0/4+3];
  r0.w = 1;
  r11.x = dot(r11.xyzw, r0.xyzw);
  r13.x = t2[1].val[0/4];
  r13.y = t2[1].val[0/4+1];
  r13.z = t2[1].val[0/4+2];
  r13.w = t2[1].val[0/4+3];
  r11.y = dot(r13.xyzw, r0.xyzw);
  r13.x = t2[2].val[0/4];
  r13.y = t2[2].val[0/4+1];
  r13.z = t2[2].val[0/4+2];
  r13.w = t2[2].val[0/4+3];
  r11.z = dot(r13.xyzw, r0.xyzw);
  r13.xyzw = r0.xyzz * r0.yzzx;
  r14.x = t2[3].val[0/4];
  r14.y = t2[3].val[0/4+1];
  r14.z = t2[3].val[0/4+2];
  r14.w = t2[3].val[0/4+3];
  r14.x = dot(r14.xyzw, r13.xyzw);
  r15.x = t2[4].val[0/4];
  r15.y = t2[4].val[0/4+1];
  r15.z = t2[4].val[0/4+2];
  r15.w = t2[4].val[0/4+3];
  r14.y = dot(r15.xyzw, r13.xyzw);
  r15.x = t2[5].val[0/4];
  r15.y = t2[5].val[0/4+1];
  r15.z = t2[5].val[0/4+2];
  r15.w = t2[5].val[0/4+3];
  r14.z = dot(r15.xyzw, r13.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r11.xyz = r14.xyz + r11.xyz;
  r0.xyz = r0.yzw * r0.xxx + r11.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r12.x * r12.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r10.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r9.xyz;
  r10.xyz = r6.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r6.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r6.xyz = r6.yzw * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r10.xy = -cb0[129].xy + v6.xy;
  r10.xy = cb0[131].zw * r10.xy;
  r10.xy = (uint2)r10.xy;
  r2.w = v6.w * cb1[3].x + cb1[3].y;
  r2.w = log2(r2.w);
  r2.w = cb1[3].z * r2.w;
  r2.w = max(0, r2.w);
  r2.w = (uint)r2.w;
  r4.w = asint(cb1[1].z) + -1;
  r2.w = min((uint)r4.w, (uint)r2.w);
  r10.xy = (uint2)r10.xy >> asuint(cb1[2].xx);
  r2.w = mad((int)r2.w, asint(cb1[1].y), (int)r10.y);
  r2.w = mad((int)r2.w, asint(cb1[1].x), (int)r10.x);
  r4.w = dot(r4.yzx, r5.xyz);
  r5.w = r4.w + r4.w;
  r10.yzw = r5.www * r5.zxy + -r4.xyz;
  r4.w = saturate(r4.w);
  r2.w = (int)r2.w + asint(cb1[0].w);
  r4.x = (uint)r2.w << 1;
  r4.x = t3.Load(r4.x).x;
  r4.x = min(asuint(cb1[0].y), (uint)r4.x);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r2.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r2.w = t3.Load(r2.w).x;
  r4.y = max(0.00100000005, r1.w);
  r4.y = log2(r4.y);
  r4.y = -r4.y * 1.20000005 + 1;
  r4.z = -1 + cb0[195].z;
  r4.z = r4.z + -r4.y;
  r10.x = 0;
  r11.xyz = float3(0,0,0);
  r5.w = 1;
  r6.w = 0;
  r8.w = 1;
  r9.w = 0;
  while (true) {
    r11.w = cmp((uint)r9.w >= (uint)r4.x);
    if (r11.w != 0) break;
    r11.w = cmp(r5.w < 0.00100000005);
    if (r11.w != 0) {
      break;
    }
    r11.w = (int)r2.w + (int)r9.w;
    r11.w = t4.Load(r11.w).x;
    r12.xyz = -cb2[r11.w+0].xyz + r3.xyz;
    r12.w = dot(r12.xyz, r12.xyz);
    r13.x = sqrt(r12.w);
    r13.y = cmp(r13.x < cb2[r11.w+0].w);
    if (r13.y != 0) {
      r13.y = cmp(0 < cb2[r11.w+341].z);
      if (r13.y != 0) {
        r13.y = (uint)r11.w << 2;
        r14.xyz = cb2[r13.y+1024].xyz * r3.yyy;
        r14.xyz = r3.xxx * cb2[r13.y+1023].xyz + r14.xyz;
        r14.xyz = r3.zzz * cb2[r13.y+1025].xyz + r14.xyz;
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
        r13.yzw = r13.yyy * r10.yzw + r3.xyz;
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
      r12.xyzw = t6.SampleLevel(s2_s, r15.xyzw, r4.z).xyzw;
      r12.xyz = cb2[r11.w+341].xxx * r12.xyz;
      r12.xyz = r12.xyz * r14.xxx;
      r11.xyz = r12.xyz * r5.www + r11.xyz;
      r12.x = -r12.w * r14.x + 1;
      r5.w = r12.x * r5.w;
      r11.w = cb2[r11.w+682].w * r14.x;
      r6.w = r11.w * r8.w + r6.w;
      r11.w = 1 + -r14.x;
      r8.w = r11.w * r8.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r11.xyz = cb0[157].xyz * r11.xyz;
  r2.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.w = r6.w * r2.w;
  r2.w = cmp(0 < cb1[116].y);
  if (r2.w != 0) {
    r2.w = cb1[116].x + -r4.y;
    r2.w = -1 + r2.w;
    r4.xyz = t5.SampleLevel(s1_s, r10.yzw, r2.w).xyz;
    r2.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r2.w = cb1[117].x * r2.w;
    r4.xyz = cb0[187].xyz * r4.xyz;
    r6.w = cmp(cb1[116].z < 1);
    r10.xyz = r5.www * r4.xyz + r11.xyz;
    r10.w = r2.w * r8.w + r11.w;
    r4.xyz = r6.www ? float3(0,0,0) : r4.xyz;
    r11.xyzw = r6.wwww ? r10.xyzw : r11.xyzw;
  } else {
    r4.xyz = float3(0,0,0);
  }
  r2.w = saturate(r1.w * cb0[197].x + cb0[197].y);
  r6.w = r2.w * -2 + 3;
  r2.w = r2.w * r2.w;
  r2.w = r6.w * r2.w;
  r6.w = max(9.99999975e-005, r11.w);
  r0.w = r0.w / r6.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r2.w * r0.w + 1;
  r4.xyz = r5.www * r4.xyz;
  r4.xyz = r11.xyz * r0.www + r4.xyz;
  r10.xyzw = r1.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r10.x * r10.x;
  r2.w = -9.27999973 * r4.w;
  r2.w = exp2(r2.w);
  r0.w = min(r2.w, r0.w);
  r0.w = r0.w * r10.x + r10.y;
  r10.xy = r0.ww * float2(-1.03999996,1.03999996) + r10.zw;
  r0.w = 50 * r8.y;
  r0.w = saturate(r0.w);
  r0.w = r0.w * r10.y;
  r10.xyz = r8.xyz * r10.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r3.w = -1;
    r0.w = dot(cb1[122].xyzw, r3.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r11.xyz = -cb1[123].xyz + r3.xyz;
    r2.w = dot(r11.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r11.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb1[122].yzx, r5.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r1.w = -0.200000003 + r1.w;
    r1.w = saturate(10 * r1.w);
    r1.w = 1 + -r1.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r1.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r11.xyz = -cb0[67].xyz + r3.xyz;
      r1.w = dot(r11.xyz, r11.xyz);
      r1.w = rsqrt(r1.w);
      r11.xyz = r11.xyz * r1.www;
      r1.w = dot(r11.xyz, -cb1[122].xyz);
      r1.w = r1.w + r1.w;
      r11.xyz = cb1[122].xyz * r1.www + r11.xyz;
      r12.xyz = cb1[127].xyz * r5.xxx;
      r12.xyz = r5.zzz * cb1[126].xyz + r12.xyz;
      r12.xyz = r5.yyy * cb1[128].xyz + r12.xyz;
      r1.w = dot(r11.xyz, r12.xyz);
      r1.w = r1.w + r1.w;
      r11.xyz = r12.xyz * -r1.www + r11.xyz;
      r11.xyz = r11.xyz * cb1[129].zzz + r3.xyz;
      r11.xyz = cb0[70].xyz + r11.xyz;
      r12.xyz = cb0[13].xyz * r11.yyy;
      r11.xyw = r11.xxx * cb0[12].xyz + r12.xyz;
      r11.xyz = r11.zzz * cb0[14].xyz + r11.xyw;
      r11.xyz = cb0[15].xyz + r11.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb1[r1.w+132].xyw * r11.yyy;
      r11.xyw = r11.xxx * cb1[r1.w+131].xyw + r12.xyz;
      r11.xyz = r11.zzz * cb1[r1.w+133].xyw + r11.xyw;
      r11.xyz = cb1[r1.w+134].xyw + r11.xyz;
      r1.w = cb1[141].z ? cb0[197].w : 0;
      r11.xy = r11.xy / r11.zz;
      r11.xy = max(-cb1[141].xy, r11.xy);
      r11.xy = min(cb1[141].xy, r11.xy);
      r11.xy = r11.xy * cb1[r1.w+139].xy + cb1[r1.w+139].zw;
      r11.xyzw = t7.SampleLevel(s2_s, r11.xy, 0).xyzw;
      r0.w = r11.w * r0.w;
    } else {
      r11.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r4.xyz = r0.www * r4.xyz + r11.xyz;
  }
  r4.xyz = r4.xyz * r10.xyz;
  r10.xyz = r8.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r8.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r10.xyz = r8.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r10.xyz = float3(1.33200002,1.33200002,1.33200002) + r10.xyz;
  r10.xyz = max(float3(1,1,1), r10.xyz);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r11.xyz = cb0[5].xyw * r3.yyy;
    r11.xyz = r3.xxx * cb0[4].xyw + r11.xyz;
    r11.xyz = r3.zzz * cb0[6].xyw + r11.xyz;
    r11.xyz = cb0[7].xyw + r11.xyz;
    r11.xy = r11.xy / r11.zz;
    r12.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r11.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r12.z = cb0[208].z * r0.w;
    r11.xyzw = t8.SampleLevel(s0_s, r12.xyz, 0).xyzw;
    r12.x = v5.w * r11.w;
    r11.xyz = v5.xyz * r11.www + r11.xyz;
  } else {
    r11.xyz = v5.xyz;
    r12.x = v5.w;
  }
  r12.yzw = -cb0[148].xyz + r3.xyz;
  r13.xyz = cb0[150].xyz * r12.yzw;
  r14.xyz = -cb0[149].xyz + r3.xyz;
  r14.xyz = cb0[151].xyz * r14.xyz;
  r12.yzw = r12.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r12.yzw = float3(0.5,0.5,0.5) + -abs(r12.yzw);
  r12.yzw = saturate(float3(6,6,6) * r12.yzw);
  r0.w = r12.y * r12.z;
  r0.w = r0.w * r12.w;
  r12.yzw = t9.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r15.xyz = t10.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r12.yzw = -r15.xyz + r12.yzw;
  r12.yzw = r0.www * r12.yzw + r15.xyz;
  r13.xyz = t11.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r14.xyz = t12.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r13.xyz = -r14.xyz + r13.xyz;
  r13.xyz = r0.www * r13.xyz + r14.xyz;
  r0.w = dot(r12.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.w = 9.99999975e-006 + r0.w;
  r14.xyz = r12.yzw / r0.www;
  r15.yzw = r14.xxx * r13.xyz;
  r16.yzw = r14.yyy * r13.xyz;
  r13.yzw = r14.zzz * r13.xyz;
  r5.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.xyz;
  r15.x = r12.y;
  r5.x = 0.886227548;
  r14.x = dot(r15.xyzw, r5.xyzw);
  r16.x = r12.z;
  r14.y = dot(r16.xyzw, r5.xyzw);
  r13.x = r12.w;
  r14.z = dot(r13.xyzw, r5.xyzw);
  r5.xyz = max(float3(0,0,0), r14.xyz);
  r5.xyz = r9.xyz * r5.xyz;
  r4.xyz = r4.xyz * r10.xyz + r5.xyz;
  r5.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = cb0[145].yyy * r5.xyz + r4.xyz;
  r7.xyz = max(float3(0,0,0), r1.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r1.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r1.x = t0[r1.x].val[0/4];
    r1.z = t0[r1.x].val[0/4+1];
    r1.w = t0[r1.x].val[0/4+2];
    r1.xzw = r3.xyz + -r1.xzw;
    r5.x = t0[r1.y].val[0/4];
    r5.y = t0[r1.y].val[0/4+1];
    r5.z = t0[r1.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r1.xyz = cmp(r5.xyz < abs(r1.xzw));
    r0.w = (int)r1.y | (int)r1.x;
    r0.w = (int)r1.z | (int)r0.w;
    r1.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.x = 1;
    r7.xyzw = r0.wwww ? r1.yzwx : r7.xyzw;
    o0.w = r7.w;
  } else {
    o0.w = r7.w;
  }
  r0.xyz = r0.xyz * r6.xyz + r4.xyz;
  r0.xyz = r0.xyz + r7.xyz;
  r0.xyz = r0.xyz * r12.xxx + r11.xyz;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r2.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb1[166].xyz + -cb1[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb1[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}