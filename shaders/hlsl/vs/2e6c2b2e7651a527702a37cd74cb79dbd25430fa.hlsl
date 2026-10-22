// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t6 : register(t6);

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
  out float4 o2 : COLOR0,
  out uint o3 : PRIMITIVE_ID0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t6.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t5.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r2.xyzw = t5.Load(r0.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.xyz = r2.xyz * r0.zwy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r3.xyz = r0.xyz * r2.yzx;
  r0.xyz = r0.zxy * r2.zxy + -r3.xyz;
  r0.xyz = r0.xyz * r2.www;
  r0.w = (int)v1.x * 36;
  r3.x = t3[r0.w].val[0/4];
  r3.y = t3[r0.w].val[0/4+1];
  r3.z = t3[r0.w].val[0/4+2];
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t3[r4.x].val[0/4];
  r4.z = t3[r4.x].val[0/4+1];
  r4.w = t3[r4.x].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 2);
  r5.x = t3[r0.w].val[0/4];
  r5.y = t3[r0.w].val[0/4+1];
  r5.z = t3[r0.w].val[0/4+2];
  r0.w = mad((int)v1.x, 36, 4);
  r6.x = t3[r0.w].val[0/4];
  r6.y = t3[r0.w].val[0/4+1];
  r6.z = t3[r0.w].val[0/4+2];
  r6.w = t3[r0.w].val[0/4+3];
  r7.xyz = r6.xxx * r3.xyz;
  r8.xyz = r6.yyy * r4.xzw;
  r6.xyz = r6.zzz * r5.xyz;
  r9.xyz = r8.xyz * r0.yyy;
  r0.xyw = r0.xxx * r7.xyz + r9.xyz;
  o0.xyz = r0.zzz * r6.xyz + r0.xyw;
  r0.xyz = r8.xyz * r2.yyy;
  r0.xyz = r2.xxx * r7.xyz + r0.xyz;
  o1.xyz = r2.zzz * r6.xyz + r0.xyz;
  o1.w = r6.w * r2.w;
  r0.x = t3[r4.y].val[0/4];
  r0.y = t3[r4.y].val[0/4+1];
  r0.z = t3[r4.y].val[0/4+2];
  r2.xyz = v0.yyy * r4.xzw;
  r2.xyz = r3.xyz * v0.xxx + r2.xyz;
  r2.xyz = r5.xyz * v0.zzz + r2.xyz;
  r0.xyz = cb0[70].xyz + r0.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyzw = cb0[1].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[0].xyzw + r2.xyzw;
  r2.xyzw = r0.zzzz * cb0[2].xyzw + r2.xyzw;
  r2.xyzw = cb0[3].xyzw + r2.xyzw;
  r3.xyz = -cb0[68].xyz + r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r3.w = sqrt(r0.w);
  r4.xy = float2(9.99999975e-006,100) * cb0[159].xx;
  r4.z = -cb0[158].w + cb0[68].z;
  r4.z = cb0[159].y * r4.z;
  r5.xy = cb0[68].xy;
  r5.xy = r5.xy * r4.xx;
  r5.w = r4.z * r4.x + 6360.00977;
  r4.z = dot(r5.xyw, r5.xyw);
  r6.y = sqrt(r4.z);
  r0.w = rsqrt(r0.w);
  r7.xyz = r3.xyz * r0.www;
  r4.w = dot(r5.xyw, r7.xyz);
  r6.z = r4.w / r6.y;
  r5.z = r6.z * r6.z + -1;
  r6.w = r4.x * r3.w;
  r8.x = r3.w * r4.x + -cb0[159].w;
  r8.x = max(0, r8.x);
  r8.y = 0.100000001 * r8.x;
  r8.y = r8.y / cb0[159].w;
  r8.y = min(1, r8.y);
  r4.y = cmp(r6.w < r4.y);
  if (r4.y != 0) {
    r6.w = cb0[158].x * r8.y;
    r3.w = r3.w * r4.x + cb0[160].x;
    r6.x = max(1, r3.w);
  } else {
    r3.w = r4.z * r5.z + 40449600;
    r3.w = sqrt(r3.w);
    r6.x = -r4.w + -r3.w;
    r6.w = 1;
  }
  r3.w = r4.z * r5.z + 41344900;
  r3.w = sqrt(r3.w);
  r4.x = -r4.w + -r3.w;
  r4.z = cmp(0 < r4.x);
  r9.xyz = r4.xxx * r7.xyz + r5.xyw;
  r10.x = r6.x + -r4.x;
  r10.z = -0.000155520989 * r3.w;
  r9.xyz = r4.zzz ? r9.xyz : r5.xyw;
  r10.y = 6430;
  r4.xzw = r4.zzz ? r10.xyz : r6.xyz;
  r3.w = cmp(r4.z < 6360.01465);
  r5.z = 6360.01465 + -r4.z;
  r10.xyz = -r5.zzz * r7.xyz + r9.xyz;
  r11.x = -r5.z + r4.x;
  r5.z = dot(r10.xyz, r7.xyz);
  r11.z = 0.000157232338 * r5.z;
  r11.y = 6360.01465;
  r4.xzw = r3.www ? r11.xyz : r4.xzw;
  r5.z = cmp(6430 >= r4.z);
  r8.x = cmp(0 < r8.x);
  r5.z = r5.z ? r8.x : 0;
  if (r5.z != 0) {
    r8.xzw = r3.www ? r10.xyz : r9.xyz;
    r3.w = dot(r7.xyz, cb0[161].xyz);
    r5.z = dot(r8.xzw, cb0[161].xyz);
    r5.z = r5.z / r4.z;
    r9.x = 6360 / r4.z;
    r9.x = -r9.x * r9.x + 1;
    r9.x = sqrt(r9.x);
    r9.yz = float2(0.155000001,0.00499999989) + -r9.xx;
    r9.yw = max(r9.yz, r4.ww);
    r10.x = r4.y ? r9.y : r9.w;
    r4.w = -1.44269502 * r7.z;
    r4.w = exp2(r4.w);
    r11.y = saturate(-0.5 + r4.w);
    r4.w = cmp(r11.y < 1);
    r7.w = max(0.150000006, r7.z);
    r9.y = dot(r7.xyw, r7.xyw);
    r9.y = rsqrt(r9.y);
    r12.xyz = r9.yyy * r7.xyw;
    r13.xyz = r4.xxx * r12.xyz + r8.xzw;
    r7.w = dot(r13.xyz, r13.xyz);
    r7.w = sqrt(r7.w);
    r9.y = dot(r13.xyz, r12.xyz);
    r12.w = r9.y / r7.w;
    r10.yzw = r7.xyz;
    r12.xyzw = r4.wwww ? r12.xyzw : r10.yzwx;
    r11.x = r12.w;
    r10.y = 0;
    r11.xy = r4.yy ? r11.xy : r10.xy;
    r4.w = r3.w * r3.w + 1;
    r7.w = 0.0596831031 * r4.w;
    r9.y = -r3.w * 1.60000002 + 1.63999999;
    r9.y = log2(abs(r9.y));
    r9.y = -1.5 * r9.y;
    r9.y = exp2(r9.y);
    r4.w = r9.y * r4.w;
    r13.x = 0.0162772108 * r4.w;
    r4.w = r4.z * r4.z;
    r9.y = r4.z * r4.z + -40449600;
    r9.y = sqrt(r9.y);
    r9.w = r11.x * r4.z;
    r10.y = r9.w * r9.w + -r4.w;
    r10.y = 40449600 + r10.y;
    r10.z = cmp(r9.w < 0);
    r10.w = cmp(0 < r10.y);
    r10.z = r10.w ? r10.z : 0;
    r14.xyzw = r10.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r10.z = asuint(cb0[182].w);
    r10.w = 0.5 / r10.z;
    r11.w = 0.00105685578 * r9.y;
    r10.z = 1 / r10.z;
    r10.z = 1 + -r10.z;
    r15.z = r11.w * r10.z + r10.w;
    r10.y = r14.y + r10.y;
    r10.y = sqrt(r10.y);
    r9.w = r9.w * r14.x + r10.y;
    r10.y = r14.z + r9.y;
    r9.w = r9.w / r10.y;
    r15.w = r9.w * 0.4921875 + r14.w;
    r9.w = max(-0.197500005, r5.z);
    r9.w = 5.34962368 * r9.w;
    r10.y = min(1, abs(r9.w));
    r11.w = max(1, abs(r9.w));
    r11.w = 1 / r11.w;
    r10.y = r11.w * r10.y;
    r11.w = r10.y * r10.y;
    r12.w = r11.w * 0.0208350997 + -0.0851330012;
    r12.w = r11.w * r12.w + 0.180141002;
    r12.w = r11.w * r12.w + -0.330299497;
    r11.w = r11.w * r12.w + 0.999866009;
    r12.w = r11.w * r10.y;
    r14.x = cmp(1 < abs(r9.w));
    r12.w = r12.w * -2 + 1.57079637;
    r12.w = r14.x ? r12.w : 0;
    r10.y = r10.y * r11.w + r12.w;
    r9.w = min(1, r9.w);
    r9.w = cmp(r9.w < -r9.w);
    r9.w = r9.w ? -r10.y : r10.y;
    r9.w = r9.w * 0.909090877 + 0.74000001;
    r9.w = r9.w * 0.484375 + 0.015625;
    r3.w = 1 + r3.w;
    r10.y = 3.5 * r3.w;
    r10.y = floor(r10.y);
    r3.w = r3.w * 3.5 + -r10.y;
    r9.w = r10.y + r9.w;
    r15.y = 0.125 * r9.w;
    r14.xyzw = t2.SampleLevel(s2_s, r15.ywz, 0).xyzw;
    r11.w = 1 + -r3.w;
    r9.w = 1 + r9.w;
    r15.x = 0.125 * r9.w;
    r16.xyzw = t2.SampleLevel(s2_s, r15.xwz, 0).xyzw;
    r16.xyzw = r16.xyzw * r3.wwww;
    r14.xyzw = r14.xyzw * r11.wwww + r16.xyzw;
    r14.xyzw = max(float4(0,0,0,0), r14.xyzw);
    r9.w = cmp(0 < r4.x);
    if (r9.w != 0) {
      r8.xzw = r4.xxx * r7.xyz + r8.xzw;
      r9.w = dot(r8.xzw, r8.xzw);
      r9.w = sqrt(r9.w);
      r12.w = 0.5 / cb0[159].z;
      r12.w = r12.w * r4.z;
      r12.w = sqrt(r12.w);
      r16.x = r4.x / r4.z;
      r11.z = r16.x + r11.x;
      r16.xy = r12.ww * r11.xz;
      r16.zw = cmp(float2(0,0) < r16.xy);
      r17.xy = cmp(r16.xy < float2(0,0));
      r16.zw = (int2)-r16.zw + (int2)r17.xy;
      r16.zw = (int2)r16.zw;
      r17.xyz = r16.xxy * r16.xxy;
      r12.w = cmp(r16.z < r16.w);
      r17.x = 1.44269502 * r17.x;
      r17.x = exp2(r17.x);
      r12.w = r12.w ? r17.x : 0;
      r17.xy = r17.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r17.xy = sqrt(r17.xy);
      r16.xy = abs(r16.xy) * float2(2.31929994,2.31929994) + r17.xy;
      r16.xy = r16.zw / r16.xy;
      r16.z = -r4.x / cb0[159].z;
      r16.w = r4.z + r4.z;
      r17.x = r4.x / r16.w;
      r17.x = r17.x + r11.x;
      r16.z = r17.x * r16.z;
      r16.z = 1.44269502 * r16.z;
      r18.y = exp2(r16.z);
      r18.xz = float2(1,1);
      r16.xy = r18.xy * r16.xy;
      r16.z = cb0[159].z * r4.z;
      r16.z = 6.28310013 * r16.z;
      r16.z = sqrt(r16.z);
      r17.y = 6360 + -r4.z;
      r17.z = r17.y / cb0[159].z;
      r17.z = 1.44269502 * r17.z;
      r17.z = exp2(r17.z);
      r16.z = r17.z * r16.z;
      r16.x = dot(r16.xy, float2(1,-1));
      r12.w = r16.x + r12.w;
      r12.w = r16.z * r12.w;
      r16.xy = float2(0.416666657,7.53972054) * r4.zz;
      r16.xy = sqrt(r16.xy);
      r16.xz = r16.xx * r11.xz;
      r17.zw = cmp(float2(0,0) < r16.xz);
      r18.xy = cmp(r16.xz < float2(0,0));
      r17.zw = (int2)-r17.zw + (int2)r18.xy;
      r17.zw = (int2)r17.zw;
      r19.xyz = r16.xxz * r16.xxz;
      r11.z = cmp(r17.z < r17.w);
      r18.x = 1.44269502 * r19.x;
      r18.x = exp2(r18.x);
      r11.z = r11.z ? r18.x : 0;
      r18.xy = r19.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r18.xy = sqrt(r18.xy);
      r16.xz = abs(r16.xz) * float2(2.31929994,2.31929994) + r18.xy;
      r16.xz = r17.zw / r16.xz;
      r17.x = r17.x * -r4.x;
      r17.x = 1.20224583 * r17.x;
      r18.w = exp2(r17.x);
      r16.xz = r18.zw * r16.xz;
      r17.x = 1.20224583 * r17.y;
      r17.x = exp2(r17.x);
      r16.y = r17.x * r16.y;
      r16.x = dot(r16.xz, float2(1,-1));
      r11.z = r16.x + r11.z;
      r11.z = r16.y * r11.z;
      r11.z = 0.00444444455 * r11.z;
      r16.xyz = r12.www * float3(-0.00579999993,-0.0135000004,-0.0331000015) + -r11.zzz;
      r16.xyz = float3(1.44269502,1.44269502,1.44269502) * r16.xyz;
      r16.xyz = exp2(r16.xyz);
      r11.z = max(r9.w, r4.z);
      r11.z = r4.y ? r11.z : r9.w;
      r12.w = cmp(6360.00977 < r11.z);
      if (r12.w != 0) {
        r12.w = cmp(r11.y < 1);
        if (r12.w != 0) {
          r12.xyz = r4.yyy ? r12.xyz : r7.xyz;
          r12.x = dot(r8.xzw, r12.xyz);
          r12.x = r12.x / r9.w;
          r8.x = dot(r8.xzw, cb0[161].xyz);
          r8.x = r8.x / r9.w;
          r8.z = r11.z * r11.z;
          r8.w = r11.z * r11.z + -40449600;
          r8.w = sqrt(r8.w);
          r9.w = r12.x * r11.z;
          r8.z = r9.w * r9.w + -r8.z;
          r8.z = 40449600 + r8.z;
          r11.z = cmp(r9.w < 0);
          r12.x = cmp(0 < r8.z);
          r11.z = r11.z ? r12.x : 0;
          r12.xyzw = r11.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r11.z = r8.w * r10.z;
          r17.y = r11.z * 0.00105685578 + r10.w;
          r8.zw = r12.yz + r8.zw;
          r8.z = sqrt(r8.z);
          r8.z = r9.w * r12.x + r8.z;
          r8.z = r8.z / r8.w;
          r17.x = r8.z * 0.4921875 + r12.w;
          r8.x = max(-0.197500005, r8.x);
          r8.x = 5.34962368 * r8.x;
          r8.z = min(1, abs(r8.x));
          r8.w = max(1, abs(r8.x));
          r8.w = 1 / r8.w;
          r8.z = r8.z * r8.w;
          r8.w = r8.z * r8.z;
          r9.w = r8.w * 0.0208350997 + -0.0851330012;
          r9.w = r8.w * r9.w + 0.180141002;
          r9.w = r8.w * r9.w + -0.330299497;
          r8.w = r8.w * r9.w + 0.999866009;
          r9.w = r8.z * r8.w;
          r11.z = cmp(1 < abs(r8.x));
          r9.w = r9.w * -2 + 1.57079637;
          r9.w = r11.z ? r9.w : 0;
          r8.z = r8.z * r8.w + r9.w;
          r8.x = min(1, r8.x);
          r8.x = cmp(r8.x < -r8.x);
          r8.x = r8.x ? -r8.z : r8.z;
          r8.x = r8.x * 0.909090877 + 0.74000001;
          r8.x = r8.x * 0.484375 + r10.y;
          r8.xz = float2(0.015625,1.015625) + r8.xx;
          r17.zw = float2(0.125,0.125) * r8.xz;
          r12.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
          r18.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
          r18.xyzw = r18.xyzw * r3.wwww;
          r12.xyzw = r12.xyzw * r11.wwww + r18.xyzw;
          r12.xyzw = -r16.xyzx * r12.xyzw + r14.xyzw;
          r14.xyzw = max(float4(0,0,0,0), r12.xyzw);
          if (r4.y == 0) {
            r8.x = r11.x + r9.x;
            r8.z = cmp(abs(r8.x) < 0.00499999989);
            if (r8.z != 0) {
              r8.x = 0.00499999989 + r8.x;
              r8.x = 100 * r8.x;
              r8.z = -0.00499999989 + -r9.x;
              r8.w = r4.x * r4.x + r4.w;
              r9.x = r16.w * r4.x;
              r9.w = r9.x * r8.z + r8.w;
              r9.w = sqrt(r9.w);
              r10.y = r8.z * r4.z;
              r8.z = r4.z * r8.z + r4.x;
              r8.z = r8.z / r9.w;
              r8.z = max(r9.z, r8.z);
              r11.x = r10.y * r10.y + -r4.w;
              r11.x = 40449600 + r11.x;
              r11.z = cmp(r10.y < 0);
              r12.x = cmp(0 < r11.x);
              r11.z = r11.z ? r12.x : 0;
              r12.xyzw = r11.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r11.x = r12.y + r11.x;
              r11.x = sqrt(r11.x);
              r10.y = r10.y * r12.x + r11.x;
              r11.x = r12.z + r9.y;
              r10.y = r10.y / r11.x;
              r12.x = r10.y * 0.4921875 + r12.w;
              r12.yz = r15.yz;
              r18.xyzw = t2.SampleLevel(s2_s, r12.yxz, 0).xyzw;
              r15.y = r12.x;
              r19.xyzw = t2.SampleLevel(s2_s, r15.xyz, 0).xyzw;
              r19.xyzw = r19.xyzw * r3.wwww;
              r18.xyzw = r18.xyzw * r11.wwww + r19.xyzw;
              r10.y = r9.w * r9.w;
              r11.x = r9.w * r9.w + -40449600;
              r11.x = sqrt(r11.x);
              r8.z = r9.w * r8.z;
              r9.w = r8.z * r8.z + -r10.y;
              r9.w = 40449600 + r9.w;
              r10.y = cmp(r8.z < 0);
              r11.z = cmp(0 < r9.w);
              r10.y = r10.y ? r11.z : 0;
              r19.xyzw = r10.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.y = r11.x * r10.z;
              r17.y = r10.y * 0.00105685578 + r10.w;
              r9.w = r19.y + r9.w;
              r9.w = sqrt(r9.w);
              r8.z = r8.z * r19.x + r9.w;
              r9.w = r19.z + r11.x;
              r8.z = r8.z / r9.w;
              r17.x = r8.z * 0.4921875 + r19.w;
              r19.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
              r20.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
              r20.xyzw = r20.xyzw * r3.wwww;
              r19.xyzw = r19.xyzw * r11.wwww + r20.xyzw;
              r18.xyzw = -r16.xyzx * r19.xyzw + r18.xyzw;
              r18.xyzw = max(float4(0,0,0,0), r18.xyzw);
              r8.z = r9.x * r9.z + r8.w;
              r8.z = sqrt(r8.z);
              r8.w = r9.z * r4.z;
              r4.x = r4.z * r9.z + r4.x;
              r4.x = r4.x / r8.z;
              r4.x = max(r9.z, r4.x);
              r9.x = r8.w * r8.w + -r4.w;
              r9.x = 40449600 + r9.x;
              r9.z = cmp(r8.w < 0);
              r9.w = cmp(0 < r9.x);
              r9.z = r9.w ? r9.z : 0;
              r19.xyzw = r9.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.x = r19.y + r9.x;
              r9.x = sqrt(r9.x);
              r8.w = r8.w * r19.x + r9.x;
              r9.x = r19.z + r9.y;
              r8.w = r8.w / r9.x;
              r12.w = r8.w * 0.4921875 + r19.w;
              r19.xyzw = t2.SampleLevel(s2_s, r12.ywz, 0).xyzw;
              r15.w = r12.w;
              r12.xyzw = t2.SampleLevel(s2_s, r15.xwz, 0).xyzw;
              r12.xyzw = r12.xyzw * r3.wwww;
              r12.xyzw = r19.xyzw * r11.wwww + r12.xyzw;
              r8.w = r8.z * r8.z;
              r9.x = r8.z * r8.z + -40449600;
              r9.x = sqrt(r9.x);
              r4.x = r8.z * r4.x;
              r8.z = r4.x * r4.x + -r8.w;
              r8.z = 40449600 + r8.z;
              r8.w = cmp(r4.x < 0);
              r9.z = cmp(0 < r8.z);
              r8.w = r8.w ? r9.z : 0;
              r19.xyzw = r8.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r8.w = r9.x * r10.z;
              r17.y = r8.w * 0.00105685578 + r10.w;
              r8.z = r19.y + r8.z;
              r8.z = sqrt(r8.z);
              r4.x = r4.x * r19.x + r8.z;
              r8.z = r19.z + r9.x;
              r4.x = r4.x / r8.z;
              r17.x = r4.x * 0.4921875 + r19.w;
              r19.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
              r17.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
              r17.xyzw = r17.xyzw * r3.wwww;
              r17.xyzw = r19.xyzw * r11.wwww + r17.xyzw;
              r12.xyzw = -r16.xyzx * r17.xyzw + r12.xyzw;
              r12.xyzw = max(float4(0,0,0,0), r12.xyzw);
              r12.xyzw = r12.xyzw + -r18.xyzw;
              r14.xyzw = r8.xxxx * r12.xyzw + r18.xyzw;
            }
          } else {
            r4.x = cmp(0 < r11.y);
            if (r4.x != 0) {
              r12.xyzw = float4(1,1,1,1) + -r16.xyzx;
              r4.x = r10.x * r4.z;
              r4.z = r4.x * r4.x + -r4.w;
              r4.z = 40449600 + r4.z;
              r4.w = cmp(r4.x < 0);
              r8.x = cmp(0 < r4.z);
              r4.w = r4.w ? r8.x : 0;
              r10.xyzw = r4.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r4.z = r10.y + r4.z;
              r4.z = sqrt(r4.z);
              r4.x = r4.x * r10.x + r4.z;
              r4.z = r10.z + r9.y;
              r4.x = r4.x / r4.z;
              r9.y = r4.x * 0.4921875 + r10.w;
              r9.xz = r15.yz;
              r10.xyzw = t2.SampleLevel(s2_s, r9.xyz, 0).xyzw;
              r9.xz = r15.xz;
              r9.xyzw = t2.SampleLevel(s2_s, r9.xyz, 0).xyzw;
              r9.xyzw = r9.xyzw * r3.wwww;
              r9.xyzw = r10.xyzw * r11.wwww + r9.xyzw;
              r9.xyzw = max(float4(0,0,0,0), r9.xyzw);
              r9.xyzw = r12.xyzw * r9.xyzw + -r14.xyzw;
              r14.xyzw = r11.yyyy * r9.xyzw + r14.xyzw;
            }
          }
        } else {
          r9.xyzw = float4(1,1,1,1) + -r16.xyzx;
          r14.xyzw = r9.xyzw * r14.xyzw;
        }
      }
    } else {
      r16.xyz = float3(1,1,1);
    }
    r3.w = saturate(50 * r5.z);
    r4.x = r3.w * -2 + 3;
    r3.w = r3.w * r3.w;
    r3.w = r4.x * r3.w;
    r3.w = r14.w * r3.w;
    r4.xzw = r14.xyz * r3.www;
    r3.w = max(9.99999975e-005, r14.x);
    r4.xzw = r4.xzw / r3.www;
    r13.yzw = float3(1,0.429629624,0.175226584);
    r4.xzw = r4.xzw * r13.yxx;
    r4.xzw = r4.xzw * r13.xzw;
    r4.xzw = r14.xyz * r7.www + r4.xzw;
    r4.xzw = max(float3(0,0,0), r4.xzw);
  } else {
    r16.xyz = float3(1,1,1);
    r4.xzw = float3(0,0,0);
  }
  r8.xz = asint(cb0[182].zz) & int2(2,1);
  if (r8.x == 0) {
    r3.w = cmp(0 < r6.x);
    if (r3.w != 0) {
      r5.xyz = r6.xxx * r7.xyz + r5.xyw;
      r3.w = dot(r5.xyz, r5.xyz);
      r3.w = sqrt(r3.w);
      r5.xyz = r5.xyz / r3.www;
      r5.w = dot(r5.xyz, cb0[161].xyz);
      r3.w = -6360 + r3.w;
      r9.z = 0.0142857144 * r3.w;
      r10.y = sqrt(r9.z);
      r8.xw = float2(0.150000006,0.200000003) + r5.ww;
      r9.xy = float2(12.262105,0.833333313) * r8.xw;
      r3.w = min(1, abs(r9.x));
      r7.w = max(1, abs(r9.x));
      r7.w = 1 / r7.w;
      r3.w = r7.w * r3.w;
      r7.w = r3.w * r3.w;
      r8.x = r7.w * 0.0208350997 + -0.0851330012;
      r8.x = r7.w * r8.x + 0.180141002;
      r8.x = r7.w * r8.x + -0.330299497;
      r7.w = r7.w * r8.x + 0.999866009;
      r8.x = r7.w * r3.w;
      r8.w = cmp(1 < abs(r9.x));
      r8.x = r8.x * -2 + 1.57079637;
      r8.x = r8.w ? r8.x : 0;
      r3.w = r3.w * r7.w + r8.x;
      r7.w = min(1, r9.x);
      r7.w = cmp(r7.w < -r7.w);
      r3.w = r7.w ? -r3.w : r3.w;
      r10.x = 0.666666687 * r3.w;
      r10.xyz = t0.SampleLevel(s0_s, r10.xy, 0).xyz;
      r10.xyz = r4.yyy ? float3(0,0,0) : r10.xyz;
      r9.xyz = t1.SampleLevel(s1_s, r9.yz, 0).xyz;
      r3.w = max(0, r5.w);
      r9.xyz = r3.www * r10.xyz + r9.xyz;
      r9.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r9.xyz;
      r3.xyz = -r3.xyz * r0.www + cb0[161].xyz;
      r0.w = dot(r3.xyz, r3.xyz);
      r0.w = rsqrt(r0.w);
      r3.xyz = r3.xyz * r0.www;
      r0.w = dot(-r7.xyz, r3.xyz);
      r0.w = 1 + -r0.w;
      r3.w = r0.w * r0.w;
      r3.w = r3.w * r3.w;
      r0.w = r3.w * r0.w;
      r0.w = r0.w * 0.980000019 + 0.0199999996;
      r3.x = dot(r3.xyz, r5.xyz);
      r3.x = max(0, r3.x);
      r3.x = log2(r3.x);
      r3.x = 150 * r3.x;
      r3.x = exp2(r3.x);
      r0.w = r3.x * r0.w;
      r0.w = max(0, r0.w);
      r3.xyz = r0.www * r10.xyz + r9.xyz;
      r3.xyz = r4.yyy ? r9.xyz : r3.xyz;
      r3.xyz = r16.xyz * r3.xyz;
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
    r3.w = min(1, abs(r5.y));
    r4.y = max(1, abs(r5.y));
    r4.y = 1 / r4.y;
    r3.w = r4.y * r3.w;
    r4.y = r3.w * r3.w;
    r5.x = r4.y * 0.0208350997 + -0.0851330012;
    r5.x = r4.y * r5.x + 0.180141002;
    r5.x = r4.y * r5.x + -0.330299497;
    r4.y = r4.y * r5.x + 0.999866009;
    r5.x = r4.y * r3.w;
    r5.z = cmp(1 < abs(r5.y));
    r5.x = r5.x * -2 + 1.57079637;
    r5.x = r5.z ? r5.x : 0;
    r3.w = r3.w * r4.y + r5.x;
    r4.y = min(1, r5.y);
    r4.y = cmp(r4.y < -r4.y);
    r3.w = r4.y ? -r3.w : r3.w;
    r9.x = 0.666666687 * r3.w;
    r5.xyz = t0.SampleLevel(s0_s, r9.xy, 0).xyz;
    r5.xyz = r0.www ? r5.xyz : float3(1,1,1);
    r0.w = cmp(0 < r6.x);
    r3.w = dot(r7.xyz, cb0[161].xyz);
    r3.w = cmp(r3.w >= cb0[169].x);
    r3.w = r3.w ? 1.000000 : 0;
    r5.xyz = r5.xyz * r3.www;
    r5.xyz = cb0[167].xyz * r5.xyz;
    r5.xyz = r0.www ? float3(0,0,0) : r5.xyz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r3.xyz = r5.xyz + r3.xyz;
  r3.xyz = r3.xyz + r4.xzw;
  r0.w = cb0[157].w * r6.w;
  r4.xyz = cb0[163].xyz * r0.www;
  r3.xyz = r4.xyz * r3.xyz;
  r0.w = saturate(r16.x * cb0[158].y + -cb0[158].z);
  r4.x = 1 + -r8.y;
  r4.y = 1 + -r0.w;
  r3.w = r4.x * r4.y + r0.w;
  r0.w = cmp(0 < cb0[182].y);
  if (r0.w != 0) {
    r0.w = cmp(0 != cb0[184].x);
    r4.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[68].xyz;
    r5.xy = r2.xy / r2.ww;
    r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.xyz = r0.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r4.xyz;
    r4.x = dot(r0.xyz, r0.xyz);
    r4.y = sqrt(r4.x);
    r4.y = -cb0[181].x + r4.y;
    r4.y = max(0, r4.y);
    r4.y = cb0[182].x * r4.y;
    r4.y = cb0[181].z * r4.y;
    r6.z = sqrt(r4.y);
    r4.y = cb0[181].y * r6.z;
    r4.z = cmp(r4.y < 0.707106769);
    r4.y = dot(r4.yy, r4.yy);
    r4.y = min(1, r4.y);
    r4.y = r4.z ? r4.y : 1;
    r4.x = rsqrt(r4.x);
    r0.xyz = r4.xxx * r0.xyz;
    r4.x = -r0.z * r0.z + 1;
    r4.x = sqrt(r4.x);
    r7.y = r0.z * 0.5 + 0.5;
    r0.xy = r0.xy / r4.xx;
    r0.z = 1 + -abs(r0.x);
    r0.z = sqrt(r0.z);
    r4.x = abs(r0.x) * -0.0187292993 + 0.0742610022;
    r4.x = r4.x * abs(r0.x) + -0.212114394;
    r4.x = r4.x * abs(r0.x) + 1.57072878;
    r4.z = r4.x * r0.z;
    r4.z = r4.z * -2 + 3.14159274;
    r0.x = cmp(r0.x < -r0.x);
    r0.x = r0.x ? r4.z : 0;
    r0.x = r4.x * r0.z + r0.x;
    r0.y = cmp(r0.y < 0);
    r0.z = 6.28318548 + -r0.x;
    r0.x = r0.y ? r0.z : r0.x;
    r7.x = 0.159154937 * r0.x;
    r0.xy = cb0[180].zw * float2(0.5,0.5) + r7.xy;
    r4.xz = float2(1,1) + cb0[180].xy;
    r4.xz = cb0[180].xy / r4.xz;
    r0.xy = r4.xz * r0.xy;
    r6.xy = r0.ww ? r0.xy : r5.xy;
    r0.xyzw = t4.SampleLevel(s3_s, r6.xyz, 0).xyzw;
    r0.xyz = r0.xyz * r4.yyy;
    r0.w = 1 + -r0.w;
    r0.w = -r4.y * r0.w + 1;
    r0.xyz = cb0[135].zzz * r0.xyz;
    o4.xyz = r0.xyz * r3.www + r3.xyz;
    o4.w = r3.w * r0.w;
  } else {
    o4.xyzw = r3.xyzw;
  }
  o0.w = 0;
  o2.xyzw = r1.zyxw;
  o5.xyzw = r2.xyzw;
  o3.x = v1.x;
  return;
}