// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
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
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  float2 v5 : ATTRIBUTE15,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD4,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyz, cb0[8].xyz);
  r0.x = r0.x * cb0[7].w + -cb0[5].w;
  r0.y = cmp(0 != cb0[4].w);
  r0.z = saturate(r0.x);
  r0.w = r0.z * -2 + 3;
  r0.z = r0.z * r0.z;
  r0.z = r0.w * r0.z;
  r0.y = r0.y ? r0.z : r0.x;
  r1.xyz = float3(3,3,3) * cb0[2].zxy;
  r1.xyz = cb0[1].zxy * float3(6,6,6) + r1.xyz;
  r1.xyz = cb0[5].zxy * float3(3,3,3) + r1.xyz;
  r1.xyz = -cb0[4].zxy * float3(6,6,6) + r1.xyz;
  r2.xyz = float3(4,4,4) * cb0[2].zxy;
  r2.xyz = cb0[1].zxy * float3(-6,-6,-6) + -r2.xyz;
  r2.xyz = -cb0[5].zxy * float3(2,2,2) + r2.xyz;
  r2.xyz = cb0[4].zxy * float3(6,6,6) + r2.xyz;
  r0.z = r0.x * r0.x;
  r2.xyz = r2.xyz * r0.xxx;
  r1.xyz = r1.xyz * r0.zzz + r2.xyz;
  r1.xyz = cb0[2].zxy + r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = cb0[7].zxy * r1.zxy;
  r2.xyz = cb0[7].yzx * r1.xyz + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyz = r2.yzx * r1.xyz;
  r3.xyz = r1.zxy * r2.zxy + -r3.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.w = cb0[2].w + -cb0[1].w;
  r0.w = r0.y * r0.w + cb0[1].w;
  sincos(r0.w, r4.x, r5.x);
  r4.yzw = r4.xxx * r3.xyz;
  r4.yzw = r5.xxx * r2.xyz + -r4.yzw;
  r5.yzw = r4.xxx * r2.xyz;
  r5.xyz = r5.xxx * r3.xyz + r5.yzw;
  r6.xyzw = cb0[6].xyzw + -cb0[3].xyzw;
  r6.xyzw = r0.yyyy * r6.xyzw + cb0[3].xyzw;
  r0.yw = cmp(float2(0,0) < r6.xy);
  r7.xy = cmp(r6.xy < float2(0,0));
  r0.yw = (int2)-r0.yw + (int2)r7.xy;
  r0.yw = (int2)r0.yw;
  r7.xyz = r4.yzw * r0.yyy;
  r8.xyz = r5.xyz * r0.www;
  r9.xyz = cb0[9].xyz * r7.xxx;
  r9.xyz = cb0[8].xyz * r1.yyy + r9.xyz;
  r9.xyz = cb0[10].xyz * r8.xxx + r9.xyz;
  r7.xyw = cb0[9].xyz * r7.yyy;
  r1.yzw = cb0[8].xyz * r1.zzz + r7.xyw;
  r1.yzw = cb0[10].xyz * r8.yyy + r1.yzw;
  r7.xyz = cb0[9].xyz * r7.zzz;
  r7.xyz = cb0[8].xyz * r1.xxx + r7.xyz;
  r7.xyz = cb0[10].xyz * r8.zzz + r7.xyz;
  r8.x = dot(v1.xyz, r9.xyz);
  r8.y = dot(v1.xyz, r1.yzw);
  r8.z = dot(v1.xyz, r7.xyz);
  r9.z = dot(v2.xyz, r9.xyz);
  r9.x = dot(v2.xyz, r1.yzw);
  r9.y = dot(v2.xyz, r7.xyz);
  r1.xyz = r9.xyz * r8.xyz;
  r1.xyz = r9.zxy * r8.yzx + -r1.xyz;
  r1.xyz = v2.www * r1.xyz;
  r7.xyz = r1.xyz * r9.xyz;
  r1.xyz = r1.zxy * r9.yzx + -r7.xyz;
  r1.xyz = v2.www * r1.xyz;
  r7.xyz = cb2[4].xxx * cb2[0].xyz;
  r8.xyz = cb2[4].yyy * cb2[1].xyz;
  r10.xyz = cb2[4].zzz * cb2[2].xyz;
  r11.xyz = r8.xyz * r1.yyy;
  r1.xyw = r1.xxx * r7.xyz + r11.xyz;
  o0.xyz = r1.zzz * r10.xyz + r1.xyw;
  r1.xyz = r9.xxx * r8.xyz;
  r1.xyz = r9.zzz * r7.xyz + r1.xyz;
  o1.xyz = r9.yyy * r10.xyz + r1.xyz;
  o1.w = cb2[4].w * v2.w;
  r0.y = r0.z * r0.x;
  r0.w = 3 * r0.z;
  r1.x = r0.y * 2 + -r0.w;
  r1.x = 1 + r1.x;
  r1.y = -r0.z * 2 + r0.y;
  r1.y = r1.y + r0.x;
  r1.yzw = cb0[2].xyz * r1.yyy;
  r1.xyz = r1.xxx * cb0[1].xyz + r1.yzw;
  r0.x = r0.z * r0.x + -r0.z;
  r1.xyz = r0.xxx * cb0[5].xyz + r1.xyz;
  r0.x = r0.y * -2 + r0.w;
  r0.xyz = r0.xxx * cb0[4].xyz + r1.xyz;
  r0.xyz = r6.zzz * r2.xyz + r0.xyz;
  r0.xyz = r6.www * r3.xyz + r0.xyz;
  r1.xyz = r6.xxx * r4.yzw;
  r2.xyz = r6.yyy * r5.xyz;
  r3.xyz = cb0[10].xyz * r2.xxx;
  r3.xyz = cb0[9].xyz * r1.xxx + r3.xyz;
  r2.xyw = cb0[10].xyz * r2.yyy;
  r4.xyz = cb0[9].xyz * r1.yyy + r2.xyw;
  r1.xyw = cb0[10].xyz * r2.zzz;
  r1.xyz = cb0[9].xyz * r1.zzz + r1.xyw;
  r3.w = r0.x;
  r0.x = dot(v0.xyzw, r3.xyzw);
  r4.w = r0.y;
  r0.y = dot(v0.xyzw, r4.xyzw);
  r1.w = r0.z;
  r0.z = dot(v0.xyzw, r1.xyzw);
  r1.xyz = cb2[1].xyz * r0.yyy;
  r0.xyw = cb2[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb2[2].xyz * r0.zzz + r0.xyw;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  o3.xy = v5.xy * cb3[2].xy + cb3[2].zw;
  o3.zw = v5.xy * cb3[3].xy + cb3[3].zw;
  r2.xyz = -cb1[68].xyz + r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r2.w = sqrt(r0.w);
  r3.xy = float2(9.99999975e-006,100) * cb1[159].xx;
  r3.z = -cb1[158].w + cb1[68].z;
  r3.z = cb1[159].y * r3.z;
  r4.xy = cb1[68].xy;
  r4.xy = r4.xy * r3.xx;
  r4.w = r3.z * r3.x + 6360.00977;
  r3.z = dot(r4.xyw, r4.xyw);
  r5.y = sqrt(r3.z);
  r0.w = rsqrt(r0.w);
  r6.xyz = r2.xyz * r0.www;
  r3.w = dot(r4.xyw, r6.xyz);
  r5.z = r3.w / r5.y;
  r4.z = r5.z * r5.z + -1;
  r5.w = r3.x * r2.w;
  r7.x = r2.w * r3.x + -cb1[159].w;
  r7.x = max(0, r7.x);
  r7.y = 0.100000001 * r7.x;
  r7.y = r7.y / cb1[159].w;
  r7.y = min(1, r7.y);
  r3.y = cmp(r5.w < r3.y);
  if (r3.y != 0) {
    r5.w = cb1[158].x * r7.y;
    r2.w = r2.w * r3.x + cb1[160].x;
    r5.x = max(1, r2.w);
  } else {
    r2.w = r3.z * r4.z + 40449600;
    r2.w = sqrt(r2.w);
    r5.x = -r3.w + -r2.w;
    r5.w = 1;
  }
  r2.w = r3.z * r4.z + 41344900;
  r2.w = sqrt(r2.w);
  r3.x = -r3.w + -r2.w;
  r3.z = cmp(0 < r3.x);
  r8.xyz = r3.xxx * r6.xyz + r4.xyw;
  r9.x = r5.x + -r3.x;
  r9.z = -0.000155520989 * r2.w;
  r8.xyz = r3.zzz ? r8.xyz : r4.xyw;
  r9.y = 6430;
  r3.xzw = r3.zzz ? r9.xyz : r5.xyz;
  r2.w = cmp(r3.z < 6360.01465);
  r4.z = 6360.01465 + -r3.z;
  r9.xyz = -r4.zzz * r6.xyz + r8.xyz;
  r10.x = -r4.z + r3.x;
  r4.z = dot(r9.xyz, r6.xyz);
  r10.z = 0.000157232338 * r4.z;
  r10.y = 6360.01465;
  r3.xzw = r2.www ? r10.xyz : r3.xzw;
  r4.z = cmp(6430 >= r3.z);
  r7.x = cmp(0 < r7.x);
  r4.z = r4.z ? r7.x : 0;
  if (r4.z != 0) {
    r7.xzw = r2.www ? r9.xyz : r8.xyz;
    r2.w = dot(r6.xyz, cb1[161].xyz);
    r4.z = dot(r7.xzw, cb1[161].xyz);
    r4.z = r4.z / r3.z;
    r8.x = 6360 / r3.z;
    r8.x = -r8.x * r8.x + 1;
    r8.x = sqrt(r8.x);
    r8.yz = float2(0.155000001,0.00499999989) + -r8.xx;
    r8.yw = max(r8.yz, r3.ww);
    r9.x = r3.y ? r8.y : r8.w;
    r3.w = -1.44269502 * r6.z;
    r3.w = exp2(r3.w);
    r10.y = saturate(-0.5 + r3.w);
    r3.w = cmp(r10.y < 1);
    r6.w = max(0.150000006, r6.z);
    r8.y = dot(r6.xyw, r6.xyw);
    r8.y = rsqrt(r8.y);
    r11.xyz = r8.yyy * r6.xyw;
    r12.xyz = r3.xxx * r11.xyz + r7.xzw;
    r6.w = dot(r12.xyz, r12.xyz);
    r6.w = sqrt(r6.w);
    r8.y = dot(r12.xyz, r11.xyz);
    r11.w = r8.y / r6.w;
    r9.yzw = r6.xyz;
    r11.xyzw = r3.wwww ? r11.xyzw : r9.yzwx;
    r10.x = r11.w;
    r9.y = 0;
    r10.xy = r3.yy ? r10.xy : r9.xy;
    r3.w = r2.w * r2.w + 1;
    r6.w = 0.0596831031 * r3.w;
    r8.y = -r2.w * 1.60000002 + 1.63999999;
    r8.y = log2(abs(r8.y));
    r8.y = -1.5 * r8.y;
    r8.y = exp2(r8.y);
    r3.w = r8.y * r3.w;
    r12.x = 0.0162772108 * r3.w;
    r3.w = r3.z * r3.z;
    r8.y = r3.z * r3.z + -40449600;
    r8.y = sqrt(r8.y);
    r8.w = r10.x * r3.z;
    r9.y = r8.w * r8.w + -r3.w;
    r9.y = 40449600 + r9.y;
    r9.z = cmp(r8.w < 0);
    r9.w = cmp(0 < r9.y);
    r9.z = r9.w ? r9.z : 0;
    r13.xyzw = r9.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r9.z = asuint(cb1[182].w);
    r9.w = 0.5 / r9.z;
    r10.w = 0.00105685578 * r8.y;
    r9.z = 1 / r9.z;
    r9.z = 1 + -r9.z;
    r14.z = r10.w * r9.z + r9.w;
    r9.y = r13.y + r9.y;
    r9.y = sqrt(r9.y);
    r8.w = r8.w * r13.x + r9.y;
    r9.y = r13.z + r8.y;
    r8.w = r8.w / r9.y;
    r14.w = r8.w * 0.4921875 + r13.w;
    r8.w = max(-0.197500005, r4.z);
    r8.w = 5.34962368 * r8.w;
    r9.y = min(1, abs(r8.w));
    r10.w = max(1, abs(r8.w));
    r10.w = 1 / r10.w;
    r9.y = r10.w * r9.y;
    r10.w = r9.y * r9.y;
    r11.w = r10.w * 0.0208350997 + -0.0851330012;
    r11.w = r10.w * r11.w + 0.180141002;
    r11.w = r10.w * r11.w + -0.330299497;
    r10.w = r10.w * r11.w + 0.999866009;
    r11.w = r10.w * r9.y;
    r13.x = cmp(1 < abs(r8.w));
    r11.w = r11.w * -2 + 1.57079637;
    r11.w = r13.x ? r11.w : 0;
    r9.y = r9.y * r10.w + r11.w;
    r8.w = min(1, r8.w);
    r8.w = cmp(r8.w < -r8.w);
    r8.w = r8.w ? -r9.y : r9.y;
    r8.w = r8.w * 0.909090877 + 0.74000001;
    r8.w = r8.w * 0.484375 + 0.015625;
    r2.w = 1 + r2.w;
    r9.y = 3.5 * r2.w;
    r9.y = floor(r9.y);
    r2.w = r2.w * 3.5 + -r9.y;
    r8.w = r9.y + r8.w;
    r14.y = 0.125 * r8.w;
    r13.xyzw = t2.SampleLevel(s2_s, r14.ywz, 0).xyzw;
    r10.w = 1 + -r2.w;
    r8.w = 1 + r8.w;
    r14.x = 0.125 * r8.w;
    r15.xyzw = t2.SampleLevel(s2_s, r14.xwz, 0).xyzw;
    r15.xyzw = r15.xyzw * r2.wwww;
    r13.xyzw = r13.xyzw * r10.wwww + r15.xyzw;
    r13.xyzw = max(float4(0,0,0,0), r13.xyzw);
    r8.w = cmp(0 < r3.x);
    if (r8.w != 0) {
      r7.xzw = r3.xxx * r6.xyz + r7.xzw;
      r8.w = dot(r7.xzw, r7.xzw);
      r8.w = sqrt(r8.w);
      r11.w = 0.5 / cb1[159].z;
      r11.w = r11.w * r3.z;
      r11.w = sqrt(r11.w);
      r15.x = r3.x / r3.z;
      r10.z = r15.x + r10.x;
      r15.xy = r11.ww * r10.xz;
      r15.zw = cmp(float2(0,0) < r15.xy);
      r16.xy = cmp(r15.xy < float2(0,0));
      r15.zw = (int2)-r15.zw + (int2)r16.xy;
      r15.zw = (int2)r15.zw;
      r16.xyz = r15.xxy * r15.xxy;
      r11.w = cmp(r15.z < r15.w);
      r16.x = 1.44269502 * r16.x;
      r16.x = exp2(r16.x);
      r11.w = r11.w ? r16.x : 0;
      r16.xy = r16.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r16.xy = sqrt(r16.xy);
      r15.xy = abs(r15.xy) * float2(2.31929994,2.31929994) + r16.xy;
      r15.xy = r15.zw / r15.xy;
      r15.z = -r3.x / cb1[159].z;
      r15.w = r3.z + r3.z;
      r16.x = r3.x / r15.w;
      r16.x = r16.x + r10.x;
      r15.z = r16.x * r15.z;
      r15.z = 1.44269502 * r15.z;
      r17.y = exp2(r15.z);
      r17.xz = float2(1,1);
      r15.xy = r17.xy * r15.xy;
      r15.z = cb1[159].z * r3.z;
      r15.z = 6.28310013 * r15.z;
      r15.z = sqrt(r15.z);
      r16.y = 6360 + -r3.z;
      r16.z = r16.y / cb1[159].z;
      r16.z = 1.44269502 * r16.z;
      r16.z = exp2(r16.z);
      r15.z = r16.z * r15.z;
      r15.x = dot(r15.xy, float2(1,-1));
      r11.w = r15.x + r11.w;
      r11.w = r15.z * r11.w;
      r15.xy = float2(0.416666657,7.53972054) * r3.zz;
      r15.xy = sqrt(r15.xy);
      r15.xz = r15.xx * r10.xz;
      r16.zw = cmp(float2(0,0) < r15.xz);
      r17.xy = cmp(r15.xz < float2(0,0));
      r16.zw = (int2)-r16.zw + (int2)r17.xy;
      r16.zw = (int2)r16.zw;
      r18.xyz = r15.xxz * r15.xxz;
      r10.z = cmp(r16.z < r16.w);
      r17.x = 1.44269502 * r18.x;
      r17.x = exp2(r17.x);
      r10.z = r10.z ? r17.x : 0;
      r17.xy = r18.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r17.xy = sqrt(r17.xy);
      r15.xz = abs(r15.xz) * float2(2.31929994,2.31929994) + r17.xy;
      r15.xz = r16.zw / r15.xz;
      r16.x = r16.x * -r3.x;
      r16.x = 1.20224583 * r16.x;
      r17.w = exp2(r16.x);
      r15.xz = r17.zw * r15.xz;
      r16.x = 1.20224583 * r16.y;
      r16.x = exp2(r16.x);
      r15.y = r16.x * r15.y;
      r15.x = dot(r15.xz, float2(1,-1));
      r10.z = r15.x + r10.z;
      r10.z = r15.y * r10.z;
      r10.z = 0.00444444455 * r10.z;
      r15.xyz = r11.www * float3(-0.00579999993,-0.0135000004,-0.0331000015) + -r10.zzz;
      r15.xyz = float3(1.44269502,1.44269502,1.44269502) * r15.xyz;
      r15.xyz = exp2(r15.xyz);
      r10.z = max(r8.w, r3.z);
      r10.z = r3.y ? r10.z : r8.w;
      r11.w = cmp(6360.00977 < r10.z);
      if (r11.w != 0) {
        r11.w = cmp(r10.y < 1);
        if (r11.w != 0) {
          r11.xyz = r3.yyy ? r11.xyz : r6.xyz;
          r11.x = dot(r7.xzw, r11.xyz);
          r11.x = r11.x / r8.w;
          r7.x = dot(r7.xzw, cb1[161].xyz);
          r7.x = r7.x / r8.w;
          r7.z = r10.z * r10.z;
          r7.w = r10.z * r10.z + -40449600;
          r7.w = sqrt(r7.w);
          r8.w = r11.x * r10.z;
          r7.z = r8.w * r8.w + -r7.z;
          r7.z = 40449600 + r7.z;
          r10.z = cmp(r8.w < 0);
          r11.x = cmp(0 < r7.z);
          r10.z = r10.z ? r11.x : 0;
          r11.xyzw = r10.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r10.z = r7.w * r9.z;
          r16.y = r10.z * 0.00105685578 + r9.w;
          r7.zw = r11.yz + r7.zw;
          r7.z = sqrt(r7.z);
          r7.z = r8.w * r11.x + r7.z;
          r7.z = r7.z / r7.w;
          r16.x = r7.z * 0.4921875 + r11.w;
          r7.x = max(-0.197500005, r7.x);
          r7.x = 5.34962368 * r7.x;
          r7.z = min(1, abs(r7.x));
          r7.w = max(1, abs(r7.x));
          r7.w = 1 / r7.w;
          r7.z = r7.z * r7.w;
          r7.w = r7.z * r7.z;
          r8.w = r7.w * 0.0208350997 + -0.0851330012;
          r8.w = r7.w * r8.w + 0.180141002;
          r8.w = r7.w * r8.w + -0.330299497;
          r7.w = r7.w * r8.w + 0.999866009;
          r8.w = r7.z * r7.w;
          r10.z = cmp(1 < abs(r7.x));
          r8.w = r8.w * -2 + 1.57079637;
          r8.w = r10.z ? r8.w : 0;
          r7.z = r7.z * r7.w + r8.w;
          r7.x = min(1, r7.x);
          r7.x = cmp(r7.x < -r7.x);
          r7.x = r7.x ? -r7.z : r7.z;
          r7.x = r7.x * 0.909090877 + 0.74000001;
          r7.x = r7.x * 0.484375 + r9.y;
          r7.xz = float2(0.015625,1.015625) + r7.xx;
          r16.zw = float2(0.125,0.125) * r7.xz;
          r11.xyzw = t2.SampleLevel(s2_s, r16.zxy, 0).xyzw;
          r17.xyzw = t2.SampleLevel(s2_s, r16.wxy, 0).xyzw;
          r17.xyzw = r17.xyzw * r2.wwww;
          r11.xyzw = r11.xyzw * r10.wwww + r17.xyzw;
          r11.xyzw = -r15.xyzx * r11.xyzw + r13.xyzw;
          r13.xyzw = max(float4(0,0,0,0), r11.xyzw);
          if (r3.y == 0) {
            r7.x = r10.x + r8.x;
            r7.z = cmp(abs(r7.x) < 0.00499999989);
            if (r7.z != 0) {
              r7.x = 0.00499999989 + r7.x;
              r7.x = 100 * r7.x;
              r7.z = -0.00499999989 + -r8.x;
              r7.w = r3.x * r3.x + r3.w;
              r8.x = r15.w * r3.x;
              r8.w = r8.x * r7.z + r7.w;
              r8.w = sqrt(r8.w);
              r9.y = r7.z * r3.z;
              r7.z = r3.z * r7.z + r3.x;
              r7.z = r7.z / r8.w;
              r7.z = max(r8.z, r7.z);
              r10.x = r9.y * r9.y + -r3.w;
              r10.x = 40449600 + r10.x;
              r10.z = cmp(r9.y < 0);
              r11.x = cmp(0 < r10.x);
              r10.z = r10.z ? r11.x : 0;
              r11.xyzw = r10.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.x = r11.y + r10.x;
              r10.x = sqrt(r10.x);
              r9.y = r9.y * r11.x + r10.x;
              r10.x = r11.z + r8.y;
              r9.y = r9.y / r10.x;
              r11.x = r9.y * 0.4921875 + r11.w;
              r11.yz = r14.yz;
              r17.xyzw = t2.SampleLevel(s2_s, r11.yxz, 0).xyzw;
              r14.y = r11.x;
              r18.xyzw = t2.SampleLevel(s2_s, r14.xyz, 0).xyzw;
              r18.xyzw = r18.xyzw * r2.wwww;
              r17.xyzw = r17.xyzw * r10.wwww + r18.xyzw;
              r9.y = r8.w * r8.w;
              r10.x = r8.w * r8.w + -40449600;
              r10.x = sqrt(r10.x);
              r7.z = r8.w * r7.z;
              r8.w = r7.z * r7.z + -r9.y;
              r8.w = 40449600 + r8.w;
              r9.y = cmp(r7.z < 0);
              r10.z = cmp(0 < r8.w);
              r9.y = r9.y ? r10.z : 0;
              r18.xyzw = r9.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.y = r10.x * r9.z;
              r16.y = r9.y * 0.00105685578 + r9.w;
              r8.w = r18.y + r8.w;
              r8.w = sqrt(r8.w);
              r7.z = r7.z * r18.x + r8.w;
              r8.w = r18.z + r10.x;
              r7.z = r7.z / r8.w;
              r16.x = r7.z * 0.4921875 + r18.w;
              r18.xyzw = t2.SampleLevel(s2_s, r16.zxy, 0).xyzw;
              r19.xyzw = t2.SampleLevel(s2_s, r16.wxy, 0).xyzw;
              r19.xyzw = r19.xyzw * r2.wwww;
              r18.xyzw = r18.xyzw * r10.wwww + r19.xyzw;
              r17.xyzw = -r15.xyzx * r18.xyzw + r17.xyzw;
              r17.xyzw = max(float4(0,0,0,0), r17.xyzw);
              r7.z = r8.x * r8.z + r7.w;
              r7.z = sqrt(r7.z);
              r7.w = r8.z * r3.z;
              r3.x = r3.z * r8.z + r3.x;
              r3.x = r3.x / r7.z;
              r3.x = max(r8.z, r3.x);
              r8.x = r7.w * r7.w + -r3.w;
              r8.x = 40449600 + r8.x;
              r8.z = cmp(r7.w < 0);
              r8.w = cmp(0 < r8.x);
              r8.z = r8.w ? r8.z : 0;
              r18.xyzw = r8.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r8.x = r18.y + r8.x;
              r8.x = sqrt(r8.x);
              r7.w = r7.w * r18.x + r8.x;
              r8.x = r18.z + r8.y;
              r7.w = r7.w / r8.x;
              r11.w = r7.w * 0.4921875 + r18.w;
              r18.xyzw = t2.SampleLevel(s2_s, r11.ywz, 0).xyzw;
              r14.w = r11.w;
              r11.xyzw = t2.SampleLevel(s2_s, r14.xwz, 0).xyzw;
              r11.xyzw = r11.xyzw * r2.wwww;
              r11.xyzw = r18.xyzw * r10.wwww + r11.xyzw;
              r7.w = r7.z * r7.z;
              r8.x = r7.z * r7.z + -40449600;
              r8.x = sqrt(r8.x);
              r3.x = r7.z * r3.x;
              r7.z = r3.x * r3.x + -r7.w;
              r7.z = 40449600 + r7.z;
              r7.w = cmp(r3.x < 0);
              r8.z = cmp(0 < r7.z);
              r7.w = r7.w ? r8.z : 0;
              r18.xyzw = r7.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r7.w = r8.x * r9.z;
              r16.y = r7.w * 0.00105685578 + r9.w;
              r7.z = r18.y + r7.z;
              r7.z = sqrt(r7.z);
              r3.x = r3.x * r18.x + r7.z;
              r7.z = r18.z + r8.x;
              r3.x = r3.x / r7.z;
              r16.x = r3.x * 0.4921875 + r18.w;
              r18.xyzw = t2.SampleLevel(s2_s, r16.zxy, 0).xyzw;
              r16.xyzw = t2.SampleLevel(s2_s, r16.wxy, 0).xyzw;
              r16.xyzw = r16.xyzw * r2.wwww;
              r16.xyzw = r18.xyzw * r10.wwww + r16.xyzw;
              r11.xyzw = -r15.xyzx * r16.xyzw + r11.xyzw;
              r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
              r11.xyzw = r11.xyzw + -r17.xyzw;
              r13.xyzw = r7.xxxx * r11.xyzw + r17.xyzw;
            }
          } else {
            r3.x = cmp(0 < r10.y);
            if (r3.x != 0) {
              r11.xyzw = float4(1,1,1,1) + -r15.xyzx;
              r3.x = r9.x * r3.z;
              r3.z = r3.x * r3.x + -r3.w;
              r3.z = 40449600 + r3.z;
              r3.w = cmp(r3.x < 0);
              r7.x = cmp(0 < r3.z);
              r3.w = r3.w ? r7.x : 0;
              r9.xyzw = r3.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r3.z = r9.y + r3.z;
              r3.z = sqrt(r3.z);
              r3.x = r3.x * r9.x + r3.z;
              r3.z = r9.z + r8.y;
              r3.x = r3.x / r3.z;
              r8.y = r3.x * 0.4921875 + r9.w;
              r8.xz = r14.yz;
              r9.xyzw = t2.SampleLevel(s2_s, r8.xyz, 0).xyzw;
              r8.xz = r14.xz;
              r8.xyzw = t2.SampleLevel(s2_s, r8.xyz, 0).xyzw;
              r8.xyzw = r8.xyzw * r2.wwww;
              r8.xyzw = r9.xyzw * r10.wwww + r8.xyzw;
              r8.xyzw = max(float4(0,0,0,0), r8.xyzw);
              r8.xyzw = r11.xyzw * r8.xyzw + -r13.xyzw;
              r13.xyzw = r10.yyyy * r8.xyzw + r13.xyzw;
            }
          }
        } else {
          r8.xyzw = float4(1,1,1,1) + -r15.xyzx;
          r13.xyzw = r8.xyzw * r13.xyzw;
        }
      }
    } else {
      r15.xyz = float3(1,1,1);
    }
    r2.w = saturate(50 * r4.z);
    r3.x = r2.w * -2 + 3;
    r2.w = r2.w * r2.w;
    r2.w = r3.x * r2.w;
    r2.w = r13.w * r2.w;
    r3.xzw = r13.xyz * r2.www;
    r2.w = max(9.99999975e-005, r13.x);
    r3.xzw = r3.xzw / r2.www;
    r12.yzw = float3(1,0.429629624,0.175226584);
    r3.xzw = r3.xzw * r12.yxx;
    r3.xzw = r3.xzw * r12.xzw;
    r3.xzw = r13.xyz * r6.www + r3.xzw;
    r3.xzw = max(float3(0,0,0), r3.xzw);
  } else {
    r15.xyz = float3(1,1,1);
    r3.xzw = float3(0,0,0);
  }
  r7.xz = asint(cb1[182].zz) & int2(2,1);
  if (r7.x == 0) {
    r2.w = cmp(0 < r5.x);
    if (r2.w != 0) {
      r4.xyz = r5.xxx * r6.xyz + r4.xyw;
      r2.w = dot(r4.xyz, r4.xyz);
      r2.w = sqrt(r2.w);
      r4.xyz = r4.xyz / r2.www;
      r4.w = dot(r4.xyz, cb1[161].xyz);
      r2.w = -6360 + r2.w;
      r8.z = 0.0142857144 * r2.w;
      r9.y = sqrt(r8.z);
      r7.xw = float2(0.150000006,0.200000003) + r4.ww;
      r8.xy = float2(12.262105,0.833333313) * r7.xw;
      r2.w = min(1, abs(r8.x));
      r6.w = max(1, abs(r8.x));
      r6.w = 1 / r6.w;
      r2.w = r6.w * r2.w;
      r6.w = r2.w * r2.w;
      r7.x = r6.w * 0.0208350997 + -0.0851330012;
      r7.x = r6.w * r7.x + 0.180141002;
      r7.x = r6.w * r7.x + -0.330299497;
      r6.w = r6.w * r7.x + 0.999866009;
      r7.x = r6.w * r2.w;
      r7.w = cmp(1 < abs(r8.x));
      r7.x = r7.x * -2 + 1.57079637;
      r7.x = r7.w ? r7.x : 0;
      r2.w = r2.w * r6.w + r7.x;
      r6.w = min(1, r8.x);
      r6.w = cmp(r6.w < -r6.w);
      r2.w = r6.w ? -r2.w : r2.w;
      r9.x = 0.666666687 * r2.w;
      r9.xyz = t0.SampleLevel(s0_s, r9.xy, 0).xyz;
      r9.xyz = r3.yyy ? float3(0,0,0) : r9.xyz;
      r8.xyz = t1.SampleLevel(s1_s, r8.yz, 0).xyz;
      r2.w = max(0, r4.w);
      r8.xyz = r2.www * r9.xyz + r8.xyz;
      r8.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r8.xyz;
      r2.xyz = -r2.xyz * r0.www + cb1[161].xyz;
      r0.w = dot(r2.xyz, r2.xyz);
      r0.w = rsqrt(r0.w);
      r2.xyz = r2.xyz * r0.www;
      r0.w = dot(-r6.xyz, r2.xyz);
      r0.w = 1 + -r0.w;
      r2.w = r0.w * r0.w;
      r2.w = r2.w * r2.w;
      r0.w = r2.w * r0.w;
      r0.w = r0.w * 0.980000019 + 0.0199999996;
      r2.x = dot(r2.xyz, r4.xyz);
      r2.x = max(0, r2.x);
      r2.x = log2(r2.x);
      r2.x = 150 * r2.x;
      r2.x = exp2(r2.x);
      r0.w = r2.x * r0.w;
      r0.w = max(0, r0.w);
      r2.xyz = r0.www * r9.xyz + r8.xyz;
      r2.xyz = r3.yyy ? r8.xyz : r2.xyz;
      r2.xyz = r15.xyz * r2.xyz;
    } else {
      r2.xyz = float3(0,0,0);
    }
  } else {
    r2.xyz = float3(0,0,0);
  }
  if (r7.z == 0) {
    r0.w = cmp(6430 >= r5.y);
    r4.xy = float2(-6360,0.150000006) + r5.yz;
    r4.xy = float2(0.0142857144,12.262105) * r4.xy;
    r8.y = sqrt(r4.x);
    r2.w = min(1, abs(r4.y));
    r3.y = max(1, abs(r4.y));
    r3.y = 1 / r3.y;
    r2.w = r3.y * r2.w;
    r3.y = r2.w * r2.w;
    r4.x = r3.y * 0.0208350997 + -0.0851330012;
    r4.x = r3.y * r4.x + 0.180141002;
    r4.x = r3.y * r4.x + -0.330299497;
    r3.y = r3.y * r4.x + 0.999866009;
    r4.x = r3.y * r2.w;
    r4.z = cmp(1 < abs(r4.y));
    r4.x = r4.x * -2 + 1.57079637;
    r4.x = r4.z ? r4.x : 0;
    r2.w = r2.w * r3.y + r4.x;
    r3.y = min(1, r4.y);
    r3.y = cmp(r3.y < -r3.y);
    r2.w = r3.y ? -r2.w : r2.w;
    r8.x = 0.666666687 * r2.w;
    r4.xyz = t0.SampleLevel(s0_s, r8.xy, 0).xyz;
    r4.xyz = r0.www ? r4.xyz : float3(1,1,1);
    r0.w = cmp(0 < r5.x);
    r2.w = dot(r6.xyz, cb1[161].xyz);
    r2.w = cmp(r2.w >= cb1[169].x);
    r2.w = r2.w ? 1.000000 : 0;
    r4.xyz = r4.xyz * r2.www;
    r4.xyz = cb1[167].xyz * r4.xyz;
    r4.xyz = r0.www ? float3(0,0,0) : r4.xyz;
  } else {
    r4.xyz = float3(0,0,0);
  }
  r2.xyz = r4.xyz + r2.xyz;
  r2.xyz = r2.xyz + r3.xzw;
  r0.w = cb1[157].w * r5.w;
  r3.xyz = cb1[163].xyz * r0.www;
  r2.xyz = r3.xyz * r2.xyz;
  r0.w = saturate(r15.x * cb1[158].y + -cb1[158].z);
  r3.x = 1 + -r7.y;
  r3.y = 1 + -r0.w;
  r2.w = r3.x * r3.y + r0.w;
  r0.w = cmp(0 < cb1[182].y);
  if (r0.w != 0) {
    r0.w = cmp(0 != cb1[184].x);
    r3.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r4.xy = r1.xy / r1.ww;
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.xyz = r0.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r3.xyz;
    r3.x = dot(r0.xyz, r0.xyz);
    r3.y = sqrt(r3.x);
    r3.y = -cb1[181].x + r3.y;
    r3.y = max(0, r3.y);
    r3.y = cb1[182].x * r3.y;
    r3.y = cb1[181].z * r3.y;
    r5.z = sqrt(r3.y);
    r3.y = cb1[181].y * r5.z;
    r3.z = cmp(r3.y < 0.707106769);
    r3.y = dot(r3.yy, r3.yy);
    r3.y = min(1, r3.y);
    r3.y = r3.z ? r3.y : 1;
    r3.x = rsqrt(r3.x);
    r0.xyz = r3.xxx * r0.xyz;
    r3.x = -r0.z * r0.z + 1;
    r3.x = sqrt(r3.x);
    r6.y = r0.z * 0.5 + 0.5;
    r0.xy = r0.xy / r3.xx;
    r0.z = 1 + -abs(r0.x);
    r0.z = sqrt(r0.z);
    r3.x = abs(r0.x) * -0.0187292993 + 0.0742610022;
    r3.x = r3.x * abs(r0.x) + -0.212114394;
    r3.x = r3.x * abs(r0.x) + 1.57072878;
    r3.z = r3.x * r0.z;
    r3.z = r3.z * -2 + 3.14159274;
    r0.x = cmp(r0.x < -r0.x);
    r0.x = r0.x ? r3.z : 0;
    r0.x = r3.x * r0.z + r0.x;
    r0.y = cmp(r0.y < 0);
    r0.z = 6.28318548 + -r0.x;
    r0.x = r0.y ? r0.z : r0.x;
    r6.x = 0.159154937 * r0.x;
    r0.xy = cb1[180].zw * float2(0.5,0.5) + r6.xy;
    r3.xz = float2(1,1) + cb1[180].xy;
    r3.xz = cb1[180].xy / r3.xz;
    r0.xy = r3.xz * r0.xy;
    r5.xy = r0.ww ? r0.xy : r4.xy;
    r0.xyzw = t3.SampleLevel(s3_s, r5.xyz, 0).xyzw;
    r0.xyz = r0.xyz * r3.yyy;
    r0.w = 1 + -r0.w;
    r0.w = -r3.y * r0.w + 1;
    r0.xyz = cb1[135].zzz * r0.xyz;
    o4.xyz = r0.xyz * r2.www + r2.xyz;
    o4.w = r2.w * r0.w;
  } else {
    o4.xyzw = r2.xyzw;
  }
  o0.w = 0;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  o5.xyzw = r1.xyzw;
  return;
}