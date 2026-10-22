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

cbuffer cb2 : register(b2)
{
  float4 cb2[2728];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
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
  r1.xyzw = t6.SampleLevel(s0_s, r0.xy, 0).xzyw;
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
    r3.xyz = t5.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyzw = t7.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r5.xy = t8.SampleLevel(s0_s, r0.xy, 0).xy;
    r6.xyzw = t9.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r1.w = t4.SampleLevel(s0_s, r0.xy, 0).x;
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
    r7.w = cmp(0 < cb0[207].z);
    r5.w = r5.w ? r7.w : 0;
    r7.w = cmp(0 != cb0[156].y);
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
    r0.w = t11.SampleLevel(s4_s, r0.xy, 0).x;
    r1.z = cmp(0 < abs(r6.w));
    r8.xyz = r7.xyz * r6.yzx;
    r8.xyz = r7.zxy * r6.zxy + -r8.xyz;
    r2.z = dot(r8.xyz, r8.xyz);
    r2.z = rsqrt(r2.z);
    r8.xyz = r8.xyz * r2.zzz;
    r2.z = cmp(r6.w >= 0);
    r6.xyz = r2.zzz ? r8.xyz : r6.xyz;
    r8.xyz = r6.xyz * -r12.xyz;
    r8.xyz = r6.zxy * -r12.yzx + -r8.xyz;
    r13.xyz = r8.xyz * r6.xyz;
    r6.xyz = r8.zxy * r6.yzx + -r13.xyz;
    r5.x = saturate(r5.x);
    r2.z = abs(r6.w) * r5.x;
    r3.xyz = -r3.xyz * r5.zzz + r6.xyz;
    r3.xyz = r2.zzz * r3.xyz + r7.xyz;
    r2.z = dot(r3.xyz, r3.xyz);
    r2.z = rsqrt(r2.z);
    r3.xyz = r3.xyz * r2.zzz;
    r3.xyz = r1.zzz ? r3.xyz : r7.xyz;
    r1.x = dot(-r12.xyz, r3.xyz);
    r1.z = r1.x + r1.x;
    r5.xyz = r1.zzz * r3.xyz + r12.xyz;
    r1.x = saturate(r1.x);
    r1.z = r1.y * r1.y;
    r2.z = -r1.y * r1.y + 1;
    r2.w = sqrt(r2.z);
    r2.w = r1.y * r1.y + r2.w;
    r2.z = r2.z * r2.w;
    r5.xyz = r5.xyz + -r3.xyz;
    r3.xyz = r2.zzz * r5.xyz + r3.xyz;
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
    r1.z = r1.w * cb1[3].x + cb1[3].y;
    r1.z = log2(r1.z);
    r1.z = cb1[3].z * r1.z;
    r1.z = max(0, r1.z);
    r1.z = (uint)r1.z;
    r1.w = asint(cb1[1].z) + -1;
    r1.z = min((uint)r1.z, (uint)r1.w);
    r2.xy = (uint2)r2.xy >> asuint(cb1[2].xx);
    r1.z = mad((int)r1.z, asint(cb1[1].y), (int)r2.y);
    r1.z = mad((int)r1.z, asint(cb1[1].x), (int)r2.x);
    r1.z = (int)r1.z + asint(cb1[0].w);
    r1.w = (uint)r1.z << 1;
    r1.w = t1.Load(r1.w).x;
    r1.w = min(asuint(cb1[0].y), (uint)r1.w);
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.z = (((uint)r1.z << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
    r1.z = t1.Load(r1.z).x;
    r2.x = max(0.00100000005, r1.y);
    r2.x = log2(r2.x);
    r2.x = -r2.x * 1.20000005 + 1;
    r2.y = -1 + cb0[195].z;
    r2.x = r2.y + -r2.x;
    r8.xyz = float3(0,0,0);
    r2.z = r0.w;
    r2.w = 0;
    r3.w = 1;
    r4.w = 0;
    while (true) {
      r5.w = cmp((uint)r4.w >= (uint)r1.w);
      if (r5.w != 0) break;
      r5.w = cmp(r2.z < 0.00100000005);
      if (r5.w != 0) {
        break;
      }
      r5.w = (int)r1.z + (int)r4.w;
      r5.w = t2.Load(r5.w).x;
      r9.yzw = -cb2[r5.w+0].xyz + r10.yzw;
      r6.w = dot(r9.yzw, r9.yzw);
      r6.w = sqrt(r6.w);
      r6.w = cmp(r6.w < cb2[r5.w+0].w);
      if (r6.w != 0) {
        r6.w = (uint)r5.w << 2;
        r9.yzw = cb2[r6.w+1024].xyz * r10.zzz;
        r9.yzw = r10.yyy * cb2[r6.w+1023].xyz + r9.yzw;
        r9.yzw = r10.www * cb2[r6.w+1025].xyz + r9.yzw;
        r9.yzw = cb2[r6.w+1026].xyz + r9.yzw;
        r13.xyz = cb2[r6.w+1024].xyz * r3.yyy;
        r13.xyz = r3.xxx * cb2[r6.w+1023].xyz + r13.xyz;
        r13.xyz = r3.zzz * cb2[r6.w+1025].xyz + r13.xyz;
        r13.xyz = rcp(r13.xyz);
        r14.xyz = -r9.yzw * r13.xyz + -r13.xyz;
        r13.xyz = -r9.yzw * r13.xyz + r13.xyz;
        r13.xyz = max(r14.xyz, r13.xyz);
        r6.w = min(r13.y, r13.z);
        r6.w = min(r13.x, r6.w);
        r13.xyz = r6.www * r3.xyz + r10.yzw;
        r14.xyz = cb2[r5.w+682].xyz + cb2[r5.w+0].xyz;
        r13.xyz = -r14.xyz + r13.xyz;
        r6.w = cb2[r5.w+2387].w * 0.699999988;
        r14.xyz = -cb2[r5.w+2387].www * float3(0.5,0.5,0.5) + cb2[r5.w+2387].xyz;
        r15.xyz = cb2[r5.w+2387].xyz * r9.yzw;
        r16.xyz = cmp(r15.xyz < -r14.xyz);
        r17.xyz = r9.yzw * cb2[r5.w+2387].xyz + r14.xyz;
        r17.xyz = abs(r17.xyz);
        r16.xyz = r16.xyz ? r17.xyz : 0;
        r15.xyz = cmp(r14.xyz < r15.xyz);
        r9.yzw = r9.yzw * cb2[r5.w+2387].xyz + -r14.xyz;
        r9.yzw = abs(r9.yzw);
        r9.yzw = r15.xyz ? r9.yzw : 0;
        r7.w = dot(r16.xyz, float3(1,1,1));
        r8.w = dot(r9.yzw, float3(1,1,1));
        r7.w = r8.w + r7.w;
        r6.w = 1 / r6.w;
        r6.w = saturate(r7.w * r6.w);
        r7.w = r6.w * -2 + 3;
        r6.w = r6.w * r6.w;
        r6.w = -r7.w * r6.w + 1;
        r13.w = cb2[r5.w+341].y;
        r13.xyzw = t0.SampleLevel(s1_s, r13.xyzw, r2.x).xyzw;
        r9.yzw = cb2[r5.w+341].xxx * r13.xyz;
        r9.yzw = r9.yzw * r6.www;
        r8.xyz = r9.yzw * r2.zzz + r8.xyz;
        r7.w = -r13.w * r6.w + 1;
        r2.z = r7.w * r2.z;
        r5.w = cb2[r5.w+682].w * r6.w;
        r2.w = r5.w * r3.w + r2.w;
        r5.w = 1 + -r6.w;
        r3.w = r5.w * r3.w;
      }
      r4.w = (int)r4.w + 1;
    }
    r3.xyz = cb0[157].xyz * r8.xyz;
    r0.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
    r2.x = r2.w * r0.w;
    r2.z = saturate(r1.y * cb0[197].x + cb0[197].y);
    r2.w = r2.z * -2 + 3;
    r2.z = r2.z * r2.z;
    r2.z = r2.w * r2.z;
    r2.x = max(9.99999975e-005, r2.x);
    r2.x = r9.x / r2.x;
    r2.x = min(cb0[197].z, r2.x);
    r2.x = -1 + r2.x;
    r2.x = r2.z * r2.x + 1;
    r2.xzw = r3.xyz * r2.xxx;
    r2.xzw = cb0[135].yyy * r2.xzw + r6.xyz;
    if (r10.x != 0) {
      r11.y = r1.y;
      r3.xy = t3.SampleLevel(s2_s, r11.xy, 0).xy;
      r3.z = saturate(50 * r4.y);
      r3.y = r3.y * r3.z;
      r3.z = 1 + -r11.z;
      r3.y = r3.y * r3.z;
      r3.xyz = r4.xyz * r3.xxx + r3.yyy;
      r3.xyz = r3.xyz * r2.xzw;
      r6.xy = t3.SampleLevel(s2_s, r11.xw, 0).xy;
      r3.w = r6.x * 0.0399999991 + r6.y;
      r4.w = r3.w * r11.z;
      r3.w = -r3.w * r11.z + 1;
      r0.y = r4.w * r0.y;
      r0.z = r0.z + r0.z;
      r6.xyz = r0.zzz * r7.xyz + r12.xyz;
      r0.z = max(0.00100000005, r11.w);
      r0.z = log2(r0.z);
      r0.z = -r0.z * 1.20000005 + 1;
      r0.z = r2.y + -r0.z;
      r7.xyz = float3(0,0,0);
      r2.y = r0.y;
      r4.w = 0;
      r5.w = 1;
      r6.w = 0;
      while (true) {
        r7.w = cmp((uint)r6.w >= (uint)r1.w);
        if (r7.w != 0) break;
        r7.w = cmp(r2.y < 0.00100000005);
        if (r7.w != 0) {
          break;
        }
        r7.w = (int)r1.z + (int)r6.w;
        r7.w = t2.Load(r7.w).x;
        r8.xyz = -cb2[r7.w+0].xyz + r10.yzw;
        r8.x = dot(r8.xyz, r8.xyz);
        r8.x = sqrt(r8.x);
        r8.x = cmp(r8.x < cb2[r7.w+0].w);
        if (r8.x != 0) {
          r8.x = (uint)r7.w << 2;
          r8.yzw = cb2[r8.x+1024].xyz * r10.zzz;
          r8.yzw = r10.yyy * cb2[r8.x+1023].xyz + r8.yzw;
          r8.yzw = r10.www * cb2[r8.x+1025].xyz + r8.yzw;
          r8.yzw = cb2[r8.x+1026].xyz + r8.yzw;
          r9.yzw = cb2[r8.x+1024].xyz * r6.yyy;
          r9.yzw = r6.xxx * cb2[r8.x+1023].xyz + r9.yzw;
          r9.yzw = r6.zzz * cb2[r8.x+1025].xyz + r9.yzw;
          r9.yzw = rcp(r9.yzw);
          r11.xyz = -r8.yzw * r9.yzw + -r9.yzw;
          r9.yzw = -r8.yzw * r9.yzw + r9.yzw;
          r9.yzw = max(r11.xyz, r9.yzw);
          r8.x = min(r9.z, r9.w);
          r8.x = min(r9.y, r8.x);
          r9.yzw = r8.xxx * r6.xyz + r10.yzw;
          r11.xyz = cb2[r7.w+682].xyz + cb2[r7.w+0].xyz;
          r12.xyz = -r11.xyz + r9.yzw;
          r8.x = cb2[r7.w+2387].w * 0.699999988;
          r9.yzw = -cb2[r7.w+2387].www * float3(0.5,0.5,0.5) + cb2[r7.w+2387].xyz;
          r11.xyz = cb2[r7.w+2387].xyz * r8.yzw;
          r13.xyz = cmp(r11.xyz < -r9.yzw);
          r14.xyz = r8.yzw * cb2[r7.w+2387].xyz + r9.yzw;
          r14.xyz = abs(r14.xyz);
          r13.xyz = r13.xyz ? r14.xyz : 0;
          r11.xyz = cmp(r9.yzw < r11.xyz);
          r8.yzw = r8.yzw * cb2[r7.w+2387].xyz + -r9.yzw;
          r8.yzw = abs(r8.yzw);
          r8.yzw = r11.xyz ? r8.yzw : 0;
          r9.y = dot(r13.xyz, float3(1,1,1));
          r8.y = dot(r8.yzw, float3(1,1,1));
          r8.y = r9.y + r8.y;
          r8.x = 1 / r8.x;
          r8.x = saturate(r8.y * r8.x);
          r8.y = r8.x * -2 + 3;
          r8.x = r8.x * r8.x;
          r8.x = -r8.y * r8.x + 1;
          r12.w = cb2[r7.w+341].y;
          r12.xyzw = t0.SampleLevel(s1_s, r12.xyzw, r0.z).xyzw;
          r8.yzw = cb2[r7.w+341].xxx * r12.xyz;
          r8.yzw = r8.yzw * r8.xxx;
          r7.xyz = r8.yzw * r2.yyy + r7.xyz;
          r8.y = -r12.w * r8.x + 1;
          r2.y = r8.y * r2.y;
          r7.w = cb2[r7.w+682].w * r8.x;
          r4.w = r7.w * r5.w + r4.w;
          r7.w = 1 + -r8.x;
          r5.w = r7.w * r5.w;
        }
        r6.w = (int)r6.w + 1;
      }
      r6.xyz = cb0[157].xyz * r7.xyz;
      r0.y = r4.w * r0.w;
      r0.z = saturate(r11.w * cb0[197].x + cb0[197].y);
      r0.w = r0.z * -2 + 3;
      r0.z = r0.z * r0.z;
      r0.z = r0.w * r0.z;
      r0.y = max(9.99999975e-005, r0.y);
      r0.y = r9.x / r0.y;
      r0.y = min(cb0[197].z, r0.y);
      r0.y = -1 + r0.y;
      r0.y = r0.z * r0.y + 1;
      r0.yzw = r6.xyz * r0.yyy;
      r0.yzw = cb0[135].yyy * r0.yzw;
      r0.yzw = r3.xyz * r3.www + r0.yzw;
      r0.xyz = r0.yzw * r0.xxx + r5.xyz;
    } else {
      r1.xy = t3.SampleLevel(s2_s, r1.xy, 0).xy;
      r0.w = saturate(50 * r4.y);
      r0.w = r0.w * r1.y;
      r1.xyz = r4.xyz * r1.xxx + r0.www;
      r0.xyz = r2.xzw * r1.xyz;
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