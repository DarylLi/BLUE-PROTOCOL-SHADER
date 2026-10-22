// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t7 : register(t7);

Buffer<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

struct t4_t {
  float val[4];
};
StructuredBuffer<t4_t> t4 : register(t4);

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
  float4 cb1[2];
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
  out float4 o2 : TEXCOORD4,
  out uint o3 : PRIMITIVE_ID0,
  out uint p3 : LIGHTMAP_ID0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t7.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t7.Load(r1.x).xyzw;
  r2.xyz = r1.yzx * r0.yzw;
  r0.yzw = r1.xyz * r0.zwy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.xyz = r0.yzw * r1.yzx;
  r0.yzw = r0.wyz * r1.zxy + -r2.xyz;
  r0.yzw = r0.yzw * r1.www;
  r2.x = (int)v1.x * 36;
  r2.x = t3[r2.x].val[0/4];
  r2.y = t3[r2.x].val[0/4+1];
  r2.z = t3[r2.x].val[0/4+2];
  r3.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r3.x = t3[r3.x].val[0/4];
  r3.z = t3[r3.x].val[0/4+1];
  r3.w = t3[r3.x].val[0/4+2];
  r2.w = mad((int)v1.x, 36, 2);
  r4.x = t3[r2.w].val[0/4];
  r4.y = t3[r2.w].val[0/4+1];
  r4.z = t3[r2.w].val[0/4+2];
  r5.xy = mad((int2)v1.xx, int2(36,36), int2(4,24));
  r6.x = t3[r5.x].val[0/4];
  r6.y = t3[r5.x].val[0/4+1];
  r6.z = t3[r5.x].val[0/4+2];
  r6.w = t3[r5.x].val[0/4+3];
  r5.xzw = r6.xxx * r2.xyz;
  r7.xyz = r6.yyy * r3.xzw;
  r6.xyz = r6.zzz * r4.xyz;
  r8.xyz = r7.xyz * r0.zzz;
  r8.xyz = r0.yyy * r5.xzw + r8.xyz;
  o0.xyz = r0.www * r6.xyz + r8.xyz;
  r0.yzw = r7.xyz * r1.yyy;
  r0.yzw = r1.xxx * r5.xzw + r0.yzw;
  o1.xyz = r1.zzz * r6.xyz + r0.yzw;
  o1.w = r6.w * r1.w;
  r0.y = t3[r3.y].val[0/4];
  r0.z = t3[r3.y].val[0/4+1];
  r0.w = t3[r3.y].val[0/4+2];
  r1.xyz = v0.yyy * r3.xzw;
  r1.xyz = r2.xyz * v0.xxx + r1.xyz;
  r1.xyz = r4.xyz * v0.zzz + r1.xyz;
  r0.yzw = cb0[70].xyz + r0.yzw;
  r0.yzw = r1.xyz + r0.yzw;
  r1.xyzw = cb0[1].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb0[0].xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * cb0[2].xyzw + r1.xyzw;
  r1.xyzw = cb0[3].xyzw + r1.xyzw;
  r0.x = mad(asint(cb1[0].y), (int)r0.x, asint(cb1[0].z));
  r2.xy = t6.Load(r0.x).xy;
  r0.x = t3[r5.y].val[12/4];
  r0.x = (int)r0.x + asint(cb1[1].y);
  r2.zw = mad((int2)r0.xx, int2(15,15), int2(2,3));
  r3.x = t4[r2.z].val[0/4];
  r3.y = t4[r2.z].val[0/4+1];
  r3.z = t4[r2.z].val[0/4+2];
  r3.w = t4[r2.z].val[0/4+3];
  o2.xy = r2.xy * r3.xy + r3.zw;
  r3.x = t4[r2.w].val[0/4];
  r3.y = t4[r2.w].val[0/4+1];
  r3.z = t4[r2.w].val[0/4+2];
  r3.w = t4[r2.w].val[0/4+3];
  o2.zw = r2.xy * r3.xy + r3.zw;
  r2.xyz = -cb0[68].xyz + r0.yzw;
  r2.w = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r2.w);
  r3.yz = float2(9.99999975e-006,100) * cb0[159].xx;
  r3.w = -cb0[158].w + cb0[68].z;
  r3.w = cb0[159].y * r3.w;
  r4.xy = cb0[68].xy;
  r4.xy = r4.xy * r3.yy;
  r4.w = r3.w * r3.y + 6360.00977;
  r3.w = dot(r4.xyw, r4.xyw);
  r5.y = sqrt(r3.w);
  r2.w = rsqrt(r2.w);
  r6.xyz = r2.xyz * r2.www;
  r4.z = dot(r4.xyw, r6.xyz);
  r5.z = r4.z / r5.y;
  r5.w = r5.z * r5.z + -1;
  r7.x = r3.x * r3.y;
  r7.y = r3.x * r3.y + -cb0[159].w;
  r7.y = max(0, r7.y);
  r7.z = 0.100000001 * r7.y;
  r7.z = r7.z / cb0[159].w;
  r7.z = min(1, r7.z);
  r3.z = cmp(r7.x < r3.z);
  if (r3.z != 0) {
    r7.x = cb0[158].x * r7.z;
    r3.x = r3.x * r3.y + cb0[160].x;
    r5.x = max(1, r3.x);
  } else {
    r3.x = r3.w * r5.w + 40449600;
    r3.x = sqrt(r3.x);
    r5.x = -r4.z + -r3.x;
    r7.x = 1;
  }
  r3.x = r3.w * r5.w + 41344900;
  r3.x = sqrt(r3.x);
  r3.y = -r4.z + -r3.x;
  r3.w = cmp(0 < r3.y);
  r8.xyz = r3.yyy * r6.xyz + r4.xyw;
  r9.x = r5.x + -r3.y;
  r9.z = -0.000155520989 * r3.x;
  r8.xyz = r3.www ? r8.xyz : r4.xyw;
  r9.y = 6430;
  r3.xyw = r3.www ? r9.xyz : r5.xyz;
  r4.z = cmp(r3.y < 6360.01465);
  r5.w = 6360.01465 + -r3.y;
  r9.xyz = -r5.www * r6.xyz + r8.xyz;
  r10.x = -r5.w + r3.x;
  r5.w = dot(r9.xyz, r6.xyz);
  r10.z = 0.000157232338 * r5.w;
  r10.y = 6360.01465;
  r3.xyw = r4.zzz ? r10.xyz : r3.xyw;
  r5.w = cmp(6430 >= r3.y);
  r7.y = cmp(0 < r7.y);
  r5.w = r5.w ? r7.y : 0;
  if (r5.w != 0) {
    r8.xyz = r4.zzz ? r9.xyz : r8.xyz;
    r4.z = dot(r6.xyz, cb0[161].xyz);
    r5.w = dot(r8.xyz, cb0[161].xyz);
    r5.w = r5.w / r3.y;
    r7.y = 6360 / r3.y;
    r7.y = -r7.y * r7.y + 1;
    r7.y = sqrt(r7.y);
    r9.xy = float2(0.155000001,0.00499999989) + -r7.yy;
    r9.xz = max(r9.xy, r3.ww);
    r10.x = r3.z ? r9.x : r9.z;
    r3.w = -1.44269502 * r6.z;
    r3.w = exp2(r3.w);
    r11.y = saturate(-0.5 + r3.w);
    r3.w = cmp(r11.y < 1);
    r6.w = max(0.150000006, r6.z);
    r7.w = dot(r6.xyw, r6.xyw);
    r7.w = rsqrt(r7.w);
    r12.xyz = r7.www * r6.xyw;
    r9.xzw = r3.xxx * r12.xyz + r8.xyz;
    r6.w = dot(r9.xzw, r9.xzw);
    r6.w = sqrt(r6.w);
    r7.w = dot(r9.xzw, r12.xyz);
    r12.w = r7.w / r6.w;
    r10.yzw = r6.xyz;
    r12.xyzw = r3.wwww ? r12.xyzw : r10.yzwx;
    r11.x = r12.w;
    r10.y = 0;
    r11.xy = r3.zz ? r11.xy : r10.xy;
    r3.w = r4.z * r4.z + 1;
    r6.w = 0.0596831031 * r3.w;
    r7.w = -r4.z * 1.60000002 + 1.63999999;
    r7.w = log2(abs(r7.w));
    r7.w = -1.5 * r7.w;
    r7.w = exp2(r7.w);
    r3.w = r7.w * r3.w;
    r13.x = 0.0162772108 * r3.w;
    r3.w = r3.y * r3.y;
    r7.w = r3.y * r3.y + -40449600;
    r7.w = sqrt(r7.w);
    r8.w = r11.x * r3.y;
    r9.x = r8.w * r8.w + -r3.w;
    r9.x = 40449600 + r9.x;
    r9.z = cmp(r8.w < 0);
    r9.w = cmp(0 < r9.x);
    r9.z = r9.w ? r9.z : 0;
    r14.xyzw = r9.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r9.z = asuint(cb0[182].w);
    r9.w = 0.5 / r9.z;
    r10.y = 0.00105685578 * r7.w;
    r9.z = 1 / r9.z;
    r9.z = 1 + -r9.z;
    r15.z = r10.y * r9.z + r9.w;
    r9.x = r14.y + r9.x;
    r9.x = sqrt(r9.x);
    r8.w = r8.w * r14.x + r9.x;
    r9.x = r14.z + r7.w;
    r8.w = r8.w / r9.x;
    r15.w = r8.w * 0.4921875 + r14.w;
    r8.w = max(-0.197500005, r5.w);
    r8.w = 5.34962368 * r8.w;
    r9.x = min(1, abs(r8.w));
    r10.y = max(1, abs(r8.w));
    r10.y = 1 / r10.y;
    r9.x = r10.y * r9.x;
    r10.y = r9.x * r9.x;
    r10.z = r10.y * 0.0208350997 + -0.0851330012;
    r10.z = r10.y * r10.z + 0.180141002;
    r10.z = r10.y * r10.z + -0.330299497;
    r10.y = r10.y * r10.z + 0.999866009;
    r10.z = r10.y * r9.x;
    r10.w = cmp(1 < abs(r8.w));
    r10.z = r10.z * -2 + 1.57079637;
    r10.z = r10.w ? r10.z : 0;
    r9.x = r9.x * r10.y + r10.z;
    r8.w = min(1, r8.w);
    r8.w = cmp(r8.w < -r8.w);
    r8.w = r8.w ? -r9.x : r9.x;
    r8.w = r8.w * 0.909090877 + 0.74000001;
    r8.w = r8.w * 0.484375 + 0.015625;
    r4.z = 1 + r4.z;
    r9.x = 3.5 * r4.z;
    r9.x = floor(r9.x);
    r4.z = r4.z * 3.5 + -r9.x;
    r8.w = r9.x + r8.w;
    r15.y = 0.125 * r8.w;
    r14.xyzw = t2.SampleLevel(s2_s, r15.ywz, 0).xyzw;
    r10.y = 1 + -r4.z;
    r8.w = 1 + r8.w;
    r15.x = 0.125 * r8.w;
    r16.xyzw = t2.SampleLevel(s2_s, r15.xwz, 0).xyzw;
    r16.xyzw = r16.xyzw * r4.zzzz;
    r14.xyzw = r14.xyzw * r10.yyyy + r16.xyzw;
    r14.xyzw = max(float4(0,0,0,0), r14.xyzw);
    r8.w = cmp(0 < r3.x);
    if (r8.w != 0) {
      r8.xyz = r3.xxx * r6.xyz + r8.xyz;
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = sqrt(r8.w);
      r10.z = 0.5 / cb0[159].z;
      r10.z = r10.z * r3.y;
      r10.z = sqrt(r10.z);
      r10.w = r3.x / r3.y;
      r11.z = r11.x + r10.w;
      r10.zw = r11.xz * r10.zz;
      r16.xy = cmp(float2(0,0) < r10.zw);
      r16.zw = cmp(r10.zw < float2(0,0));
      r16.xy = (int2)-r16.xy + (int2)r16.zw;
      r16.xy = (int2)r16.xy;
      r17.xyz = r10.zzw * r10.zzw;
      r11.w = cmp(r16.x < r16.y);
      r12.w = 1.44269502 * r17.x;
      r12.w = exp2(r12.w);
      r11.w = r11.w ? r12.w : 0;
      r16.zw = r17.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r16.zw = sqrt(r16.zw);
      r10.zw = abs(r10.zw) * float2(2.31929994,2.31929994) + r16.zw;
      r10.zw = r16.xy / r10.zw;
      r12.w = -r3.x / cb0[159].z;
      r16.x = r3.y + r3.y;
      r16.y = r3.x / r16.x;
      r16.y = r16.y + r11.x;
      r12.w = r16.y * r12.w;
      r12.w = 1.44269502 * r12.w;
      r17.y = exp2(r12.w);
      r17.xz = float2(1,1);
      r10.zw = r17.xy * r10.zw;
      r12.w = cb0[159].z * r3.y;
      r12.w = 6.28310013 * r12.w;
      r12.w = sqrt(r12.w);
      r16.z = 6360 + -r3.y;
      r16.w = r16.z / cb0[159].z;
      r16.w = 1.44269502 * r16.w;
      r16.w = exp2(r16.w);
      r12.w = r16.w * r12.w;
      r10.z = dot(r10.zw, float2(1,-1));
      r10.z = r11.w + r10.z;
      r10.z = r12.w * r10.z;
      r17.xy = float2(0.416666657,7.53972054) * r3.yy;
      r17.xy = sqrt(r17.xy);
      r11.zw = r17.xx * r11.xz;
      r18.xy = cmp(float2(0,0) < r11.zw);
      r18.zw = cmp(r11.zw < float2(0,0));
      r18.xy = (int2)-r18.xy + (int2)r18.zw;
      r18.xy = (int2)r18.xy;
      r19.xyz = r11.zzw * r11.zzw;
      r10.w = cmp(r18.x < r18.y);
      r12.w = 1.44269502 * r19.x;
      r12.w = exp2(r12.w);
      r10.w = r10.w ? r12.w : 0;
      r18.zw = r19.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r18.zw = sqrt(r18.zw);
      r11.zw = abs(r11.zw) * float2(2.31929994,2.31929994) + r18.zw;
      r11.zw = r18.xy / r11.zw;
      r12.w = r16.y * -r3.x;
      r12.w = 1.20224583 * r12.w;
      r17.w = exp2(r12.w);
      r11.zw = r17.zw * r11.zw;
      r12.w = 1.20224583 * r16.z;
      r12.w = exp2(r12.w);
      r12.w = r17.y * r12.w;
      r11.z = dot(r11.zw, float2(1,-1));
      r10.w = r11.z + r10.w;
      r10.w = r12.w * r10.w;
      r10.w = 0.00444444455 * r10.w;
      r16.yzw = r10.zzz * float3(-0.00579999993,-0.0135000004,-0.0331000015) + -r10.www;
      r16.yzw = float3(1.44269502,1.44269502,1.44269502) * r16.yzw;
      r16.yzw = exp2(r16.yzw);
      r10.z = max(r8.w, r3.y);
      r10.z = r3.z ? r10.z : r8.w;
      r10.w = cmp(6360.00977 < r10.z);
      if (r10.w != 0) {
        r10.w = cmp(r11.y < 1);
        if (r10.w != 0) {
          r12.xyz = r3.zzz ? r12.xyz : r6.xyz;
          r10.w = dot(r8.xyz, r12.xyz);
          r10.w = r10.w / r8.w;
          r8.x = dot(r8.xyz, cb0[161].xyz);
          r8.x = r8.x / r8.w;
          r8.y = r10.z * r10.z;
          r8.z = r10.z * r10.z + -40449600;
          r8.z = sqrt(r8.z);
          r8.w = r10.z * r10.w;
          r8.y = r8.w * r8.w + -r8.y;
          r8.y = 40449600 + r8.y;
          r10.z = cmp(r8.w < 0);
          r10.w = cmp(0 < r8.y);
          r10.z = r10.w ? r10.z : 0;
          r12.xyzw = r10.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r10.z = r8.z * r9.z;
          r17.y = r10.z * 0.00105685578 + r9.w;
          r8.yz = r12.yz + r8.yz;
          r8.y = sqrt(r8.y);
          r8.y = r8.w * r12.x + r8.y;
          r8.y = r8.y / r8.z;
          r17.x = r8.y * 0.4921875 + r12.w;
          r8.x = max(-0.197500005, r8.x);
          r8.x = 5.34962368 * r8.x;
          r8.y = min(1, abs(r8.x));
          r8.z = max(1, abs(r8.x));
          r8.z = 1 / r8.z;
          r8.y = r8.y * r8.z;
          r8.z = r8.y * r8.y;
          r8.w = r8.z * 0.0208350997 + -0.0851330012;
          r8.w = r8.z * r8.w + 0.180141002;
          r8.w = r8.z * r8.w + -0.330299497;
          r8.z = r8.z * r8.w + 0.999866009;
          r8.w = r8.y * r8.z;
          r10.z = cmp(1 < abs(r8.x));
          r8.w = r8.w * -2 + 1.57079637;
          r8.w = r10.z ? r8.w : 0;
          r8.y = r8.y * r8.z + r8.w;
          r8.x = min(1, r8.x);
          r8.x = cmp(r8.x < -r8.x);
          r8.x = r8.x ? -r8.y : r8.y;
          r8.x = r8.x * 0.909090877 + 0.74000001;
          r8.x = r8.x * 0.484375 + r9.x;
          r8.xy = float2(0.015625,1.015625) + r8.xx;
          r17.zw = float2(0.125,0.125) * r8.xy;
          r8.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
          r12.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
          r12.xyzw = r12.xyzw * r4.zzzz;
          r8.xyzw = r8.xyzw * r10.yyyy + r12.xyzw;
          r8.xyzw = -r16.yzwy * r8.xyzw + r14.xyzw;
          r14.xyzw = max(float4(0,0,0,0), r8.xyzw);
          if (r3.z == 0) {
            r8.x = r11.x + r7.y;
            r8.y = cmp(abs(r8.x) < 0.00499999989);
            if (r8.y != 0) {
              r8.x = 0.00499999989 + r8.x;
              r8.x = 100 * r8.x;
              r7.y = -0.00499999989 + -r7.y;
              r8.y = r3.x * r3.x + r3.w;
              r8.z = r16.x * r3.x;
              r8.w = r8.z * r7.y + r8.y;
              r8.w = sqrt(r8.w);
              r9.x = r7.y * r3.y;
              r7.y = r3.y * r7.y + r3.x;
              r7.y = r7.y / r8.w;
              r7.y = max(r9.y, r7.y);
              r10.z = r9.x * r9.x + -r3.w;
              r10.z = 40449600 + r10.z;
              r10.w = cmp(r9.x < 0);
              r11.x = cmp(0 < r10.z);
              r10.w = r10.w ? r11.x : 0;
              r12.xyzw = r10.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.z = r12.y + r10.z;
              r10.z = sqrt(r10.z);
              r9.x = r9.x * r12.x + r10.z;
              r10.z = r12.z + r7.w;
              r9.x = r9.x / r10.z;
              r12.x = r9.x * 0.4921875 + r12.w;
              r12.yz = r15.yz;
              r18.xyzw = t2.SampleLevel(s2_s, r12.yxz, 0).xyzw;
              r15.y = r12.x;
              r19.xyzw = t2.SampleLevel(s2_s, r15.xyz, 0).xyzw;
              r19.xyzw = r19.xyzw * r4.zzzz;
              r18.xyzw = r18.xyzw * r10.yyyy + r19.xyzw;
              r9.x = r8.w * r8.w;
              r10.z = r8.w * r8.w + -40449600;
              r10.z = sqrt(r10.z);
              r7.y = r8.w * r7.y;
              r8.w = r7.y * r7.y + -r9.x;
              r8.w = 40449600 + r8.w;
              r9.x = cmp(r7.y < 0);
              r10.w = cmp(0 < r8.w);
              r9.x = r9.x ? r10.w : 0;
              r19.xyzw = r9.xxxx ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.x = r10.z * r9.z;
              r17.y = r9.x * 0.00105685578 + r9.w;
              r8.w = r19.y + r8.w;
              r8.w = sqrt(r8.w);
              r7.y = r7.y * r19.x + r8.w;
              r8.w = r19.z + r10.z;
              r7.y = r7.y / r8.w;
              r17.x = r7.y * 0.4921875 + r19.w;
              r19.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
              r20.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
              r20.xyzw = r20.xyzw * r4.zzzz;
              r19.xyzw = r19.xyzw * r10.yyyy + r20.xyzw;
              r18.xyzw = -r16.yzwy * r19.xyzw + r18.xyzw;
              r18.xyzw = max(float4(0,0,0,0), r18.xyzw);
              r7.y = r8.z * r9.y + r8.y;
              r7.y = sqrt(r7.y);
              r8.y = r9.y * r3.y;
              r3.x = r3.y * r9.y + r3.x;
              r3.x = r3.x / r7.y;
              r3.x = max(r9.y, r3.x);
              r8.z = r8.y * r8.y + -r3.w;
              r8.z = 40449600 + r8.z;
              r8.w = cmp(r8.y < 0);
              r9.x = cmp(0 < r8.z);
              r8.w = r8.w ? r9.x : 0;
              r19.xyzw = r8.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r8.z = r19.y + r8.z;
              r8.z = sqrt(r8.z);
              r8.y = r8.y * r19.x + r8.z;
              r8.z = r19.z + r7.w;
              r8.y = r8.y / r8.z;
              r12.w = r8.y * 0.4921875 + r19.w;
              r19.xyzw = t2.SampleLevel(s2_s, r12.ywz, 0).xyzw;
              r15.w = r12.w;
              r12.xyzw = t2.SampleLevel(s2_s, r15.xwz, 0).xyzw;
              r12.xyzw = r12.xyzw * r4.zzzz;
              r12.xyzw = r19.xyzw * r10.yyyy + r12.xyzw;
              r8.y = r7.y * r7.y;
              r8.z = r7.y * r7.y + -40449600;
              r8.z = sqrt(r8.z);
              r3.x = r7.y * r3.x;
              r7.y = r3.x * r3.x + -r8.y;
              r7.y = 40449600 + r7.y;
              r8.y = cmp(r3.x < 0);
              r8.w = cmp(0 < r7.y);
              r8.y = r8.w ? r8.y : 0;
              r19.xyzw = r8.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r8.y = r8.z * r9.z;
              r17.y = r8.y * 0.00105685578 + r9.w;
              r7.y = r19.y + r7.y;
              r7.y = sqrt(r7.y);
              r3.x = r3.x * r19.x + r7.y;
              r7.y = r19.z + r8.z;
              r3.x = r3.x / r7.y;
              r17.x = r3.x * 0.4921875 + r19.w;
              r9.xyzw = t2.SampleLevel(s2_s, r17.zxy, 0).xyzw;
              r17.xyzw = t2.SampleLevel(s2_s, r17.wxy, 0).xyzw;
              r17.xyzw = r17.xyzw * r4.zzzz;
              r9.xyzw = r9.xyzw * r10.yyyy + r17.xyzw;
              r9.xyzw = -r16.yzwy * r9.xyzw + r12.xyzw;
              r9.xyzw = max(float4(0,0,0,0), r9.xyzw);
              r9.xyzw = r9.xyzw + -r18.xyzw;
              r14.xyzw = r8.xxxx * r9.xyzw + r18.xyzw;
            }
          } else {
            r3.x = cmp(0 < r11.y);
            if (r3.x != 0) {
              r8.xyzw = float4(1,1,1,1) + -r16.yzwy;
              r3.x = r10.x * r3.y;
              r3.y = r3.x * r3.x + -r3.w;
              r3.y = 40449600 + r3.y;
              r3.w = cmp(r3.x < 0);
              r7.y = cmp(0 < r3.y);
              r3.w = r3.w ? r7.y : 0;
              r9.xyzw = r3.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r3.y = r9.y + r3.y;
              r3.y = sqrt(r3.y);
              r3.x = r3.x * r9.x + r3.y;
              r3.y = r9.z + r7.w;
              r3.x = r3.x / r3.y;
              r9.y = r3.x * 0.4921875 + r9.w;
              r9.xz = r15.yz;
              r12.xyzw = t2.SampleLevel(s2_s, r9.xyz, 0).xyzw;
              r9.xz = r15.xz;
              r9.xyzw = t2.SampleLevel(s2_s, r9.xyz, 0).xyzw;
              r9.xyzw = r9.xyzw * r4.zzzz;
              r9.xyzw = r12.xyzw * r10.yyyy + r9.xyzw;
              r9.xyzw = max(float4(0,0,0,0), r9.xyzw);
              r8.xyzw = r8.xyzw * r9.xyzw + -r14.xyzw;
              r14.xyzw = r11.yyyy * r8.xyzw + r14.xyzw;
            }
          }
        } else {
          r8.xyzw = float4(1,1,1,1) + -r16.yzwy;
          r14.xyzw = r8.xyzw * r14.xyzw;
        }
      }
    } else {
      r16.yzw = float3(1,1,1);
    }
    r3.x = saturate(50 * r5.w);
    r3.y = r3.x * -2 + 3;
    r3.x = r3.x * r3.x;
    r3.x = r3.y * r3.x;
    r3.x = r14.w * r3.x;
    r3.xyw = r14.xyz * r3.xxx;
    r4.z = max(9.99999975e-005, r14.x);
    r3.xyw = r3.xyw / r4.zzz;
    r13.yzw = float3(1,0.429629624,0.175226584);
    r3.xyw = r3.xyw * r13.yxx;
    r3.xyw = r3.xyw * r13.xzw;
    r3.xyw = r14.xyz * r6.www + r3.xyw;
    r3.xyw = max(float3(0,0,0), r3.xyw);
  } else {
    r16.yzw = float3(1,1,1);
    r3.xyw = float3(0,0,0);
  }
  r7.yw = asint(cb0[182].zz) & int2(2,1);
  if (r7.y == 0) {
    r4.z = cmp(0 < r5.x);
    if (r4.z != 0) {
      r4.xyz = r5.xxx * r6.xyz + r4.xyw;
      r4.w = dot(r4.xyz, r4.xyz);
      r4.w = sqrt(r4.w);
      r4.xyz = r4.xyz / r4.www;
      r5.w = dot(r4.xyz, cb0[161].xyz);
      r4.w = -6360 + r4.w;
      r8.z = 0.0142857144 * r4.w;
      r9.y = sqrt(r8.z);
      r9.zw = float2(0.150000006,0.200000003) + r5.ww;
      r8.xy = float2(12.262105,0.833333313) * r9.zw;
      r4.w = min(1, abs(r8.x));
      r6.w = max(1, abs(r8.x));
      r6.w = 1 / r6.w;
      r4.w = r6.w * r4.w;
      r6.w = r4.w * r4.w;
      r7.y = r6.w * 0.0208350997 + -0.0851330012;
      r7.y = r6.w * r7.y + 0.180141002;
      r7.y = r6.w * r7.y + -0.330299497;
      r6.w = r6.w * r7.y + 0.999866009;
      r7.y = r6.w * r4.w;
      r8.w = cmp(1 < abs(r8.x));
      r7.y = r7.y * -2 + 1.57079637;
      r7.y = r8.w ? r7.y : 0;
      r4.w = r4.w * r6.w + r7.y;
      r6.w = min(1, r8.x);
      r6.w = cmp(r6.w < -r6.w);
      r4.w = r6.w ? -r4.w : r4.w;
      r9.x = 0.666666687 * r4.w;
      r9.xyz = t0.SampleLevel(s0_s, r9.xy, 0).xyz;
      r9.xyz = r3.zzz ? float3(0,0,0) : r9.xyz;
      r8.xyz = t1.SampleLevel(s1_s, r8.yz, 0).xyz;
      r4.w = max(0, r5.w);
      r8.xyz = r4.www * r9.xyz + r8.xyz;
      r8.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r8.xyz;
      r2.xyz = -r2.xyz * r2.www + cb0[161].xyz;
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = rsqrt(r2.w);
      r2.xyz = r2.xyz * r2.www;
      r2.w = dot(-r6.xyz, r2.xyz);
      r2.w = 1 + -r2.w;
      r4.w = r2.w * r2.w;
      r4.w = r4.w * r4.w;
      r2.w = r4.w * r2.w;
      r2.w = r2.w * 0.980000019 + 0.0199999996;
      r2.x = dot(r2.xyz, r4.xyz);
      r2.x = max(0, r2.x);
      r2.x = log2(r2.x);
      r2.x = 150 * r2.x;
      r2.x = exp2(r2.x);
      r2.x = r2.w * r2.x;
      r2.x = max(0, r2.x);
      r2.xyz = r2.xxx * r9.xyz + r8.xyz;
      r2.xyz = r3.zzz ? r8.xyz : r2.xyz;
      r2.xyz = r16.yzw * r2.xyz;
    } else {
      r2.xyz = float3(0,0,0);
    }
  } else {
    r2.xyz = float3(0,0,0);
  }
  if (r7.w == 0) {
    r2.w = cmp(6430 >= r5.y);
    r4.xy = float2(-6360,0.150000006) + r5.yz;
    r4.xy = float2(0.0142857144,12.262105) * r4.xy;
    r8.y = sqrt(r4.x);
    r3.z = min(1, abs(r4.y));
    r4.x = max(1, abs(r4.y));
    r4.x = 1 / r4.x;
    r3.z = r4.x * r3.z;
    r4.x = r3.z * r3.z;
    r4.z = r4.x * 0.0208350997 + -0.0851330012;
    r4.z = r4.x * r4.z + 0.180141002;
    r4.z = r4.x * r4.z + -0.330299497;
    r4.x = r4.x * r4.z + 0.999866009;
    r4.z = r4.x * r3.z;
    r4.w = cmp(1 < abs(r4.y));
    r4.z = r4.z * -2 + 1.57079637;
    r4.z = r4.w ? r4.z : 0;
    r3.z = r3.z * r4.x + r4.z;
    r4.x = min(1, r4.y);
    r4.x = cmp(r4.x < -r4.x);
    r3.z = r4.x ? -r3.z : r3.z;
    r8.x = 0.666666687 * r3.z;
    r4.xyz = t0.SampleLevel(s0_s, r8.xy, 0).xyz;
    r4.xyz = r2.www ? r4.xyz : float3(1,1,1);
    r2.w = cmp(0 < r5.x);
    r3.z = dot(r6.xyz, cb0[161].xyz);
    r3.z = cmp(r3.z >= cb0[169].x);
    r3.z = r3.z ? 1.000000 : 0;
    r4.xyz = r4.xyz * r3.zzz;
    r4.xyz = cb0[167].xyz * r4.xyz;
    r4.xyz = r2.www ? float3(0,0,0) : r4.xyz;
  } else {
    r4.xyz = float3(0,0,0);
  }
  r2.xyz = r4.xyz + r2.xyz;
  r2.xyz = r2.xyz + r3.xyw;
  r2.w = cb0[157].w * r7.x;
  r3.xyz = cb0[163].xyz * r2.www;
  r2.xyz = r3.xyz * r2.xyz;
  r3.x = saturate(r16.y * cb0[158].y + -cb0[158].z);
  r3.y = 1 + -r7.z;
  r3.z = 1 + -r3.x;
  r2.w = r3.y * r3.z + r3.x;
  r3.x = cmp(0 < cb0[182].y);
  if (r3.x != 0) {
    r3.x = cmp(0 != cb0[184].x);
    r3.yzw = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[68].xyz;
    r4.xy = r1.xy / r1.ww;
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yzw = r0.yzw * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r3.yzw;
    r3.y = dot(r0.yzw, r0.yzw);
    r3.z = sqrt(r3.y);
    r3.z = -cb0[181].x + r3.z;
    r3.z = max(0, r3.z);
    r3.z = cb0[182].x * r3.z;
    r3.z = cb0[181].z * r3.z;
    r5.z = sqrt(r3.z);
    r3.z = cb0[181].y * r5.z;
    r3.w = cmp(r3.z < 0.707106769);
    r3.z = dot(r3.zz, r3.zz);
    r3.z = min(1, r3.z);
    r3.z = r3.w ? r3.z : 1;
    r3.y = rsqrt(r3.y);
    r0.yzw = r3.yyy * r0.yzw;
    r3.y = -r0.w * r0.w + 1;
    r3.y = sqrt(r3.y);
    r6.y = r0.w * 0.5 + 0.5;
    r0.yz = r0.yz / r3.yy;
    r0.w = 1 + -abs(r0.y);
    r0.w = sqrt(r0.w);
    r3.y = abs(r0.y) * -0.0187292993 + 0.0742610022;
    r3.y = r3.y * abs(r0.y) + -0.212114394;
    r3.y = r3.y * abs(r0.y) + 1.57072878;
    r3.w = r3.y * r0.w;
    r3.w = r3.w * -2 + 3.14159274;
    r0.y = cmp(r0.y < -r0.y);
    r0.y = r0.y ? r3.w : 0;
    r0.y = r3.y * r0.w + r0.y;
    r0.z = cmp(r0.z < 0);
    r0.w = 6.28318548 + -r0.y;
    r0.y = r0.z ? r0.w : r0.y;
    r6.x = 0.159154937 * r0.y;
    r0.yz = cb0[180].zw * float2(0.5,0.5) + r6.xy;
    r3.yw = float2(1,1) + cb0[180].xy;
    r3.yw = cb0[180].xy / r3.yw;
    r0.yz = r3.yw * r0.yz;
    r5.xy = r3.xx ? r0.yz : r4.xy;
    r4.xyzw = t5.SampleLevel(s3_s, r5.xyz, 0).xyzw;
    r0.yzw = r4.xyz * r3.zzz;
    r3.x = 1 + -r4.w;
    r3.x = -r3.z * r3.x + 1;
    r0.yzw = cb0[135].zzz * r0.yzw;
    o4.xyz = r0.yzw * r2.www + r2.xyz;
    o4.w = r3.x * r2.w;
  } else {
    o4.xyzw = r2.xyzw;
  }
  o0.w = 0;
  o5.xyzw = r1.xyzw;
  o3.x = v1.x;
  p3.x = r0.x;
  return;
}