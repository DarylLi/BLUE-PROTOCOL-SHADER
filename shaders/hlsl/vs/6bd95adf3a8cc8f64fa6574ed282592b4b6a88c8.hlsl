// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t8 : register(t8);

Buffer<float4> t7 : register(t7);

Buffer<float4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[1];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[185];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : SV_InstanceID0,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : COLOR1,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v1.x + asint(cb0[8].x);
  r0.y = (int)r0.x * 3;
  r1.xyzw = t5.Load(r0.y).xyzw;
  r0.yz = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  r2.xyz = t5.Load(r0.y).xyz;
  r3.xyz = t5.Load(r0.z).xyz;
  r4.xyzw = t4.Load(r0.x).xyzw;
  r0.xy = t6.Load(r0.x).xy;
  r0.z = (int)v2.x + asint(cb3[0].w);
  r0.w = (uint)r0.z << 1;
  r5.xyz = t8.Load(r0.w).xyz;
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.z << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r6.xyzw = t8.Load(r0.w).xyzw;
  r7.xyz = r6.yzx * r5.xyz;
  r5.xyz = r6.xyz * r5.yzx + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = r5.xyz * r6.yzx;
  r5.xyz = r5.zxy * r6.zxy + -r7.xyz;
  r5.xyz = r5.xyz * r6.www;
  r7.xyz = cb2[1].xyz * r1.yyy;
  r7.xyz = r1.xxx * cb2[0].xyz + r7.xyz;
  r7.xyz = r1.zzz * cb2[2].xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r2.yyy;
  r8.xyz = r2.xxx * cb2[0].xyz + r8.xyz;
  r8.xyz = r2.zzz * cb2[2].xyz + r8.xyz;
  r9.xyz = cb2[1].xyz * r3.yyy;
  r9.xyz = r3.xxx * cb2[0].xyz + r9.xyz;
  r9.xyz = r3.zzz * cb2[2].xyz + r9.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r7.xyz * r0.www;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = rsqrt(r0.w);
  r8.xyz = r8.xyz * r0.www;
  r0.w = dot(r9.xyz, r9.xyz);
  r0.w = rsqrt(r0.w);
  r9.xyz = r9.xyz * r0.www;
  r10.xyz = r8.xyz * r5.yyy;
  r5.xyw = r5.xxx * r7.xyz + r10.xyz;
  o0.xyz = r5.zzz * r9.xyz + r5.xyw;
  r5.xyz = r8.xyz * r6.yyy;
  r5.xyz = r6.xxx * r7.xyz + r5.xyz;
  o1.xyz = r6.zzz * r9.xyz + r5.xyz;
  o1.w = cb2[4].w * r6.w;
  r0.w = 0.00390625 * r1.w;
  r0.w = trunc(r0.w);
  r5.xyz = cb0[6].xyz + r4.xyz;
  r6.xyz = cb2[1].xyz * r5.yyy;
  r5.xyw = cb2[0].xyz * r5.xxx + r6.xyz;
  r5.xyz = cb2[2].xyz * r5.zzz + r5.xyw;
  r5.xyz = cb2[3].xyz + r5.xyz;
  r6.xyz = cb1[70].xyz + r5.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r1.w = -cb0[7].x + r1.w;
  r1.w = saturate(cb0[7].y * r1.w);
  o2.y = 1 + -r1.w;
  r1.w = 1 + -r0.w;
  r1.w = cb0[7].w * r1.w;
  r0.w = cb0[7].z * r0.w + r1.w;
  r6.xyz = -cb0[4].xyz + r5.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cb0[1].w * r4.w + r1.w;
  r5.xyz = -cb0[5].xyz + r5.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = cb0[1].w * r4.w + r2.w;
  r5.xyz = cmp(cb0[1].xyz < r1.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r1.w = dot(r5.xyz, cb0[3].xyz);
  r5.xyz = cmp(cb0[2].xyz < r2.www);
  r5.xyz = r5.xyz ? float3(1,1,1) : 0;
  r2.w = dot(r5.xyz, cb0[3].xyz);
  r2.w = cb0[5].w * r2.w;
  r5.w = r1.w * cb0[4].w + r2.w;
  r1.w = cmp(abs(r5.w) < 0.999000013);
  r1.w = r1.w ? 1.000000 : 0;
  r5.z = r1.w * r0.w;
  r6.x = r1.x;
  r6.y = r2.x;
  r6.z = r3.x;
  r6.w = r4.x;
  r0.w = dot(v0.xyzw, r6.xyzw);
  r6.x = r1.y;
  r6.y = r2.y;
  r6.z = r3.y;
  r6.w = r4.y;
  r1.x = dot(v0.xyzw, r6.xyzw);
  r3.x = r1.z;
  r3.y = r2.z;
  r3.w = r4.z;
  r1.y = dot(v0.xyzw, r3.xyzw);
  r1.xzw = cb2[1].xyz * r1.xxx;
  r1.xzw = cb2[0].xyz * r0.www + r1.xzw;
  r1.xyz = cb2[2].xyz * r1.yyy + r1.xzw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.w = 1;
  r2.xyzw = r1.xyzw * r5.zzzz;
  r0.w = (int)r0.z * asint(cb3[0].y);
  r3.xy = t7.Load(r0.w).xy;
  r6.xyzw = cb1[1].xyzw * r2.yyyy;
  r6.xyzw = r2.xxxx * cb1[0].xyzw + r6.xyzw;
  r6.xyzw = r2.zzzz * cb1[2].xyzw + r6.xyzw;
  r6.xyzw = r2.wwww * cb1[3].xyzw + r6.xyzw;
  r0.z = mad(asint(cb3[0].y), (int)r0.z, asint(cb3[0].z));
  r0.zw = t7.Load(r0.z).xy;
  o4.xy = r0.zw * cb4[2].xy + r0.xy;
  r0.xyz = r1.xyz * r5.zzz + -cb1[68].xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r0.w);
  r1.yz = float2(9.99999975e-006,100) * cb1[159].xx;
  r1.w = -cb1[158].w + cb1[68].z;
  r1.w = cb1[159].y * r1.w;
  r3.zw = cb1[68].xy;
  r7.xy = r3.zw * r1.yy;
  r7.w = r1.w * r1.y + 6360.00977;
  r1.w = dot(r7.xyw, r7.xyw);
  r4.y = sqrt(r1.w);
  r0.w = rsqrt(r0.w);
  r8.xyz = r0.xyz * r0.www;
  r2.w = dot(r7.xyw, r8.xyz);
  r4.z = r2.w / r4.y;
  r3.z = r4.z * r4.z + -1;
  r3.w = r1.x * r1.y;
  r5.x = r1.x * r1.y + -cb1[159].w;
  r5.x = max(0, r5.x);
  r5.y = 0.100000001 * r5.x;
  r5.y = r5.y / cb1[159].w;
  r5.y = min(1, r5.y);
  r1.z = cmp(r3.w < r1.z);
  if (r1.z != 0) {
    r3.w = cb1[158].x * r5.y;
    r1.x = r1.x * r1.y + cb1[160].x;
    r4.x = max(1, r1.x);
  } else {
    r1.x = r1.w * r3.z + 40449600;
    r1.x = sqrt(r1.x);
    r4.x = -r2.w + -r1.x;
    r3.w = 1;
  }
  r1.x = r1.w * r3.z + 41344900;
  r1.x = sqrt(r1.x);
  r1.y = -r2.w + -r1.x;
  r1.w = cmp(0 < r1.y);
  r9.xyz = r1.yyy * r8.xyz + r7.xyw;
  r10.x = r4.x + -r1.y;
  r10.z = -0.000155520989 * r1.x;
  r9.xyz = r1.www ? r9.xyz : r7.xyw;
  r10.y = 6430;
  r1.xyw = r1.www ? r10.xyz : r4.xyz;
  r2.w = cmp(r1.y < 6360.01465);
  r3.z = 6360.01465 + -r1.y;
  r10.xyz = -r3.zzz * r8.xyz + r9.xyz;
  r11.x = -r3.z + r1.x;
  r3.z = dot(r10.xyz, r8.xyz);
  r11.z = 0.000157232338 * r3.z;
  r11.y = 6360.01465;
  r1.xyw = r2.www ? r11.xyz : r1.xyw;
  r3.z = cmp(6430 >= r1.y);
  r5.x = cmp(0 < r5.x);
  r3.z = r3.z ? r5.x : 0;
  if (r3.z != 0) {
    r9.xyz = r2.www ? r10.xyz : r9.xyz;
    r2.w = dot(r8.xyz, cb1[161].xyz);
    r3.z = dot(r9.xyz, cb1[161].xyz);
    r3.z = r3.z / r1.y;
    r5.x = 6360 / r1.y;
    r5.x = -r5.x * r5.x + 1;
    r5.x = sqrt(r5.x);
    r10.xy = float2(0.155000001,0.00499999989) + -r5.xx;
    r10.xz = max(r10.xy, r1.ww);
    r11.x = r1.z ? r10.x : r10.z;
    r1.w = -1.44269502 * r8.z;
    r1.w = exp2(r1.w);
    r12.y = saturate(-0.5 + r1.w);
    r1.w = cmp(r12.y < 1);
    r8.w = max(0.150000006, r8.z);
    r7.z = dot(r8.xyw, r8.xyw);
    r7.z = rsqrt(r7.z);
    r13.xyz = r8.xyw * r7.zzz;
    r10.xzw = r1.xxx * r13.xyz + r9.xyz;
    r7.z = dot(r10.xzw, r10.xzw);
    r7.z = sqrt(r7.z);
    r8.w = dot(r10.xzw, r13.xyz);
    r13.w = r8.w / r7.z;
    r11.yzw = r8.xyz;
    r13.xyzw = r1.wwww ? r13.xyzw : r11.yzwx;
    r12.x = r13.w;
    r11.y = 0;
    r12.xy = r1.zz ? r12.xy : r11.xy;
    r1.w = r2.w * r2.w + 1;
    r7.z = 0.0596831031 * r1.w;
    r8.w = -r2.w * 1.60000002 + 1.63999999;
    r8.w = log2(abs(r8.w));
    r8.w = -1.5 * r8.w;
    r8.w = exp2(r8.w);
    r1.w = r8.w * r1.w;
    r14.x = 0.0162772108 * r1.w;
    r1.w = r1.y * r1.y;
    r8.w = r1.y * r1.y + -40449600;
    r8.w = sqrt(r8.w);
    r9.w = r12.x * r1.y;
    r10.x = r9.w * r9.w + -r1.w;
    r10.x = 40449600 + r10.x;
    r10.z = cmp(r9.w < 0);
    r10.w = cmp(0 < r10.x);
    r10.z = r10.w ? r10.z : 0;
    r15.xyzw = r10.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r10.z = asuint(cb1[182].w);
    r10.w = 0.5 / r10.z;
    r11.y = 0.00105685578 * r8.w;
    r10.z = 1 / r10.z;
    r10.z = 1 + -r10.z;
    r16.z = r11.y * r10.z + r10.w;
    r10.x = r15.y + r10.x;
    r10.x = sqrt(r10.x);
    r9.w = r9.w * r15.x + r10.x;
    r10.x = r15.z + r8.w;
    r9.w = r9.w / r10.x;
    r16.w = r9.w * 0.4921875 + r15.w;
    r9.w = max(-0.197500005, r3.z);
    r9.w = 5.34962368 * r9.w;
    r10.x = min(1, abs(r9.w));
    r11.y = max(1, abs(r9.w));
    r11.y = 1 / r11.y;
    r10.x = r11.y * r10.x;
    r11.y = r10.x * r10.x;
    r11.z = r11.y * 0.0208350997 + -0.0851330012;
    r11.z = r11.y * r11.z + 0.180141002;
    r11.z = r11.y * r11.z + -0.330299497;
    r11.y = r11.y * r11.z + 0.999866009;
    r11.z = r11.y * r10.x;
    r11.w = cmp(1 < abs(r9.w));
    r11.z = r11.z * -2 + 1.57079637;
    r11.z = r11.w ? r11.z : 0;
    r10.x = r10.x * r11.y + r11.z;
    r9.w = min(1, r9.w);
    r9.w = cmp(r9.w < -r9.w);
    r9.w = r9.w ? -r10.x : r10.x;
    r9.w = r9.w * 0.909090877 + 0.74000001;
    r9.w = r9.w * 0.484375 + 0.015625;
    r2.w = 1 + r2.w;
    r10.x = 3.5 * r2.w;
    r10.x = floor(r10.x);
    r2.w = r2.w * 3.5 + -r10.x;
    r9.w = r10.x + r9.w;
    r16.y = 0.125 * r9.w;
    r15.xyzw = t2.SampleLevel(s2_s, r16.ywz, 0).xyzw;
    r11.y = 1 + -r2.w;
    r9.w = 1 + r9.w;
    r16.x = 0.125 * r9.w;
    r17.xyzw = t2.SampleLevel(s2_s, r16.xwz, 0).xyzw;
    r17.xyzw = r17.xyzw * r2.wwww;
    r15.xyzw = r15.xyzw * r11.yyyy + r17.xyzw;
    r15.xyzw = max(float4(0,0,0,0), r15.xyzw);
    r9.w = cmp(0 < r1.x);
    if (r9.w != 0) {
      r9.xyz = r1.xxx * r8.xyz + r9.xyz;
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = sqrt(r9.w);
      r11.z = 0.5 / cb1[159].z;
      r11.z = r11.z * r1.y;
      r11.z = sqrt(r11.z);
      r11.w = r1.x / r1.y;
      r12.z = r12.x + r11.w;
      r11.zw = r12.xz * r11.zz;
      r17.xy = cmp(float2(0,0) < r11.zw);
      r17.zw = cmp(r11.zw < float2(0,0));
      r17.xy = (int2)-r17.xy + (int2)r17.zw;
      r17.xy = (int2)r17.xy;
      r18.xyz = r11.zzw * r11.zzw;
      r12.w = cmp(r17.x < r17.y);
      r13.w = 1.44269502 * r18.x;
      r13.w = exp2(r13.w);
      r12.w = r12.w ? r13.w : 0;
      r17.zw = r18.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r17.zw = sqrt(r17.zw);
      r11.zw = abs(r11.zw) * float2(2.31929994,2.31929994) + r17.zw;
      r11.zw = r17.xy / r11.zw;
      r13.w = -r1.x / cb1[159].z;
      r17.x = r1.y + r1.y;
      r17.y = r1.x / r17.x;
      r17.y = r17.y + r12.x;
      r13.w = r17.y * r13.w;
      r13.w = 1.44269502 * r13.w;
      r18.y = exp2(r13.w);
      r18.xz = float2(1,1);
      r11.zw = r18.xy * r11.zw;
      r13.w = cb1[159].z * r1.y;
      r13.w = 6.28310013 * r13.w;
      r13.w = sqrt(r13.w);
      r17.z = 6360 + -r1.y;
      r17.w = r17.z / cb1[159].z;
      r17.w = 1.44269502 * r17.w;
      r17.w = exp2(r17.w);
      r13.w = r17.w * r13.w;
      r11.z = dot(r11.zw, float2(1,-1));
      r11.z = r12.w + r11.z;
      r11.z = r13.w * r11.z;
      r18.xy = float2(0.416666657,7.53972054) * r1.yy;
      r18.xy = sqrt(r18.xy);
      r12.zw = r18.xx * r12.xz;
      r19.xy = cmp(float2(0,0) < r12.zw);
      r19.zw = cmp(r12.zw < float2(0,0));
      r19.xy = (int2)-r19.xy + (int2)r19.zw;
      r19.xy = (int2)r19.xy;
      r20.xyz = r12.zzw * r12.zzw;
      r11.w = cmp(r19.x < r19.y);
      r13.w = 1.44269502 * r20.x;
      r13.w = exp2(r13.w);
      r11.w = r11.w ? r13.w : 0;
      r19.zw = r20.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r19.zw = sqrt(r19.zw);
      r12.zw = abs(r12.zw) * float2(2.31929994,2.31929994) + r19.zw;
      r12.zw = r19.xy / r12.zw;
      r13.w = r17.y * -r1.x;
      r13.w = 1.20224583 * r13.w;
      r18.w = exp2(r13.w);
      r12.zw = r18.zw * r12.zw;
      r13.w = 1.20224583 * r17.z;
      r13.w = exp2(r13.w);
      r13.w = r18.y * r13.w;
      r12.z = dot(r12.zw, float2(1,-1));
      r11.w = r12.z + r11.w;
      r11.w = r13.w * r11.w;
      r11.w = 0.00444444455 * r11.w;
      r17.yzw = r11.zzz * float3(-0.00579999993,-0.0135000004,-0.0331000015) + -r11.www;
      r17.yzw = float3(1.44269502,1.44269502,1.44269502) * r17.yzw;
      r17.yzw = exp2(r17.yzw);
      r11.z = max(r9.w, r1.y);
      r11.z = r1.z ? r11.z : r9.w;
      r11.w = cmp(6360.00977 < r11.z);
      if (r11.w != 0) {
        r11.w = cmp(r12.y < 1);
        if (r11.w != 0) {
          r13.xyz = r1.zzz ? r13.xyz : r8.xyz;
          r11.w = dot(r9.xyz, r13.xyz);
          r11.w = r11.w / r9.w;
          r9.x = dot(r9.xyz, cb1[161].xyz);
          r9.x = r9.x / r9.w;
          r9.y = r11.z * r11.z;
          r9.z = r11.z * r11.z + -40449600;
          r9.z = sqrt(r9.z);
          r9.w = r11.z * r11.w;
          r9.y = r9.w * r9.w + -r9.y;
          r9.y = 40449600 + r9.y;
          r11.z = cmp(r9.w < 0);
          r11.w = cmp(0 < r9.y);
          r11.z = r11.w ? r11.z : 0;
          r13.xyzw = r11.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r11.z = r9.z * r10.z;
          r18.y = r11.z * 0.00105685578 + r10.w;
          r9.yz = r13.yz + r9.yz;
          r9.y = sqrt(r9.y);
          r9.y = r9.w * r13.x + r9.y;
          r9.y = r9.y / r9.z;
          r18.x = r9.y * 0.4921875 + r13.w;
          r9.x = max(-0.197500005, r9.x);
          r9.x = 5.34962368 * r9.x;
          r9.y = min(1, abs(r9.x));
          r9.z = max(1, abs(r9.x));
          r9.z = 1 / r9.z;
          r9.y = r9.y * r9.z;
          r9.z = r9.y * r9.y;
          r9.w = r9.z * 0.0208350997 + -0.0851330012;
          r9.w = r9.z * r9.w + 0.180141002;
          r9.w = r9.z * r9.w + -0.330299497;
          r9.z = r9.z * r9.w + 0.999866009;
          r9.w = r9.y * r9.z;
          r11.z = cmp(1 < abs(r9.x));
          r9.w = r9.w * -2 + 1.57079637;
          r9.w = r11.z ? r9.w : 0;
          r9.y = r9.y * r9.z + r9.w;
          r9.x = min(1, r9.x);
          r9.x = cmp(r9.x < -r9.x);
          r9.x = r9.x ? -r9.y : r9.y;
          r9.x = r9.x * 0.909090877 + 0.74000001;
          r9.x = r9.x * 0.484375 + r10.x;
          r9.xy = float2(0.015625,1.015625) + r9.xx;
          r18.zw = float2(0.125,0.125) * r9.xy;
          r9.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
          r13.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
          r13.xyzw = r13.xyzw * r2.wwww;
          r9.xyzw = r9.xyzw * r11.yyyy + r13.xyzw;
          r9.xyzw = -r17.yzwy * r9.xyzw + r15.xyzw;
          r15.xyzw = max(float4(0,0,0,0), r9.xyzw);
          if (r1.z == 0) {
            r9.x = r12.x + r5.x;
            r9.y = cmp(abs(r9.x) < 0.00499999989);
            if (r9.y != 0) {
              r9.x = 0.00499999989 + r9.x;
              r9.x = 100 * r9.x;
              r5.x = -0.00499999989 + -r5.x;
              r9.y = r1.x * r1.x + r1.w;
              r9.z = r17.x * r1.x;
              r9.w = r9.z * r5.x + r9.y;
              r9.w = sqrt(r9.w);
              r10.x = r5.x * r1.y;
              r5.x = r1.y * r5.x + r1.x;
              r5.x = r5.x / r9.w;
              r5.x = max(r10.y, r5.x);
              r11.z = r10.x * r10.x + -r1.w;
              r11.z = 40449600 + r11.z;
              r11.w = cmp(r10.x < 0);
              r12.x = cmp(0 < r11.z);
              r11.w = r11.w ? r12.x : 0;
              r13.xyzw = r11.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r11.z = r13.y + r11.z;
              r11.z = sqrt(r11.z);
              r10.x = r10.x * r13.x + r11.z;
              r11.z = r13.z + r8.w;
              r10.x = r10.x / r11.z;
              r13.x = r10.x * 0.4921875 + r13.w;
              r13.yz = r16.yz;
              r19.xyzw = t2.SampleLevel(s2_s, r13.yxz, 0).xyzw;
              r16.y = r13.x;
              r20.xyzw = t2.SampleLevel(s2_s, r16.xyz, 0).xyzw;
              r20.xyzw = r20.xyzw * r2.wwww;
              r19.xyzw = r19.xyzw * r11.yyyy + r20.xyzw;
              r10.x = r9.w * r9.w;
              r11.z = r9.w * r9.w + -40449600;
              r11.z = sqrt(r11.z);
              r5.x = r9.w * r5.x;
              r9.w = r5.x * r5.x + -r10.x;
              r9.w = 40449600 + r9.w;
              r10.x = cmp(r5.x < 0);
              r11.w = cmp(0 < r9.w);
              r10.x = r10.x ? r11.w : 0;
              r20.xyzw = r10.xxxx ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.x = r11.z * r10.z;
              r18.y = r10.x * 0.00105685578 + r10.w;
              r9.w = r20.y + r9.w;
              r9.w = sqrt(r9.w);
              r5.x = r5.x * r20.x + r9.w;
              r9.w = r20.z + r11.z;
              r5.x = r5.x / r9.w;
              r18.x = r5.x * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
              r21.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
              r21.xyzw = r21.xyzw * r2.wwww;
              r20.xyzw = r20.xyzw * r11.yyyy + r21.xyzw;
              r19.xyzw = -r17.yzwy * r20.xyzw + r19.xyzw;
              r19.xyzw = max(float4(0,0,0,0), r19.xyzw);
              r5.x = r9.z * r10.y + r9.y;
              r5.x = sqrt(r5.x);
              r9.y = r10.y * r1.y;
              r1.x = r1.y * r10.y + r1.x;
              r1.x = r1.x / r5.x;
              r1.x = max(r10.y, r1.x);
              r9.z = r9.y * r9.y + -r1.w;
              r9.z = 40449600 + r9.z;
              r9.w = cmp(r9.y < 0);
              r10.x = cmp(0 < r9.z);
              r9.w = r9.w ? r10.x : 0;
              r20.xyzw = r9.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.z = r20.y + r9.z;
              r9.z = sqrt(r9.z);
              r9.y = r9.y * r20.x + r9.z;
              r9.z = r20.z + r8.w;
              r9.y = r9.y / r9.z;
              r13.w = r9.y * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r13.ywz, 0).xyzw;
              r16.w = r13.w;
              r13.xyzw = t2.SampleLevel(s2_s, r16.xwz, 0).xyzw;
              r13.xyzw = r13.xyzw * r2.wwww;
              r13.xyzw = r20.xyzw * r11.yyyy + r13.xyzw;
              r9.y = r5.x * r5.x;
              r9.z = r5.x * r5.x + -40449600;
              r9.z = sqrt(r9.z);
              r1.x = r5.x * r1.x;
              r5.x = r1.x * r1.x + -r9.y;
              r5.x = 40449600 + r5.x;
              r9.y = cmp(r1.x < 0);
              r9.w = cmp(0 < r5.x);
              r9.y = r9.w ? r9.y : 0;
              r20.xyzw = r9.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.y = r9.z * r10.z;
              r18.y = r9.y * 0.00105685578 + r10.w;
              r5.x = r20.y + r5.x;
              r5.x = sqrt(r5.x);
              r1.x = r1.x * r20.x + r5.x;
              r5.x = r20.z + r9.z;
              r1.x = r1.x / r5.x;
              r18.x = r1.x * 0.4921875 + r20.w;
              r10.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
              r18.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
              r18.xyzw = r18.xyzw * r2.wwww;
              r10.xyzw = r10.xyzw * r11.yyyy + r18.xyzw;
              r10.xyzw = -r17.yzwy * r10.xyzw + r13.xyzw;
              r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
              r10.xyzw = r10.xyzw + -r19.xyzw;
              r15.xyzw = r9.xxxx * r10.xyzw + r19.xyzw;
            }
          } else {
            r1.x = cmp(0 < r12.y);
            if (r1.x != 0) {
              r9.xyzw = float4(1,1,1,1) + -r17.yzwy;
              r1.x = r11.x * r1.y;
              r1.y = r1.x * r1.x + -r1.w;
              r1.y = 40449600 + r1.y;
              r1.w = cmp(r1.x < 0);
              r5.x = cmp(0 < r1.y);
              r1.w = r1.w ? r5.x : 0;
              r10.xyzw = r1.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r1.y = r10.y + r1.y;
              r1.y = sqrt(r1.y);
              r1.x = r1.x * r10.x + r1.y;
              r1.y = r10.z + r8.w;
              r1.x = r1.x / r1.y;
              r10.y = r1.x * 0.4921875 + r10.w;
              r10.xz = r16.yz;
              r13.xyzw = t2.SampleLevel(s2_s, r10.xyz, 0).xyzw;
              r10.xz = r16.xz;
              r10.xyzw = t2.SampleLevel(s2_s, r10.xyz, 0).xyzw;
              r10.xyzw = r10.xyzw * r2.wwww;
              r10.xyzw = r13.xyzw * r11.yyyy + r10.xyzw;
              r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
              r9.xyzw = r9.xyzw * r10.xyzw + -r15.xyzw;
              r15.xyzw = r12.yyyy * r9.xyzw + r15.xyzw;
            }
          }
        } else {
          r9.xyzw = float4(1,1,1,1) + -r17.yzwy;
          r15.xyzw = r9.xyzw * r15.xyzw;
        }
      }
    } else {
      r17.yzw = float3(1,1,1);
    }
    r1.x = saturate(50 * r3.z);
    r1.y = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = r1.y * r1.x;
    r1.x = r15.w * r1.x;
    r1.xyw = r15.xyz * r1.xxx;
    r2.w = max(9.99999975e-005, r15.x);
    r1.xyw = r1.xyw / r2.www;
    r14.yzw = float3(1,0.429629624,0.175226584);
    r1.xyw = r1.xyw * r14.yxx;
    r1.xyw = r1.xyw * r14.xzw;
    r1.xyw = r15.xyz * r7.zzz + r1.xyw;
    r1.xyw = max(float3(0,0,0), r1.xyw);
  } else {
    r17.yzw = float3(1,1,1);
    r1.xyw = float3(0,0,0);
  }
  r9.xy = asint(cb1[182].zz) & int2(2,1);
  if (r9.x == 0) {
    r2.w = cmp(0 < r4.x);
    if (r2.w != 0) {
      r7.xyz = r4.xxx * r8.xyz + r7.xyw;
      r2.w = dot(r7.xyz, r7.xyz);
      r2.w = sqrt(r2.w);
      r7.xyz = r7.xyz / r2.www;
      r3.z = dot(r7.xyz, cb1[161].xyz);
      r2.w = -6360 + r2.w;
      r10.z = 0.0142857144 * r2.w;
      r11.y = sqrt(r10.z);
      r9.xz = float2(0.150000006,0.200000003) + r3.zz;
      r10.xy = float2(12.262105,0.833333313) * r9.xz;
      r2.w = min(1, abs(r10.x));
      r5.x = max(1, abs(r10.x));
      r5.x = 1 / r5.x;
      r2.w = r5.x * r2.w;
      r5.x = r2.w * r2.w;
      r7.w = r5.x * 0.0208350997 + -0.0851330012;
      r7.w = r5.x * r7.w + 0.180141002;
      r7.w = r5.x * r7.w + -0.330299497;
      r5.x = r5.x * r7.w + 0.999866009;
      r7.w = r5.x * r2.w;
      r8.w = cmp(1 < abs(r10.x));
      r7.w = r7.w * -2 + 1.57079637;
      r7.w = r8.w ? r7.w : 0;
      r2.w = r2.w * r5.x + r7.w;
      r5.x = min(1, r10.x);
      r5.x = cmp(r5.x < -r5.x);
      r2.w = r5.x ? -r2.w : r2.w;
      r11.x = 0.666666687 * r2.w;
      r9.xzw = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
      r9.xzw = r1.zzz ? float3(0,0,0) : r9.xzw;
      r10.xyz = t1.SampleLevel(s1_s, r10.yz, 0).xyz;
      r2.w = max(0, r3.z);
      r10.xyz = r2.www * r9.xzw + r10.xyz;
      r10.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r10.xyz;
      r0.xyz = -r0.xyz * r0.www + cb1[161].xyz;
      r0.w = dot(r0.xyz, r0.xyz);
      r0.w = rsqrt(r0.w);
      r0.xyz = r0.xyz * r0.www;
      r0.w = dot(-r8.xyz, r0.xyz);
      r0.w = 1 + -r0.w;
      r2.w = r0.w * r0.w;
      r2.w = r2.w * r2.w;
      r0.w = r2.w * r0.w;
      r0.w = r0.w * 0.980000019 + 0.0199999996;
      r0.x = dot(r0.xyz, r7.xyz);
      r0.x = max(0, r0.x);
      r0.x = log2(r0.x);
      r0.x = 150 * r0.x;
      r0.x = exp2(r0.x);
      r0.x = r0.w * r0.x;
      r0.x = max(0, r0.x);
      r0.xyz = r0.xxx * r9.xzw + r10.xyz;
      r0.xyz = r1.zzz ? r10.xyz : r0.xyz;
      r0.xyz = r17.yzw * r0.xyz;
    } else {
      r0.xyz = float3(0,0,0);
    }
  } else {
    r0.xyz = float3(0,0,0);
  }
  if (r9.y == 0) {
    r0.w = cmp(6430 >= r4.y);
    r4.yz = float2(-6360,0.150000006) + r4.yz;
    r4.yz = float2(0.0142857144,12.262105) * r4.yz;
    r7.y = sqrt(r4.y);
    r1.z = min(1, abs(r4.z));
    r2.w = max(1, abs(r4.z));
    r2.w = 1 / r2.w;
    r1.z = r2.w * r1.z;
    r2.w = r1.z * r1.z;
    r3.z = r2.w * 0.0208350997 + -0.0851330012;
    r3.z = r2.w * r3.z + 0.180141002;
    r3.z = r2.w * r3.z + -0.330299497;
    r2.w = r2.w * r3.z + 0.999866009;
    r3.z = r2.w * r1.z;
    r4.y = cmp(1 < abs(r4.z));
    r3.z = r3.z * -2 + 1.57079637;
    r3.z = r4.y ? r3.z : 0;
    r1.z = r1.z * r2.w + r3.z;
    r2.w = min(1, r4.z);
    r2.w = cmp(r2.w < -r2.w);
    r1.z = r2.w ? -r1.z : r1.z;
    r7.x = 0.666666687 * r1.z;
    r7.xyz = t0.SampleLevel(s0_s, r7.xy, 0).xyz;
    r7.xyz = r0.www ? r7.xyz : float3(1,1,1);
    r0.w = cmp(0 < r4.x);
    r1.z = dot(r8.xyz, cb1[161].xyz);
    r1.z = cmp(r1.z >= cb1[169].x);
    r1.z = r1.z ? 1.000000 : 0;
    r4.xyz = r7.xyz * r1.zzz;
    r4.xyz = cb1[167].xyz * r4.xyz;
    r4.xyz = r0.www ? float3(0,0,0) : r4.xyz;
  } else {
    r4.xyz = float3(0,0,0);
  }
  r0.xyz = r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r1.xyw;
  r0.w = cb1[157].w * r3.w;
  r1.xyz = cb1[163].xyz * r0.www;
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = saturate(r17.y * cb1[158].y + -cb1[158].z);
  r1.y = 1 + -r5.y;
  r1.z = 1 + -r1.x;
  r0.w = r1.y * r1.z + r1.x;
  r1.x = cmp(0 < cb1[182].y);
  if (r1.x != 0) {
    r1.x = cmp(0 != cb1[184].x);
    r1.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r3.zw = r6.xy / r6.ww;
    r3.zw = r3.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.yzw = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r1.yzw;
    r2.x = dot(r1.yzw, r1.yzw);
    r2.y = sqrt(r2.x);
    r2.y = -cb1[181].x + r2.y;
    r2.y = max(0, r2.y);
    r2.y = cb1[182].x * r2.y;
    r2.y = cb1[181].z * r2.y;
    r4.z = sqrt(r2.y);
    r2.y = cb1[181].y * r4.z;
    r2.z = cmp(r2.y < 0.707106769);
    r2.y = dot(r2.yy, r2.yy);
    r2.y = min(1, r2.y);
    r2.y = r2.z ? r2.y : 1;
    r2.x = rsqrt(r2.x);
    r1.yzw = r2.xxx * r1.yzw;
    r2.x = -r1.w * r1.w + 1;
    r2.x = sqrt(r2.x);
    r5.y = r1.w * 0.5 + 0.5;
    r1.yz = r1.yz / r2.xx;
    r1.w = 1 + -abs(r1.y);
    r1.w = sqrt(r1.w);
    r2.x = abs(r1.y) * -0.0187292993 + 0.0742610022;
    r2.x = r2.x * abs(r1.y) + -0.212114394;
    r2.x = r2.x * abs(r1.y) + 1.57072878;
    r2.z = r2.x * r1.w;
    r2.z = r2.z * -2 + 3.14159274;
    r1.y = cmp(r1.y < -r1.y);
    r1.y = r1.y ? r2.z : 0;
    r1.y = r2.x * r1.w + r1.y;
    r1.z = cmp(r1.z < 0);
    r1.w = 6.28318548 + -r1.y;
    r1.y = r1.z ? r1.w : r1.y;
    r5.x = 0.159154937 * r1.y;
    r1.yz = cb1[180].zw * float2(0.5,0.5) + r5.xy;
    r2.xz = float2(1,1) + cb1[180].xy;
    r2.xz = cb1[180].xy / r2.xz;
    r1.yz = r2.xz * r1.yz;
    r4.xy = r1.xx ? r1.yz : r3.zw;
    r1.xyzw = t3.SampleLevel(s3_s, r4.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r2.yyy;
    r1.w = 1 + -r1.w;
    r1.w = -r2.y * r1.w + 1;
    r1.xyz = cb1[135].zzz * r1.xyz;
    o5.xyz = r1.xyz * r0.www + r0.xyz;
    o5.w = r1.w * r0.w;
  } else {
    o5.xyzw = r0.xyzw;
  }
  o0.w = 0;
  o2.x = r4.w;
  o2.zw = r5.zw;
  o3.xy = r3.xy;
  o3.zw = float2(0,0);
  o4.zw = float2(0,0);
  o6.xyzw = r6.xyzw;
  return;
}