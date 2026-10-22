// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

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
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[185];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float4 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float4 v4 : ATTRIBUTE5,
  float2 v5 : ATTRIBUTE4,
  uint v6 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD1,
  out float4 o3 : TEXCOORD2,
  out float4 o4 : TEXCOORD3,
  out float3 o5 : PARTICLE_LIGHTING_OFFSET0,
  out float4 o6 : TEXCOORD7,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb2[1].xyz * v0.yyy;
  r0.xyz = v0.xxx * cb2[0].xyz + r0.xyz;
  r0.xyz = v0.zzz * cb2[2].xyz + r0.xyz;
  r0.xyz = cb2[3].xyz + r0.xyz;
  r1.xyz = cb1[64].xyz + -cb1[62].xyz;
  r1.xyz = cb3[6].www * r1.xyz + cb1[62].xyz;
  r2.xyz = cb1[63].xyz + -cb1[61].xyz;
  r2.xyz = cb3[6].www * r2.xyz + cb1[61].xyz;
  r3.xyz = cb3[0].xyz + -r1.xyz;
  r1.xyz = cb3[0].www * r3.xyz + r1.xyz;
  r3.xyz = cb3[1].xyz + r2.xyz;
  r2.xyz = cb3[1].www * r3.xyz + -r2.xyz;
  r3.xyz = cb1[67].zxy + -r0.zxy;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = max(9.99999994e-009, r0.w);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r1.w = cmp(0 < cb3[6].x);
  if (r1.w != 0) {
    r0.w = saturate(r0.w * cb3[6].y + -cb3[6].z);
    r4.xyz = float3(0,1,0) * r3.xyz;
    r4.xyz = r3.zxy * float3(1,0,0) + -r4.xyz;
    r1.w = dot(r4.xy, r4.xy);
    r1.w = max(9.99999994e-009, r1.w);
    r1.w = rsqrt(r1.w);
    r5.xyz = r4.xyz * r1.www;
    r6.xyz = r5.yzx * r3.xyz;
    r5.xyz = r3.zxy * r5.zxy + -r6.xyz;
    r4.xyz = r4.xyz * r1.www + -r1.xyz;
    r4.xyz = r0.www * r4.xyz + r1.xyz;
    r1.w = dot(r4.xyz, r4.xyz);
    r1.w = rsqrt(r1.w);
    r4.xyz = r4.xyz * r1.www;
    r5.xyz = r5.xyz + -r2.xyz;
    r5.xyz = r0.www * r5.xyz + r2.xyz;
    r0.w = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.w);
    r5.xyz = r5.xyz * r0.www;
  } else {
    r6.xyz = cb2[1].xyz * v1.yyy;
    r6.xyz = v1.xxx * cb2[0].xyz + r6.xyz;
    r6.xyz = v1.zzz * cb2[2].xyz + r6.xyz;
    r6.xyz = cb2[3].xyz + r6.xyz;
    r6.xyz = -r6.xyz + r0.xyz;
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r6.xyz = r6.xyz * r0.www;
    r7.xyz = r6.yzx * r3.xyz;
    r7.xyz = r3.zxy * r6.zxy + -r7.xyz;
    r0.w = dot(r7.xyz, r7.xyz);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r7.xyz = r7.xyz * r0.www;
    r8.xyz = cb3[0].zxy * r3.zxy;
    r8.xyz = cb3[0].yzx * r3.xyz + -r8.xyz;
    r0.w = dot(r8.xyz, r8.xyz);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r8.xyz = r8.xyz * r0.www;
    r9.xyz = cmp(float3(0,0,0) < cb3[2].yzw);
    r10.xyz = float3(0,1,0) * r3.xyz;
    r10.xyz = r3.zxy * float3(1,0,0) + -r10.xyz;
    r0.w = dot(r10.xy, r10.xy);
    r0.w = max(9.99999994e-009, r0.w);
    r0.w = rsqrt(r0.w);
    r10.xyz = r10.xyz * r0.www;
    r11.xyz = r10.yzx * r3.xyz;
    r3.xyz = r3.zxy * r10.zxy + -r11.xyz;
    r1.xyz = r9.zzz ? r10.xyz : r1.xyz;
    r2.xyz = r9.zzz ? r3.xyz : r2.xyz;
    r1.xyz = r9.yyy ? cb3[0].xyz : r1.xyz;
    r2.xyz = r9.yyy ? -r8.xyz : r2.xyz;
    r4.xyz = r9.xxx ? r7.xyz : r1.xyz;
    r5.xyz = r9.xxx ? -r6.xyz : r2.xyz;
  }
  r0.w = v2.z * cb3[8].x + cb3[8].y;
  sincos(r0.w, r1.x, r2.x);
  r1.yzw = r2.xxx * r4.xyz;
  r3.xyz = r1.xxx * r5.xyz + r1.yzw;
  r1.xyz = r1.xxx * r4.zxy;
  r1.xyz = r2.xxx * r5.zxy + -r1.xyz;
  r2.xy = cmp(float2(0,0) < v2.xy);
  r2.zw = cmp(v2.xy < float2(0,0));
  r2.xy = (int2)-r2.xy + (int2)r2.zw;
  r2.xy = (int2)r2.xy;
  if (cb0[1].x != 0) {
    r0.w = (uint)v6.x;
    r1.w = asuint(cb0[1].x);
    r0.w = r0.w / r1.w;
    r2.z = cmp(r0.w >= -r0.w);
    r0.w = frac(r0.w);
    r0.w = r2.z ? r0.w : -r0.w;
    r0.w = r0.w * r1.w;
    r0.w = (uint)r0.w;
    r1.w = cb3[5].x * cb3[5].y;
    r2.z = v2.w / r1.w;
    r2.w = cmp(r2.z >= -r2.z);
    r2.z = frac(abs(r2.z));
    r2.z = r2.w ? r2.z : -r2.z;
    r1.w = r2.z * r1.w;
    r1.w = (uint)r1.w;
    r2.z = r2.x * r2.y;
    r2.z = cmp(r2.z < 0);
    r2.w = asint(cb0[1].x) + -1;
    r2.w = (int)-r0.w + (int)r2.w;
    r0.w = r2.z ? r2.w : r0.w;
    r0.w = mad((int)r1.w, asint(cb0[1].x), (int)r0.w);
    r2.zw = t4.Load(r0.w).xy;
    r4.xy = cmp(r2.xy < float2(0,0));
    r4.zw = float2(1,1) + -r2.zw;
    r4.xy = r4.xy ? r4.zw : r2.zw;
  } else {
    r2.xy = cmp(r2.xy < float2(0,0));
    r4.zw = float2(1,1) + -v5.xy;
    r2.zw = r2.xy ? r4.zw : v5.xy;
    r4.xy = v5.xy;
  }
  r5.xyz = cb1[70].xyz + r0.xyz;
  r2.xy = cb3[9].xy + r4.xy;
  r2.xy = abs(v2.xy) * r2.xy;
  r4.xyz = r2.xxx * r3.xyz + r5.xyz;
  r4.xyz = r2.yyy * r1.yzx + r4.xyz;
  r3.w = frac(v2.w);
  r0.w = v2.w + -r3.w;
  r1.w = r0.w / cb3[5].x;
  r2.x = cmp(r1.w >= -r1.w);
  r1.w = frac(abs(r1.w));
  r1.w = r2.x ? r1.w : -r1.w;
  r2.x = cb3[5].x * r1.w;
  r0.w = cb3[5].z * r0.w;
  r2.y = floor(r0.w);
  r2.xy = r2.xy + r2.zw;
  o4.xy = cb3[5].zw * r2.xy;
  r2.xyz = r3.zxy * r1.zxy;
  r2.xyz = r3.yzx * r1.xyz + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r5.xy = cmp(cb3[8].zz < float2(0.5,1.5));
  r6.xyz = -cb3[3].xyz + r0.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r6.xyz * r0.www;
  r0.w = dot(cb3[4].xyz, r6.xyz);
  r6.xyz = r0.www * cb3[4].xyz + cb3[3].xyz;
  r0.xyz = -r6.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.yyy ? r7.xyz : r0.xyz;
  r0.xyz = r5.xxx ? r2.xyz : r0.xyz;
  r0.w = 10 + v1.w;
  r0.w = r0.w * r0.w;
  r2.xyz = float3(1361.4563,2333.57788,3623.98291) * r0.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 0.5 * cb1[150].w;
  o5.xyz = r0.www * r2.xyz;
  r2.xyzw = cb1[1].xyzw * r4.yyyy;
  r2.xyzw = r4.xxxx * cb1[0].xyzw + r2.xyzw;
  r2.xyzw = r4.zzzz * cb1[2].xyzw + r2.xyzw;
  r2.xyzw = cb1[3].xyzw + r2.xyzw;
  r5.xyz = r1.xyz * r0.yzx;
  r1.xyz = r1.zxy * r0.zxy + -r5.xyz;
  r0.w = dot(r1.xyz, r3.xyz);
  r1.x = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.x + (int)r0.w;
  o1.w = (int)r0.w;
  r1.xyz = -cb1[68].xyz + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r0.w);
  r5.xy = float2(9.99999975e-006,100) * cb1[159].xx;
  r4.w = -cb1[158].w + cb1[68].z;
  r4.w = cb1[159].y * r4.w;
  r5.zw = cb1[68].xy;
  r6.xy = r5.zw * r5.xx;
  r6.w = r4.w * r5.x + 6360.00977;
  r4.w = dot(r6.xyw, r6.xyw);
  r7.y = sqrt(r4.w);
  r0.w = rsqrt(r0.w);
  r8.xyz = r1.xyz * r0.www;
  r5.z = dot(r6.xyw, r8.xyz);
  r7.z = r5.z / r7.y;
  r5.w = r7.z * r7.z + -1;
  r6.z = r5.x * r1.w;
  r7.w = r1.w * r5.x + -cb1[159].w;
  r7.w = max(0, r7.w);
  r9.x = 0.100000001 * r7.w;
  r9.x = r9.x / cb1[159].w;
  r9.x = min(1, r9.x);
  r5.y = cmp(r6.z < r5.y);
  if (r5.y != 0) {
    r6.z = cb1[158].x * r9.x;
    r1.w = r1.w * r5.x + cb1[160].x;
    r7.x = max(1, r1.w);
  } else {
    r1.w = r4.w * r5.w + 40449600;
    r1.w = sqrt(r1.w);
    r7.x = -r5.z + -r1.w;
    r6.z = 1;
  }
  r1.w = r4.w * r5.w + 41344900;
  r1.w = sqrt(r1.w);
  r4.w = -r5.z + -r1.w;
  r5.x = cmp(0 < r4.w);
  r9.yzw = r4.www * r8.xyz + r6.xyw;
  r10.x = r7.x + -r4.w;
  r10.z = -0.000155520989 * r1.w;
  r9.yzw = r5.xxx ? r9.yzw : r6.xyw;
  r10.y = 6430;
  r5.xzw = r5.xxx ? r10.xyz : r7.xyz;
  r1.w = cmp(r5.z < 6360.01465);
  r4.w = 6360.01465 + -r5.z;
  r10.xyz = -r4.www * r8.xyz + r9.yzw;
  r11.x = r5.x + -r4.w;
  r4.w = dot(r10.xyz, r8.xyz);
  r11.z = 0.000157232338 * r4.w;
  r11.y = 6360.01465;
  r5.xzw = r1.www ? r11.xyz : r5.xzw;
  r4.w = cmp(6430 >= r5.z);
  r7.w = cmp(0 < r7.w);
  r4.w = r4.w ? r7.w : 0;
  if (r4.w != 0) {
    r9.yzw = r1.www ? r10.xyz : r9.yzw;
    r1.w = dot(r8.xyz, cb1[161].xyz);
    r4.w = dot(r9.yzw, cb1[161].xyz);
    r4.w = r4.w / r5.z;
    r7.w = 6360 / r5.z;
    r7.w = -r7.w * r7.w + 1;
    r7.w = sqrt(r7.w);
    r10.xy = float2(0.155000001,0.00499999989) + -r7.ww;
    r10.xz = max(r10.xy, r5.ww);
    r11.x = r5.y ? r10.x : r10.z;
    r5.w = -1.44269502 * r8.z;
    r5.w = exp2(r5.w);
    r12.y = saturate(-0.5 + r5.w);
    r5.w = cmp(r12.y < 1);
    r8.w = max(0.150000006, r8.z);
    r10.x = dot(r8.xyw, r8.xyw);
    r10.x = rsqrt(r10.x);
    r13.xyz = r10.xxx * r8.xyw;
    r10.xzw = r5.xxx * r13.xyz + r9.yzw;
    r8.w = dot(r10.xzw, r10.xzw);
    r8.w = sqrt(r8.w);
    r10.x = dot(r10.xzw, r13.xyz);
    r13.w = r10.x / r8.w;
    r11.yzw = r8.xyz;
    r13.xyzw = r5.wwww ? r13.xyzw : r11.yzwx;
    r12.x = r13.w;
    r11.y = 0;
    r12.xy = r5.yy ? r12.xy : r11.xy;
    r5.w = r1.w * r1.w + 1;
    r8.w = 0.0596831031 * r5.w;
    r10.x = -r1.w * 1.60000002 + 1.63999999;
    r10.x = log2(abs(r10.x));
    r10.x = -1.5 * r10.x;
    r10.x = exp2(r10.x);
    r5.w = r10.x * r5.w;
    r14.x = 0.0162772108 * r5.w;
    r5.w = r5.z * r5.z;
    r10.x = r5.z * r5.z + -40449600;
    r10.x = sqrt(r10.x);
    r10.z = r12.x * r5.z;
    r10.w = r10.z * r10.z + -r5.w;
    r10.w = 40449600 + r10.w;
    r11.y = cmp(r10.z < 0);
    r11.z = cmp(0 < r10.w);
    r11.y = r11.z ? r11.y : 0;
    r15.xyzw = r11.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r11.y = asuint(cb1[182].w);
    r11.z = 0.5 / r11.y;
    r11.w = 0.00105685578 * r10.x;
    r11.y = 1 / r11.y;
    r11.y = 1 + -r11.y;
    r16.z = r11.w * r11.y + r11.z;
    r10.w = r15.y + r10.w;
    r10.w = sqrt(r10.w);
    r10.z = r10.z * r15.x + r10.w;
    r10.w = r15.z + r10.x;
    r10.z = r10.z / r10.w;
    r16.w = r10.z * 0.4921875 + r15.w;
    r10.z = max(-0.197500005, r4.w);
    r10.z = 5.34962368 * r10.z;
    r10.w = min(1, abs(r10.z));
    r11.w = max(1, abs(r10.z));
    r11.w = 1 / r11.w;
    r10.w = r11.w * r10.w;
    r11.w = r10.w * r10.w;
    r12.w = r11.w * 0.0208350997 + -0.0851330012;
    r12.w = r11.w * r12.w + 0.180141002;
    r12.w = r11.w * r12.w + -0.330299497;
    r11.w = r11.w * r12.w + 0.999866009;
    r12.w = r11.w * r10.w;
    r13.w = cmp(1 < abs(r10.z));
    r12.w = r12.w * -2 + 1.57079637;
    r12.w = r13.w ? r12.w : 0;
    r10.w = r10.w * r11.w + r12.w;
    r10.z = min(1, r10.z);
    r10.z = cmp(r10.z < -r10.z);
    r10.z = r10.z ? -r10.w : r10.w;
    r10.z = r10.z * 0.909090877 + 0.74000001;
    r10.z = r10.z * 0.484375 + 0.015625;
    r1.w = 1 + r1.w;
    r10.w = 3.5 * r1.w;
    r10.w = floor(r10.w);
    r1.w = r1.w * 3.5 + -r10.w;
    r10.z = r10.w + r10.z;
    r16.y = 0.125 * r10.z;
    r15.xyzw = t2.SampleLevel(s2_s, r16.ywz, 0).xyzw;
    r11.w = 1 + -r1.w;
    r10.z = 1 + r10.z;
    r16.x = 0.125 * r10.z;
    r17.xyzw = t2.SampleLevel(s2_s, r16.xwz, 0).xyzw;
    r17.xyzw = r17.xyzw * r1.wwww;
    r15.xyzw = r15.xyzw * r11.wwww + r17.xyzw;
    r15.xyzw = max(float4(0,0,0,0), r15.xyzw);
    r10.z = cmp(0 < r5.x);
    if (r10.z != 0) {
      r9.yzw = r5.xxx * r8.xyz + r9.yzw;
      r10.z = dot(r9.yzw, r9.yzw);
      r10.z = sqrt(r10.z);
      r12.w = 0.5 / cb1[159].z;
      r12.w = r12.w * r5.z;
      r12.w = sqrt(r12.w);
      r13.w = r5.x / r5.z;
      r12.z = r13.w + r12.x;
      r17.xy = r12.ww * r12.xz;
      r17.zw = cmp(float2(0,0) < r17.xy);
      r18.xy = cmp(r17.xy < float2(0,0));
      r17.zw = (int2)-r17.zw + (int2)r18.xy;
      r17.zw = (int2)r17.zw;
      r18.xyz = r17.xxy * r17.xxy;
      r12.w = cmp(r17.z < r17.w);
      r13.w = 1.44269502 * r18.x;
      r13.w = exp2(r13.w);
      r12.w = r12.w ? r13.w : 0;
      r18.xy = r18.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r18.xy = sqrt(r18.xy);
      r17.xy = abs(r17.xy) * float2(2.31929994,2.31929994) + r18.xy;
      r17.xy = r17.zw / r17.xy;
      r13.w = -r5.x / cb1[159].z;
      r17.z = r5.z + r5.z;
      r17.w = r5.x / r17.z;
      r17.w = r17.w + r12.x;
      r13.w = r17.w * r13.w;
      r13.w = 1.44269502 * r13.w;
      r18.y = exp2(r13.w);
      r18.xz = float2(1,1);
      r17.xy = r18.xy * r17.xy;
      r13.w = cb1[159].z * r5.z;
      r13.w = 6.28310013 * r13.w;
      r13.w = sqrt(r13.w);
      r18.x = 6360 + -r5.z;
      r18.y = r18.x / cb1[159].z;
      r18.y = 1.44269502 * r18.y;
      r18.y = exp2(r18.y);
      r13.w = r18.y * r13.w;
      r17.x = dot(r17.xy, float2(1,-1));
      r12.w = r17.x + r12.w;
      r12.w = r13.w * r12.w;
      r17.xy = float2(0.416666657,7.53972054) * r5.zz;
      r17.xy = sqrt(r17.xy);
      r19.xy = r17.xx * r12.xz;
      r19.zw = cmp(float2(0,0) < r19.xy);
      r20.xy = cmp(r19.xy < float2(0,0));
      r19.zw = (int2)-r19.zw + (int2)r20.xy;
      r19.zw = (int2)r19.zw;
      r20.xyz = r19.xxy * r19.xxy;
      r12.z = cmp(r19.z < r19.w);
      r13.w = 1.44269502 * r20.x;
      r13.w = exp2(r13.w);
      r12.z = r12.z ? r13.w : 0;
      r20.xy = r20.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r20.xy = sqrt(r20.xy);
      r19.xy = abs(r19.xy) * float2(2.31929994,2.31929994) + r20.xy;
      r19.xy = r19.zw / r19.xy;
      r13.w = r17.w * -r5.x;
      r13.w = 1.20224583 * r13.w;
      r18.w = exp2(r13.w);
      r17.xw = r19.xy * r18.zw;
      r13.w = 1.20224583 * r18.x;
      r13.w = exp2(r13.w);
      r13.w = r17.y * r13.w;
      r17.x = dot(r17.xw, float2(1,-1));
      r12.z = r17.x + r12.z;
      r12.z = r13.w * r12.z;
      r12.z = 0.00444444455 * r12.z;
      r17.xyw = r12.www * float3(-0.00579999993,-0.0135000004,-0.0331000015) + -r12.zzz;
      r17.xyw = float3(1.44269502,1.44269502,1.44269502) * r17.xyw;
      r17.xyw = exp2(r17.xyw);
      r12.z = max(r10.z, r5.z);
      r12.z = r5.y ? r12.z : r10.z;
      r12.w = cmp(6360.00977 < r12.z);
      if (r12.w != 0) {
        r12.w = cmp(r12.y < 1);
        if (r12.w != 0) {
          r13.xyz = r5.yyy ? r13.xyz : r8.xyz;
          r12.w = dot(r9.yzw, r13.xyz);
          r12.w = r12.w / r10.z;
          r9.y = dot(r9.yzw, cb1[161].xyz);
          r9.y = r9.y / r10.z;
          r9.z = r12.z * r12.z;
          r9.w = r12.z * r12.z + -40449600;
          r9.w = sqrt(r9.w);
          r10.z = r12.z * r12.w;
          r9.z = r10.z * r10.z + -r9.z;
          r9.z = 40449600 + r9.z;
          r12.z = cmp(r10.z < 0);
          r12.w = cmp(0 < r9.z);
          r12.z = r12.w ? r12.z : 0;
          r13.xyzw = r12.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r12.z = r9.w * r11.y;
          r18.y = r12.z * 0.00105685578 + r11.z;
          r9.zw = r13.yz + r9.zw;
          r9.z = sqrt(r9.z);
          r9.z = r10.z * r13.x + r9.z;
          r9.z = r9.z / r9.w;
          r18.x = r9.z * 0.4921875 + r13.w;
          r9.y = max(-0.197500005, r9.y);
          r9.y = 5.34962368 * r9.y;
          r9.z = min(1, abs(r9.y));
          r9.w = max(1, abs(r9.y));
          r9.w = 1 / r9.w;
          r9.z = r9.z * r9.w;
          r9.w = r9.z * r9.z;
          r10.z = r9.w * 0.0208350997 + -0.0851330012;
          r10.z = r9.w * r10.z + 0.180141002;
          r10.z = r9.w * r10.z + -0.330299497;
          r9.w = r9.w * r10.z + 0.999866009;
          r10.z = r9.z * r9.w;
          r12.z = cmp(1 < abs(r9.y));
          r10.z = r10.z * -2 + 1.57079637;
          r10.z = r12.z ? r10.z : 0;
          r9.z = r9.z * r9.w + r10.z;
          r9.y = min(1, r9.y);
          r9.y = cmp(r9.y < -r9.y);
          r9.y = r9.y ? -r9.z : r9.z;
          r9.y = r9.y * 0.909090877 + 0.74000001;
          r9.y = r9.y * 0.484375 + r10.w;
          r9.yz = float2(0.015625,1.015625) + r9.yy;
          r18.zw = float2(0.125,0.125) * r9.yz;
          r13.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
          r19.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
          r19.xyzw = r19.xyzw * r1.wwww;
          r13.xyzw = r13.xyzw * r11.wwww + r19.xyzw;
          r13.xyzw = -r17.xywx * r13.xyzw + r15.xyzw;
          r15.xyzw = max(float4(0,0,0,0), r13.xyzw);
          if (r5.y == 0) {
            r9.y = r12.x + r7.w;
            r9.z = cmp(abs(r9.y) < 0.00499999989);
            if (r9.z != 0) {
              r9.y = 0.00499999989 + r9.y;
              r9.y = 100 * r9.y;
              r7.w = -0.00499999989 + -r7.w;
              r9.z = r5.x * r5.x + r5.w;
              r9.w = r17.z * r5.x;
              r10.z = r9.w * r7.w + r9.z;
              r10.z = sqrt(r10.z);
              r10.w = r7.w * r5.z;
              r7.w = r5.z * r7.w + r5.x;
              r7.w = r7.w / r10.z;
              r7.w = max(r10.y, r7.w);
              r12.x = r10.w * r10.w + -r5.w;
              r12.x = 40449600 + r12.x;
              r12.z = cmp(r10.w < 0);
              r12.w = cmp(0 < r12.x);
              r12.z = r12.w ? r12.z : 0;
              r13.xyzw = r12.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r12.x = r13.y + r12.x;
              r12.x = sqrt(r12.x);
              r10.w = r10.w * r13.x + r12.x;
              r12.x = r13.z + r10.x;
              r10.w = r10.w / r12.x;
              r13.x = r10.w * 0.4921875 + r13.w;
              r13.yz = r16.yz;
              r19.xyzw = t2.SampleLevel(s2_s, r13.yxz, 0).xyzw;
              r16.y = r13.x;
              r20.xyzw = t2.SampleLevel(s2_s, r16.xyz, 0).xyzw;
              r20.xyzw = r20.xyzw * r1.wwww;
              r19.xyzw = r19.xyzw * r11.wwww + r20.xyzw;
              r10.w = r10.z * r10.z;
              r12.x = r10.z * r10.z + -40449600;
              r12.x = sqrt(r12.x);
              r7.w = r10.z * r7.w;
              r10.z = r7.w * r7.w + -r10.w;
              r10.z = 40449600 + r10.z;
              r10.w = cmp(r7.w < 0);
              r12.z = cmp(0 < r10.z);
              r10.w = r10.w ? r12.z : 0;
              r20.xyzw = r10.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.w = r12.x * r11.y;
              r18.y = r10.w * 0.00105685578 + r11.z;
              r10.z = r20.y + r10.z;
              r10.z = sqrt(r10.z);
              r7.w = r7.w * r20.x + r10.z;
              r10.z = r20.z + r12.x;
              r7.w = r7.w / r10.z;
              r18.x = r7.w * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
              r21.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
              r21.xyzw = r21.xyzw * r1.wwww;
              r20.xyzw = r20.xyzw * r11.wwww + r21.xyzw;
              r19.xyzw = -r17.xywx * r20.xyzw + r19.xyzw;
              r19.xyzw = max(float4(0,0,0,0), r19.xyzw);
              r7.w = r9.w * r10.y + r9.z;
              r7.w = sqrt(r7.w);
              r9.z = r10.y * r5.z;
              r5.x = r5.z * r10.y + r5.x;
              r5.x = r5.x / r7.w;
              r5.x = max(r10.y, r5.x);
              r9.w = r9.z * r9.z + -r5.w;
              r9.w = 40449600 + r9.w;
              r10.y = cmp(r9.z < 0);
              r10.z = cmp(0 < r9.w);
              r10.y = r10.z ? r10.y : 0;
              r20.xyzw = r10.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.w = r20.y + r9.w;
              r9.w = sqrt(r9.w);
              r9.z = r9.z * r20.x + r9.w;
              r9.w = r20.z + r10.x;
              r9.z = r9.z / r9.w;
              r13.w = r9.z * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r13.ywz, 0).xyzw;
              r16.w = r13.w;
              r13.xyzw = t2.SampleLevel(s2_s, r16.xwz, 0).xyzw;
              r13.xyzw = r13.xyzw * r1.wwww;
              r13.xyzw = r20.xyzw * r11.wwww + r13.xyzw;
              r9.z = r7.w * r7.w;
              r9.w = r7.w * r7.w + -40449600;
              r9.w = sqrt(r9.w);
              r5.x = r7.w * r5.x;
              r7.w = r5.x * r5.x + -r9.z;
              r7.w = 40449600 + r7.w;
              r9.z = cmp(r5.x < 0);
              r10.y = cmp(0 < r7.w);
              r9.z = r9.z ? r10.y : 0;
              r20.xyzw = r9.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.z = r9.w * r11.y;
              r18.y = r9.z * 0.00105685578 + r11.z;
              r7.w = r20.y + r7.w;
              r7.w = sqrt(r7.w);
              r5.x = r5.x * r20.x + r7.w;
              r7.w = r20.z + r9.w;
              r5.x = r5.x / r7.w;
              r18.x = r5.x * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
              r18.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
              r18.xyzw = r18.xyzw * r1.wwww;
              r18.xyzw = r20.xyzw * r11.wwww + r18.xyzw;
              r13.xyzw = -r17.xywx * r18.xyzw + r13.xyzw;
              r13.xyzw = max(float4(0,0,0,0), r13.xyzw);
              r13.xyzw = r13.xyzw + -r19.xyzw;
              r15.xyzw = r9.yyyy * r13.xyzw + r19.xyzw;
            }
          } else {
            r5.x = cmp(0 < r12.y);
            if (r5.x != 0) {
              r13.xyzw = float4(1,1,1,1) + -r17.xywx;
              r5.x = r11.x * r5.z;
              r5.z = r5.x * r5.x + -r5.w;
              r5.z = 40449600 + r5.z;
              r5.w = cmp(r5.x < 0);
              r7.w = cmp(0 < r5.z);
              r5.w = r5.w ? r7.w : 0;
              r18.xyzw = r5.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r5.z = r18.y + r5.z;
              r5.z = sqrt(r5.z);
              r5.x = r5.x * r18.x + r5.z;
              r5.z = r18.z + r10.x;
              r5.x = r5.x / r5.z;
              r10.y = r5.x * 0.4921875 + r18.w;
              r10.xz = r16.yz;
              r18.xyzw = t2.SampleLevel(s2_s, r10.xyz, 0).xyzw;
              r10.xz = r16.xz;
              r10.xyzw = t2.SampleLevel(s2_s, r10.xyz, 0).xyzw;
              r10.xyzw = r10.xyzw * r1.wwww;
              r10.xyzw = r18.xyzw * r11.wwww + r10.xyzw;
              r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
              r10.xyzw = r13.xyzw * r10.xyzw + -r15.xyzw;
              r15.xyzw = r12.yyyy * r10.xyzw + r15.xyzw;
            }
          }
        } else {
          r10.xyzw = float4(1,1,1,1) + -r17.xywx;
          r15.xyzw = r10.xyzw * r15.xyzw;
        }
      }
    } else {
      r17.xyw = float3(1,1,1);
    }
    r1.w = saturate(50 * r4.w);
    r4.w = r1.w * -2 + 3;
    r1.w = r1.w * r1.w;
    r1.w = r4.w * r1.w;
    r1.w = r15.w * r1.w;
    r5.xzw = r15.xyz * r1.www;
    r1.w = max(9.99999975e-005, r15.x);
    r5.xzw = r5.xzw / r1.www;
    r14.yzw = float3(1,0.429629624,0.175226584);
    r5.xzw = r5.xzw * r14.yxx;
    r5.xzw = r5.xzw * r14.xzw;
    r5.xzw = r15.xyz * r8.www + r5.xzw;
    r5.xzw = max(float3(0,0,0), r5.xzw);
  } else {
    r17.xyw = float3(1,1,1);
    r5.xzw = float3(0,0,0);
  }
  r9.yz = asint(cb1[182].zz) & int2(2,1);
  if (r9.y == 0) {
    r1.w = cmp(0 < r7.x);
    if (r1.w != 0) {
      r6.xyw = r7.xxx * r8.xyz + r6.xyw;
      r1.w = dot(r6.xyw, r6.xyw);
      r1.w = sqrt(r1.w);
      r6.xyw = r6.xyw / r1.www;
      r4.w = dot(r6.xyw, cb1[161].xyz);
      r1.w = -6360 + r1.w;
      r10.z = 0.0142857144 * r1.w;
      r11.y = sqrt(r10.z);
      r9.yw = float2(0.150000006,0.200000003) + r4.ww;
      r10.xy = float2(12.262105,0.833333313) * r9.yw;
      r1.w = min(1, abs(r10.x));
      r7.w = max(1, abs(r10.x));
      r7.w = 1 / r7.w;
      r1.w = r7.w * r1.w;
      r7.w = r1.w * r1.w;
      r8.w = r7.w * 0.0208350997 + -0.0851330012;
      r8.w = r7.w * r8.w + 0.180141002;
      r8.w = r7.w * r8.w + -0.330299497;
      r7.w = r7.w * r8.w + 0.999866009;
      r8.w = r7.w * r1.w;
      r9.y = cmp(1 < abs(r10.x));
      r8.w = r8.w * -2 + 1.57079637;
      r8.w = r9.y ? r8.w : 0;
      r1.w = r1.w * r7.w + r8.w;
      r7.w = min(1, r10.x);
      r7.w = cmp(r7.w < -r7.w);
      r1.w = r7.w ? -r1.w : r1.w;
      r11.x = 0.666666687 * r1.w;
      r11.xyz = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
      r11.xyz = r5.yyy ? float3(0,0,0) : r11.xyz;
      r10.xyz = t1.SampleLevel(s1_s, r10.yz, 0).xyz;
      r1.w = max(0, r4.w);
      r10.xyz = r1.www * r11.xyz + r10.xyz;
      r10.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r10.xyz;
      r1.xyz = -r1.xyz * r0.www + cb1[161].xyz;
      r0.w = dot(r1.xyz, r1.xyz);
      r0.w = rsqrt(r0.w);
      r1.xyz = r1.xyz * r0.www;
      r0.w = dot(-r8.xyz, r1.xyz);
      r0.w = 1 + -r0.w;
      r1.w = r0.w * r0.w;
      r1.w = r1.w * r1.w;
      r0.w = r1.w * r0.w;
      r0.w = r0.w * 0.980000019 + 0.0199999996;
      r1.x = dot(r1.xyz, r6.xyw);
      r1.x = max(0, r1.x);
      r1.x = log2(r1.x);
      r1.x = 150 * r1.x;
      r1.x = exp2(r1.x);
      r0.w = r1.x * r0.w;
      r0.w = max(0, r0.w);
      r1.xyz = r0.www * r11.xyz + r10.xyz;
      r1.xyz = r5.yyy ? r10.xyz : r1.xyz;
      r1.xyz = r17.xyw * r1.xyz;
    } else {
      r1.xyz = float3(0,0,0);
    }
  } else {
    r1.xyz = float3(0,0,0);
  }
  if (r9.z == 0) {
    r0.w = cmp(6430 >= r7.y);
    r6.xy = float2(-6360,0.150000006) + r7.yz;
    r6.xy = float2(0.0142857144,12.262105) * r6.xy;
    r10.y = sqrt(r6.x);
    r1.w = min(1, abs(r6.y));
    r4.w = max(1, abs(r6.y));
    r4.w = 1 / r4.w;
    r1.w = r4.w * r1.w;
    r4.w = r1.w * r1.w;
    r5.y = r4.w * 0.0208350997 + -0.0851330012;
    r5.y = r4.w * r5.y + 0.180141002;
    r5.y = r4.w * r5.y + -0.330299497;
    r4.w = r4.w * r5.y + 0.999866009;
    r5.y = r4.w * r1.w;
    r6.x = cmp(1 < abs(r6.y));
    r5.y = r5.y * -2 + 1.57079637;
    r5.y = r6.x ? r5.y : 0;
    r1.w = r1.w * r4.w + r5.y;
    r4.w = min(1, r6.y);
    r4.w = cmp(r4.w < -r4.w);
    r1.w = r4.w ? -r1.w : r1.w;
    r10.x = 0.666666687 * r1.w;
    r6.xyw = t0.SampleLevel(s0_s, r10.xy, 0).xyz;
    r6.xyw = r0.www ? r6.xyw : float3(1,1,1);
    r0.w = cmp(0 < r7.x);
    r1.w = dot(r8.xyz, cb1[161].xyz);
    r1.w = cmp(r1.w >= cb1[169].x);
    r1.w = r1.w ? 1.000000 : 0;
    r6.xyw = r6.xyw * r1.www;
    r6.xyw = cb1[167].xyz * r6.xyw;
    r6.xyw = r0.www ? float3(0,0,0) : r6.xyw;
  } else {
    r6.xyw = float3(0,0,0);
  }
  r1.xyz = r6.xyw + r1.xyz;
  r1.xyz = r1.xyz + r5.xzw;
  r0.w = cb1[157].w * r6.z;
  r5.xyz = cb1[163].xyz * r0.www;
  r1.xyz = r5.xyz * r1.xyz;
  r0.w = saturate(r17.x * cb1[158].y + -cb1[158].z);
  r4.w = 1 + -r9.x;
  r5.x = 1 + -r0.w;
  r1.w = r4.w * r5.x + r0.w;
  r0.w = cmp(0 < cb1[182].y);
  if (r0.w != 0) {
    r0.w = cmp(0 != cb1[184].x);
    r5.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r6.xy = r2.xy / r2.ww;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r4.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
    r4.w = dot(r4.xyz, r4.xyz);
    r5.x = sqrt(r4.w);
    r5.x = -cb1[181].x + r5.x;
    r5.x = max(0, r5.x);
    r5.x = cb1[182].x * r5.x;
    r5.x = cb1[181].z * r5.x;
    r5.z = sqrt(r5.x);
    r5.w = cb1[181].y * r5.z;
    r6.z = cmp(r5.w < 0.707106769);
    r5.w = dot(r5.ww, r5.ww);
    r5.w = min(1, r5.w);
    r5.w = r6.z ? r5.w : 1;
    r4.w = rsqrt(r4.w);
    r4.xyz = r4.xyz * r4.www;
    r4.w = -r4.z * r4.z + 1;
    r4.w = sqrt(r4.w);
    r7.y = r4.z * 0.5 + 0.5;
    r4.xy = r4.xy / r4.ww;
    r4.z = 1 + -abs(r4.x);
    r4.z = sqrt(r4.z);
    r4.w = abs(r4.x) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r4.x) + -0.212114394;
    r4.w = r4.w * abs(r4.x) + 1.57072878;
    r6.z = r4.w * r4.z;
    r6.z = r6.z * -2 + 3.14159274;
    r4.x = cmp(r4.x < -r4.x);
    r4.x = r4.x ? r6.z : 0;
    r4.x = r4.w * r4.z + r4.x;
    r4.y = cmp(r4.y < 0);
    r4.z = 6.28318548 + -r4.x;
    r4.x = r4.y ? r4.z : r4.x;
    r7.x = 0.159154937 * r4.x;
    r4.xy = cb1[180].zw * float2(0.5,0.5) + r7.xy;
    r4.zw = float2(1,1) + cb1[180].xy;
    r4.zw = cb1[180].xy / r4.zw;
    r4.xy = r4.xy * r4.zw;
    r5.xy = r0.ww ? r4.xy : r6.xy;
    r4.xyzw = t3.SampleLevel(s3_s, r5.xyz, 0).xyzw;
    r4.xyz = r4.xyz * r5.www;
    r0.w = 1 + -r4.w;
    r0.w = -r5.w * r0.w + 1;
    r4.xyz = cb1[135].zzz * r4.xyz;
    o6.xyz = r4.xyz * r1.www + r1.xyz;
    o6.w = r1.w * r0.w;
  } else {
    o6.xyzw = r1.xyzw;
  }
  o0.xyzw = r3.xyzw;
  o1.xyz = r0.xyz;
  o2.xyzw = v4.xyzw;
  o3.xyzw = v3.xyzw;
  o4.zw = float2(0,0);
  o7.xyzw = r2.xyzw;
  return;
}