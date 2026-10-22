// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t7 : register(t7);

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
  float4 cb2[83];
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
  out float4 o2 : COLOR0,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TEXCOORD1,
  out uint o5 : PRIMITIVE_ID0,
  out float4 o6 : TEXCOORD7,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v2.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v2.x + asint(cb1[0].w);
  r0.y = (int)r0.x & asint(cb1[0].x);
  r1.xyzw = t7.Load(r0.y).xyzw;
  r0.y = (uint)r0.x << 1;
  r0.yzw = t6.Load(r0.y).xyz;
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r2.xyzw = t6.Load(r2.x).xyzw;
  r3.xyz = r2.yzx * r0.yzw;
  r0.yzw = r2.xyz * r0.zwy + -r3.xyz;
  r0.yzw = r0.yzw * r2.www;
  r3.xyz = r0.yzw * r2.yzx;
  r0.yzw = r0.wyz * r2.zxy + -r3.xyz;
  r0.yzw = r0.yzw * r2.www;
  r3.x = (int)v1.x * 36;
  r3.x = t3[r3.x].val[0/4];
  r3.y = t3[r3.x].val[0/4+1];
  r3.z = t3[r3.x].val[0/4+2];
  r4.xy = mad((int2)v1.xx, int2(36,36), int2(1,3));
  r4.x = t3[r4.x].val[0/4];
  r4.z = t3[r4.x].val[0/4+1];
  r4.w = t3[r4.x].val[0/4+2];
  r3.w = mad((int)v1.x, 36, 2);
  r5.x = t3[r3.w].val[0/4];
  r5.y = t3[r3.w].val[0/4+1];
  r5.z = t3[r3.w].val[0/4+2];
  r6.xyzw = mad((int4)v1.xxxx, int4(36,36,36,36), int4(4,6,7,8));
  r7.x = t3[r6.x].val[0/4];
  r7.y = t3[r6.x].val[0/4+1];
  r7.z = t3[r6.x].val[0/4+2];
  r7.w = t3[r6.x].val[0/4+3];
  r8.xyz = r7.xxx * r3.xyz;
  r9.xyz = r7.yyy * r4.xzw;
  r7.xyz = r7.zzz * r5.xyz;
  r10.xyz = r9.xyz * r0.zzz;
  r10.xyz = r0.yyy * r8.xyz + r10.xyz;
  o0.xyz = r0.www * r7.xyz + r10.xyz;
  r0.yzw = r9.xyz * r2.yyy;
  r0.yzw = r2.xxx * r8.xyz + r0.yzw;
  r0.yzw = r2.zzz * r7.xyz + r0.yzw;
  o1.w = r7.w * r2.w;
  r2.x = t3[r4.y].val[0/4];
  r2.y = t3[r4.y].val[0/4+1];
  r2.z = t3[r4.y].val[0/4+2];
  r7.xyz = v0.yyy * r4.xzw;
  r3.xyz = r3.xyz * v0.xxx + r7.xyz;
  r3.xyz = r5.xyz * v0.zzz + r3.xyz;
  r2.xyz = cb0[70].xyz + r2.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r2.w = (int)r0.x * asint(cb1[0].y);
  r3.xy = t5.Load(r2.w).xy;
  r2.w = asint(cb1[0].y) + -1;
  r2.w = min(1, (uint)r2.w);
  r0.x = mad(asint(cb1[0].y), (int)r0.x, (int)r2.w);
  r3.zw = t5.Load(r0.x).xy;
  r5.xyz = -cb0[70].xyz + r2.xyz;
  r7.xyz = -cb2[46].xyz + r5.xyz;
  r8.x = t3[r6.y].val[8/4];
  r8.y = t3[r6.z].val[8/4];
  r8.z = t3[r6.w].val[8/4];
  r0.x = saturate(dot(r7.xyz, r8.xyz));
  r0.x = ceil(r0.x);
  r6.xyz = cb2[46].xyz + -r5.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb2[82].y;
  r2.w = cb2[82].z * r2.w;
  r0.x = r2.w * r0.x;
  r0.x = 6.28318548 * r0.x;
  r2.w = dot(r4.xzw, r7.xyz);
  r6.xyz = r4.xzw * r2.www + cb2[46].xyz;
  r7.xyz = -r6.xyz + r5.xyz;
  r8.xyz = r7.yzx * r4.wxz;
  r4.xyz = r4.zwx * r7.zxy + -r8.xyz;
  sincos(r0.x, r0.x, r8.x);
  r4.xyz = r4.xyz * r0.xxx;
  r4.xyz = r7.xyz * r8.xxx + r4.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r5.xyz;
  r2.xyz = r4.xyz * cb2[82].www + r2.xyz;
  r4.xyzw = cb0[1].xyzw * r2.yyyy;
  r4.xyzw = r2.xxxx * cb0[0].xyzw + r4.xyzw;
  r4.xyzw = r2.zzzz * cb0[2].xyzw + r4.xyzw;
  r4.xyzw = cb0[3].xyzw + r4.xyzw;
  r5.xyz = cb0[21].xyz * r0.zzz;
  r5.xyz = r0.yyy * cb0[20].xyz + r5.xyz;
  r5.xyz = r0.www * cb0[22].xyz + r5.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = sqrt(r0.x);
  r5.xy = r5.xy / r0.xx;
  o4.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r5.xyz = -cb0[68].xyz + r2.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r0.x);
  r6.xy = float2(9.99999975e-006,100) * cb0[159].xx;
  r5.w = -cb0[158].w + cb0[68].z;
  r5.w = cb0[159].y * r5.w;
  r6.zw = cb0[68].xy;
  r7.xy = r6.zw * r6.xx;
  r7.w = r5.w * r6.x + 6360.00977;
  r5.w = dot(r7.xyw, r7.xyw);
  r8.y = sqrt(r5.w);
  r0.x = rsqrt(r0.x);
  r9.xyz = r5.xyz * r0.xxx;
  r6.z = dot(r7.xyw, r9.xyz);
  r8.z = r6.z / r8.y;
  r6.w = r8.z * r8.z + -1;
  r7.z = r6.x * r2.w;
  r8.w = r2.w * r6.x + -cb0[159].w;
  r8.w = max(0, r8.w);
  r10.x = 0.100000001 * r8.w;
  r10.x = r10.x / cb0[159].w;
  r10.x = min(1, r10.x);
  r6.y = cmp(r7.z < r6.y);
  if (r6.y != 0) {
    r7.z = cb0[158].x * r10.x;
    r2.w = r2.w * r6.x + cb0[160].x;
    r8.x = max(1, r2.w);
  } else {
    r2.w = r5.w * r6.w + 40449600;
    r2.w = sqrt(r2.w);
    r8.x = -r6.z + -r2.w;
    r7.z = 1;
  }
  r2.w = r5.w * r6.w + 41344900;
  r2.w = sqrt(r2.w);
  r5.w = -r6.z + -r2.w;
  r6.x = cmp(0 < r5.w);
  r10.yzw = r5.www * r9.xyz + r7.xyw;
  r11.x = r8.x + -r5.w;
  r11.z = -0.000155520989 * r2.w;
  r10.yzw = r6.xxx ? r10.yzw : r7.xyw;
  r11.y = 6430;
  r6.xzw = r6.xxx ? r11.xyz : r8.xyz;
  r2.w = cmp(r6.z < 6360.01465);
  r5.w = 6360.01465 + -r6.z;
  r11.xyz = -r5.www * r9.xyz + r10.yzw;
  r12.x = r6.x + -r5.w;
  r5.w = dot(r11.xyz, r9.xyz);
  r12.z = 0.000157232338 * r5.w;
  r12.y = 6360.01465;
  r6.xzw = r2.www ? r12.xyz : r6.xzw;
  r5.w = cmp(6430 >= r6.z);
  r8.w = cmp(0 < r8.w);
  r5.w = r5.w ? r8.w : 0;
  if (r5.w != 0) {
    r10.yzw = r2.www ? r11.xyz : r10.yzw;
    r2.w = dot(r9.xyz, cb0[161].xyz);
    r5.w = dot(r10.yzw, cb0[161].xyz);
    r5.w = r5.w / r6.z;
    r8.w = 6360 / r6.z;
    r8.w = -r8.w * r8.w + 1;
    r8.w = sqrt(r8.w);
    r11.xy = float2(0.155000001,0.00499999989) + -r8.ww;
    r11.xz = max(r11.xy, r6.ww);
    r12.x = r6.y ? r11.x : r11.z;
    r6.w = -1.44269502 * r9.z;
    r6.w = exp2(r6.w);
    r13.y = saturate(-0.5 + r6.w);
    r6.w = cmp(r13.y < 1);
    r9.w = max(0.150000006, r9.z);
    r11.x = dot(r9.xyw, r9.xyw);
    r11.x = rsqrt(r11.x);
    r14.xyz = r11.xxx * r9.xyw;
    r11.xzw = r6.xxx * r14.xyz + r10.yzw;
    r9.w = dot(r11.xzw, r11.xzw);
    r9.w = sqrt(r9.w);
    r11.x = dot(r11.xzw, r14.xyz);
    r14.w = r11.x / r9.w;
    r12.yzw = r9.xyz;
    r14.xyzw = r6.wwww ? r14.xyzw : r12.yzwx;
    r13.x = r14.w;
    r12.y = 0;
    r13.xy = r6.yy ? r13.xy : r12.xy;
    r6.w = r2.w * r2.w + 1;
    r9.w = 0.0596831031 * r6.w;
    r11.x = -r2.w * 1.60000002 + 1.63999999;
    r11.x = log2(abs(r11.x));
    r11.x = -1.5 * r11.x;
    r11.x = exp2(r11.x);
    r6.w = r11.x * r6.w;
    r15.x = 0.0162772108 * r6.w;
    r6.w = r6.z * r6.z;
    r11.x = r6.z * r6.z + -40449600;
    r11.x = sqrt(r11.x);
    r11.z = r13.x * r6.z;
    r11.w = r11.z * r11.z + -r6.w;
    r11.w = 40449600 + r11.w;
    r12.y = cmp(r11.z < 0);
    r12.z = cmp(0 < r11.w);
    r12.y = r12.z ? r12.y : 0;
    r16.xyzw = r12.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r12.y = asuint(cb0[182].w);
    r12.z = 0.5 / r12.y;
    r12.w = 0.00105685578 * r11.x;
    r12.y = 1 / r12.y;
    r12.y = 1 + -r12.y;
    r17.z = r12.w * r12.y + r12.z;
    r11.w = r16.y + r11.w;
    r11.w = sqrt(r11.w);
    r11.z = r11.z * r16.x + r11.w;
    r11.w = r16.z + r11.x;
    r11.z = r11.z / r11.w;
    r17.w = r11.z * 0.4921875 + r16.w;
    r11.z = max(-0.197500005, r5.w);
    r11.z = 5.34962368 * r11.z;
    r11.w = min(1, abs(r11.z));
    r12.w = max(1, abs(r11.z));
    r12.w = 1 / r12.w;
    r11.w = r12.w * r11.w;
    r12.w = r11.w * r11.w;
    r13.w = r12.w * 0.0208350997 + -0.0851330012;
    r13.w = r12.w * r13.w + 0.180141002;
    r13.w = r12.w * r13.w + -0.330299497;
    r12.w = r12.w * r13.w + 0.999866009;
    r13.w = r12.w * r11.w;
    r14.w = cmp(1 < abs(r11.z));
    r13.w = r13.w * -2 + 1.57079637;
    r13.w = r14.w ? r13.w : 0;
    r11.w = r11.w * r12.w + r13.w;
    r11.z = min(1, r11.z);
    r11.z = cmp(r11.z < -r11.z);
    r11.z = r11.z ? -r11.w : r11.w;
    r11.z = r11.z * 0.909090877 + 0.74000001;
    r11.z = r11.z * 0.484375 + 0.015625;
    r2.w = 1 + r2.w;
    r11.w = 3.5 * r2.w;
    r11.w = floor(r11.w);
    r2.w = r2.w * 3.5 + -r11.w;
    r11.z = r11.w + r11.z;
    r17.y = 0.125 * r11.z;
    r16.xyzw = t2.SampleLevel(s2_s, r17.ywz, 0).xyzw;
    r12.w = 1 + -r2.w;
    r11.z = 1 + r11.z;
    r17.x = 0.125 * r11.z;
    r18.xyzw = t2.SampleLevel(s2_s, r17.xwz, 0).xyzw;
    r18.xyzw = r18.xyzw * r2.wwww;
    r16.xyzw = r16.xyzw * r12.wwww + r18.xyzw;
    r16.xyzw = max(float4(0,0,0,0), r16.xyzw);
    r11.z = cmp(0 < r6.x);
    if (r11.z != 0) {
      r10.yzw = r6.xxx * r9.xyz + r10.yzw;
      r11.z = dot(r10.yzw, r10.yzw);
      r11.z = sqrt(r11.z);
      r13.w = 0.5 / cb0[159].z;
      r13.w = r13.w * r6.z;
      r13.w = sqrt(r13.w);
      r14.w = r6.x / r6.z;
      r13.z = r14.w + r13.x;
      r18.xy = r13.ww * r13.xz;
      r18.zw = cmp(float2(0,0) < r18.xy);
      r19.xy = cmp(r18.xy < float2(0,0));
      r18.zw = (int2)-r18.zw + (int2)r19.xy;
      r18.zw = (int2)r18.zw;
      r19.xyz = r18.xxy * r18.xxy;
      r13.w = cmp(r18.z < r18.w);
      r14.w = 1.44269502 * r19.x;
      r14.w = exp2(r14.w);
      r13.w = r13.w ? r14.w : 0;
      r19.xy = r19.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r19.xy = sqrt(r19.xy);
      r18.xy = abs(r18.xy) * float2(2.31929994,2.31929994) + r19.xy;
      r18.xy = r18.zw / r18.xy;
      r14.w = -r6.x / cb0[159].z;
      r18.z = r6.z + r6.z;
      r18.w = r6.x / r18.z;
      r18.w = r18.w + r13.x;
      r14.w = r18.w * r14.w;
      r14.w = 1.44269502 * r14.w;
      r19.y = exp2(r14.w);
      r19.xz = float2(1,1);
      r18.xy = r19.xy * r18.xy;
      r14.w = cb0[159].z * r6.z;
      r14.w = 6.28310013 * r14.w;
      r14.w = sqrt(r14.w);
      r19.x = 6360 + -r6.z;
      r19.y = r19.x / cb0[159].z;
      r19.y = 1.44269502 * r19.y;
      r19.y = exp2(r19.y);
      r14.w = r19.y * r14.w;
      r18.x = dot(r18.xy, float2(1,-1));
      r13.w = r18.x + r13.w;
      r13.w = r14.w * r13.w;
      r18.xy = float2(0.416666657,7.53972054) * r6.zz;
      r18.xy = sqrt(r18.xy);
      r20.xy = r18.xx * r13.xz;
      r20.zw = cmp(float2(0,0) < r20.xy);
      r21.xy = cmp(r20.xy < float2(0,0));
      r20.zw = (int2)-r20.zw + (int2)r21.xy;
      r20.zw = (int2)r20.zw;
      r21.xyz = r20.xxy * r20.xxy;
      r13.z = cmp(r20.z < r20.w);
      r14.w = 1.44269502 * r21.x;
      r14.w = exp2(r14.w);
      r13.z = r13.z ? r14.w : 0;
      r21.xy = r21.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r21.xy = sqrt(r21.xy);
      r20.xy = abs(r20.xy) * float2(2.31929994,2.31929994) + r21.xy;
      r20.xy = r20.zw / r20.xy;
      r14.w = r18.w * -r6.x;
      r14.w = 1.20224583 * r14.w;
      r19.w = exp2(r14.w);
      r18.xw = r20.xy * r19.zw;
      r14.w = 1.20224583 * r19.x;
      r14.w = exp2(r14.w);
      r14.w = r18.y * r14.w;
      r18.x = dot(r18.xw, float2(1,-1));
      r13.z = r18.x + r13.z;
      r13.z = r14.w * r13.z;
      r13.z = 0.00444444455 * r13.z;
      r18.xyw = r13.www * float3(-0.00579999993,-0.0135000004,-0.0331000015) + -r13.zzz;
      r18.xyw = float3(1.44269502,1.44269502,1.44269502) * r18.xyw;
      r18.xyw = exp2(r18.xyw);
      r13.z = max(r11.z, r6.z);
      r13.z = r6.y ? r13.z : r11.z;
      r13.w = cmp(6360.00977 < r13.z);
      if (r13.w != 0) {
        r13.w = cmp(r13.y < 1);
        if (r13.w != 0) {
          r14.xyz = r6.yyy ? r14.xyz : r9.xyz;
          r13.w = dot(r10.yzw, r14.xyz);
          r13.w = r13.w / r11.z;
          r10.y = dot(r10.yzw, cb0[161].xyz);
          r10.y = r10.y / r11.z;
          r10.z = r13.z * r13.z;
          r10.w = r13.z * r13.z + -40449600;
          r10.w = sqrt(r10.w);
          r11.z = r13.z * r13.w;
          r10.z = r11.z * r11.z + -r10.z;
          r10.z = 40449600 + r10.z;
          r13.z = cmp(r11.z < 0);
          r13.w = cmp(0 < r10.z);
          r13.z = r13.w ? r13.z : 0;
          r14.xyzw = r13.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r13.z = r10.w * r12.y;
          r19.y = r13.z * 0.00105685578 + r12.z;
          r10.zw = r14.yz + r10.zw;
          r10.z = sqrt(r10.z);
          r10.z = r11.z * r14.x + r10.z;
          r10.z = r10.z / r10.w;
          r19.x = r10.z * 0.4921875 + r14.w;
          r10.y = max(-0.197500005, r10.y);
          r10.y = 5.34962368 * r10.y;
          r10.z = min(1, abs(r10.y));
          r10.w = max(1, abs(r10.y));
          r10.w = 1 / r10.w;
          r10.z = r10.z * r10.w;
          r10.w = r10.z * r10.z;
          r11.z = r10.w * 0.0208350997 + -0.0851330012;
          r11.z = r10.w * r11.z + 0.180141002;
          r11.z = r10.w * r11.z + -0.330299497;
          r10.w = r10.w * r11.z + 0.999866009;
          r11.z = r10.z * r10.w;
          r13.z = cmp(1 < abs(r10.y));
          r11.z = r11.z * -2 + 1.57079637;
          r11.z = r13.z ? r11.z : 0;
          r10.z = r10.z * r10.w + r11.z;
          r10.y = min(1, r10.y);
          r10.y = cmp(r10.y < -r10.y);
          r10.y = r10.y ? -r10.z : r10.z;
          r10.y = r10.y * 0.909090877 + 0.74000001;
          r10.y = r10.y * 0.484375 + r11.w;
          r10.yz = float2(0.015625,1.015625) + r10.yy;
          r19.zw = float2(0.125,0.125) * r10.yz;
          r14.xyzw = t2.SampleLevel(s2_s, r19.zxy, 0).xyzw;
          r20.xyzw = t2.SampleLevel(s2_s, r19.wxy, 0).xyzw;
          r20.xyzw = r20.xyzw * r2.wwww;
          r14.xyzw = r14.xyzw * r12.wwww + r20.xyzw;
          r14.xyzw = -r18.xywx * r14.xyzw + r16.xyzw;
          r16.xyzw = max(float4(0,0,0,0), r14.xyzw);
          if (r6.y == 0) {
            r10.y = r13.x + r8.w;
            r10.z = cmp(abs(r10.y) < 0.00499999989);
            if (r10.z != 0) {
              r10.y = 0.00499999989 + r10.y;
              r10.y = 100 * r10.y;
              r8.w = -0.00499999989 + -r8.w;
              r10.z = r6.x * r6.x + r6.w;
              r10.w = r18.z * r6.x;
              r11.z = r10.w * r8.w + r10.z;
              r11.z = sqrt(r11.z);
              r11.w = r8.w * r6.z;
              r8.w = r6.z * r8.w + r6.x;
              r8.w = r8.w / r11.z;
              r8.w = max(r11.y, r8.w);
              r13.x = r11.w * r11.w + -r6.w;
              r13.x = 40449600 + r13.x;
              r13.z = cmp(r11.w < 0);
              r13.w = cmp(0 < r13.x);
              r13.z = r13.w ? r13.z : 0;
              r14.xyzw = r13.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r13.x = r14.y + r13.x;
              r13.x = sqrt(r13.x);
              r11.w = r11.w * r14.x + r13.x;
              r13.x = r14.z + r11.x;
              r11.w = r11.w / r13.x;
              r14.x = r11.w * 0.4921875 + r14.w;
              r14.yz = r17.yz;
              r20.xyzw = t2.SampleLevel(s2_s, r14.yxz, 0).xyzw;
              r17.y = r14.x;
              r21.xyzw = t2.SampleLevel(s2_s, r17.xyz, 0).xyzw;
              r21.xyzw = r21.xyzw * r2.wwww;
              r20.xyzw = r20.xyzw * r12.wwww + r21.xyzw;
              r11.w = r11.z * r11.z;
              r13.x = r11.z * r11.z + -40449600;
              r13.x = sqrt(r13.x);
              r8.w = r11.z * r8.w;
              r11.z = r8.w * r8.w + -r11.w;
              r11.z = 40449600 + r11.z;
              r11.w = cmp(r8.w < 0);
              r13.z = cmp(0 < r11.z);
              r11.w = r11.w ? r13.z : 0;
              r21.xyzw = r11.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r11.w = r13.x * r12.y;
              r19.y = r11.w * 0.00105685578 + r12.z;
              r11.z = r21.y + r11.z;
              r11.z = sqrt(r11.z);
              r8.w = r8.w * r21.x + r11.z;
              r11.z = r21.z + r13.x;
              r8.w = r8.w / r11.z;
              r19.x = r8.w * 0.4921875 + r21.w;
              r21.xyzw = t2.SampleLevel(s2_s, r19.zxy, 0).xyzw;
              r22.xyzw = t2.SampleLevel(s2_s, r19.wxy, 0).xyzw;
              r22.xyzw = r22.xyzw * r2.wwww;
              r21.xyzw = r21.xyzw * r12.wwww + r22.xyzw;
              r20.xyzw = -r18.xywx * r21.xyzw + r20.xyzw;
              r20.xyzw = max(float4(0,0,0,0), r20.xyzw);
              r8.w = r10.w * r11.y + r10.z;
              r8.w = sqrt(r8.w);
              r10.z = r11.y * r6.z;
              r6.x = r6.z * r11.y + r6.x;
              r6.x = r6.x / r8.w;
              r6.x = max(r11.y, r6.x);
              r10.w = r10.z * r10.z + -r6.w;
              r10.w = 40449600 + r10.w;
              r11.y = cmp(r10.z < 0);
              r11.z = cmp(0 < r10.w);
              r11.y = r11.z ? r11.y : 0;
              r21.xyzw = r11.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.w = r21.y + r10.w;
              r10.w = sqrt(r10.w);
              r10.z = r10.z * r21.x + r10.w;
              r10.w = r21.z + r11.x;
              r10.z = r10.z / r10.w;
              r14.w = r10.z * 0.4921875 + r21.w;
              r21.xyzw = t2.SampleLevel(s2_s, r14.ywz, 0).xyzw;
              r17.w = r14.w;
              r14.xyzw = t2.SampleLevel(s2_s, r17.xwz, 0).xyzw;
              r14.xyzw = r14.xyzw * r2.wwww;
              r14.xyzw = r21.xyzw * r12.wwww + r14.xyzw;
              r10.z = r8.w * r8.w;
              r10.w = r8.w * r8.w + -40449600;
              r10.w = sqrt(r10.w);
              r6.x = r8.w * r6.x;
              r8.w = r6.x * r6.x + -r10.z;
              r8.w = 40449600 + r8.w;
              r10.z = cmp(r6.x < 0);
              r11.y = cmp(0 < r8.w);
              r10.z = r10.z ? r11.y : 0;
              r21.xyzw = r10.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.z = r10.w * r12.y;
              r19.y = r10.z * 0.00105685578 + r12.z;
              r8.w = r21.y + r8.w;
              r8.w = sqrt(r8.w);
              r6.x = r6.x * r21.x + r8.w;
              r8.w = r21.z + r10.w;
              r6.x = r6.x / r8.w;
              r19.x = r6.x * 0.4921875 + r21.w;
              r21.xyzw = t2.SampleLevel(s2_s, r19.zxy, 0).xyzw;
              r19.xyzw = t2.SampleLevel(s2_s, r19.wxy, 0).xyzw;
              r19.xyzw = r19.xyzw * r2.wwww;
              r19.xyzw = r21.xyzw * r12.wwww + r19.xyzw;
              r14.xyzw = -r18.xywx * r19.xyzw + r14.xyzw;
              r14.xyzw = max(float4(0,0,0,0), r14.xyzw);
              r14.xyzw = r14.xyzw + -r20.xyzw;
              r16.xyzw = r10.yyyy * r14.xyzw + r20.xyzw;
            }
          } else {
            r6.x = cmp(0 < r13.y);
            if (r6.x != 0) {
              r14.xyzw = float4(1,1,1,1) + -r18.xywx;
              r6.x = r12.x * r6.z;
              r6.z = r6.x * r6.x + -r6.w;
              r6.z = 40449600 + r6.z;
              r6.w = cmp(r6.x < 0);
              r8.w = cmp(0 < r6.z);
              r6.w = r6.w ? r8.w : 0;
              r19.xyzw = r6.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r6.z = r19.y + r6.z;
              r6.z = sqrt(r6.z);
              r6.x = r6.x * r19.x + r6.z;
              r6.z = r19.z + r11.x;
              r6.x = r6.x / r6.z;
              r11.y = r6.x * 0.4921875 + r19.w;
              r11.xz = r17.yz;
              r19.xyzw = t2.SampleLevel(s2_s, r11.xyz, 0).xyzw;
              r11.xz = r17.xz;
              r11.xyzw = t2.SampleLevel(s2_s, r11.xyz, 0).xyzw;
              r11.xyzw = r11.xyzw * r2.wwww;
              r11.xyzw = r19.xyzw * r12.wwww + r11.xyzw;
              r11.xyzw = max(float4(0,0,0,0), r11.xyzw);
              r11.xyzw = r14.xyzw * r11.xyzw + -r16.xyzw;
              r16.xyzw = r13.yyyy * r11.xyzw + r16.xyzw;
            }
          }
        } else {
          r11.xyzw = float4(1,1,1,1) + -r18.xywx;
          r16.xyzw = r11.xyzw * r16.xyzw;
        }
      }
    } else {
      r18.xyw = float3(1,1,1);
    }
    r2.w = saturate(50 * r5.w);
    r5.w = r2.w * -2 + 3;
    r2.w = r2.w * r2.w;
    r2.w = r5.w * r2.w;
    r2.w = r16.w * r2.w;
    r6.xzw = r16.xyz * r2.www;
    r2.w = max(9.99999975e-005, r16.x);
    r6.xzw = r6.xzw / r2.www;
    r15.yzw = float3(1,0.429629624,0.175226584);
    r6.xzw = r6.xzw * r15.yxx;
    r6.xzw = r6.xzw * r15.xzw;
    r6.xzw = r16.xyz * r9.www + r6.xzw;
    r6.xzw = max(float3(0,0,0), r6.xzw);
  } else {
    r18.xyw = float3(1,1,1);
    r6.xzw = float3(0,0,0);
  }
  r10.yz = asint(cb0[182].zz) & int2(2,1);
  if (r10.y == 0) {
    r2.w = cmp(0 < r8.x);
    if (r2.w != 0) {
      r7.xyw = r8.xxx * r9.xyz + r7.xyw;
      r2.w = dot(r7.xyw, r7.xyw);
      r2.w = sqrt(r2.w);
      r7.xyw = r7.xyw / r2.www;
      r5.w = dot(r7.xyw, cb0[161].xyz);
      r2.w = -6360 + r2.w;
      r11.z = 0.0142857144 * r2.w;
      r12.y = sqrt(r11.z);
      r10.yw = float2(0.150000006,0.200000003) + r5.ww;
      r11.xy = float2(12.262105,0.833333313) * r10.yw;
      r2.w = min(1, abs(r11.x));
      r8.w = max(1, abs(r11.x));
      r8.w = 1 / r8.w;
      r2.w = r8.w * r2.w;
      r8.w = r2.w * r2.w;
      r9.w = r8.w * 0.0208350997 + -0.0851330012;
      r9.w = r8.w * r9.w + 0.180141002;
      r9.w = r8.w * r9.w + -0.330299497;
      r8.w = r8.w * r9.w + 0.999866009;
      r9.w = r8.w * r2.w;
      r10.y = cmp(1 < abs(r11.x));
      r9.w = r9.w * -2 + 1.57079637;
      r9.w = r10.y ? r9.w : 0;
      r2.w = r2.w * r8.w + r9.w;
      r8.w = min(1, r11.x);
      r8.w = cmp(r8.w < -r8.w);
      r2.w = r8.w ? -r2.w : r2.w;
      r12.x = 0.666666687 * r2.w;
      r12.xyz = t0.SampleLevel(s0_s, r12.xy, 0).xyz;
      r12.xyz = r6.yyy ? float3(0,0,0) : r12.xyz;
      r11.xyz = t1.SampleLevel(s1_s, r11.yz, 0).xyz;
      r2.w = max(0, r5.w);
      r11.xyz = r2.www * r12.xyz + r11.xyz;
      r11.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r11.xyz;
      r5.xyz = -r5.xyz * r0.xxx + cb0[161].xyz;
      r0.x = dot(r5.xyz, r5.xyz);
      r0.x = rsqrt(r0.x);
      r5.xyz = r5.xyz * r0.xxx;
      r0.x = dot(-r9.xyz, r5.xyz);
      r0.x = 1 + -r0.x;
      r2.w = r0.x * r0.x;
      r2.w = r2.w * r2.w;
      r0.x = r2.w * r0.x;
      r0.x = r0.x * 0.980000019 + 0.0199999996;
      r2.w = dot(r5.xyz, r7.xyw);
      r2.w = max(0, r2.w);
      r2.w = log2(r2.w);
      r2.w = 150 * r2.w;
      r2.w = exp2(r2.w);
      r0.x = r2.w * r0.x;
      r0.x = max(0, r0.x);
      r5.xyz = r0.xxx * r12.xyz + r11.xyz;
      r5.xyz = r6.yyy ? r11.xyz : r5.xyz;
      r5.xyz = r18.xyw * r5.xyz;
    } else {
      r5.xyz = float3(0,0,0);
    }
  } else {
    r5.xyz = float3(0,0,0);
  }
  if (r10.z == 0) {
    r0.x = cmp(6430 >= r8.y);
    r7.xy = float2(-6360,0.150000006) + r8.yz;
    r7.xy = float2(0.0142857144,12.262105) * r7.xy;
    r11.y = sqrt(r7.x);
    r2.w = min(1, abs(r7.y));
    r5.w = max(1, abs(r7.y));
    r5.w = 1 / r5.w;
    r2.w = r5.w * r2.w;
    r5.w = r2.w * r2.w;
    r6.y = r5.w * 0.0208350997 + -0.0851330012;
    r6.y = r5.w * r6.y + 0.180141002;
    r6.y = r5.w * r6.y + -0.330299497;
    r5.w = r5.w * r6.y + 0.999866009;
    r6.y = r5.w * r2.w;
    r7.x = cmp(1 < abs(r7.y));
    r6.y = r6.y * -2 + 1.57079637;
    r6.y = r7.x ? r6.y : 0;
    r2.w = r2.w * r5.w + r6.y;
    r5.w = min(1, r7.y);
    r5.w = cmp(r5.w < -r5.w);
    r2.w = r5.w ? -r2.w : r2.w;
    r11.x = 0.666666687 * r2.w;
    r7.xyw = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
    r7.xyw = r0.xxx ? r7.xyw : float3(1,1,1);
    r0.x = cmp(0 < r8.x);
    r2.w = dot(r9.xyz, cb0[161].xyz);
    r2.w = cmp(r2.w >= cb0[169].x);
    r2.w = r2.w ? 1.000000 : 0;
    r7.xyw = r7.xyw * r2.www;
    r7.xyw = cb0[167].xyz * r7.xyw;
    r7.xyw = r0.xxx ? float3(0,0,0) : r7.xyw;
  } else {
    r7.xyw = float3(0,0,0);
  }
  r5.xyz = r7.xyw + r5.xyz;
  r5.xyz = r5.xyz + r6.xzw;
  r0.x = cb0[157].w * r7.z;
  r6.xyz = cb0[163].xyz * r0.xxx;
  r5.xyz = r6.xyz * r5.xyz;
  r0.x = saturate(r18.x * cb0[158].y + -cb0[158].z);
  r2.w = 1 + -r10.x;
  r6.x = 1 + -r0.x;
  r5.w = r2.w * r6.x + r0.x;
  r0.x = cmp(0 < cb0[182].y);
  if (r0.x != 0) {
    r0.x = cmp(0 != cb0[184].x);
    r6.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[68].xyz;
    r7.xy = r4.xy / r4.ww;
    r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r6.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r6.x = sqrt(r2.w);
    r6.x = -cb0[181].x + r6.x;
    r6.x = max(0, r6.x);
    r6.x = cb0[182].x * r6.x;
    r6.x = cb0[181].z * r6.x;
    r6.z = sqrt(r6.x);
    r6.w = cb0[181].y * r6.z;
    r7.z = cmp(r6.w < 0.707106769);
    r6.w = dot(r6.ww, r6.ww);
    r6.w = min(1, r6.w);
    r6.w = r7.z ? r6.w : 1;
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r2.w = -r2.z * r2.z + 1;
    r2.w = sqrt(r2.w);
    r8.y = r2.z * 0.5 + 0.5;
    r2.xy = r2.xy / r2.ww;
    r2.z = 1 + -abs(r2.x);
    r2.z = sqrt(r2.z);
    r2.w = abs(r2.x) * -0.0187292993 + 0.0742610022;
    r2.w = r2.w * abs(r2.x) + -0.212114394;
    r2.w = r2.w * abs(r2.x) + 1.57072878;
    r7.z = r2.w * r2.z;
    r7.z = r7.z * -2 + 3.14159274;
    r2.x = cmp(r2.x < -r2.x);
    r2.x = r2.x ? r7.z : 0;
    r2.x = r2.w * r2.z + r2.x;
    r2.y = cmp(r2.y < 0);
    r2.z = 6.28318548 + -r2.x;
    r2.x = r2.y ? r2.z : r2.x;
    r8.x = 0.159154937 * r2.x;
    r2.xy = cb0[180].zw * float2(0.5,0.5) + r8.xy;
    r2.zw = float2(1,1) + cb0[180].xy;
    r2.zw = cb0[180].xy / r2.zw;
    r2.xy = r2.xy * r2.zw;
    r6.xy = r0.xx ? r2.xy : r7.xy;
    r2.xyzw = t4.SampleLevel(s3_s, r6.xyz, 0).xyzw;
    r2.xyz = r2.xyz * r6.www;
    r0.x = 1 + -r2.w;
    r0.x = -r6.w * r0.x + 1;
    r2.xyz = cb0[135].zzz * r2.xyz;
    o6.xyz = r2.xyz * r5.www + r5.xyz;
    o6.w = r5.w * r0.x;
  } else {
    o6.xyzw = r5.xyzw;
  }
  o0.w = 0;
  o1.xyz = r0.yzw;
  o2.xyzw = r1.zyxw;
  o3.xyzw = r3.xyzw;
  o4.zw = float2(0,0);
  o7.xyzw = r4.xyzw;
  o5.x = v1.x;
  return;
}