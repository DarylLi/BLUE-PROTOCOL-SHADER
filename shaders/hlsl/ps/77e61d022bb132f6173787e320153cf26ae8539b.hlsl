// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

TextureCubeArray<float4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r1.xyzw = t6.SampleLevel(s0_s, r0.xy, 0).xzyw;
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
    r3.xyz = t5.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyzw = t7.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r5.xy = t8.SampleLevel(s0_s, r0.xy, 0).xy;
    r6.xyzw = t9.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r1.w = t4.SampleLevel(s0_s, r0.xy, 0).x;
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
    r7.w = cmp(0 < cb1[207].z);
    r5.w = r5.w ? r7.w : 0;
    r7.w = cmp(0 != cb1[156].y);
    r8.xyw = r7.www ? float3(1,1,1) : r4.xyz;
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
    r0.w = t11.SampleLevel(s4_s, r0.xy, 0).x;
    r1.z = cmp(0 < abs(r6.w));
    r8.xyz = r7.xyz * r6.yzx;
    r8.xyz = r7.zxy * r6.zxy + -r8.xyz;
    r2.z = dot(r8.xyz, r8.xyz);
    r2.z = rsqrt(r2.z);
    r8.xyz = r8.xyz * r2.zzz;
    r2.z = cmp(r6.w >= 0);
    r6.xyz = r2.zzz ? r8.xyz : r6.xyz;
    r8.xyz = r6.xyz * -r13.xyz;
    r8.xyz = r6.zxy * -r13.yzx + -r8.xyz;
    r14.xyz = r8.xyz * r6.xyz;
    r6.xyz = r8.zxy * r6.yzx + -r14.xyz;
    r5.x = saturate(r5.x);
    r2.z = abs(r6.w) * r5.x;
    r3.xyz = -r3.xyz * r5.zzz + r6.xyz;
    r3.xyz = r2.zzz * r3.xyz + r7.xyz;
    r2.z = dot(r3.xyz, r3.xyz);
    r2.z = rsqrt(r2.z);
    r3.xyz = r3.xyz * r2.zzz;
    r3.xyz = r1.zzz ? r3.xyz : r7.xyz;
    r1.x = dot(-r13.xyz, r3.xyz);
    r1.z = r1.x + r1.x;
    r5.xyz = r1.zzz * r3.xyz + r13.xyz;
    r1.x = saturate(r1.x);
    r1.z = r1.y * r1.y;
    r2.z = -r1.y * r1.y + 1;
    r2.w = sqrt(r2.z);
    r2.w = r1.y * r1.y + r2.w;
    r2.z = r2.z * r2.w;
    r5.xyz = r5.xyz + -r3.xyz;
    r3.yzw = r2.zzz * r5.xyz + r3.xyz;
    r5.xyzw = t10.Sample(s3_s, r0.xy).xyzw;
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
    r1.w = t1.Load(r1.w).x;
    r1.w = min(asuint(cb2[0].y), (uint)r1.w);
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.z = (((uint)r1.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
    r1.z = t1.Load(r1.z).x;
    r2.x = cmp(0 < cb0[0].x);
    if (r2.x != 0) {
      r2.y = dot(r7.xyz, r7.xyz);
      r2.y = sqrt(r2.y);
      if (cb1[196].x == 0) {
        r2.z = r2.y;
      } else {
        if (r10.z != 0) {
          r2.z = r2.y;
        } else {
          r2.w = max(0.100000001, r1.y);
          r4.w = cb0[0].y * r2.y;
          r5.w = 3.14159274 * r4.w;
          r6.w = dot(r7.xyz, r3.yzw);
          r7.w = max(0.00100000005, r2.y);
          r6.w = r6.w / r7.w;
          r7.w = 1 + -abs(r6.w);
          r7.w = sqrt(r7.w);
          r8.x = abs(r6.w) * -0.0187292993 + 0.0742610022;
          r8.x = r8.x * abs(r6.w) + -0.212114394;
          r8.x = r8.x * abs(r6.w) + 1.57072878;
          r8.y = r8.x * r7.w;
          r8.y = r8.y * -2 + 3.14159274;
          r6.w = cmp(r6.w < -r6.w);
          r6.w = r6.w ? r8.y : 0;
          r6.w = r8.x * r7.w + r6.w;
          r7.w = r2.w * 3.14159274 + -r5.w;
          r6.w = -abs(r7.w) + r6.w;
          r2.w = r2.w * 3.14159274 + r5.w;
          r2.w = r2.w + -abs(r7.w);
          r2.w = saturate(r6.w / r2.w);
          r2.w = 1 + -r2.w;
          r5.w = r2.w * -2 + 3;
          r2.w = r2.w * r2.w;
          r2.w = r5.w * r2.w;
          r4.w = r4.w * 3.14159274 + -0.100000001;
          r4.w = saturate(5 * r4.w);
          r2.z = r4.w * r2.w;
        }
      }
      r2.w = 1 + -r2.z;
      r2.z = cb0[1].w * r2.w + r2.z;
      r2.w = 1 + -r2.z;
      r8.xyz = cb0[1].xyz * r2.www;
      r2.w = 1 + -r2.y;
      r2.y = cb0[1].w * r2.w + r2.y;
    } else {
      r8.xyz = float3(0,0,0);
      r2.yz = float2(1,1);
    }
    r2.y = r9.x * r2.y;
    r2.w = max(0.00100000005, r1.y);
    r2.w = log2(r2.w);
    r2.w = -r2.w * 1.20000005 + 1;
    r4.w = -1 + cb1[195].z;
    r2.w = r4.w + -r2.w;
    r3.x = 0;
    r9.yzw = float3(0,0,0);
    r5.w = r0.w;
    r6.w = 0;
    r7.w = 1;
    r8.w = 0;
    while (true) {
      r10.y = cmp((uint)r8.w >= (uint)r1.w);
      if (r10.y != 0) break;
      r10.y = cmp(r5.w < 0.00100000005);
      if (r10.y != 0) {
        break;
      }
      r10.y = (int)r1.z + (int)r8.w;
      r10.y = t2.Load(r10.y).x;
      r14.xyz = -cb3[r10.y+0].xyz + r12.xyz;
      r10.z = dot(r14.xyz, r14.xyz);
      r10.w = sqrt(r10.z);
      r12.w = cmp(r10.w < cb3[r10.y+0].w);
      if (r12.w != 0) {
        r12.w = cmp(0 < cb3[r10.y+341].z);
        if (r12.w != 0) {
          r12.w = (uint)r10.y << 2;
          r15.xyz = cb3[r12.w+1024].xyz * r12.yyy;
          r15.xyz = r12.xxx * cb3[r12.w+1023].xyz + r15.xyz;
          r15.xyz = r12.zzz * cb3[r12.w+1025].xyz + r15.xyz;
          r15.xyz = cb3[r12.w+1026].xyz + r15.xyz;
          r16.xyz = cb3[r12.w+1024].xyz * r3.zzz;
          r16.xyz = r3.yyy * cb3[r12.w+1023].xyz + r16.xyz;
          r16.xyz = r3.www * cb3[r12.w+1025].xyz + r16.xyz;
          r16.xyz = rcp(r16.xyz);
          r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
          r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
          r16.xyz = max(r17.xyz, r16.xyz);
          r12.w = min(r16.y, r16.z);
          r12.w = min(r16.x, r12.w);
          r16.xyz = r12.www * r3.yzw + r12.xyz;
          r17.xyz = cb3[r10.y+682].xyz + cb3[r10.y+0].xyz;
          r16.xyz = -r17.xyz + r16.xyz;
          r12.w = cb3[r10.y+2387].w * 0.699999988;
          r17.xyz = -cb3[r10.y+2387].www * float3(0.5,0.5,0.5) + cb3[r10.y+2387].xyz;
          r18.xyz = cb3[r10.y+2387].xyz * r15.xyz;
          r19.xyz = cmp(r18.xyz < -r17.xyz);
          r20.xyz = r15.xyz * cb3[r10.y+2387].xyz + r17.xyz;
          r20.xyz = abs(r20.xyz);
          r19.xyz = r19.xyz ? r20.xyz : 0;
          r18.xyz = cmp(r17.xyz < r18.xyz);
          r15.xyz = r15.xyz * cb3[r10.y+2387].xyz + -r17.xyz;
          r15.xyz = abs(r15.xyz);
          r15.xyz = r18.xyz ? r15.xyz : 0;
          r13.w = dot(r19.xyz, float3(1,1,1));
          r14.w = dot(r15.xyz, float3(1,1,1));
          r13.w = r14.w + r13.w;
          r12.w = 1 / r12.w;
          r12.w = saturate(r13.w * r12.w);
          r13.w = r12.w * -2 + 3;
          r12.w = r12.w * r12.w;
          r15.x = -r13.w * r12.w + 1;
        } else {
          r10.w = saturate(r10.w / cb3[r10.y+0].w);
          r12.w = dot(r3.yzw, r14.xyz);
          r10.z = -cb3[r10.y+0].w * cb3[r10.y+0].w + r10.z;
          r10.z = r12.w * r12.w + -r10.z;
          r13.w = cmp(r10.z >= 0);
          r10.z = sqrt(r10.z);
          r10.z = r10.z + -r12.w;
          r14.xyz = r10.zzz * r3.yzw + r14.xyz;
          r14.yzw = -cb3[r10.y+682].xyz + r14.xyz;
          r10.z = r10.w * 2.5 + -1.5;
          r10.z = max(0, r10.z);
          r10.w = r10.z * r10.z;
          r10.z = -r10.z * 2 + 3;
          r14.x = -r10.w * r10.z + 1;
          r15.xyzw = r13.wwww ? r14.xyzw : r3.xyzw;
          r16.xyz = r15.yzw;
        }
        r16.w = cb3[r10.y+341].y;
        r14.xyzw = t0.SampleLevel(s1_s, r16.xyzw, r2.w).xyzw;
        r14.xyz = cb3[r10.y+341].xxx * r14.xyz;
        r14.xyz = r14.xyz * r15.xxx;
        r14.xyz = r14.xyz * r5.www;
        r9.yzw = r14.xyz * r2.zzz + r9.yzw;
        r10.z = -r14.w * r15.x + 1;
        r5.w = r10.z * r5.w;
        r10.y = cb3[r10.y+682].w * r15.x;
        r6.w = r10.y * r7.w + r6.w;
        r10.y = 1 + -r15.x;
        r7.w = r10.y * r7.w;
      }
      r8.w = (int)r8.w + 1;
    }
    r3.xyz = cb1[157].xyz * r9.yzw;
    r0.w = dot(cb1[157].xyz, float3(0.300000012,0.589999974,0.109999999));
    r2.z = r6.w * r0.w;
    r2.w = saturate(r1.y * cb1[197].x + cb1[197].y);
    r3.w = r2.w * -2 + 3;
    r2.w = r2.w * r2.w;
    r2.w = r3.w * r2.w;
    r2.z = max(9.99999975e-005, r2.z);
    r2.y = r2.y / r2.z;
    r2.y = min(cb1[197].z, r2.y);
    r2.y = -1 + r2.y;
    r2.y = r2.w * r2.y + 1;
    r8.xyz = r5.www * r8.xyz;
    r2.yzw = r3.xyz * r2.yyy + r8.xyz;
    r2.yzw = cb1[135].yyy * r2.yzw + r6.xyz;
    if (r10.x != 0) {
      r11.y = r1.y;
      r3.xy = t3.SampleLevel(s2_s, r11.xy, 0).xy;
      r3.z = saturate(50 * r4.y);
      r3.y = r3.y * r3.z;
      r3.z = 1 + -r11.z;
      r3.y = r3.y * r3.z;
      r3.xyz = r4.xyz * r3.xxx + r3.yyy;
      r3.xyz = r3.xyz * r2.yzw;
      r6.xy = t3.SampleLevel(s2_s, r11.xw, 0).xy;
      r3.w = r6.x * 0.0399999991 + r6.y;
      r5.w = r3.w * r11.z;
      r3.w = -r3.w * r11.z + 1;
      r0.y = r5.w * r0.y;
      r0.z = r0.z + r0.z;
      r6.yzw = r0.zzz * r7.xyz + r13.xyz;
      if (r2.x != 0) {
        r0.z = dot(r7.xyz, r7.xyz);
        r0.z = sqrt(r0.z);
        if (cb1[196].x == 0) {
          r2.x = r0.z;
        } else {
          r5.w = max(0.100000001, r11.w);
          r7.w = cb0[0].y * r0.z;
          r8.x = 3.14159274 * r7.w;
          r7.x = dot(r7.xyz, r6.yzw);
          r7.y = max(0.00100000005, r0.z);
          r7.x = r7.x / r7.y;
          r7.y = 1 + -abs(r7.x);
          r7.y = sqrt(r7.y);
          r7.z = abs(r7.x) * -0.0187292993 + 0.0742610022;
          r7.z = r7.z * abs(r7.x) + -0.212114394;
          r7.z = r7.z * abs(r7.x) + 1.57072878;
          r8.y = r7.z * r7.y;
          r8.y = r8.y * -2 + 3.14159274;
          r7.x = cmp(r7.x < -r7.x);
          r7.x = r7.x ? r8.y : 0;
          r7.x = r7.z * r7.y + r7.x;
          r7.y = r5.w * 3.14159274 + -r8.x;
          r7.x = r7.x + -abs(r7.y);
          r5.w = r5.w * 3.14159274 + r8.x;
          r5.w = r5.w + -abs(r7.y);
          r5.w = saturate(r7.x / r5.w);
          r5.w = 1 + -r5.w;
          r7.x = r5.w * -2 + 3;
          r5.w = r5.w * r5.w;
          r5.w = r7.x * r5.w;
          r7.x = r7.w * 3.14159274 + -0.100000001;
          r7.x = saturate(5 * r7.x);
          r2.x = r7.x * r5.w;
        }
        r5.w = 1 + -r2.x;
        r2.x = cb0[1].w * r5.w + r2.x;
        r5.w = 1 + -r2.x;
        r7.xyz = cb0[1].xyz * r5.www;
        r5.w = 1 + -r0.z;
        r0.z = cb0[1].w * r5.w + r0.z;
      } else {
        r7.xyz = float3(0,0,0);
        r2.x = 1;
        r0.z = 1;
      }
      r0.z = r9.x * r0.z;
      r5.w = max(0.00100000005, r11.w);
      r5.w = log2(r5.w);
      r5.w = -r5.w * 1.20000005 + 1;
      r4.w = -r5.w + r4.w;
      r6.x = 0;
      r5.w = r0.y;
      r7.w = 0;
      r8.xyzw = float4(0,0,0,1);
      r9.x = 0;
      while (true) {
        r9.y = cmp((uint)r9.x >= (uint)r1.w);
        if (r9.y != 0) break;
        r9.y = cmp(r5.w < 0.00100000005);
        if (r9.y != 0) {
          break;
        }
        r9.y = (int)r1.z + (int)r9.x;
        r9.y = t2.Load(r9.y).x;
        r10.xyz = -cb3[r9.y+0].xyz + r12.xyz;
        r9.z = dot(r10.xyz, r10.xyz);
        r9.w = sqrt(r9.z);
        r10.w = cmp(r9.w < cb3[r9.y+0].w);
        if (r10.w != 0) {
          r10.w = cmp(0 < cb3[r9.y+341].z);
          if (r10.w != 0) {
            r10.w = (uint)r9.y << 2;
            r11.xyz = cb3[r10.w+1024].xyz * r12.yyy;
            r11.xyz = r12.xxx * cb3[r10.w+1023].xyz + r11.xyz;
            r11.xyz = r12.zzz * cb3[r10.w+1025].xyz + r11.xyz;
            r11.xyz = cb3[r10.w+1026].xyz + r11.xyz;
            r13.xyz = cb3[r10.w+1024].xyz * r6.zzz;
            r13.xyz = r6.yyy * cb3[r10.w+1023].xyz + r13.xyz;
            r13.xyz = r6.www * cb3[r10.w+1025].xyz + r13.xyz;
            r13.xyz = rcp(r13.xyz);
            r14.xyz = -r11.xyz * r13.xyz + -r13.xyz;
            r13.xyz = -r11.xyz * r13.xyz + r13.xyz;
            r13.xyz = max(r14.xyz, r13.xyz);
            r10.w = min(r13.y, r13.z);
            r10.w = min(r13.x, r10.w);
            r13.xyz = r10.www * r6.yzw + r12.xyz;
            r14.xyz = cb3[r9.y+682].xyz + cb3[r9.y+0].xyz;
            r13.xyz = -r14.xyz + r13.xyz;
            r10.w = cb3[r9.y+2387].w * 0.699999988;
            r14.xyz = -cb3[r9.y+2387].www * float3(0.5,0.5,0.5) + cb3[r9.y+2387].xyz;
            r15.xyz = cb3[r9.y+2387].xyz * r11.xyz;
            r16.xyz = cmp(r15.xyz < -r14.xyz);
            r17.xyz = r11.xyz * cb3[r9.y+2387].xyz + r14.xyz;
            r17.xyz = abs(r17.xyz);
            r16.xyz = r16.xyz ? r17.xyz : 0;
            r15.xyz = cmp(r14.xyz < r15.xyz);
            r11.xyz = r11.xyz * cb3[r9.y+2387].xyz + -r14.xyz;
            r11.xyz = abs(r11.xyz);
            r11.xyz = r15.xyz ? r11.xyz : 0;
            r12.w = dot(r16.xyz, float3(1,1,1));
            r11.x = dot(r11.xyz, float3(1,1,1));
            r11.x = r12.w + r11.x;
            r10.w = 1 / r10.w;
            r10.w = saturate(r11.x * r10.w);
            r11.x = r10.w * -2 + 3;
            r10.w = r10.w * r10.w;
            r14.x = -r11.x * r10.w + 1;
          } else {
            r9.w = saturate(r9.w / cb3[r9.y+0].w);
            r10.w = dot(r6.yzw, r10.xyz);
            r9.z = -cb3[r9.y+0].w * cb3[r9.y+0].w + r9.z;
            r9.z = r10.w * r10.w + -r9.z;
            r11.x = cmp(r9.z >= 0);
            r9.z = sqrt(r9.z);
            r9.z = r9.z + -r10.w;
            r10.xyz = r9.zzz * r6.yzw + r10.xyz;
            r10.yzw = -cb3[r9.y+682].xyz + r10.xyz;
            r9.z = r9.w * 2.5 + -1.5;
            r9.z = max(0, r9.z);
            r9.w = r9.z * r9.z;
            r9.z = -r9.z * 2 + 3;
            r10.x = -r9.w * r9.z + 1;
            r14.xyzw = r11.xxxx ? r10.xyzw : r6.xyzw;
            r13.xyz = r14.yzw;
          }
          r13.w = cb3[r9.y+341].y;
          r10.xyzw = t0.SampleLevel(s1_s, r13.xyzw, r4.w).xyzw;
          r10.xyz = cb3[r9.y+341].xxx * r10.xyz;
          r10.xyz = r10.xyz * r14.xxx;
          r10.xyz = r10.xyz * r5.www;
          r8.xyz = r10.xyz * r2.xxx + r8.xyz;
          r9.z = -r10.w * r14.x + 1;
          r5.w = r9.z * r5.w;
          r9.y = cb3[r9.y+682].w * r14.x;
          r7.w = r9.y * r8.w + r7.w;
          r9.y = 1 + -r14.x;
          r8.w = r9.y * r8.w;
        }
        r9.x = (int)r9.x + 1;
      }
      r6.xyz = cb1[157].xyz * r8.xyz;
      r0.y = r7.w * r0.w;
      r0.w = saturate(r11.w * cb1[197].x + cb1[197].y);
      r1.z = r0.w * -2 + 3;
      r0.w = r0.w * r0.w;
      r0.w = r1.z * r0.w;
      r0.y = max(9.99999975e-005, r0.y);
      r0.y = r0.z / r0.y;
      r0.y = min(cb1[197].z, r0.y);
      r0.y = -1 + r0.y;
      r0.y = r0.w * r0.y + 1;
      r7.xyz = r5.www * r7.xyz;
      r0.yzw = r6.xyz * r0.yyy + r7.xyz;
      r0.yzw = cb1[135].yyy * r0.yzw;
      r0.yzw = r3.xyz * r3.www + r0.yzw;
      r0.xyz = r0.yzw * r0.xxx + r5.xyz;
    } else {
      r1.xy = t3.SampleLevel(s2_s, r1.xy, 0).xy;
      r0.w = saturate(50 * r4.y);
      r0.w = r0.w * r1.y;
      r1.xyz = r4.xyz * r1.xxx + r0.www;
      r0.xyz = r2.yzw * r1.xyz;
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