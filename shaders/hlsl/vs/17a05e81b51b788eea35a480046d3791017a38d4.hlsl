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

cbuffer cb2 : register(b2)
{
  float4 cb2[15];
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
  out float4 o2 : TEXCOORD0,
  out uint o3 : PRIMITIVE_ID0,
  out float4 o4 : TEXCOORD7,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (uint)r0.x << 1;
  r0.yzw = t6.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.xyzw = t6.Load(r1.x).xyzw;
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
  r2.w = mad((int)v1.x, 36, 4);
  r5.x = t3[r2.w].val[0/4];
  r5.y = t3[r2.w].val[0/4+1];
  r5.z = t3[r2.w].val[0/4+2];
  r5.w = t3[r2.w].val[0/4+3];
  r6.xyz = r5.xxx * r2.xyz;
  r7.xyz = r5.yyy * r3.xzw;
  r5.xyz = r5.zzz * r4.xyz;
  r8.xyz = r7.xyz * r0.zzz;
  r8.xyz = r0.yyy * r6.xyz + r8.xyz;
  o0.xyz = r0.www * r5.xyz + r8.xyz;
  r0.yzw = r7.xyz * r1.yyy;
  r0.yzw = r1.xxx * r6.xyz + r0.yzw;
  r0.yzw = r1.zzz * r5.xyz + r0.yzw;
  o1.w = r5.w * r1.w;
  r1.x = t3[r3.y].val[0/4];
  r1.y = t3[r3.y].val[0/4+1];
  r1.z = t3[r3.y].val[0/4+2];
  r3.xyz = v0.yyy * r3.xzw;
  r2.xyz = r2.xyz * v0.xxx + r3.xyz;
  r2.xyz = r4.xyz * v0.zzz + r2.xyz;
  r1.xyz = cb0[70].xyz + r1.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.x = (int)r0.x * asint(cb1[0].y);
  r2.xy = t5.Load(r0.x).xy;
  r1.xyz = r0.yzw * cb2[14].www + r1.xyz;
  r3.xyzw = cb0[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb0[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb0[2].xyzw + r3.xyzw;
  r3.xyzw = cb0[3].xyzw + r3.xyzw;
  r4.xyz = -cb0[68].xyz + r1.xyz;
  r0.x = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r0.x);
  r2.zw = float2(9.99999975e-006,100) * cb0[159].xx;
  r4.w = -cb0[158].w + cb0[68].z;
  r4.w = cb0[159].y * r4.w;
  r5.xy = cb0[68].xy;
  r5.xy = r5.xy * r2.zz;
  r5.w = r4.w * r2.z + 6360.00977;
  r4.w = dot(r5.xyw, r5.xyw);
  r6.y = sqrt(r4.w);
  r0.x = rsqrt(r0.x);
  r7.xyz = r4.xyz * r0.xxx;
  r5.z = dot(r5.xyw, r7.xyz);
  r6.z = r5.z / r6.y;
  r6.w = r6.z * r6.z + -1;
  r8.x = r2.z * r1.w;
  r8.y = r1.w * r2.z + -cb0[159].w;
  r8.y = max(0, r8.y);
  r8.z = 0.100000001 * r8.y;
  r8.z = r8.z / cb0[159].w;
  r8.z = min(1, r8.z);
  r2.w = cmp(r8.x < r2.w);
  if (r2.w != 0) {
    r8.x = cb0[158].x * r8.z;
    r1.w = r1.w * r2.z + cb0[160].x;
    r6.x = max(1, r1.w);
  } else {
    r1.w = r4.w * r6.w + 40449600;
    r1.w = sqrt(r1.w);
    r6.x = -r5.z + -r1.w;
    r8.x = 1;
  }
  r1.w = r4.w * r6.w + 41344900;
  r1.w = sqrt(r1.w);
  r2.z = -r5.z + -r1.w;
  r4.w = cmp(0 < r2.z);
  r9.xyz = r2.zzz * r7.xyz + r5.xyw;
  r10.x = r6.x + -r2.z;
  r10.z = -0.000155520989 * r1.w;
  r9.xyz = r4.www ? r9.xyz : r5.xyw;
  r10.y = 6430;
  r10.xyz = r4.www ? r10.xyz : r6.xyz;
  r1.w = cmp(r10.y < 6360.01465);
  r2.z = 6360.01465 + -r10.y;
  r11.xyz = -r2.zzz * r7.xyz + r9.xyz;
  r12.x = r10.x + -r2.z;
  r2.z = dot(r11.xyz, r7.xyz);
  r12.z = 0.000157232338 * r2.z;
  r12.y = 6360.01465;
  r10.xyz = r1.www ? r12.xyz : r10.xyz;
  r2.z = cmp(6430 >= r10.y);
  r4.w = cmp(0 < r8.y);
  r2.z = r2.z ? r4.w : 0;
  if (r2.z != 0) {
    r9.xyz = r1.www ? r11.xyz : r9.xyz;
    r1.w = dot(r7.xyz, cb0[161].xyz);
    r2.z = dot(r9.xyz, cb0[161].xyz);
    r2.z = r2.z / r10.y;
    r4.w = 6360 / r10.y;
    r4.w = -r4.w * r4.w + 1;
    r4.w = sqrt(r4.w);
    r8.yw = float2(0.155000001,0.00499999989) + -r4.ww;
    r10.zw = max(r10.zz, r8.yw);
    r11.x = r2.w ? r10.z : r10.w;
    r5.z = -1.44269502 * r7.z;
    r5.z = exp2(r5.z);
    r12.y = saturate(-0.5 + r5.z);
    r5.z = cmp(r12.y < 1);
    r7.w = max(0.150000006, r7.z);
    r6.w = dot(r7.xyw, r7.xyw);
    r6.w = rsqrt(r6.w);
    r13.xyz = r7.xyw * r6.www;
    r14.xyz = r10.xxx * r13.xyz + r9.xyz;
    r6.w = dot(r14.xyz, r14.xyz);
    r6.w = sqrt(r6.w);
    r7.w = dot(r14.xyz, r13.xyz);
    r13.w = r7.w / r6.w;
    r11.yzw = r7.xyz;
    r13.xyzw = r5.zzzz ? r13.xyzw : r11.yzwx;
    r12.x = r13.w;
    r11.y = 0;
    r12.xy = r2.ww ? r12.xy : r11.xy;
    r5.z = r1.w * r1.w + 1;
    r6.w = 0.0596831031 * r5.z;
    r7.w = -r1.w * 1.60000002 + 1.63999999;
    r7.w = log2(abs(r7.w));
    r7.w = -1.5 * r7.w;
    r7.w = exp2(r7.w);
    r5.z = r7.w * r5.z;
    r14.x = 0.0162772108 * r5.z;
    r5.z = r10.y * r10.y;
    r7.w = r10.y * r10.y + -40449600;
    r7.w = sqrt(r7.w);
    r8.y = r12.x * r10.y;
    r9.w = r8.y * r8.y + -r5.z;
    r9.w = 40449600 + r9.w;
    r10.z = cmp(r8.y < 0);
    r10.w = cmp(0 < r9.w);
    r10.z = r10.w ? r10.z : 0;
    r15.xyzw = r10.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r10.z = asuint(cb0[182].w);
    r10.w = 0.5 / r10.z;
    r11.y = 0.00105685578 * r7.w;
    r10.z = 1 / r10.z;
    r10.z = 1 + -r10.z;
    r16.z = r11.y * r10.z + r10.w;
    r9.w = r15.y + r9.w;
    r9.w = sqrt(r9.w);
    r8.y = r8.y * r15.x + r9.w;
    r9.w = r15.z + r7.w;
    r8.y = r8.y / r9.w;
    r16.w = r8.y * 0.4921875 + r15.w;
    r8.y = max(-0.197500005, r2.z);
    r8.y = 5.34962368 * r8.y;
    r9.w = min(1, abs(r8.y));
    r11.y = max(1, abs(r8.y));
    r11.y = 1 / r11.y;
    r9.w = r11.y * r9.w;
    r11.y = r9.w * r9.w;
    r11.z = r11.y * 0.0208350997 + -0.0851330012;
    r11.z = r11.y * r11.z + 0.180141002;
    r11.z = r11.y * r11.z + -0.330299497;
    r11.y = r11.y * r11.z + 0.999866009;
    r11.z = r11.y * r9.w;
    r11.w = cmp(1 < abs(r8.y));
    r11.z = r11.z * -2 + 1.57079637;
    r11.z = r11.w ? r11.z : 0;
    r9.w = r9.w * r11.y + r11.z;
    r8.y = min(1, r8.y);
    r8.y = cmp(r8.y < -r8.y);
    r8.y = r8.y ? -r9.w : r9.w;
    r8.y = r8.y * 0.909090877 + 0.74000001;
    r8.y = r8.y * 0.484375 + 0.015625;
    r1.w = 1 + r1.w;
    r9.w = 3.5 * r1.w;
    r9.w = floor(r9.w);
    r1.w = r1.w * 3.5 + -r9.w;
    r8.y = r9.w + r8.y;
    r16.y = 0.125 * r8.y;
    r15.xyzw = t2.SampleLevel(s2_s, r16.ywz, 0).xyzw;
    r11.y = 1 + -r1.w;
    r8.y = 1 + r8.y;
    r16.x = 0.125 * r8.y;
    r17.xyzw = t2.SampleLevel(s2_s, r16.xwz, 0).xyzw;
    r17.xyzw = r17.xyzw * r1.wwww;
    r15.xyzw = r15.xyzw * r11.yyyy + r17.xyzw;
    r15.xyzw = max(float4(0,0,0,0), r15.xyzw);
    r8.y = cmp(0 < r10.x);
    if (r8.y != 0) {
      r9.xyz = r10.xxx * r7.xyz + r9.xyz;
      r8.y = dot(r9.xyz, r9.xyz);
      r8.y = sqrt(r8.y);
      r11.z = 0.5 / cb0[159].z;
      r11.z = r11.z * r10.y;
      r11.z = sqrt(r11.z);
      r11.w = r10.x / r10.y;
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
      r13.w = -r10.x / cb0[159].z;
      r17.x = r10.y + r10.y;
      r17.y = r10.x / r17.x;
      r17.y = r17.y + r12.x;
      r13.w = r17.y * r13.w;
      r13.w = 1.44269502 * r13.w;
      r18.y = exp2(r13.w);
      r18.xz = float2(1,1);
      r11.zw = r18.xy * r11.zw;
      r13.w = cb0[159].z * r10.y;
      r13.w = 6.28310013 * r13.w;
      r13.w = sqrt(r13.w);
      r17.z = 6360 + -r10.y;
      r17.w = r17.z / cb0[159].z;
      r17.w = 1.44269502 * r17.w;
      r17.w = exp2(r17.w);
      r13.w = r17.w * r13.w;
      r11.z = dot(r11.zw, float2(1,-1));
      r11.z = r12.w + r11.z;
      r11.z = r13.w * r11.z;
      r18.xy = float2(0.416666657,7.53972054) * r10.yy;
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
      r13.w = r17.y * -r10.x;
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
      r11.z = max(r8.y, r10.y);
      r11.z = r2.w ? r11.z : r8.y;
      r11.w = cmp(6360.00977 < r11.z);
      if (r11.w != 0) {
        r11.w = cmp(r12.y < 1);
        if (r11.w != 0) {
          r13.xyz = r2.www ? r13.xyz : r7.xyz;
          r11.w = dot(r9.xyz, r13.xyz);
          r11.w = r11.w / r8.y;
          r9.x = dot(r9.xyz, cb0[161].xyz);
          r8.y = r9.x / r8.y;
          r9.x = r11.z * r11.z;
          r9.y = r11.z * r11.z + -40449600;
          r9.y = sqrt(r9.y);
          r9.z = r11.z * r11.w;
          r9.x = r9.z * r9.z + -r9.x;
          r9.x = 40449600 + r9.x;
          r11.z = cmp(r9.z < 0);
          r11.w = cmp(0 < r9.x);
          r11.z = r11.w ? r11.z : 0;
          r13.xyzw = r11.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r11.z = r9.y * r10.z;
          r18.y = r11.z * 0.00105685578 + r10.w;
          r9.xy = r13.yz + r9.xy;
          r9.x = sqrt(r9.x);
          r9.x = r9.z * r13.x + r9.x;
          r9.x = r9.x / r9.y;
          r18.x = r9.x * 0.4921875 + r13.w;
          r8.y = max(-0.197500005, r8.y);
          r8.y = 5.34962368 * r8.y;
          r9.x = min(1, abs(r8.y));
          r9.y = max(1, abs(r8.y));
          r9.y = 1 / r9.y;
          r9.x = r9.x * r9.y;
          r9.y = r9.x * r9.x;
          r9.z = r9.y * 0.0208350997 + -0.0851330012;
          r9.z = r9.y * r9.z + 0.180141002;
          r9.z = r9.y * r9.z + -0.330299497;
          r9.y = r9.y * r9.z + 0.999866009;
          r9.z = r9.x * r9.y;
          r11.z = cmp(1 < abs(r8.y));
          r9.z = r9.z * -2 + 1.57079637;
          r9.z = r11.z ? r9.z : 0;
          r9.x = r9.x * r9.y + r9.z;
          r8.y = min(1, r8.y);
          r8.y = cmp(r8.y < -r8.y);
          r8.y = r8.y ? -r9.x : r9.x;
          r8.y = r8.y * 0.909090877 + 0.74000001;
          r8.y = r8.y * 0.484375 + r9.w;
          r9.xy = float2(0.015625,1.015625) + r8.yy;
          r18.zw = float2(0.125,0.125) * r9.xy;
          r9.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
          r13.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
          r13.xyzw = r13.xyzw * r1.wwww;
          r9.xyzw = r9.xyzw * r11.yyyy + r13.xyzw;
          r9.xyzw = -r17.yzwy * r9.xyzw + r15.xyzw;
          r15.xyzw = max(float4(0,0,0,0), r9.xyzw);
          if (r2.w == 0) {
            r8.y = r12.x + r4.w;
            r9.x = cmp(abs(r8.y) < 0.00499999989);
            if (r9.x != 0) {
              r8.y = 0.00499999989 + r8.y;
              r8.y = 100 * r8.y;
              r4.w = -0.00499999989 + -r4.w;
              r9.x = r10.x * r10.x + r5.z;
              r9.y = r17.x * r10.x;
              r9.z = r9.y * r4.w + r9.x;
              r9.z = sqrt(r9.z);
              r9.w = r10.y * r4.w;
              r4.w = r10.y * r4.w + r10.x;
              r4.w = r4.w / r9.z;
              r4.w = max(r8.w, r4.w);
              r11.z = r9.w * r9.w + -r5.z;
              r11.z = 40449600 + r11.z;
              r11.w = cmp(r9.w < 0);
              r12.x = cmp(0 < r11.z);
              r11.w = r11.w ? r12.x : 0;
              r13.xyzw = r11.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r11.z = r13.y + r11.z;
              r11.z = sqrt(r11.z);
              r9.w = r9.w * r13.x + r11.z;
              r11.z = r13.z + r7.w;
              r9.w = r9.w / r11.z;
              r13.x = r9.w * 0.4921875 + r13.w;
              r13.yz = r16.yz;
              r19.xyzw = t2.SampleLevel(s2_s, r13.yxz, 0).xyzw;
              r16.y = r13.x;
              r20.xyzw = t2.SampleLevel(s2_s, r16.xyz, 0).xyzw;
              r20.xyzw = r20.xyzw * r1.wwww;
              r19.xyzw = r19.xyzw * r11.yyyy + r20.xyzw;
              r9.w = r9.z * r9.z;
              r11.z = r9.z * r9.z + -40449600;
              r11.z = sqrt(r11.z);
              r4.w = r9.z * r4.w;
              r9.z = r4.w * r4.w + -r9.w;
              r9.z = 40449600 + r9.z;
              r9.w = cmp(r4.w < 0);
              r11.w = cmp(0 < r9.z);
              r9.w = r9.w ? r11.w : 0;
              r20.xyzw = r9.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.w = r11.z * r10.z;
              r18.y = r9.w * 0.00105685578 + r10.w;
              r9.z = r20.y + r9.z;
              r9.z = sqrt(r9.z);
              r4.w = r4.w * r20.x + r9.z;
              r9.z = r20.z + r11.z;
              r4.w = r4.w / r9.z;
              r18.x = r4.w * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
              r21.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
              r21.xyzw = r21.xyzw * r1.wwww;
              r20.xyzw = r20.xyzw * r11.yyyy + r21.xyzw;
              r19.xyzw = -r17.yzwy * r20.xyzw + r19.xyzw;
              r19.xyzw = max(float4(0,0,0,0), r19.xyzw);
              r4.w = r9.y * r8.w + r9.x;
              r4.w = sqrt(r4.w);
              r9.x = r10.y * r8.w;
              r9.y = r10.y * r8.w + r10.x;
              r9.y = r9.y / r4.w;
              r8.w = max(r9.y, r8.w);
              r9.y = r9.x * r9.x + -r5.z;
              r9.y = 40449600 + r9.y;
              r9.z = cmp(r9.x < 0);
              r9.w = cmp(0 < r9.y);
              r9.z = r9.w ? r9.z : 0;
              r20.xyzw = r9.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.y = r20.y + r9.y;
              r9.y = sqrt(r9.y);
              r9.x = r9.x * r20.x + r9.y;
              r9.y = r20.z + r7.w;
              r9.x = r9.x / r9.y;
              r13.w = r9.x * 0.4921875 + r20.w;
              r9.xyzw = t2.SampleLevel(s2_s, r13.ywz, 0).xyzw;
              r16.w = r13.w;
              r13.xyzw = t2.SampleLevel(s2_s, r16.xwz, 0).xyzw;
              r13.xyzw = r13.xyzw * r1.wwww;
              r9.xyzw = r9.xyzw * r11.yyyy + r13.xyzw;
              r10.x = r4.w * r4.w;
              r11.z = r4.w * r4.w + -40449600;
              r11.z = sqrt(r11.z);
              r4.w = r8.w * r4.w;
              r8.w = r4.w * r4.w + -r10.x;
              r8.w = 40449600 + r8.w;
              r10.x = cmp(r4.w < 0);
              r11.w = cmp(0 < r8.w);
              r10.x = r10.x ? r11.w : 0;
              r13.xyzw = r10.xxxx ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.x = r11.z * r10.z;
              r18.y = r10.x * 0.00105685578 + r10.w;
              r8.w = r13.y + r8.w;
              r8.w = sqrt(r8.w);
              r4.w = r4.w * r13.x + r8.w;
              r8.w = r13.z + r11.z;
              r4.w = r4.w / r8.w;
              r18.x = r4.w * 0.4921875 + r13.w;
              r13.xyzw = t2.SampleLevel(s2_s, r18.zxy, 0).xyzw;
              r18.xyzw = t2.SampleLevel(s2_s, r18.wxy, 0).xyzw;
              r18.xyzw = r18.xyzw * r1.wwww;
              r13.xyzw = r13.xyzw * r11.yyyy + r18.xyzw;
              r9.xyzw = -r17.yzwy * r13.xyzw + r9.xyzw;
              r9.xyzw = max(float4(0,0,0,0), r9.xyzw);
              r9.xyzw = r9.xyzw + -r19.xyzw;
              r15.xyzw = r8.yyyy * r9.xyzw + r19.xyzw;
            }
          } else {
            r4.w = cmp(0 < r12.y);
            if (r4.w != 0) {
              r9.xyzw = float4(1,1,1,1) + -r17.yzwy;
              r4.w = r11.x * r10.y;
              r5.z = r4.w * r4.w + -r5.z;
              r5.z = 40449600 + r5.z;
              r8.y = cmp(r4.w < 0);
              r8.w = cmp(0 < r5.z);
              r8.y = r8.w ? r8.y : 0;
              r10.xyzw = r8.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r5.z = r10.y + r5.z;
              r5.z = sqrt(r5.z);
              r4.w = r4.w * r10.x + r5.z;
              r5.z = r10.z + r7.w;
              r4.w = r4.w / r5.z;
              r10.y = r4.w * 0.4921875 + r10.w;
              r10.xz = r16.yz;
              r13.xyzw = t2.SampleLevel(s2_s, r10.xyz, 0).xyzw;
              r10.xz = r16.xz;
              r10.xyzw = t2.SampleLevel(s2_s, r10.xyz, 0).xyzw;
              r10.xyzw = r10.xyzw * r1.wwww;
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
    r1.w = saturate(50 * r2.z);
    r2.z = r1.w * -2 + 3;
    r1.w = r1.w * r1.w;
    r1.w = r2.z * r1.w;
    r1.w = r15.w * r1.w;
    r9.xyz = r15.xyz * r1.www;
    r1.w = max(9.99999975e-005, r15.x);
    r9.xyz = r9.xyz / r1.www;
    r14.yzw = float3(1,0.429629624,0.175226584);
    r9.xyz = r9.xyz * r14.yxx;
    r9.xyz = r9.xyz * r14.xzw;
    r9.xyz = r15.xyz * r6.www + r9.xyz;
    r9.xyz = max(float3(0,0,0), r9.xyz);
  } else {
    r17.yzw = float3(1,1,1);
    r9.xyz = float3(0,0,0);
  }
  r8.yw = asint(cb0[182].zz) & int2(2,1);
  if (r8.y == 0) {
    r1.w = cmp(0 < r6.x);
    if (r1.w != 0) {
      r5.xyz = r6.xxx * r7.xyz + r5.xyw;
      r1.w = dot(r5.xyz, r5.xyz);
      r1.w = sqrt(r1.w);
      r5.xyz = r5.xyz / r1.www;
      r2.z = dot(r5.xyz, cb0[161].xyz);
      r1.w = -6360 + r1.w;
      r10.z = 0.0142857144 * r1.w;
      r11.y = sqrt(r10.z);
      r11.zw = float2(0.150000006,0.200000003) + r2.zz;
      r10.xy = float2(12.262105,0.833333313) * r11.zw;
      r1.w = min(1, abs(r10.x));
      r4.w = max(1, abs(r10.x));
      r4.w = 1 / r4.w;
      r1.w = r4.w * r1.w;
      r4.w = r1.w * r1.w;
      r5.w = r4.w * 0.0208350997 + -0.0851330012;
      r5.w = r4.w * r5.w + 0.180141002;
      r5.w = r4.w * r5.w + -0.330299497;
      r4.w = r4.w * r5.w + 0.999866009;
      r5.w = r4.w * r1.w;
      r6.w = cmp(1 < abs(r10.x));
      r5.w = r5.w * -2 + 1.57079637;
      r5.w = r6.w ? r5.w : 0;
      r1.w = r1.w * r4.w + r5.w;
      r4.w = min(1, r10.x);
      r4.w = cmp(r4.w < -r4.w);
      r1.w = r4.w ? -r1.w : r1.w;
      r11.x = 0.666666687 * r1.w;
      r11.xyz = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
      r11.xyz = r2.www ? float3(0,0,0) : r11.xyz;
      r10.xyz = t1.SampleLevel(s1_s, r10.yz, 0).xyz;
      r1.w = max(0, r2.z);
      r10.xyz = r1.www * r11.xyz + r10.xyz;
      r10.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r10.xyz;
      r4.xyz = -r4.xyz * r0.xxx + cb0[161].xyz;
      r0.x = dot(r4.xyz, r4.xyz);
      r0.x = rsqrt(r0.x);
      r4.xyz = r4.xyz * r0.xxx;
      r0.x = dot(-r7.xyz, r4.xyz);
      r0.x = 1 + -r0.x;
      r1.w = r0.x * r0.x;
      r1.w = r1.w * r1.w;
      r0.x = r1.w * r0.x;
      r0.x = r0.x * 0.980000019 + 0.0199999996;
      r1.w = dot(r4.xyz, r5.xyz);
      r1.w = max(0, r1.w);
      r1.w = log2(r1.w);
      r1.w = 150 * r1.w;
      r1.w = exp2(r1.w);
      r0.x = r1.w * r0.x;
      r0.x = max(0, r0.x);
      r4.xyz = r0.xxx * r11.xyz + r10.xyz;
      r4.xyz = r2.www ? r10.xyz : r4.xyz;
      r4.xyz = r17.yzw * r4.xyz;
    } else {
      r4.xyz = float3(0,0,0);
    }
  } else {
    r4.xyz = float3(0,0,0);
  }
  if (r8.w == 0) {
    r0.x = cmp(6430 >= r6.y);
    r2.zw = float2(-6360,0.150000006) + r6.yz;
    r2.zw = float2(0.0142857144,12.262105) * r2.zw;
    r5.y = sqrt(r2.z);
    r1.w = min(1, abs(r2.w));
    r2.z = max(1, abs(r2.w));
    r2.z = 1 / r2.z;
    r1.w = r2.z * r1.w;
    r2.z = r1.w * r1.w;
    r4.w = r2.z * 0.0208350997 + -0.0851330012;
    r4.w = r2.z * r4.w + 0.180141002;
    r4.w = r2.z * r4.w + -0.330299497;
    r2.z = r2.z * r4.w + 0.999866009;
    r4.w = r2.z * r1.w;
    r5.z = cmp(1 < abs(r2.w));
    r4.w = r4.w * -2 + 1.57079637;
    r4.w = r5.z ? r4.w : 0;
    r1.w = r1.w * r2.z + r4.w;
    r2.z = min(1, r2.w);
    r2.z = cmp(r2.z < -r2.z);
    r1.w = r2.z ? -r1.w : r1.w;
    r5.x = 0.666666687 * r1.w;
    r5.xyz = t0.SampleLevel(s0_s, r5.xy, 0).xyz;
    r5.xyz = r0.xxx ? r5.xyz : float3(1,1,1);
    r0.x = cmp(0 < r6.x);
    r1.w = dot(r7.xyz, cb0[161].xyz);
    r1.w = cmp(r1.w >= cb0[169].x);
    r1.w = r1.w ? 1.000000 : 0;
    r5.xyz = r5.xyz * r1.www;
    r5.xyz = cb0[167].xyz * r5.xyz;
    r5.xyz = r0.xxx ? float3(0,0,0) : r5.xyz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r4.xyz = r5.xyz + r4.xyz;
  r4.xyz = r4.xyz + r9.xyz;
  r0.x = cb0[157].w * r8.x;
  r5.xyz = cb0[163].xyz * r0.xxx;
  r4.xyz = r5.xyz * r4.xyz;
  r0.x = saturate(r17.y * cb0[158].y + -cb0[158].z);
  r1.w = 1 + -r8.z;
  r2.z = 1 + -r0.x;
  r4.w = r1.w * r2.z + r0.x;
  r0.x = cmp(0 < cb0[182].y);
  if (r0.x != 0) {
    r0.x = cmp(0 != cb0[184].x);
    r5.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[68].xyz;
    r2.zw = r3.xy / r3.ww;
    r2.zw = r2.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.xyz = r1.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
    r1.w = dot(r1.xyz, r1.xyz);
    r5.x = sqrt(r1.w);
    r5.x = -cb0[181].x + r5.x;
    r5.x = max(0, r5.x);
    r5.x = cb0[182].x * r5.x;
    r5.x = cb0[181].z * r5.x;
    r5.z = sqrt(r5.x);
    r5.w = cb0[181].y * r5.z;
    r6.x = cmp(r5.w < 0.707106769);
    r5.w = dot(r5.ww, r5.ww);
    r5.w = min(1, r5.w);
    r5.w = r6.x ? r5.w : 1;
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
    r6.z = r1.w * r1.z;
    r6.z = r6.z * -2 + 3.14159274;
    r1.x = cmp(r1.x < -r1.x);
    r1.x = r1.x ? r6.z : 0;
    r1.x = r1.w * r1.z + r1.x;
    r1.y = cmp(r1.y < 0);
    r1.z = 6.28318548 + -r1.x;
    r1.x = r1.y ? r1.z : r1.x;
    r6.x = 0.159154937 * r1.x;
    r1.xy = cb0[180].zw * float2(0.5,0.5) + r6.xy;
    r1.zw = float2(1,1) + cb0[180].xy;
    r1.zw = cb0[180].xy / r1.zw;
    r1.xy = r1.xy * r1.zw;
    r5.xy = r0.xx ? r1.xy : r2.zw;
    r1.xyzw = t4.SampleLevel(s3_s, r5.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r5.www;
    r0.x = 1 + -r1.w;
    r0.x = -r5.w * r0.x + 1;
    r1.xyz = cb0[135].zzz * r1.xyz;
    o4.xyz = r1.xyz * r4.www + r4.xyz;
    o4.w = r4.w * r0.x;
  } else {
    o4.xyzw = r4.xyzw;
  }
  o0.w = 0;
  o1.xyz = r0.yzw;
  o2.xy = r2.xy;
  o2.zw = float2(0,0);
  o5.xyzw = r3.xyzw;
  o3.x = v1.x;
  return;
}