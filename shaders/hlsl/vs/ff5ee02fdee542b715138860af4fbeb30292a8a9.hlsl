// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[185];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  uint v1 : ATTRIBUTE13,
  uint v2 : SV_VertexID0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out uint o2 : PRIMITIVE_ID0,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t5.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t5.Load(r0.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.xyz = r1.xyz * r0.zwy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r2.xyz = r0.xyz * r1.yzx;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.w = (int)v1.x * 36;
  r2.x = t3[r0.w].val[0/4];
  r2.y = t3[r0.w].val[0/4+1];
  r2.z = t3[r0.w].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t3[r3.x].val[0/4];
  r3.z = t3[r3.x].val[0/4+1];
  r3.w = t3[r3.x].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r4.x = t3[r0.w].val[0/4];
  r4.y = t3[r0.w].val[0/4+1];
  r4.z = t3[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 4);
  r5.x = t3[r0.w].val[0/4];
  r5.y = t3[r0.w].val[0/4+1];
  r5.z = t3[r0.w].val[0/4+2];
  r5.w = t3[r0.w].val[0/4+3];
  r6.xyz = r5.xxx * r2.xyz;
  r7.xyz = r5.yyy * r3.xzw;
  r5.xyz = r5.zzz * r4.xyz;
  r8.xyz = r7.xyz * r0.yyy;
  r0.xyw = r0.xxx * r6.xyz + r8.xyz;
  o0.xyz = r0.zzz * r5.xyz + r0.xyw;
  r0.xyz = r7.xyz * r1.yyy;
  r0.xyz = r1.xxx * r6.xyz + r0.xyz;
  r0.xyz = r1.zzz * r5.xyz + r0.xyz;
  o1.w = r5.w * r1.w;
  r1.x = t3[r3.y].val[0/4];
  r1.y = t3[r3.y].val[0/4+1];
  r1.z = t3[r3.y].val[0/4+2];
  r3.xyz = v0.yyy * r3.xzw;
  r2.xyz = r2.xyz * v0.xxx + r3.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r1.xyz = cb0[70].xyz + r1.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = r0.xyz * cb2[5].yyy + r1.xyz;
  r2.xyzw = cb0[1].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb0[2].xyzw + r2.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r3.xyz = -cb0[68].xyz + r1.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r0.w);
  r4.xy = float2(9.99999975e-006,100) * cb0[159].xx;
  r3.w = -cb0[158].w + cb0[68].z;
  r3.w = cb0[159].y * r3.w;
  r4.zw = cb0[68].xy;
  r5.xy = r4.zw * r4.xx;
  r5.w = r3.w * r4.x + 6360.00977;
  r3.w = dot(r5.xyw, r5.xyw);
  r6.y = sqrt(r3.w);
  r0.w = rsqrt(r0.w);
  r7.xyz = r3.xyz * r0.www;
  r4.z = dot(r5.xyw, r7.xyz);
  r6.z = r4.z / r6.y;
  r4.w = r6.z * r6.z + -1;
  r5.z = r4.x * r1.w;
  r6.w = r1.w * r4.x + -cb0[159].w;
  r6.w = max(0, r6.w);
  r8.x = 0.100000001 * r6.w;
  r8.x = r8.x / cb0[159].w;
  r8.x = min(1, r8.x);
  r4.y = cmp(r5.z < r4.y);
  if (r4.y != 0) {
    r5.z = cb0[158].x * r8.x;
    r1.w = r1.w * r4.x + cb0[160].x;
    r6.x = max(1, r1.w);
  } else {
    r1.w = r3.w * r4.w + 40449600;
    r1.w = sqrt(r1.w);
    r6.x = -r4.z + -r1.w;
    r5.z = 1;
  }
  r1.w = r3.w * r4.w + 41344900;
  r1.w = sqrt(r1.w);
  r3.w = -r4.z + -r1.w;
  r4.x = cmp(0 < r3.w);
  r8.yzw = r3.www * r7.xyz + r5.xyw;
  r9.x = r6.x + -r3.w;
  r9.z = -0.000155520989 * r1.w;
  r8.yzw = r4.xxx ? r8.yzw : r5.xyw;
  r9.y = 6430;
  r4.xzw = r4.xxx ? r9.xyz : r6.xyz;
  r1.w = cmp(r4.z < 6360.01465);
  r3.w = 6360.01465 + -r4.z;
  r9.xyz = -r3.www * r7.xyz + r8.yzw;
  r10.x = r4.x + -r3.w;
  r3.w = dot(r9.xyz, r7.xyz);
  r10.z = 0.000157232338 * r3.w;
  r10.y = 6360.01465;
  r4.xzw = r1.www ? r10.xyz : r4.xzw;
  r3.w = cmp(6430 >= r4.z);
  r6.w = cmp(0 < r6.w);
  r3.w = r3.w ? r6.w : 0;
  if (r3.w != 0) {
    r8.yzw = r1.www ? r9.xyz : r8.yzw;
    r1.w = dot(r7.xyz, cb0[161].xyz);
    r3.w = dot(r8.yzw, cb0[161].xyz);
    r3.w = r3.w / r4.z;
    r6.w = 6360 / r4.z;
    r6.w = -r6.w * r6.w + 1;
    r6.w = sqrt(r6.w);
    r9.xy = float2(0.155000001,0.00499999989) + -r6.ww;
    r9.xz = max(r9.xy, r4.ww);
    r10.x = r4.y ? r9.x : r9.z;
    r4.w = -1.44269502 * r7.z;
    r4.w = exp2(r4.w);
    r11.y = saturate(-0.5 + r4.w);
    r4.w = cmp(r11.y < 1);
    r7.w = max(0.150000006, r7.z);
    r9.x = dot(r7.xyw, r7.xyw);
    r9.x = rsqrt(r9.x);
    r12.xyz = r9.xxx * r7.xyw;
    r9.xzw = r4.xxx * r12.xyz + r8.yzw;
    r7.w = dot(r9.xzw, r9.xzw);
    r7.w = sqrt(r7.w);
    r9.x = dot(r9.xzw, r12.xyz);
    r12.w = r9.x / r7.w;
    r10.yzw = r7.xyz;
    r12.xyzw = r4.wwww ? r12.xyzw : r10.yzwx;
    r11.x = r12.w;
    r10.y = 0;
    r11.xy = r4.yy ? r11.xy : r10.xy;
    r4.w = r1.w * r1.w + 1;
    r7.w = 0.0596831031 * r4.w;
    r9.x = -r1.w * 1.60000002 + 1.63999999;
    r9.x = log2(abs(r9.x));
    r9.x = -1.5 * r9.x;
    r9.x = exp2(r9.x);
    r4.w = r9.x * r4.w;
    r13.x = 0.0162772108 * r4.w;
    r4.w = r4.z * r4.z;
    r9.x = r4.z * r4.z + -40449600;
    r9.x = sqrt(r9.x);
    r9.z = r11.x * r4.z;
    r9.w = r9.z * r9.z + -r4.w;
    r9.w = 40449600 + r9.w;
    r10.y = cmp(r9.z < 0);
    r10.z = cmp(0 < r9.w);
    r10.y = r10.z ? r10.y : 0;
    r14.xyzw = r10.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r10.y = asuint(cb0[182].w);
    r10.z = 0.5 / r10.y;
    r10.w = 0.00105685578 * r9.x;
    r10.y = 1 / r10.y;
    r10.y = 1 + -r10.y;
    r15.z = r10.w * r10.y + r10.z;
    r9.w = r14.y + r9.w;
    r9.w = sqrt(r9.w);
    r9.z = r9.z * r14.x + r9.w;
    r9.w = r14.z + r9.x;
    r9.z = r9.z / r9.w;
    r15.w = r9.z * 0.4921875 + r14.w;
    r9.z = max(-0.197500005, r3.w);
    r9.z = 5.34962368 * r9.z;
    r9.w = min(1, abs(r9.z));
    r10.w = max(1, abs(r9.z));
    r10.w = 1 / r10.w;
    r9.w = r10.w * r9.w;
    r10.w = r9.w * r9.w;
    r11.w = r10.w * 0.0208350997 + -0.0851330012;
    r11.w = r10.w * r11.w + 0.180141002;
    r11.w = r10.w * r11.w + -0.330299497;
    r10.w = r10.w * r11.w + 0.999866009;
    r11.w = r10.w * r9.w;
    r12.w = cmp(1 < abs(r9.z));
    r11.w = r11.w * -2 + 1.57079637;
    r11.w = r12.w ? r11.w : 0;
    r9.w = r9.w * r10.w + r11.w;
    r9.z = min(1, r9.z);
    r9.z = cmp(r9.z < -r9.z);
    r9.z = r9.z ? -r9.w : r9.w;
    r9.z = r9.z * 0.909090877 + 0.74000001;
    r9.z = r9.z * 0.484375 + 0.015625;
    r1.w = 1 + r1.w;
    r9.w = 3.5 * r1.w;
    r9.w = floor(r9.w);
    r1.w = r1.w * 3.5 + -r9.w;
    r9.z = r9.w + r9.z;
    r15.y = 0.125 * r9.z;
    r14.xyzw = t2.SampleLevel(s2_s, r15.ywz, 0).xyzw;
    r10.w = 1 + -r1.w;
    r9.z = 1 + r9.z;
    r15.x = 0.125 * r9.z;
    r16.xyzw = t2.SampleLevel(s2_s, r15.xwz, 0).xyzw;
    r16.xyzw = r16.xyzw * r1.wwww;
    r14.xyzw = r14.xyzw * r10.wwww + r16.xyzw;
    r14.xyzw = max(float4(0,0,0,0), r14.xyzw);
    r9.z = cmp(0 < r4.x);
    if (r9.z != 0) {
      r8.yzw = r4.xxx * r7.xyz + r8.yzw;
      r9.z = dot(r8.yzw, r8.yzw);
      r9.z = sqrt(r9.z);
      r11.w = 0.5 / cb0[159].z;
      r11.w = r11.w * r4.z;
      r11.w = sqrt(r11.w);
      r12.w = r4.x / r4.z;
      r11.z = r12.w + r11.x;
      r16.xy = r11.ww * r11.xz;
      r16.zw = cmp(float2(0,0) < r16.xy);
      r17.xy = cmp(r16.xy < float2(0,0));
      r16.zw = (int2)-r16.zw + (int2)r17.xy;
      r16.zw = (int2)r16.zw;
      r17.xyz = r16.xxy * r16.xxy;
      r11.w = cmp(r16.z < r16.w);
      r12.w = 1.44269502 * r17.x;
      r12.w = exp2(r12.w);
      r11.w = r11.w ? r12.w : 0;
      r17.xy = r17.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r17.xy = sqrt(r17.xy);
      r16.xy = abs(r16.xy) * float2(2.31929994,2.31929994) + r17.xy;
      r16.xy = r16.zw / r16.xy;
      r12.w = -r4.x / cb0[159].z;
      r16.z = r4.z + r4.z;
      r16.w = r4.x / r16.z;
      r16.w = r16.w + r11.x;
      r12.w = r16.w * r12.w;
      r12.w = 1.44269502 * r12.w;
      r17.y = exp2(r12.w);
      r17.xz = float2(1,1);
      r16.xy = r17.xy * r16.xy;
      r12.w = cb0[159].z * r4.z;
      r12.w = 6.28310013 * r12.w;
      r12.w = sqrt(r12.w);
      r17.x = 6360 + -r4.z;
      r17.y = r17.x / cb0[159].z;
      r17.y = 1.44269502 * r17.y;
      r17.y = exp2(r17.y);
      r12.w = r17.y * r12.w;
      r16.x = dot(r16.xy, float2(1,-1));
      r11.w = r16.x + r11.w;
      r11.w = r12.w * r11.w;
      r16.xy = float2(0.416666657,7.53972054) * r4.zz;
      r16.xy = sqrt(r16.xy);
      r18.xy = r16.xx * r11.xz;
      r18.zw = cmp(float2(0,0) < r18.xy);
      r19.xy = cmp(r18.xy < float2(0,0));
      r18.zw = (int2)-r18.zw + (int2)r19.xy;
      r18.zw = (int2)r18.zw;
      r19.xyz = r18.xxy * r18.xxy;
      r11.z = cmp(r18.z < r18.w);
      r12.w = 1.44269502 * r19.x;
      r12.w = exp2(r12.w);
      r11.z = r11.z ? r12.w : 0;
      r19.xy = r19.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r19.xy = sqrt(r19.xy);
      r18.xy = abs(r18.xy) * float2(2.31929994,2.31929994) + r19.xy;
      r18.xy = r18.zw / r18.xy;
      r12.w = r16.w * -r4.x;
      r12.w = 1.20224583 * r12.w;
      r17.w = exp2(r12.w);
      r16.xw = r18.xy * r17.zw;
      r12.w = 1.20224583 * r17.x;
      r12.w = exp2(r12.w);
      r12.w = r16.y * r12.w;
      r16.x = dot(r16.xw, float2(1,-1));
      r11.z = r16.x + r11.z;
      r11.z = r12.w * r11.z;
      r11.z = 0.00444444455 * r11.z;
      r16.xyw = r11.www * float3(-0.00579999993,-0.0135000004,-0.0331000015) + -r11.zzz;
      r16.xyw = float3(1.44269502,1.44269502,1.44269502) * r16.xyw;
      r16.xyw = exp2(r16.xyw);
      r11.z = max(r9.z, r4.z);
      r11.z = r4.y ? r11.z : r9.z;
      r11.w = cmp(6360.00977 < r11.z);
      if (r11.w != 0) {
        r11.w = cmp(r11.y < 1);
        if (r11.w != 0) {
          r12.xyz = r4.yyy ? r12.xyz : r7.xyz;
          r11.w = dot(r8.yzw, r12.xyz);
          r11.w = r11.w / r9.z;
          r8.y = dot(r8.yzw, cb0[161].xyz);
          r8.y = r8.y / r9.z;
          r8.z = r11.z * r11.z;
          r8.w = r11.z * r11.z + -40449600;
          r8.w = sqrt(r8.w);
          r9.z = r11.z * r11.w;
          r8.z = r9.z * r9.z + -r8.z;
          r8.z = 40449600 + r8.z;
          r11.z = cmp(r9.z < 0);
          r11.w = cmp(0 < r8.z);
          r11.z = r11.w ? r11.z : 0;
          r12.xyzw = r11.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r11.z = r8.w * r10.y;
          r17.y = r11.z * 0.00105685578 + r10.z;
          r8.zw = r12.yz + r8.zw;
          r8.z = sqrt(r8.z);
          r8.z = r9.z * r12.x + r8.z;
          r8.z = r8.z / r8.w;
          r17.x = r8.z * 0.4921875 + r12.w;
          r8.y = max(-0.197500005, r8.y);
          r8.y = 5.34962368 * r8.y;
          r8.z = min(1, abs(r8.y));
          r8.w = max(1, abs(r8.y));
          r8.w = 1 / r8.w;
          r8.z = r8.z * r8.w;
          r8.w = r8.z * r8.z;
          r9.z = r8.w * 0.0208350997 + -0.0851330012;
          r9.z = r8.w * r9.z + 0.180141002;
          r9.z = r8.w * r9.z + -0.330299497;
          r8.w = r8.w * r9.z + 0.999866009;
          r9.z = r8.z * r8.w;
          r11.z = cmp(1 < abs(r8.y));
          r9.z = r9.z * -2 + 1.57079637;
          r9.z = r11.z ? r9.z : 0;
          r8.z = r8.z * r8.w + r9.z;
          r8.y = min(1, r8.y);
          r8.y = cmp(r8.y < -r8.y);
          r8.y = r8.y ? -r8.z : r8.z;
          r8.y = r8.y * 0.909090877 + 0.74000001;
          r8.y = r8.y * 0.484375 + r9.w;
          r8.yz = float2(0.015625,1.015625) + r8.yy;
          r17.zw = float2(0.125,0.125) * r8.yz;
          r12.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
          r18.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
          r18.xyzw = r18.xyzw * r1.wwww;
          r12.xyzw = r12.xyzw * r10.wwww + r18.xyzw;
          r12.xyzw = -r16.xywx * r12.xyzw + r14.xyzw;
          r14.xyzw = max(float4(0,0,0,0), r12.xyzw);
          if (r4.y == 0) {
            r8.y = r11.x + r6.w;
            r8.z = cmp(abs(r8.y) < 0.00499999989);
            if (r8.z != 0) {
              r8.y = 0.00499999989 + r8.y;
              r8.y = 100 * r8.y;
              r6.w = -0.00499999989 + -r6.w;
              r8.z = r4.x * r4.x + r4.w;
              r8.w = r16.z * r4.x;
              r9.z = r8.w * r6.w + r8.z;
              r9.z = sqrt(r9.z);
              r9.w = r6.w * r4.z;
              r6.w = r4.z * r6.w + r4.x;
              r6.w = r6.w / r9.z;
              r6.w = max(r9.y, r6.w);
              r11.x = r9.w * r9.w + -r4.w;
              r11.x = 40449600 + r11.x;
              r11.z = cmp(r9.w < 0);
              r11.w = cmp(0 < r11.x);
              r11.z = r11.w ? r11.z : 0;
              r12.xyzw = r11.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r11.x = r12.y + r11.x;
              r11.x = sqrt(r11.x);
              r9.w = r9.w * r12.x + r11.x;
              r11.x = r12.z + r9.x;
              r9.w = r9.w / r11.x;
              r12.x = r9.w * 0.4921875 + r12.w;
              r12.yz = r15.yz;
              r18.xyzw = t2.SampleLevel(s2_s, r12.yxz, 0).xyzw;
              r15.y = r12.x;
              r19.xyzw = t2.SampleLevel(s2_s, r15.xyz, 0).xyzw;
              r19.xyzw = r19.xyzw * r1.wwww;
              r18.xyzw = r18.xyzw * r10.wwww + r19.xyzw;
              r9.w = r9.z * r9.z;
              r11.x = r9.z * r9.z + -40449600;
              r11.x = sqrt(r11.x);
              r6.w = r9.z * r6.w;
              r9.z = r6.w * r6.w + -r9.w;
              r9.z = 40449600 + r9.z;
              r9.w = cmp(r6.w < 0);
              r11.z = cmp(0 < r9.z);
              r9.w = r9.w ? r11.z : 0;
              r19.xyzw = r9.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.w = r11.x * r10.y;
              r17.y = r9.w * 0.00105685578 + r10.z;
              r9.z = r19.y + r9.z;
              r9.z = sqrt(r9.z);
              r6.w = r6.w * r19.x + r9.z;
              r9.z = r19.z + r11.x;
              r6.w = r6.w / r9.z;
              r17.x = r6.w * 0.4921875 + r19.w;
              r19.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
              r20.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
              r20.xyzw = r20.xyzw * r1.wwww;
              r19.xyzw = r19.xyzw * r10.wwww + r20.xyzw;
              r18.xyzw = -r16.xywx * r19.xyzw + r18.xyzw;
              r18.xyzw = max(float4(0,0,0,0), r18.xyzw);
              r6.w = r8.w * r9.y + r8.z;
              r6.w = sqrt(r6.w);
              r8.z = r9.y * r4.z;
              r4.x = r4.z * r9.y + r4.x;
              r4.x = r4.x / r6.w;
              r4.x = max(r9.y, r4.x);
              r8.w = r8.z * r8.z + -r4.w;
              r8.w = 40449600 + r8.w;
              r9.y = cmp(r8.z < 0);
              r9.z = cmp(0 < r8.w);
              r9.y = r9.z ? r9.y : 0;
              r19.xyzw = r9.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r8.w = r19.y + r8.w;
              r8.w = sqrt(r8.w);
              r8.z = r8.z * r19.x + r8.w;
              r8.w = r19.z + r9.x;
              r8.z = r8.z / r8.w;
              r12.w = r8.z * 0.4921875 + r19.w;
              r19.xyzw = t2.SampleLevel(s2_s, r12.ywz, 0).xyzw;
              r15.w = r12.w;
              r12.xyzw = t2.SampleLevel(s2_s, r15.xwz, 0).xyzw;
              r12.xyzw = r12.xyzw * r1.wwww;
              r12.xyzw = r19.xyzw * r10.wwww + r12.xyzw;
              r8.z = r6.w * r6.w;
              r8.w = r6.w * r6.w + -40449600;
              r8.w = sqrt(r8.w);
              r4.x = r6.w * r4.x;
              r6.w = r4.x * r4.x + -r8.z;
              r6.w = 40449600 + r6.w;
              r8.z = cmp(r4.x < 0);
              r9.y = cmp(0 < r6.w);
              r8.z = r8.z ? r9.y : 0;
              r19.xyzw = r8.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r8.z = r8.w * r10.y;
              r17.y = r8.z * 0.00105685578 + r10.z;
              r6.w = r19.y + r6.w;
              r6.w = sqrt(r6.w);
              r4.x = r4.x * r19.x + r6.w;
              r6.w = r19.z + r8.w;
              r4.x = r4.x / r6.w;
              r17.x = r4.x * 0.4921875 + r19.w;
              r19.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
              r17.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
              r17.xyzw = r17.xyzw * r1.wwww;
              r17.xyzw = r19.xyzw * r10.wwww + r17.xyzw;
              r12.xyzw = -r16.xywx * r17.xyzw + r12.xyzw;
              r12.xyzw = max(float4(0,0,0,0), r12.xyzw);
              r12.xyzw = r12.xyzw + -r18.xyzw;
              r14.xyzw = r8.yyyy * r12.xyzw + r18.xyzw;
            }
          } else {
            r4.x = cmp(0 < r11.y);
            if (r4.x != 0) {
              r12.xyzw = float4(1,1,1,1) + -r16.xywx;
              r4.x = r10.x * r4.z;
              r4.z = r4.x * r4.x + -r4.w;
              r4.z = 40449600 + r4.z;
              r4.w = cmp(r4.x < 0);
              r6.w = cmp(0 < r4.z);
              r4.w = r4.w ? r6.w : 0;
              r17.xyzw = r4.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r4.z = r17.y + r4.z;
              r4.z = sqrt(r4.z);
              r4.x = r4.x * r17.x + r4.z;
              r4.z = r17.z + r9.x;
              r4.x = r4.x / r4.z;
              r9.y = r4.x * 0.4921875 + r17.w;
              r9.xz = r15.yz;
              r17.xyzw = t2.SampleLevel(s2_s, r9.xyz, 0).xyzw;
              r9.xz = r15.xz;
              r9.xyzw = t2.SampleLevel(s2_s, r9.xyz, 0).xyzw;
              r9.xyzw = r9.xyzw * r1.wwww;
              r9.xyzw = r17.xyzw * r10.wwww + r9.xyzw;
              r9.xyzw = max(float4(0,0,0,0), r9.xyzw);
              r9.xyzw = r12.xyzw * r9.xyzw + -r14.xyzw;
              r14.xyzw = r11.yyyy * r9.xyzw + r14.xyzw;
            }
          }
        } else {
          r9.xyzw = float4(1,1,1,1) + -r16.xywx;
          r14.xyzw = r9.xyzw * r14.xyzw;
        }
      }
    } else {
      r16.xyw = float3(1,1,1);
    }
    r1.w = saturate(50 * r3.w);
    r3.w = r1.w * -2 + 3;
    r1.w = r1.w * r1.w;
    r1.w = r3.w * r1.w;
    r1.w = r14.w * r1.w;
    r4.xzw = r14.xyz * r1.www;
    r1.w = max(9.99999975e-005, r14.x);
    r4.xzw = r4.xzw / r1.www;
    r13.yzw = float3(1,0.429629624,0.175226584);
    r4.xzw = r4.xzw * r13.yxx;
    r4.xzw = r4.xzw * r13.xzw;
    r4.xzw = r14.xyz * r7.www + r4.xzw;
    r4.xzw = max(float3(0,0,0), r4.xzw);
  } else {
    r16.xyw = float3(1,1,1);
    r4.xzw = float3(0,0,0);
  }
  r8.yz = asint(cb0[182].zz) & int2(2,1);
  if (r8.y == 0) {
    r1.w = cmp(0 < r6.x);
    if (r1.w != 0) {
      r5.xyw = r6.xxx * r7.xyz + r5.xyw;
      r1.w = dot(r5.xyw, r5.xyw);
      r1.w = sqrt(r1.w);
      r5.xyw = r5.xyw / r1.www;
      r3.w = dot(r5.xyw, cb0[161].xyz);
      r1.w = -6360 + r1.w;
      r9.z = 0.0142857144 * r1.w;
      r10.y = sqrt(r9.z);
      r8.yw = float2(0.150000006,0.200000003) + r3.ww;
      r9.xy = float2(12.262105,0.833333313) * r8.yw;
      r1.w = min(1, abs(r9.x));
      r6.w = max(1, abs(r9.x));
      r6.w = 1 / r6.w;
      r1.w = r6.w * r1.w;
      r6.w = r1.w * r1.w;
      r7.w = r6.w * 0.0208350997 + -0.0851330012;
      r7.w = r6.w * r7.w + 0.180141002;
      r7.w = r6.w * r7.w + -0.330299497;
      r6.w = r6.w * r7.w + 0.999866009;
      r7.w = r6.w * r1.w;
      r8.y = cmp(1 < abs(r9.x));
      r7.w = r7.w * -2 + 1.57079637;
      r7.w = r8.y ? r7.w : 0;
      r1.w = r1.w * r6.w + r7.w;
      r6.w = min(1, r9.x);
      r6.w = cmp(r6.w < -r6.w);
      r1.w = r6.w ? -r1.w : r1.w;
      r10.x = 0.666666687 * r1.w;
      r10.xyz = t0.SampleLevel(s0_s, r10.xy, 0).xyz;
      r10.xyz = r4.yyy ? float3(0,0,0) : r10.xyz;
      r9.xyz = t1.SampleLevel(s1_s, r9.yz, 0).xyz;
      r1.w = max(0, r3.w);
      r9.xyz = r1.www * r10.xyz + r9.xyz;
      r9.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r9.xyz;
      r3.xyz = -r3.xyz * r0.www + cb0[161].xyz;
      r0.w = dot(r3.xyz, r3.xyz);
      r0.w = rsqrt(r0.w);
      r3.xyz = r3.xyz * r0.www;
      r0.w = dot(-r7.xyz, r3.xyz);
      r0.w = 1 + -r0.w;
      r1.w = r0.w * r0.w;
      r1.w = r1.w * r1.w;
      r0.w = r1.w * r0.w;
      r0.w = r0.w * 0.980000019 + 0.0199999996;
      r1.w = dot(r3.xyz, r5.xyw);
      r1.w = max(0, r1.w);
      r1.w = log2(r1.w);
      r1.w = 150 * r1.w;
      r1.w = exp2(r1.w);
      r0.w = r1.w * r0.w;
      r0.w = max(0, r0.w);
      r3.xyz = r0.www * r10.xyz + r9.xyz;
      r3.xyz = r4.yyy ? r9.xyz : r3.xyz;
      r3.xyz = r16.xyw * r3.xyz;
    } else {
      r3.xyz = float3(0,0,0);
    }
  } else {
    r3.xyz = float3(0,0,0);
  }
  if (r8.z == 0) {
    r0.w = cmp(6430 >= r6.y);
    r5.xy = float2(-6360,0.150000006) + r6.yz;
    r5.xy = float2(0.0142857144,12.262105) * r5.xy;
    r9.y = sqrt(r5.x);
    r1.w = min(1, abs(r5.y));
    r3.w = max(1, abs(r5.y));
    r3.w = 1 / r3.w;
    r1.w = r3.w * r1.w;
    r3.w = r1.w * r1.w;
    r4.y = r3.w * 0.0208350997 + -0.0851330012;
    r4.y = r3.w * r4.y + 0.180141002;
    r4.y = r3.w * r4.y + -0.330299497;
    r3.w = r3.w * r4.y + 0.999866009;
    r4.y = r3.w * r1.w;
    r5.x = cmp(1 < abs(r5.y));
    r4.y = r4.y * -2 + 1.57079637;
    r4.y = r5.x ? r4.y : 0;
    r1.w = r1.w * r3.w + r4.y;
    r3.w = min(1, r5.y);
    r3.w = cmp(r3.w < -r3.w);
    r1.w = r3.w ? -r1.w : r1.w;
    r9.x = 0.666666687 * r1.w;
    r5.xyw = t0.SampleLevel(s0_s, r9.xy, 0).xyz;
    r5.xyw = r0.www ? r5.xyw : float3(1,1,1);
    r0.w = cmp(0 < r6.x);
    r1.w = dot(r7.xyz, cb0[161].xyz);
    r1.w = cmp(r1.w >= cb0[169].x);
    r1.w = r1.w ? 1.000000 : 0;
    r5.xyw = r5.xyw * r1.www;
    r5.xyw = cb0[167].xyz * r5.xyw;
    r5.xyw = r0.www ? float3(0,0,0) : r5.xyw;
  } else {
    r5.xyw = float3(0,0,0);
  }
  r3.xyz = r5.xyw + r3.xyz;
  r3.xyz = r3.xyz + r4.xzw;
  r0.w = cb0[157].w * r5.z;
  r4.xyz = cb0[163].xyz * r0.www;
  r3.xyz = r4.xyz * r3.xyz;
  r0.w = saturate(r16.x * cb0[158].y + -cb0[158].z);
  r1.w = 1 + -r8.x;
  r4.x = 1 + -r0.w;
  r3.w = r1.w * r4.x + r0.w;
  r0.w = cmp(0 < cb0[182].y);
  if (r0.w != 0) {
    r0.w = cmp(0 != cb0[184].x);
    r4.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[68].xyz;
    r5.xy = r2.xy / r2.ww;
    r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.xyz = r1.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r4.xyz;
    r1.w = dot(r1.xyz, r1.xyz);
    r4.x = sqrt(r1.w);
    r4.x = -cb0[181].x + r4.x;
    r4.x = max(0, r4.x);
    r4.x = cb0[182].x * r4.x;
    r4.x = cb0[181].z * r4.x;
    r4.z = sqrt(r4.x);
    r4.w = cb0[181].y * r4.z;
    r5.z = cmp(r4.w < 0.707106769);
    r4.w = dot(r4.ww, r4.ww);
    r4.w = min(1, r4.w);
    r4.w = r5.z ? r4.w : 1;
    r1.w = rsqrt(r1.w);
    r1.xyz = r1.xyz * r1.www;
    r1.w = -r1.z * r1.z + 1;
    r1.w = sqrt(r1.w);
    r6.y = r1.z * 0.5 + 0.5;
    r1.xy = r1.xy / r1.ww;
    r1.z = 1 + -abs(r1.x);
    r1.z = sqrt(r1.z);
    r1.w = abs(r1.x) * -0.0187292993 + 0.0742610022;
    r1.w = r1.w * abs(r1.x) + -0.212114394;
    r1.w = r1.w * abs(r1.x) + 1.57072878;
    r5.z = r1.w * r1.z;
    r5.z = r5.z * -2 + 3.14159274;
    r1.x = cmp(r1.x < -r1.x);
    r1.x = r1.x ? r5.z : 0;
    r1.x = r1.w * r1.z + r1.x;
    r1.y = cmp(r1.y < 0);
    r1.z = 6.28318548 + -r1.x;
    r1.x = r1.y ? r1.z : r1.x;
    r6.x = 0.159154937 * r1.x;
    r1.xy = cb0[180].zw * float2(0.5,0.5) + r6.xy;
    r1.zw = float2(1,1) + cb0[180].xy;
    r1.zw = cb0[180].xy / r1.zw;
    r1.xy = r1.xy * r1.zw;
    r4.xy = r0.ww ? r1.xy : r5.xy;
    r1.xyzw = t4.SampleLevel(s3_s, r4.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r4.www;
    r0.w = 1 + -r1.w;
    r0.w = -r4.w * r0.w + 1;
    r1.xyz = cb0[135].zzz * r1.xyz;
    o3.xyz = r1.xyz * r3.www + r3.xyz;
    o3.w = r3.w * r0.w;
  } else {
    o3.xyzw = r3.xyzw;
  }
  o0.w = 0;
  o1.xyz = r0.xyz;
  o4.xyzw = r2.xyzw;
  o2.x = v1.x;
  return;
}