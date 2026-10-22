// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Buffer<uint4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

TextureCubeArray<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

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

cbuffer cb4 : register(b4)
{
  float4 cb4[1023];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[208];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r1.xyzw = t9.SampleLevel(s0_s, r0.xy, 0).xzyw;
  r0.z = 255 * r1.w;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.w = (int)r0.z & 15;
  r2.xy = cmp((int2)r0.ww != int2(0,7));
  r1.w = r2.y ? r2.x : 0;
  if (r1.w != 0) {
    r2.xy = -cb1[129].xy + v0.xy;
    r2.zw = r2.xy * cb1[130].zw + float2(-0.5,-0.5);
    r2.zw = v0.ww * r2.zw;
    r2.zw = float2(2,-2) * r2.zw;
    r3.xyz = t8.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyzw = t10.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r5.xy = t11.SampleLevel(s0_s, r0.xy, 0).xy;
    r6.xyzw = t12.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r1.w = t7.SampleLevel(s0_s, r0.xy, 0).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r1.w = r3.w + r1.w;
    r5.zw = cb1[132].xy * r0.xy;
    r5.zw = (uint2)r5.zw;
    r3.w = (uint)cb1[152].x;
    r5.z = (int)r5.w + (int)r5.z;
    r3.w = (int)r3.w + (int)r5.z;
    r3.w = (int)r3.w & 1;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.z = dot(r3.xyz, r3.xyz);
    r5.z = rsqrt(r5.z);
    r7.xyz = r5.zzz * r3.xyz;
    r8.xyzw = cmp((int4)r0.wwww == int4(12,13,2,3));
    r8.zw = (int2)r8.yw | (int2)r8.xz;
    r5.w = r4.w * 16 + -8;
    r5.w = exp2(r5.w);
    r5.w = -0.00390625 + r5.w;
    r9.z = cb1[135].z * r5.w;
    r9.y = r4.w;
    r9.xw = float2(0,1);
    r9.xy = r8.zz ? r9.xy : r9.zw;
    r10.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
    r5.w = (int)r8.w | (int)r10.x;
    r5.w = (int)r10.y | (int)r5.w;
    r5.w = (int)r10.z | (int)r5.w;
    r5.w = (int)r10.w | (int)r5.w;
    r9.zw = cmp((int2)r0.ww == int2(8,9));
    r0.w = (int)r5.w | (int)r9.z;
    r0.w = (int)r8.x | (int)r0.w;
    r0.w = (int)r8.y | (int)r0.w;
    r0.w = (int)r9.w | (int)r0.w;
    r11.zw = (int2)r5.xy & (int2)r0.ww;
    r0.w = r9.w ? 0 : r1.x;
    r5.xy = float2(5,0.0799999982) * r1.yz;
    r8.xyw = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r12.xyz = r0.www * r8.xyw + r5.yyy;
    r5.y = (int)r9.w | (int)r10.y;
    r5.w = cmp(0 < cb1[156].y);
    r8.x = cmp(0 < cb1[207].z);
    r5.w = r5.w ? r8.x : 0;
    r8.x = cmp(0 != cb1[156].y);
    r8.xyw = r8.xxx ? float3(1,1,1) : r4.xyz;
    r9.zw = r3.ww ? float2(1,0) : float2(0,1);
    r13.xyz = r12.xyz * r9.www;
    r13.w = r9.w * r1.z;
    r14.xyz = r5.www ? r9.zzz : r8.xyw;
    r12.w = r1.z;
    r13.xyzw = r5.wwww ? r13.xyzw : r12.xyzw;
    r14.w = r13.w;
    r4.w = r12.w;
    r14.xyzw = r5.yyyy ? r14.xyzw : r4.xyzw;
    r8.xyw = r5.yyy ? r13.xyz : r12.xyz;
    r4.xyzw = r8.zzzz ? r4.xyzw : r14.xyzw;
    r8.xyw = cb1[137].www * r8.xyw;
    r8.xyz = r8.zzz ? float3(0,0,0) : r8.xyw;
    r8.xyz = cb1[137].xyz + r8.xyz;
    r0.z = (int)r0.z & 16;
    r6.xyzw = r6.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r6.xyzw = r0.zzzz ? r6.xyzw : float4(0,0,0,0);
    r1.z = dot(r6.xyz, r6.xyz);
    r1.z = rsqrt(r1.z);
    r6.xyz = r6.yzx * r1.zzz;
    r6.xyz = r0.zzz ? r6.xyz : float3(0,0,0);
    r2.zw = r2.zw * r1.ww;
    r12.xyz = cb1[49].xyz * r2.www;
    r12.xyz = r2.zzz * cb1[48].xyz + r12.xyz;
    r12.xyz = r1.www * cb1[50].xyz + r12.xyz;
    r12.xyz = cb1[51].xyz + r12.xyz;
    r13.xyz = -cb1[67].xyz + r12.xyz;
    r0.z = dot(r13.xyz, r13.xyz);
    r0.z = rsqrt(r0.z);
    r13.xyz = r13.xyz * r0.zzz;
    r0.z = dot(r7.xyz, -r13.xyz);
    r11.x = saturate(r0.z);
    r1.z = r11.x * 0.5 + 0.5;
    r1.z = r1.z * r11.x + -1;
    r2.z = saturate(-r1.y * 1.25 + 1.25);
    r1.z = r1.z * r2.z + 1;
    r14.xyz = float3(1.11111116,1.11111116,1.11111116) * r4.xyz;
    r2.z = -1 + r11.x;
    r2.z = 0.850000024 * r2.z;
    r15.xyz = r14.xyz * r14.xyz + -r14.xyz;
    r15.xyz = r15.xyz * float3(-0.779999971,-0.779999971,-0.779999971) + r14.xyz;
    r15.xyz = float3(1,1,1) + -r15.xyz;
    r15.xyz = r2.zzz * r15.xyz + float3(1,1,1);
    r14.xyz = r15.xyz * r14.xyz;
    r2.z = 1 + -r11.x;
    r2.w = r2.z * r2.z;
    r2.w = r2.w * r2.w;
    r3.w = r2.w * r2.z;
    r2.z = -r2.w * r2.z + 1;
    r2.z = r2.z * 0.0399999991 + r3.w;
    r2.z = r11.z * -r2.z + 1;
    r4.xyz = r4.xyz * r2.zzz;
    r14.xyz = r14.xyz * r1.zzz;
    r2.z = r0.w * r11.z;
    r14.xyz = r14.xyz * float3(0.899999976,0.899999976,0.899999976) + -r4.xyz;
    r4.xyz = r2.zzz * r14.xyz + r4.xyz;
    r1.z = r1.z + -r4.w;
    r1.z = r11.z * r1.z + r4.w;
    r2.z = 0.0799999982 * r1.z;
    r4.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r4.xyz = r0.www * r4.xyz + r2.zzz;
    r4.xyz = r10.xxx ? r4.xyz : r8.xyz;
    r0.w = t14.SampleLevel(s6_s, r0.xy, 0).x;
    r2.zw = cmp(float2(0,0) < cb2[0].yz);
    r1.z = r2.w ? r2.z : 0;
    if (r1.z != 0) {
      r1.z = dot(r7.xyz, r7.xyz);
      r1.z = sqrt(r1.z);
      r8.x = t0[0].val[0/4];
      r8.y = t0[0].val[0/4+1];
      r8.z = t0[0].val[0/4+2];
      r8.w = t0[0].val[0/4+3];
      r7.w = 1;
      r8.x = dot(r8.xyzw, r7.xyzw);
      r14.x = t0[1].val[0/4];
      r14.y = t0[1].val[0/4+1];
      r14.z = t0[1].val[0/4+2];
      r14.w = t0[1].val[0/4+3];
      r8.y = dot(r14.xyzw, r7.xyzw);
      r14.x = t0[2].val[0/4];
      r14.y = t0[2].val[0/4+1];
      r14.z = t0[2].val[0/4+2];
      r14.w = t0[2].val[0/4+3];
      r8.z = dot(r14.xyzw, r7.xyzw);
      r14.xyzw = r7.xyzz * r7.yzzx;
      r15.x = t0[3].val[0/4];
      r15.y = t0[3].val[0/4+1];
      r15.z = t0[3].val[0/4+2];
      r15.w = t0[3].val[0/4+3];
      r15.x = dot(r15.xyzw, r14.xyzw);
      r16.x = t0[4].val[0/4];
      r16.y = t0[4].val[0/4+1];
      r16.z = t0[4].val[0/4+2];
      r16.w = t0[4].val[0/4+3];
      r15.y = dot(r16.xyzw, r14.xyzw);
      r16.x = t0[5].val[0/4];
      r16.y = t0[5].val[0/4+1];
      r16.z = t0[5].val[0/4+2];
      r16.w = t0[5].val[0/4+3];
      r15.z = dot(r16.xyzw, r14.xyzw);
      r2.w = r7.y * r7.y;
      r2.w = r7.x * r7.x + -r2.w;
      r14.x = t0[6].val[0/4];
      r14.y = t0[6].val[0/4+1];
      r14.z = t0[6].val[0/4+2];
      r8.xyz = r15.xyz + r8.xyz;
      r8.xyz = r14.xyz * r2.www + r8.xyz;
      r8.xyz = max(float3(0,0,0), r8.xyz);
      r8.xyz = cb1[187].xyz * r8.xyz;
      r2.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
      r9.x = r2.w * r1.z + r9.x;
    }
    r1.z = cmp(0 < abs(r6.w));
    r8.xyz = r7.xyz * r6.yzx;
    r8.xyz = r7.zxy * r6.zxy + -r8.xyz;
    r2.w = dot(r8.xyz, r8.xyz);
    r2.w = rsqrt(r2.w);
    r8.xyz = r8.xyz * r2.www;
    r2.w = cmp(r6.w >= 0);
    r6.xyz = r2.www ? r8.xyz : r6.xyz;
    r8.xyz = r6.xyz * -r13.xyz;
    r8.xyz = r6.zxy * -r13.yzx + -r8.xyz;
    r14.xyz = r8.xyz * r6.xyz;
    r6.xyz = r8.zxy * r6.yzx + -r14.xyz;
    r5.x = saturate(r5.x);
    r2.w = abs(r6.w) * r5.x;
    r3.xyz = -r3.xyz * r5.zzz + r6.xyz;
    r3.xyz = r2.www * r3.xyz + r7.xyz;
    r2.w = dot(r3.xyz, r3.xyz);
    r2.w = rsqrt(r2.w);
    r3.xyz = r3.xyz * r2.www;
    r3.xyz = r1.zzz ? r3.xyz : r7.xyz;
    r1.x = dot(-r13.xyz, r3.xyz);
    r1.z = r1.x + r1.x;
    r5.xyz = r1.zzz * r3.xyz + r13.xyz;
    r1.x = saturate(r1.x);
    r1.z = r1.y * r1.y;
    r2.w = -r1.y * r1.y + 1;
    r3.w = sqrt(r2.w);
    r3.w = r1.y * r1.y + r3.w;
    r2.w = r3.w * r2.w;
    r5.xyz = r5.xyz + -r3.xyz;
    r3.yzw = r2.www * r5.xyz + r3.xyz;
    r5.xyzw = t13.Sample(s5_s, r0.xy).xyzw;
    r0.x = 1 + -r5.w;
    r6.xyzw = r5.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
    r6.xyzw = r10.xxxx ? float4(0,0,0,1) : r6.xyzw;
    r0.y = r9.y * r0.w + r1.x;
    r0.y = log2(r0.y);
    r0.y = r1.z * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r9.y * r0.w + r0.y;
    r0.y = saturate(-1 + r0.y);
    r0.w = r6.w * r0.y;
    r2.xy = (uint2)r2.xy;
    r1.z = r1.w * cb3[3].x + cb3[3].y;
    r1.z = log2(r1.z);
    r1.z = cb3[3].z * r1.z;
    r1.z = max(0, r1.z);
    r1.z = (uint)r1.z;
    r1.w = asint(cb3[1].z) + -1;
    r1.z = min((uint)r1.z, (uint)r1.w);
    r2.xy = (uint2)r2.xy >> asuint(cb3[2].xx);
    r1.z = mad((int)r1.z, asint(cb3[1].y), (int)r2.y);
    r1.z = mad((int)r1.z, asint(cb3[1].x), (int)r2.x);
    r1.z = (int)r1.z + asint(cb3[0].w);
    r1.w = (uint)r1.z << 1;
    r1.w = t4.Load(r1.w).x;
    r1.w = min(asuint(cb3[0].y), (uint)r1.w);
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.z = (((uint)r1.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
    r1.z = t4.Load(r1.z).x;
    r2.x = cmp(0 < cb0[0].x);
    if (r2.x != 0) {
      r2.y = dot(r7.xyz, r7.xyz);
      r2.y = sqrt(r2.y);
      if (cb1[196].x == 0) {
        r2.w = r2.y;
      } else {
        if (r10.z != 0) {
          r2.w = r2.y;
        } else {
          r4.w = max(0.100000001, r1.y);
          r5.w = cb0[0].y * r2.y;
          r6.w = 3.14159274 * r5.w;
          r7.w = dot(r7.xyz, r3.yzw);
          r8.x = max(0.00100000005, r2.y);
          r7.w = r7.w / r8.x;
          r8.x = 1 + -abs(r7.w);
          r8.x = sqrt(r8.x);
          r8.y = abs(r7.w) * -0.0187292993 + 0.0742610022;
          r8.y = r8.y * abs(r7.w) + -0.212114394;
          r8.y = r8.y * abs(r7.w) + 1.57072878;
          r8.z = r8.y * r8.x;
          r8.z = r8.z * -2 + 3.14159274;
          r7.w = cmp(r7.w < -r7.w);
          r7.w = r7.w ? r8.z : 0;
          r7.w = r8.y * r8.x + r7.w;
          r8.x = r4.w * 3.14159274 + -r6.w;
          r7.w = -abs(r8.x) + r7.w;
          r4.w = r4.w * 3.14159274 + r6.w;
          r4.w = r4.w + -abs(r8.x);
          r4.w = saturate(r7.w / r4.w);
          r4.w = 1 + -r4.w;
          r6.w = r4.w * -2 + 3;
          r4.w = r4.w * r4.w;
          r4.w = r6.w * r4.w;
          r5.w = r5.w * 3.14159274 + -0.100000001;
          r5.w = saturate(5 * r5.w);
          r2.w = r5.w * r4.w;
        }
      }
      r4.w = 1 + -r2.w;
      r2.w = cb0[1].w * r4.w + r2.w;
      r4.w = 1 + -r2.w;
      r8.xyz = cb0[1].xyz * r4.www;
      r4.w = 1 + -r2.y;
      r2.y = cb0[1].w * r4.w + r2.y;
    } else {
      r8.xyz = float3(0,0,0);
      r2.yw = float2(1,1);
    }
    r2.y = r9.x * r2.y;
    r4.w = max(0.00100000005, r1.y);
    r4.w = log2(r4.w);
    r4.w = -r4.w * 1.20000005 + 1;
    r5.w = -1 + cb1[195].z;
    r6.w = r5.w + -r4.w;
    r3.x = 0;
    r9.yzw = float3(0,0,0);
    r7.w = r0.w;
    r8.w = 0;
    r10.yz = float2(1,0);
    while (true) {
      r10.w = cmp((uint)r10.z >= (uint)r1.w);
      if (r10.w != 0) break;
      r10.w = cmp(r7.w < 0.00100000005);
      if (r10.w != 0) {
        break;
      }
      r10.w = (int)r1.z + (int)r10.z;
      r10.w = t5.Load(r10.w).x;
      r14.xyz = -cb4[r10.w+0].xyz + r12.xyz;
      r12.w = dot(r14.xyz, r14.xyz);
      r13.w = sqrt(r12.w);
      r14.w = cmp(r13.w < cb4[r10.w+0].w);
      if (r14.w != 0) {
        r13.w = saturate(r13.w / cb4[r10.w+0].w);
        r14.w = dot(r3.yzw, r14.xyz);
        r12.w = -cb4[r10.w+0].w * cb4[r10.w+0].w + r12.w;
        r12.w = r14.w * r14.w + -r12.w;
        r15.x = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r14.w;
        r14.xyz = r12.www * r3.yzw + r14.xyz;
        r14.yzw = -cb4[r10.w+682].xyz + r14.xyz;
        r12.w = r13.w * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.w = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r14.x = -r13.w * r12.w + 1;
        r14.xyzw = r15.xxxx ? r14.xyzw : r3.xyzw;
        r15.xyz = r14.yzw;
        r15.w = cb4[r10.w+341].y;
        r15.xyzw = t3.SampleLevel(s3_s, r15.xyzw, r6.w).xyzw;
        r14.yzw = cb4[r10.w+341].xxx * r15.xyz;
        r14.yzw = r14.yzw * r14.xxx;
        r14.yzw = r14.yzw * r7.www;
        r9.yzw = r14.yzw * r2.www + r9.yzw;
        r12.w = -r15.w * r14.x + 1;
        r7.w = r12.w * r7.w;
        r10.w = cb4[r10.w+682].w * r14.x;
        r8.w = r10.w * r10.y + r8.w;
        r10.w = 1 + -r14.x;
        r10.y = r10.y * r10.w;
      }
      r10.z = (int)r10.z + 1;
    }
    r14.xyz = cb1[157].xyz * r9.yzw;
    r0.w = dot(cb1[157].xyz, float3(0.300000012,0.589999974,0.109999999));
    r14.w = r8.w * r0.w;
    if (r2.z != 0) {
      r3.x = cb2[0].x + -r4.w;
      r3.x = -1 + r3.x;
      r9.yzw = t1.SampleLevel(s1_s, r3.yzw, r3.x).xyz;
      r4.w = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
      r4.w = cb2[1].x * r4.w;
      r9.yzw = cb1[187].xyz * r9.yzw;
      r6.w = cmp(0 < cb2[0].w);
      if (r6.w != 0) {
        r3.xyz = t2.SampleLevel(s2_s, r3.yzw, r3.x).xyz;
        r3.xyz = r3.xyz * cb1[187].xyz + -r9.yzw;
        r9.yzw = cb2[0].www * r3.xyz + r9.yzw;
      }
      r3.x = cmp(cb2[0].z < 1);
      r3.yzw = r9.yzw * r7.www;
      r15.xyz = r3.yzw * r2.www + r14.xyz;
      r15.w = r4.w * r10.y + r14.w;
      r3.yzw = r9.yzw * r2.www + r8.xyz;
      r8.xyz = r3.xxx ? r8.xyz : r3.yzw;
      r14.xyzw = r3.xxxx ? r15.xyzw : r14.xyzw;
    }
    r2.w = saturate(r1.y * cb1[197].x + cb1[197].y);
    r3.x = r2.w * -2 + 3;
    r2.w = r2.w * r2.w;
    r2.w = r3.x * r2.w;
    r3.x = max(9.99999975e-005, r14.w);
    r2.y = r2.y / r3.x;
    r2.y = min(cb1[197].z, r2.y);
    r2.y = -1 + r2.y;
    r2.y = r2.w * r2.y + 1;
    r3.xyz = r8.xyz * r7.www;
    r3.xyz = r14.xyz * r2.yyy + r3.xyz;
    r3.xyz = cb1[135].yyy * r3.xyz + r6.xyz;
    if (r10.x != 0) {
      r11.y = r1.y;
      r2.yw = t6.SampleLevel(s4_s, r11.xy, 0).xy;
      r3.w = saturate(50 * r4.y);
      r2.w = r3.w * r2.w;
      r3.w = 1 + -r11.z;
      r2.w = r3.w * r2.w;
      r6.xyz = r4.xyz * r2.yyy + r2.www;
      r6.xyz = r6.xyz * r3.xyz;
      r2.yw = t6.SampleLevel(s4_s, r11.xw, 0).xy;
      r2.y = r2.y * 0.0399999991 + r2.w;
      r2.w = r2.y * r11.z;
      r2.y = -r2.y * r11.z + 1;
      r0.y = r2.w * r0.y;
      r0.z = r0.z + r0.z;
      r8.yzw = r0.zzz * r7.xyz + r13.xyz;
      if (r2.x != 0) {
        r0.z = dot(r7.xyz, r7.xyz);
        r0.z = sqrt(r0.z);
        if (cb1[196].x == 0) {
          r2.x = r0.z;
        } else {
          r2.w = max(0.100000001, r11.w);
          r3.w = cb0[0].y * r0.z;
          r4.w = 3.14159274 * r3.w;
          r6.w = dot(r7.xyz, r8.yzw);
          r7.x = max(0.00100000005, r0.z);
          r6.w = r6.w / r7.x;
          r7.x = 1 + -abs(r6.w);
          r7.x = sqrt(r7.x);
          r7.y = abs(r6.w) * -0.0187292993 + 0.0742610022;
          r7.y = r7.y * abs(r6.w) + -0.212114394;
          r7.y = r7.y * abs(r6.w) + 1.57072878;
          r7.z = r7.y * r7.x;
          r7.z = r7.z * -2 + 3.14159274;
          r6.w = cmp(r6.w < -r6.w);
          r6.w = r6.w ? r7.z : 0;
          r6.w = r7.y * r7.x + r6.w;
          r7.x = r2.w * 3.14159274 + -r4.w;
          r6.w = -abs(r7.x) + r6.w;
          r2.w = r2.w * 3.14159274 + r4.w;
          r2.w = r2.w + -abs(r7.x);
          r2.w = saturate(r6.w / r2.w);
          r2.w = 1 + -r2.w;
          r4.w = r2.w * -2 + 3;
          r2.w = r2.w * r2.w;
          r2.w = r4.w * r2.w;
          r3.w = r3.w * 3.14159274 + -0.100000001;
          r3.w = saturate(5 * r3.w);
          r2.x = r3.w * r2.w;
        }
        r2.w = 1 + -r2.x;
        r2.x = cb0[1].w * r2.w + r2.x;
        r2.w = 1 + -r2.x;
        r7.xyz = cb0[1].xyz * r2.www;
        r2.w = 1 + -r0.z;
        r0.z = cb0[1].w * r2.w + r0.z;
      } else {
        r7.xyz = float3(0,0,0);
        r2.x = 1;
        r0.z = 1;
      }
      r0.z = r9.x * r0.z;
      r2.w = max(0.00100000005, r11.w);
      r2.w = log2(r2.w);
      r2.w = -r2.w * 1.20000005 + 1;
      r3.w = r5.w + -r2.w;
      r8.x = 0;
      r9.xyz = float3(0,0,0);
      r4.w = r0.y;
      r5.w = 0;
      r6.w = 1;
      r7.w = 0;
      while (true) {
        r9.w = cmp((uint)r7.w >= (uint)r1.w);
        if (r9.w != 0) break;
        r9.w = cmp(r4.w < 0.00100000005);
        if (r9.w != 0) {
          break;
        }
        r9.w = (int)r1.z + (int)r7.w;
        r9.w = t5.Load(r9.w).x;
        r10.xyz = -cb4[r9.w+0].xyz + r12.xyz;
        r10.w = dot(r10.xyz, r10.xyz);
        r11.x = sqrt(r10.w);
        r11.y = cmp(r11.x < cb4[r9.w+0].w);
        if (r11.y != 0) {
          r11.x = saturate(r11.x / cb4[r9.w+0].w);
          r11.y = dot(r8.yzw, r10.xyz);
          r10.w = -cb4[r9.w+0].w * cb4[r9.w+0].w + r10.w;
          r10.w = r11.y * r11.y + -r10.w;
          r11.z = cmp(r10.w >= 0);
          r10.w = sqrt(r10.w);
          r10.w = r10.w + -r11.y;
          r10.xyz = r10.www * r8.yzw + r10.xyz;
          r10.yzw = -cb4[r9.w+682].xyz + r10.xyz;
          r11.x = r11.x * 2.5 + -1.5;
          r11.x = max(0, r11.x);
          r11.y = r11.x * r11.x;
          r11.x = -r11.x * 2 + 3;
          r10.x = -r11.y * r11.x + 1;
          r10.xyzw = r11.zzzz ? r10.xyzw : r8.xyzw;
          r13.xyz = r10.yzw;
          r13.w = cb4[r9.w+341].y;
          r13.xyzw = t3.SampleLevel(s3_s, r13.xyzw, r3.w).xyzw;
          r10.yzw = cb4[r9.w+341].xxx * r13.xyz;
          r10.yzw = r10.yzw * r10.xxx;
          r10.yzw = r10.yzw * r4.www;
          r9.xyz = r10.yzw * r2.xxx + r9.xyz;
          r10.y = -r13.w * r10.x + 1;
          r4.w = r10.y * r4.w;
          r9.w = cb4[r9.w+682].w * r10.x;
          r5.w = r9.w * r6.w + r5.w;
          r9.w = 1 + -r10.x;
          r6.w = r9.w * r6.w;
        }
        r7.w = (int)r7.w + 1;
      }
      r9.xyz = cb1[157].xyz * r9.xyz;
      r9.w = r5.w * r0.w;
      if (r2.z != 0) {
        r0.y = cb2[0].x + -r2.w;
        r0.y = -1 + r0.y;
        r10.xyz = t1.SampleLevel(s1_s, r8.yzw, r0.y).xyz;
        r0.w = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
        r0.w = cb2[1].x * r0.w;
        r10.xyz = cb1[187].xyz * r10.xyz;
        r1.z = cmp(0 < cb2[0].w);
        if (r1.z != 0) {
          r8.xyz = t2.SampleLevel(s2_s, r8.yzw, r0.y).xyz;
          r8.xyz = r8.xyz * cb1[187].xyz + -r10.xyz;
          r10.xyz = cb2[0].www * r8.xyz + r10.xyz;
        }
        r0.y = cmp(cb2[0].z < 1);
        r8.xyz = r10.xyz * r4.www;
        r8.xyz = r8.xyz * r2.xxx + r9.xyz;
        r8.w = r0.w * r6.w + r9.w;
        r2.xzw = r10.xyz * r2.xxx + r7.xyz;
        r7.xyz = r0.yyy ? r7.xyz : r2.xzw;
        r9.xyzw = r0.yyyy ? r8.xyzw : r9.xyzw;
      }
      r0.y = saturate(r11.w * cb1[197].x + cb1[197].y);
      r0.w = r0.y * -2 + 3;
      r0.y = r0.y * r0.y;
      r0.y = r0.w * r0.y;
      r0.w = max(9.99999975e-005, r9.w);
      r0.z = r0.z / r0.w;
      r0.z = min(cb1[197].z, r0.z);
      r0.z = -1 + r0.z;
      r0.y = r0.y * r0.z + 1;
      r2.xzw = r7.xyz * r4.www;
      r0.yzw = r9.xyz * r0.yyy + r2.xzw;
      r0.yzw = cb1[135].yyy * r0.yzw;
      r0.yzw = r6.xyz * r2.yyy + r0.yzw;
      r0.xyz = r0.yzw * r0.xxx + r5.xyz;
    } else {
      r1.xy = t6.SampleLevel(s4_s, r1.xy, 0).xy;
      r0.w = saturate(50 * r4.y);
      r0.w = r0.w * r1.y;
      r1.xyz = r4.xyz * r1.xxx + r0.www;
      r0.xyz = r3.xyz * r1.xyz;
    }
    r0.xyz = min(float3(0,0,0), -r0.xyz);
    r0.xyz = -r0.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}