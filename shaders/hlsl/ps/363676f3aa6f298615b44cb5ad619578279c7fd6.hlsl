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

cbuffer cb3 : register(b3)
{
  float4 cb3[2728];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[208];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[132].zw * v0.xy;
  r1.xyzw = t9.SampleLevel(s0_s, r0.xy, 0).xzyw;
  r0.z = 255 * r1.w;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.w = (int)r0.z & 15;
  r2.xy = cmp((int2)r0.ww != int2(0,7));
  r1.w = r2.y ? r2.x : 0;
  if (r1.w != 0) {
    r2.xy = -cb0[129].xy + v0.xy;
    r2.zw = r2.xy * cb0[130].zw + float2(-0.5,-0.5);
    r2.zw = v0.ww * r2.zw;
    r2.zw = float2(2,-2) * r2.zw;
    r3.xyz = t8.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyzw = t10.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r5.xy = t11.SampleLevel(s0_s, r0.xy, 0).xy;
    r6.xyzw = t12.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r1.w = t7.SampleLevel(s0_s, r0.xy, 0).x;
    r3.w = r1.w * cb0[65].x + cb0[65].y;
    r1.w = r1.w * cb0[65].z + -cb0[65].w;
    r1.w = 1 / r1.w;
    r1.w = r3.w + r1.w;
    r5.zw = cb0[132].xy * r0.xy;
    r5.zw = (uint2)r5.zw;
    r3.w = (uint)cb0[152].x;
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
    r9.z = cb0[135].z * r5.w;
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
    r5.w = cmp(0 < cb0[156].y);
    r8.x = cmp(0 < cb0[207].z);
    r5.w = r5.w ? r8.x : 0;
    r8.x = cmp(0 != cb0[156].y);
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
    r8.xyw = cb0[137].www * r8.xyw;
    r8.xyz = r8.zzz ? float3(0,0,0) : r8.xyw;
    r8.xyz = cb0[137].xyz + r8.xyz;
    r0.z = (int)r0.z & 16;
    r6.xyzw = r6.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r6.xyzw = r0.zzzz ? r6.xyzw : float4(0,0,0,0);
    r1.z = dot(r6.xyz, r6.xyz);
    r1.z = rsqrt(r1.z);
    r6.xyz = r6.yzx * r1.zzz;
    r6.xyz = r0.zzz ? r6.xyz : float3(0,0,0);
    r2.zw = r2.zw * r1.ww;
    r10.yzw = cb0[49].xyz * r2.www;
    r10.yzw = r2.zzz * cb0[48].xyz + r10.yzw;
    r10.yzw = r1.www * cb0[50].xyz + r10.yzw;
    r10.yzw = cb0[51].xyz + r10.yzw;
    r12.xyz = -cb0[67].xyz + r10.yzw;
    r0.z = dot(r12.xyz, r12.xyz);
    r0.z = rsqrt(r0.z);
    r12.xyz = r12.xyz * r0.zzz;
    r0.z = dot(r7.xyz, -r12.xyz);
    r11.x = saturate(r0.z);
    r1.z = r11.x * 0.5 + 0.5;
    r1.z = r1.z * r11.x + -1;
    r2.z = saturate(-r1.y * 1.25 + 1.25);
    r1.z = r1.z * r2.z + 1;
    r13.xyz = float3(1.11111116,1.11111116,1.11111116) * r4.xyz;
    r2.z = -1 + r11.x;
    r2.z = 0.850000024 * r2.z;
    r14.xyz = r13.xyz * r13.xyz + -r13.xyz;
    r14.xyz = r14.xyz * float3(-0.779999971,-0.779999971,-0.779999971) + r13.xyz;
    r14.xyz = float3(1,1,1) + -r14.xyz;
    r14.xyz = r2.zzz * r14.xyz + float3(1,1,1);
    r13.xyz = r14.xyz * r13.xyz;
    r2.z = 1 + -r11.x;
    r2.w = r2.z * r2.z;
    r2.w = r2.w * r2.w;
    r3.w = r2.w * r2.z;
    r2.z = -r2.w * r2.z + 1;
    r2.z = r2.z * 0.0399999991 + r3.w;
    r2.z = r11.z * -r2.z + 1;
    r4.xyz = r4.xyz * r2.zzz;
    r13.xyz = r13.xyz * r1.zzz;
    r2.z = r0.w * r11.z;
    r13.xyz = r13.xyz * float3(0.899999976,0.899999976,0.899999976) + -r4.xyz;
    r4.xyz = r2.zzz * r13.xyz + r4.xyz;
    r1.z = r1.z + -r4.w;
    r1.z = r11.z * r1.z + r4.w;
    r2.z = 0.0799999982 * r1.z;
    r4.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r4.xyz = r0.www * r4.xyz + r2.zzz;
    r4.xyz = r10.xxx ? r4.xyz : r8.xyz;
    r0.w = t14.SampleLevel(s6_s, r0.xy, 0).x;
    r2.zw = cmp(float2(0,0) < cb1[0].yz);
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
      r13.x = t0[1].val[0/4];
      r13.y = t0[1].val[0/4+1];
      r13.z = t0[1].val[0/4+2];
      r13.w = t0[1].val[0/4+3];
      r8.y = dot(r13.xyzw, r7.xyzw);
      r13.x = t0[2].val[0/4];
      r13.y = t0[2].val[0/4+1];
      r13.z = t0[2].val[0/4+2];
      r13.w = t0[2].val[0/4+3];
      r8.z = dot(r13.xyzw, r7.xyzw);
      r13.xyzw = r7.xyzz * r7.yzzx;
      r14.x = t0[3].val[0/4];
      r14.y = t0[3].val[0/4+1];
      r14.z = t0[3].val[0/4+2];
      r14.w = t0[3].val[0/4+3];
      r14.x = dot(r14.xyzw, r13.xyzw);
      r15.x = t0[4].val[0/4];
      r15.y = t0[4].val[0/4+1];
      r15.z = t0[4].val[0/4+2];
      r15.w = t0[4].val[0/4+3];
      r14.y = dot(r15.xyzw, r13.xyzw);
      r15.x = t0[5].val[0/4];
      r15.y = t0[5].val[0/4+1];
      r15.z = t0[5].val[0/4+2];
      r15.w = t0[5].val[0/4+3];
      r14.z = dot(r15.xyzw, r13.xyzw);
      r2.w = r7.y * r7.y;
      r2.w = r7.x * r7.x + -r2.w;
      r13.x = t0[6].val[0/4];
      r13.y = t0[6].val[0/4+1];
      r13.z = t0[6].val[0/4+2];
      r8.xyz = r14.xyz + r8.xyz;
      r8.xyz = r13.xyz * r2.www + r8.xyz;
      r8.xyz = max(float3(0,0,0), r8.xyz);
      r8.xyz = cb0[187].xyz * r8.xyz;
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
    r8.xyz = r6.xyz * -r12.xyz;
    r8.xyz = r6.zxy * -r12.yzx + -r8.xyz;
    r13.xyz = r8.xyz * r6.xyz;
    r6.xyz = r8.zxy * r6.yzx + -r13.xyz;
    r5.x = saturate(r5.x);
    r2.w = abs(r6.w) * r5.x;
    r3.xyz = -r3.xyz * r5.zzz + r6.xyz;
    r3.xyz = r2.www * r3.xyz + r7.xyz;
    r2.w = dot(r3.xyz, r3.xyz);
    r2.w = rsqrt(r2.w);
    r3.xyz = r3.xyz * r2.www;
    r3.xyz = r1.zzz ? r3.xyz : r7.xyz;
    r1.x = dot(-r12.xyz, r3.xyz);
    r1.z = r1.x + r1.x;
    r5.xyz = r1.zzz * r3.xyz + r12.xyz;
    r1.x = saturate(r1.x);
    r1.z = r1.y * r1.y;
    r2.w = -r1.y * r1.y + 1;
    r3.w = sqrt(r2.w);
    r3.w = r1.y * r1.y + r3.w;
    r2.w = r3.w * r2.w;
    r5.xyz = r5.xyz + -r3.xyz;
    r3.xyz = r2.www * r5.xyz + r3.xyz;
    r5.xyzw = t13.Sample(s5_s, r0.xy).xyzw;
    r0.x = 1 + -r5.w;
    r6.xyzw = r5.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
    r8.xyzw = float4(0,0,0,1) + -r6.xyzw;
    r8.xyzw = r11.zzzz * r8.xyzw + r6.xyzw;
    r6.xyzw = r10.xxxx ? r8.xyzw : r6.xyzw;
    r0.y = r9.y * r0.w + r1.x;
    r0.y = log2(r0.y);
    r0.y = r1.z * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r9.y * r0.w + r0.y;
    r0.y = saturate(-1 + r0.y);
    r0.w = r6.w * r0.y;
    r2.xy = (uint2)r2.xy;
    r1.z = r1.w * cb2[3].x + cb2[3].y;
    r1.z = log2(r1.z);
    r1.z = cb2[3].z * r1.z;
    r1.z = max(0, r1.z);
    r1.z = (uint)r1.z;
    r1.w = asint(cb2[1].z) + -1;
    r1.z = min((uint)r1.z, (uint)r1.w);
    r2.xy = (uint2)r2.xy >> asuint(cb2[2].xx);
    r1.z = mad((int)r1.z, asint(cb2[1].y), (int)r2.y);
    r1.z = mad((int)r1.z, asint(cb2[1].x), (int)r2.x);
    r1.z = (int)r1.z + asint(cb2[0].w);
    r1.w = (uint)r1.z << 1;
    r1.w = t4.Load(r1.w).x;
    r1.w = min(asuint(cb2[0].y), (uint)r1.w);
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.z = (((uint)r1.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
    r1.z = t4.Load(r1.z).x;
    r2.x = max(0.00100000005, r1.y);
    r2.x = log2(r2.x);
    r2.x = -r2.x * 1.20000005 + 1;
    r2.y = -1 + cb0[195].z;
    r2.w = r2.y + -r2.x;
    r8.xyz = float3(0,0,0);
    r3.w = r0.w;
    r4.w = 0;
    r5.w = 1;
    r6.w = 0;
    while (true) {
      r7.w = cmp((uint)r6.w >= (uint)r1.w);
      if (r7.w != 0) break;
      r7.w = cmp(r3.w < 0.00100000005);
      if (r7.w != 0) {
        break;
      }
      r7.w = (int)r1.z + (int)r6.w;
      r7.w = t5.Load(r7.w).x;
      r9.yzw = -cb3[r7.w+0].xyz + r10.yzw;
      r8.w = dot(r9.yzw, r9.yzw);
      r8.w = sqrt(r8.w);
      r8.w = cmp(r8.w < cb3[r7.w+0].w);
      if (r8.w != 0) {
        r8.w = (uint)r7.w << 2;
        r9.yzw = cb3[r8.w+1024].xyz * r10.zzz;
        r9.yzw = r10.yyy * cb3[r8.w+1023].xyz + r9.yzw;
        r9.yzw = r10.www * cb3[r8.w+1025].xyz + r9.yzw;
        r9.yzw = cb3[r8.w+1026].xyz + r9.yzw;
        r13.xyz = cb3[r8.w+1024].xyz * r3.yyy;
        r13.xyz = r3.xxx * cb3[r8.w+1023].xyz + r13.xyz;
        r13.xyz = r3.zzz * cb3[r8.w+1025].xyz + r13.xyz;
        r13.xyz = rcp(r13.xyz);
        r14.xyz = -r9.yzw * r13.xyz + -r13.xyz;
        r13.xyz = -r9.yzw * r13.xyz + r13.xyz;
        r13.xyz = max(r14.xyz, r13.xyz);
        r8.w = min(r13.y, r13.z);
        r8.w = min(r13.x, r8.w);
        r13.xyz = r8.www * r3.xyz + r10.yzw;
        r14.xyz = cb3[r7.w+682].xyz + cb3[r7.w+0].xyz;
        r13.xyz = -r14.xyz + r13.xyz;
        r8.w = cb3[r7.w+2387].w * 0.699999988;
        r14.xyz = -cb3[r7.w+2387].www * float3(0.5,0.5,0.5) + cb3[r7.w+2387].xyz;
        r15.xyz = cb3[r7.w+2387].xyz * r9.yzw;
        r16.xyz = cmp(r15.xyz < -r14.xyz);
        r17.xyz = r9.yzw * cb3[r7.w+2387].xyz + r14.xyz;
        r17.xyz = abs(r17.xyz);
        r16.xyz = r16.xyz ? r17.xyz : 0;
        r15.xyz = cmp(r14.xyz < r15.xyz);
        r9.yzw = r9.yzw * cb3[r7.w+2387].xyz + -r14.xyz;
        r9.yzw = abs(r9.yzw);
        r9.yzw = r15.xyz ? r9.yzw : 0;
        r12.w = dot(r16.xyz, float3(1,1,1));
        r9.y = dot(r9.yzw, float3(1,1,1));
        r9.y = r12.w + r9.y;
        r8.w = 1 / r8.w;
        r8.w = saturate(r9.y * r8.w);
        r9.y = r8.w * -2 + 3;
        r8.w = r8.w * r8.w;
        r8.w = -r9.y * r8.w + 1;
        r13.w = cb3[r7.w+341].y;
        r13.xyzw = t3.SampleLevel(s3_s, r13.xyzw, r2.w).xyzw;
        r9.yzw = cb3[r7.w+341].xxx * r13.xyz;
        r9.yzw = r9.yzw * r8.www;
        r8.xyz = r9.yzw * r3.www + r8.xyz;
        r9.y = -r13.w * r8.w + 1;
        r3.w = r9.y * r3.w;
        r7.w = cb3[r7.w+682].w * r8.w;
        r4.w = r7.w * r5.w + r4.w;
        r7.w = 1 + -r8.w;
        r5.w = r7.w * r5.w;
      }
      r6.w = (int)r6.w + 1;
    }
    r8.xyz = cb0[157].xyz * r8.xyz;
    r0.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
    r8.w = r4.w * r0.w;
    if (r2.z != 0) {
      r2.x = cb1[0].x + -r2.x;
      r2.x = -1 + r2.x;
      r9.yzw = t1.SampleLevel(s1_s, r3.xyz, r2.x).xyz;
      r2.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
      r2.w = cb1[1].x * r2.w;
      r9.yzw = cb0[187].xyz * r9.yzw;
      r4.w = cmp(0 < cb1[0].w);
      if (r4.w != 0) {
        r3.xyz = t2.SampleLevel(s2_s, r3.xyz, r2.x).xyz;
        r3.xyz = r3.xyz * cb0[187].xyz + -r9.yzw;
        r9.yzw = cb1[0].www * r3.xyz + r9.yzw;
      }
      r2.x = cmp(cb1[0].z < 1);
      r13.xyz = r3.www * r9.yzw + r8.xyz;
      r13.w = r2.w * r5.w + r8.w;
      r3.xyz = r2.xxx ? float3(0,0,0) : r9.yzw;
      r8.xyzw = r2.xxxx ? r13.xyzw : r8.xyzw;
    } else {
      r3.xyz = float3(0,0,0);
    }
    r2.x = saturate(r1.y * cb0[197].x + cb0[197].y);
    r2.w = r2.x * -2 + 3;
    r2.x = r2.x * r2.x;
    r2.x = r2.w * r2.x;
    r2.w = max(9.99999975e-005, r8.w);
    r2.w = r9.x / r2.w;
    r2.w = min(cb0[197].z, r2.w);
    r2.w = -1 + r2.w;
    r2.x = r2.x * r2.w + 1;
    r3.xyz = r3.www * r3.xyz;
    r3.xyz = r8.xyz * r2.xxx + r3.xyz;
    r3.xyz = cb0[135].yyy * r3.xyz + r6.xyz;
    if (r10.x != 0) {
      r11.y = r1.y;
      r2.xw = t6.SampleLevel(s4_s, r11.xy, 0).xy;
      r3.w = saturate(50 * r4.y);
      r2.w = r3.w * r2.w;
      r3.w = 1 + -r11.z;
      r2.w = r3.w * r2.w;
      r6.xyz = r4.xyz * r2.xxx + r2.www;
      r6.xyz = r6.xyz * r3.xyz;
      r2.xw = t6.SampleLevel(s4_s, r11.xw, 0).xy;
      r2.x = r2.x * 0.0399999991 + r2.w;
      r2.w = r2.x * r11.z;
      r2.x = -r2.x * r11.z + 1;
      r5.xyz = r5.xyz * r2.www;
      r5.xyz = r6.xyz * r2.xxx + r5.xyz;
      r0.x = r2.w * r0.x;
      r0.x = r0.x * r0.y;
      r0.y = r0.z + r0.z;
      r6.xyz = r0.yyy * r7.xyz + r12.xyz;
      r0.y = max(0.00100000005, r11.w);
      r0.y = log2(r0.y);
      r0.y = -r0.y * 1.20000005 + 1;
      r0.z = r2.y + -r0.y;
      r2.xyw = float3(0,0,0);
      r3.w = r0.x;
      r4.w = 0;
      r5.w = 1;
      r6.w = 0;
      while (true) {
        r7.x = cmp((uint)r6.w >= (uint)r1.w);
        if (r7.x != 0) break;
        r7.x = cmp(r3.w < 0.00100000005);
        if (r7.x != 0) {
          break;
        }
        r7.x = (int)r1.z + (int)r6.w;
        r7.x = t5.Load(r7.x).x;
        r7.yzw = -cb3[r7.x+0].xyz + r10.yzw;
        r7.y = dot(r7.yzw, r7.yzw);
        r7.y = sqrt(r7.y);
        r7.y = cmp(r7.y < cb3[r7.x+0].w);
        if (r7.y != 0) {
          r7.y = (uint)r7.x << 2;
          r8.xyz = cb3[r7.y+1024].xyz * r10.zzz;
          r8.xyz = r10.yyy * cb3[r7.y+1023].xyz + r8.xyz;
          r8.xyz = r10.www * cb3[r7.y+1025].xyz + r8.xyz;
          r8.xyz = cb3[r7.y+1026].xyz + r8.xyz;
          r9.yzw = cb3[r7.y+1024].xyz * r6.yyy;
          r9.yzw = r6.xxx * cb3[r7.y+1023].xyz + r9.yzw;
          r7.yzw = r6.zzz * cb3[r7.y+1025].xyz + r9.yzw;
          r7.yzw = rcp(r7.yzw);
          r9.yzw = -r8.xyz * r7.yzw + -r7.yzw;
          r7.yzw = -r8.xyz * r7.yzw + r7.yzw;
          r7.yzw = max(r9.yzw, r7.yzw);
          r7.z = min(r7.z, r7.w);
          r7.y = min(r7.y, r7.z);
          r7.yzw = r7.yyy * r6.xyz + r10.yzw;
          r9.yzw = cb3[r7.x+682].xyz + cb3[r7.x+0].xyz;
          r12.xyz = -r9.yzw + r7.yzw;
          r7.y = cb3[r7.x+2387].w * 0.699999988;
          r9.yzw = -cb3[r7.x+2387].www * float3(0.5,0.5,0.5) + cb3[r7.x+2387].xyz;
          r11.xyz = cb3[r7.x+2387].xyz * r8.xyz;
          r13.xyz = cmp(r11.xyz < -r9.yzw);
          r14.xyz = r8.xyz * cb3[r7.x+2387].xyz + r9.yzw;
          r14.xyz = abs(r14.xyz);
          r13.xyz = r13.xyz ? r14.xyz : 0;
          r11.xyz = cmp(r9.yzw < r11.xyz);
          r8.xyz = r8.xyz * cb3[r7.x+2387].xyz + -r9.yzw;
          r8.xyz = abs(r8.xyz);
          r8.xyz = r11.xyz ? r8.xyz : 0;
          r7.z = dot(r13.xyz, float3(1,1,1));
          r7.w = dot(r8.xyz, float3(1,1,1));
          r7.z = r7.z + r7.w;
          r7.y = 1 / r7.y;
          r7.y = saturate(r7.z * r7.y);
          r7.z = r7.y * -2 + 3;
          r7.y = r7.y * r7.y;
          r7.y = -r7.z * r7.y + 1;
          r12.w = cb3[r7.x+341].y;
          r8.xyzw = t3.SampleLevel(s3_s, r12.xyzw, r0.z).xyzw;
          r8.xyz = cb3[r7.x+341].xxx * r8.xyz;
          r8.xyz = r8.xyz * r7.yyy;
          r2.xyw = r8.xyz * r3.www + r2.xyw;
          r7.z = -r8.w * r7.y + 1;
          r3.w = r7.z * r3.w;
          r7.x = cb3[r7.x+682].w * r7.y;
          r4.w = r7.x * r5.w + r4.w;
          r7.x = 1 + -r7.y;
          r5.w = r7.x * r5.w;
        }
        r6.w = (int)r6.w + 1;
      }
      r7.xyz = cb0[157].xyz * r2.xyw;
      r7.w = r4.w * r0.w;
      if (r2.z != 0) {
        r0.x = cb1[0].x + -r0.y;
        r0.x = -1 + r0.x;
        r0.yzw = t1.SampleLevel(s1_s, r6.xyz, r0.x).xyz;
        r1.z = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
        r1.z = cb1[1].x * r1.z;
        r0.yzw = cb0[187].xyz * r0.yzw;
        r1.w = cmp(0 < cb1[0].w);
        if (r1.w != 0) {
          r2.xyz = t2.SampleLevel(s2_s, r6.xyz, r0.x).xyz;
          r2.xyz = r2.xyz * cb0[187].xyz + -r0.yzw;
          r0.yzw = cb1[0].www * r2.xyz + r0.yzw;
        }
        r0.x = cmp(cb1[0].z < 1);
        r2.xyz = r3.www * r0.yzw + r7.xyz;
        r2.w = r1.z * r5.w + r7.w;
        r0.yzw = r0.xxx ? float3(0,0,0) : r0.yzw;
        r7.xyzw = r0.xxxx ? r2.xyzw : r7.xyzw;
      } else {
        r0.yzw = float3(0,0,0);
      }
      r0.x = saturate(r11.w * cb0[197].x + cb0[197].y);
      r1.z = r0.x * -2 + 3;
      r0.x = r0.x * r0.x;
      r0.x = r1.z * r0.x;
      r1.z = max(9.99999975e-005, r7.w);
      r1.z = r9.x / r1.z;
      r1.z = min(cb0[197].z, r1.z);
      r1.z = -1 + r1.z;
      r0.x = r0.x * r1.z + 1;
      r0.yzw = r3.www * r0.yzw;
      r0.xyz = r7.xyz * r0.xxx + r0.yzw;
      r0.xyz = cb0[135].yyy * r0.xyz + r5.xyz;
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