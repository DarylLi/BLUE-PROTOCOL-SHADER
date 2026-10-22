// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  uint v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE5,
  float3 v5 : ATTRIBUTE11,
  float3 v6 : ATTRIBUTE12,
  uint v7 : SV_VertexID0,
  float4 v8 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v7.x + asint(cb0[10].w);
  r0.x = (int)r0.x + asint(-cb0[10].z);
  r0.y = (int)r0.x * 20;
  r0.z = mad((int)r0.x, 20, 3);
  r1.xyz = t3.Load(r0.z).zxy;
  r0.zw = (uint2)r1.yz >> int2(16,16);
  r1.w = cmp((uint)r0.w < 0x0000ffff);
  if (r1.w != 0) {
    r2.xyz = t3.Load(r0.y).xyw;
    r3.xyzw = (int4)r1.yzyz & int4(0xffff,0xffff,0xffff,0xffff);
    r4.xyzw = mad((int4)r0.xxxx, int4(20,20,20,20), int4(4,8,12,16));
    r5.xyz = t3.Load(r4.x).xyw;
    r6.xyzw = (int4)r4.xyzw + int4(3,3,3,3);
    r7.xyz = t3.Load(r6.x).xyz;
    r0.xy = (uint2)r7.xy >> int2(16,16);
    r8.xyzw = (int4)r7.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
    r7.xyw = t3.Load(r4.y).xyw;
    r9.xyz = t3.Load(r6.y).xyz;
    r1.yz = (uint2)r9.xy >> int2(16,16);
    r10.xyzw = (int4)r9.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
    r4.xyz = t3.Load(r4.z).xyw;
    r6.xyz = t3.Load(r6.z).xyz;
    r9.xy = (uint2)r6.xy >> int2(16,16);
    r11.xyzw = (int4)r6.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
    r12.xyz = t3.Load(r4.w).xyw;
    r6.xyw = t3.Load(r6.w).xyz;
    r13.xy = (uint2)r6.xy >> int2(16,16);
    r14.xyzw = (int4)r6.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
    r6.xy = (int2)r3.zw * int2(3,3);
    r13.zw = t1.Load(r6.x).xy;
    r3.xyzw = mad((int4)r3.xyzw, int4(3,3,3,3), int4(1,1,2,2));
    r15.xy = t1.Load(r3.x).xy;
    r16.xyz = cb0[7].xyz * r13.www;
    r16.xyz = r13.zzz * cb0[6].xyz + r16.xyz;
    r15.xzw = r15.xxx * cb0[8].xyz + r16.xyz;
    r15.xzw = cb0[9].xyz + r15.xzw;
    r2.w = (int)r0.z * 3;
    r13.zw = t1.Load(r2.w).xy;
    r16.xy = mad((int2)r0.zz, int2(3,3), int2(1,2));
    r16.zw = t1.Load(r16.x).xy;
    r17.xyz = cb0[7].xyz * r13.www;
    r17.xyz = r13.zzz * cb0[6].xyz + r17.xyz;
    r17.xyz = r16.zzz * cb0[8].xyz + r17.xyz;
    r17.xyz = cb0[9].xyz + r17.xyz;
    r13.zw = t1.Load(r6.y).xy;
    r18.xy = t1.Load(r3.y).xy;
    r19.xyz = cb0[7].xyz * r13.www;
    r19.xyz = r13.zzz * cb0[6].xyz + r19.xyz;
    r18.xzw = r18.xxx * cb0[8].xyz + r19.xyz;
    r18.xzw = cb0[9].xyz + r18.xzw;
    r13.zw = t1.Load(r3.z).xy;
    r19.xyz = cb0[7].xyz * r13.zzz;
    r19.xyz = r15.yyy * cb0[6].xyz + r19.xyz;
    r19.xyz = r13.www * cb0[8].xyz + r19.xyz;
    r13.zw = t1.Load(r16.y).xy;
    r20.xyz = cb0[7].xyz * r13.zzz;
    r20.xyz = r16.www * cb0[6].xyz + r20.xyz;
    r20.xyz = r13.www * cb0[8].xyz + r20.xyz;
    r13.zw = t1.Load(r3.w).xy;
    r21.xyz = cb0[7].xyz * r13.zzz;
    r21.xyz = r18.yyy * cb0[6].xyz + r21.xyz;
    r21.xyz = r13.www * cb0[8].xyz + r21.xyz;
    r0.z = 1 + -r2.x;
    r0.z = r0.z + -r2.y;
    r15.xyz = r19.xyz * r2.zzz + r15.xzw;
    r17.xyz = r20.xyz * r2.zzz + r17.xyz;
    r17.xyz = r17.xyz * r2.yyy;
    r15.xyz = r2.xxx * r15.xyz + r17.xyz;
    r17.xyz = r21.xyz * r2.zzz + r18.xzw;
    r15.xyz = r0.zzz * r17.xyz + r15.xyz;
    r15.xyz = r15.xyz * r1.xxx;
    r0.y = cmp((uint)r0.y < 0x0000ffff);
    if (r0.y != 0) {
      r13.zw = (int2)r8.zw * int2(3,3);
      r16.zw = t1.Load(r13.z).xy;
      r17.xyzw = mad((int4)r8.zwzw, int4(3,3,3,3), int4(1,1,2,2));
      r18.xy = t1.Load(r17.x).xy;
      r19.xyz = cb0[7].xyz * r16.www;
      r19.xyz = r16.zzz * cb0[6].xyz + r19.xyz;
      r18.xzw = r18.xxx * cb0[8].xyz + r19.xyz;
      r18.xzw = cb0[9].xyz + r18.xzw;
      r4.w = (int)r0.x * 3;
      r16.zw = t1.Load(r4.w).xy;
      r19.xy = mad((int2)r0.xx, int2(3,3), int2(1,2));
      r19.xz = t1.Load(r19.x).xy;
      r20.xyz = cb0[7].xyz * r16.www;
      r20.xyz = r16.zzz * cb0[6].xyz + r20.xyz;
      r20.xyz = r19.xxx * cb0[8].xyz + r20.xyz;
      r20.xyz = cb0[9].xyz + r20.xyz;
      r13.zw = t1.Load(r13.w).xy;
      r16.zw = t1.Load(r17.y).xy;
      r21.xyz = cb0[7].xyz * r13.www;
      r21.xyz = r13.zzz * cb0[6].xyz + r21.xyz;
      r21.xyz = r16.zzz * cb0[8].xyz + r21.xyz;
      r21.xyz = cb0[9].xyz + r21.xyz;
      r13.zw = t1.Load(r17.z).xy;
      r17.xyz = cb0[7].xyz * r13.zzz;
      r17.xyz = r18.yyy * cb0[6].xyz + r17.xyz;
      r17.xyz = r13.www * cb0[8].xyz + r17.xyz;
      r13.zw = t1.Load(r19.y).xy;
      r19.xyw = cb0[7].xyz * r13.zzz;
      r19.xyz = r19.zzz * cb0[6].xyz + r19.xyw;
      r19.xyz = r13.www * cb0[8].xyz + r19.xyz;
      r13.zw = t1.Load(r17.w).xy;
      r22.xyz = cb0[7].xyz * r13.zzz;
      r22.xyz = r16.www * cb0[6].xyz + r22.xyz;
      r22.xyz = r13.www * cb0[8].xyz + r22.xyz;
      r4.w = r7.z + r1.x;
      r5.w = 1 + -r5.x;
      r5.w = r5.w + -r5.y;
      r17.xyz = r17.xyz * r5.zzz + r18.xzw;
      r18.xyz = r19.xyz * r5.zzz + r20.xyz;
      r18.xyz = r18.xyz * r5.yyy;
      r17.xyz = r5.xxx * r17.xyz + r18.xyz;
      r18.xyz = r22.xyz * r5.zzz + r21.xyz;
      r17.xyz = r5.www * r18.xyz + r17.xyz;
      r15.xyz = r7.zzz * r17.xyz + r15.xyz;
    } else {
      r4.w = r1.x;
    }
    r1.z = cmp((uint)r1.z < 0x0000ffff);
    if (r1.z != 0) {
      r13.zw = (int2)r10.zw * int2(3,3);
      r16.zw = t1.Load(r13.z).xy;
      r17.xyzw = mad((int4)r10.zwzw, int4(3,3,3,3), int4(1,1,2,2));
      r18.xy = t1.Load(r17.x).xy;
      r19.xyz = cb0[7].xyz * r16.www;
      r19.xyz = r16.zzz * cb0[6].xyz + r19.xyz;
      r18.xzw = r18.xxx * cb0[8].xyz + r19.xyz;
      r18.xzw = cb0[9].xyz + r18.xzw;
      r5.w = (int)r1.y * 3;
      r16.zw = t1.Load(r5.w).xy;
      r19.xy = mad((int2)r1.yy, int2(3,3), int2(1,2));
      r19.xz = t1.Load(r19.x).xy;
      r20.xyz = cb0[7].xyz * r16.www;
      r20.xyz = r16.zzz * cb0[6].xyz + r20.xyz;
      r20.xyz = r19.xxx * cb0[8].xyz + r20.xyz;
      r20.xyz = cb0[9].xyz + r20.xyz;
      r13.zw = t1.Load(r13.w).xy;
      r16.zw = t1.Load(r17.y).xy;
      r21.xyz = cb0[7].xyz * r13.www;
      r21.xyz = r13.zzz * cb0[6].xyz + r21.xyz;
      r21.xyz = r16.zzz * cb0[8].xyz + r21.xyz;
      r21.xyz = cb0[9].xyz + r21.xyz;
      r13.zw = t1.Load(r17.z).xy;
      r17.xyz = cb0[7].xyz * r13.zzz;
      r17.xyz = r18.yyy * cb0[6].xyz + r17.xyz;
      r17.xyz = r13.www * cb0[8].xyz + r17.xyz;
      r13.zw = t1.Load(r19.y).xy;
      r19.xyw = cb0[7].xyz * r13.zzz;
      r19.xyz = r19.zzz * cb0[6].xyz + r19.xyw;
      r19.xyz = r13.www * cb0[8].xyz + r19.xyz;
      r13.zw = t1.Load(r17.w).xy;
      r22.xyz = cb0[7].xyz * r13.zzz;
      r22.xyz = r16.www * cb0[6].xyz + r22.xyz;
      r22.xyz = r13.www * cb0[8].xyz + r22.xyz;
      r4.w = r4.w + r9.z;
      r5.w = 1 + -r7.x;
      r5.w = r5.w + -r7.y;
      r17.xyz = r17.xyz * r7.www + r18.xzw;
      r18.xyz = r19.xyz * r7.www + r20.xyz;
      r18.xyz = r18.xyz * r7.yyy;
      r17.xyz = r7.xxx * r17.xyz + r18.xyz;
      r18.xyz = r22.xyz * r7.www + r21.xyz;
      r17.xyz = r5.www * r18.xyz + r17.xyz;
      r15.xyz = r9.zzz * r17.xyz + r15.xyz;
    }
    r5.w = cmp((uint)r9.y < 0x0000ffff);
    if (r5.w != 0) {
      r9.yw = (int2)r11.zw * int2(3,3);
      r13.zw = t1.Load(r9.y).xy;
      r17.xyzw = mad((int4)r11.zwzw, int4(3,3,3,3), int4(1,1,2,2));
      r16.zw = t1.Load(r17.x).xy;
      r18.xyz = cb0[7].xyz * r13.www;
      r18.xyz = r13.zzz * cb0[6].xyz + r18.xyz;
      r18.xyz = r16.zzz * cb0[8].xyz + r18.xyz;
      r18.xyz = cb0[9].xyz + r18.xyz;
      r9.y = (int)r9.x * 3;
      r13.zw = t1.Load(r9.y).xy;
      r19.xy = mad((int2)r9.xx, int2(3,3), int2(1,2));
      r19.xz = t1.Load(r19.x).xy;
      r20.xyz = cb0[7].xyz * r13.www;
      r20.xyz = r13.zzz * cb0[6].xyz + r20.xyz;
      r20.xyz = r19.xxx * cb0[8].xyz + r20.xyz;
      r20.xyz = cb0[9].xyz + r20.xyz;
      r9.yw = t1.Load(r9.w).xy;
      r13.zw = t1.Load(r17.y).xy;
      r21.xyz = cb0[7].xyz * r9.www;
      r21.xyz = r9.yyy * cb0[6].xyz + r21.xyz;
      r21.xyz = r13.zzz * cb0[8].xyz + r21.xyz;
      r21.xyz = cb0[9].xyz + r21.xyz;
      r9.yw = t1.Load(r17.z).xy;
      r17.xyz = cb0[7].xyz * r9.yyy;
      r17.xyz = r16.www * cb0[6].xyz + r17.xyz;
      r17.xyz = r9.www * cb0[8].xyz + r17.xyz;
      r9.yw = t1.Load(r19.y).xy;
      r19.xyw = cb0[7].xyz * r9.yyy;
      r19.xyz = r19.zzz * cb0[6].xyz + r19.xyw;
      r19.xyz = r9.www * cb0[8].xyz + r19.xyz;
      r9.yw = t1.Load(r17.w).xy;
      r22.xyz = cb0[7].xyz * r9.yyy;
      r22.xyz = r13.www * cb0[6].xyz + r22.xyz;
      r22.xyz = r9.www * cb0[8].xyz + r22.xyz;
      r4.w = r4.w + r6.z;
      r9.y = 1 + -r4.x;
      r9.y = r9.y + -r4.y;
      r17.xyz = r17.xyz * r4.zzz + r18.xyz;
      r18.xyz = r19.xyz * r4.zzz + r20.xyz;
      r18.xyz = r18.xyz * r4.yyy;
      r17.xyz = r4.xxx * r17.xyz + r18.xyz;
      r18.xyz = r22.xyz * r4.zzz + r21.xyz;
      r17.xyz = r9.yyy * r18.xyz + r17.xyz;
      r15.xyz = r6.zzz * r17.xyz + r15.xyz;
    }
    r9.y = cmp((uint)r13.y < 0x0000ffff);
    if (r9.y != 0) {
      r13.yz = (int2)r14.zw * int2(3,3);
      r13.yw = t1.Load(r13.y).xy;
      r17.xyzw = mad((int4)r14.zwzw, int4(3,3,3,3), int4(1,1,2,2));
      r16.zw = t1.Load(r17.x).xy;
      r18.xyz = cb0[7].xyz * r13.www;
      r18.xyz = r13.yyy * cb0[6].xyz + r18.xyz;
      r18.xyz = r16.zzz * cb0[8].xyz + r18.xyz;
      r18.xyz = cb0[9].xyz + r18.xyz;
      r9.w = (int)r13.x * 3;
      r13.yw = t1.Load(r9.w).xy;
      r19.xy = mad((int2)r13.xx, int2(3,3), int2(1,2));
      r19.xz = t1.Load(r19.x).xy;
      r20.xyz = cb0[7].xyz * r13.www;
      r20.xyz = r13.yyy * cb0[6].xyz + r20.xyz;
      r20.xyz = r19.xxx * cb0[8].xyz + r20.xyz;
      r20.xyz = cb0[9].xyz + r20.xyz;
      r13.yz = t1.Load(r13.z).xy;
      r17.xy = t1.Load(r17.y).xy;
      r21.xyz = cb0[7].xyz * r13.zzz;
      r13.yzw = r13.yyy * cb0[6].xyz + r21.xyz;
      r13.yzw = r17.xxx * cb0[8].xyz + r13.yzw;
      r13.yzw = cb0[9].xyz + r13.yzw;
      r17.xz = t1.Load(r17.z).xy;
      r21.xyz = cb0[7].xyz * r17.xxx;
      r21.xyz = r16.www * cb0[6].xyz + r21.xyz;
      r21.xyz = r17.zzz * cb0[8].xyz + r21.xyz;
      r16.zw = t1.Load(r19.y).xy;
      r19.xyw = cb0[7].xyz * r16.zzz;
      r19.xyz = r19.zzz * cb0[6].xyz + r19.xyw;
      r19.xyz = r16.www * cb0[8].xyz + r19.xyz;
      r16.zw = t1.Load(r17.w).xy;
      r17.xzw = cb0[7].xyz * r16.zzz;
      r17.xyz = r17.yyy * cb0[6].xyz + r17.xzw;
      r17.xyz = r16.www * cb0[8].xyz + r17.xyz;
      r4.w = r4.w + r6.w;
      r9.w = 1 + -r12.x;
      r9.w = r9.w + -r12.y;
      r18.xyz = r21.xyz * r12.zzz + r18.xyz;
      r19.xyz = r19.xyz * r12.zzz + r20.xyz;
      r19.xyz = r19.xyz * r12.yyy;
      r18.xyz = r12.xxx * r18.xyz + r19.xyz;
      r13.yzw = r17.xyz * r12.zzz + r13.yzw;
      r13.yzw = r9.www * r13.yzw + r18.xyz;
      r15.xyz = r6.www * r13.yzw + r15.xyz;
    }
    r9.w = cmp(9.99999975e-005 < r4.w);
    r4.w = 1 / r4.w;
    r13.yzw = r15.xyz * r4.www;
    r13.yzw = r9.www ? r13.yzw : 0;
    r15.xy = t0.Load(r6.x).xy;
    r15.zw = t0.Load(r3.x).xy;
    r17.xyz = cb0[3].xyz * r15.yyy;
    r17.xyz = r15.xxx * cb0[2].xyz + r17.xyz;
    r15.xyz = r15.zzz * cb0[4].xyz + r17.xyz;
    r15.xyz = cb0[5].xyz + r15.xyz;
    r16.zw = t0.Load(r2.w).xy;
    r17.xy = t0.Load(r16.x).xy;
    r18.xyz = cb0[3].xyz * r16.www;
    r16.xzw = r16.zzz * cb0[2].xyz + r18.xyz;
    r16.xzw = r17.xxx * cb0[4].xyz + r16.xzw;
    r16.xzw = cb0[5].xyz + r16.xzw;
    r6.xy = t0.Load(r6.y).xy;
    r3.xy = t0.Load(r3.y).xy;
    r17.xzw = cb0[3].xyz * r6.yyy;
    r17.xzw = r6.xxx * cb0[2].xyz + r17.xzw;
    r17.xzw = r3.xxx * cb0[4].xyz + r17.xzw;
    r17.xzw = cb0[5].xyz + r17.xzw;
    r3.xz = t0.Load(r3.z).xy;
    r18.xyz = cb0[3].xyz * r3.xxx;
    r18.xyz = r15.www * cb0[2].xyz + r18.xyz;
    r18.xyz = r3.zzz * cb0[4].xyz + r18.xyz;
    r3.xz = t0.Load(r16.y).xy;
    r19.xyz = cb0[3].xyz * r3.xxx;
    r19.xyz = r17.yyy * cb0[2].xyz + r19.xyz;
    r19.xyz = r3.zzz * cb0[4].xyz + r19.xyz;
    r3.xz = t0.Load(r3.w).xy;
    r20.xyz = cb0[3].xyz * r3.xxx;
    r3.xyw = r3.yyy * cb0[2].xyz + r20.xyz;
    r3.xyz = r3.zzz * cb0[4].xyz + r3.xyw;
    r15.xyz = r18.xyz * r2.zzz + r15.xyz;
    r16.xyz = r19.xyz * r2.zzz + r16.xzw;
    r16.xyz = r16.xyz * r2.yyy;
    r2.xyw = r2.xxx * r15.xyz + r16.xyz;
    r3.xyz = r3.xyz * r2.zzz + r17.xzw;
    r2.xyz = r0.zzz * r3.xyz + r2.xyw;
    r2.xyz = r2.xyz * r1.xxx;
    if (r0.y != 0) {
      r0.yz = (int2)r8.zw * int2(3,3);
      r3.xy = t0.Load(r0.y).xy;
      r8.xyzw = mad((int4)r8.xyzw, int4(3,3,3,3), int4(1,1,2,2));
      r3.zw = t0.Load(r8.x).xy;
      r15.xyz = cb0[3].xyz * r3.yyy;
      r15.xyz = r3.xxx * cb0[2].xyz + r15.xyz;
      r3.xyz = r3.zzz * cb0[4].xyz + r15.xyz;
      r3.xyz = cb0[5].xyz + r3.xyz;
      r0.y = (int)r0.x * 3;
      r6.xy = t0.Load(r0.y).xy;
      r0.xy = mad((int2)r0.xx, int2(3,3), int2(1,2));
      r15.xy = t0.Load(r0.x).xy;
      r16.xyz = cb0[3].xyz * r6.yyy;
      r16.xyz = r6.xxx * cb0[2].xyz + r16.xyz;
      r15.xzw = r15.xxx * cb0[4].xyz + r16.xyz;
      r15.xzw = cb0[5].xyz + r15.xzw;
      r0.xz = t0.Load(r0.z).xy;
      r6.xy = t0.Load(r8.y).xy;
      r16.xyz = cb0[3].xyz * r0.zzz;
      r16.xyz = r0.xxx * cb0[2].xyz + r16.xyz;
      r16.xyz = r6.xxx * cb0[4].xyz + r16.xyz;
      r16.xyz = cb0[5].xyz + r16.xyz;
      r0.xz = t0.Load(r8.z).xy;
      r8.xyz = cb0[3].xyz * r0.xxx;
      r8.xyz = r3.www * cb0[2].xyz + r8.xyz;
      r8.xyz = r0.zzz * cb0[4].xyz + r8.xyz;
      r0.xy = t0.Load(r0.y).xy;
      r17.xyz = cb0[3].xyz * r0.xxx;
      r17.xyz = r15.yyy * cb0[2].xyz + r17.xyz;
      r0.xyz = r0.yyy * cb0[4].xyz + r17.xyz;
      r17.xy = t0.Load(r8.w).xy;
      r17.xzw = cb0[3].xyz * r17.xxx;
      r17.xzw = r6.yyy * cb0[2].xyz + r17.xzw;
      r17.xyz = r17.yyy * cb0[4].xyz + r17.xzw;
      r1.x = r7.z + r1.x;
      r2.w = 1 + -r5.x;
      r2.w = r2.w + -r5.y;
      r3.xyz = r8.xyz * r5.zzz + r3.xyz;
      r0.xyz = r0.xyz * r5.zzz + r15.xzw;
      r0.xyz = r5.yyy * r0.xyz;
      r0.xyz = r5.xxx * r3.xyz + r0.xyz;
      r3.xyz = r17.xyz * r5.zzz + r16.xyz;
      r0.xyz = r2.www * r3.xyz + r0.xyz;
      r2.xyz = r7.zzz * r0.xyz + r2.xyz;
    }
    if (r1.z != 0) {
      r0.xy = (int2)r10.zw * int2(3,3);
      r0.xz = t0.Load(r0.x).xy;
      r3.xyzw = mad((int4)r10.xyzw, int4(3,3,3,3), int4(1,1,2,2));
      r5.xy = t0.Load(r3.x).xy;
      r8.xyz = cb0[3].xyz * r0.zzz;
      r8.xyz = r0.xxx * cb0[2].xyz + r8.xyz;
      r8.xyz = r5.xxx * cb0[4].xyz + r8.xyz;
      r8.xyz = cb0[5].xyz + r8.xyz;
      r0.x = (int)r1.y * 3;
      r0.xz = t0.Load(r0.x).xy;
      r1.yz = mad((int2)r1.yy, int2(3,3), int2(1,2));
      r5.xz = t0.Load(r1.y).xy;
      r10.xyz = cb0[3].xyz * r0.zzz;
      r10.xyz = r0.xxx * cb0[2].xyz + r10.xyz;
      r10.xyz = r5.xxx * cb0[4].xyz + r10.xyz;
      r10.xyz = cb0[5].xyz + r10.xyz;
      r0.xy = t0.Load(r0.y).xy;
      r3.xy = t0.Load(r3.y).xy;
      r15.xyz = cb0[3].xyz * r0.yyy;
      r0.xyz = r0.xxx * cb0[2].xyz + r15.xyz;
      r0.xyz = r3.xxx * cb0[4].xyz + r0.xyz;
      r0.xyz = cb0[5].xyz + r0.xyz;
      r3.xz = t0.Load(r3.z).xy;
      r15.xyz = cb0[3].xyz * r3.xxx;
      r15.xyz = r5.yyy * cb0[2].xyz + r15.xyz;
      r15.xyz = r3.zzz * cb0[4].xyz + r15.xyz;
      r1.yz = t0.Load(r1.z).xy;
      r16.xyz = cb0[3].xyz * r1.yyy;
      r5.xyz = r5.zzz * cb0[2].xyz + r16.xyz;
      r5.xyz = r1.zzz * cb0[4].xyz + r5.xyz;
      r1.yz = t0.Load(r3.w).xy;
      r3.xzw = cb0[3].xyz * r1.yyy;
      r3.xyz = r3.yyy * cb0[2].xyz + r3.xzw;
      r3.xyz = r1.zzz * cb0[4].xyz + r3.xyz;
      r1.x = r1.x + r9.z;
      r1.y = 1 + -r7.x;
      r1.y = r1.y + -r7.y;
      r8.xyz = r15.xyz * r7.www + r8.xyz;
      r5.xyz = r5.xyz * r7.www + r10.xyz;
      r5.xyz = r7.yyy * r5.xyz;
      r5.xyz = r7.xxx * r8.xyz + r5.xyz;
      r0.xyz = r3.xyz * r7.www + r0.xyz;
      r0.xyz = r1.yyy * r0.xyz + r5.xyz;
      r2.xyz = r9.zzz * r0.xyz + r2.xyz;
    }
    if (r5.w != 0) {
      r0.xy = (int2)r11.zw * int2(3,3);
      r0.xz = t0.Load(r0.x).xy;
      r3.xyzw = mad((int4)r11.xyzw, int4(3,3,3,3), int4(1,1,2,2));
      r1.yz = t0.Load(r3.x).xy;
      r5.xyz = cb0[3].xyz * r0.zzz;
      r5.xyz = r0.xxx * cb0[2].xyz + r5.xyz;
      r5.xyz = r1.yyy * cb0[4].xyz + r5.xyz;
      r5.xyz = cb0[5].xyz + r5.xyz;
      r0.x = (int)r9.x * 3;
      r0.xz = t0.Load(r0.x).xy;
      r6.xy = mad((int2)r9.xx, int2(3,3), int2(1,2));
      r7.xy = t0.Load(r6.x).xy;
      r8.xyz = cb0[3].xyz * r0.zzz;
      r8.xyz = r0.xxx * cb0[2].xyz + r8.xyz;
      r7.xzw = r7.xxx * cb0[4].xyz + r8.xyz;
      r7.xzw = cb0[5].xyz + r7.xzw;
      r0.xy = t0.Load(r0.y).xy;
      r3.xy = t0.Load(r3.y).xy;
      r8.xyz = cb0[3].xyz * r0.yyy;
      r0.xyz = r0.xxx * cb0[2].xyz + r8.xyz;
      r0.xyz = r3.xxx * cb0[4].xyz + r0.xyz;
      r0.xyz = cb0[5].xyz + r0.xyz;
      r3.xz = t0.Load(r3.z).xy;
      r8.xyz = cb0[3].xyz * r3.xxx;
      r8.xyz = r1.zzz * cb0[2].xyz + r8.xyz;
      r8.xyz = r3.zzz * cb0[4].xyz + r8.xyz;
      r1.yz = t0.Load(r6.y).xy;
      r9.xzw = cb0[3].xyz * r1.yyy;
      r9.xzw = r7.yyy * cb0[2].xyz + r9.xzw;
      r9.xzw = r1.zzz * cb0[4].xyz + r9.xzw;
      r1.yz = t0.Load(r3.w).xy;
      r3.xzw = cb0[3].xyz * r1.yyy;
      r3.xyz = r3.yyy * cb0[2].xyz + r3.xzw;
      r3.xyz = r1.zzz * cb0[4].xyz + r3.xyz;
      r1.x = r1.x + r6.z;
      r1.y = 1 + -r4.x;
      r1.y = r1.y + -r4.y;
      r5.xyz = r8.xyz * r4.zzz + r5.xyz;
      r7.xyz = r9.xzw * r4.zzz + r7.xzw;
      r7.xyz = r7.xyz * r4.yyy;
      r4.xyw = r4.xxx * r5.xyz + r7.xyz;
      r0.xyz = r3.xyz * r4.zzz + r0.xyz;
      r0.xyz = r1.yyy * r0.xyz + r4.xyw;
      r2.xyz = r6.zzz * r0.xyz + r2.xyz;
    }
    if (r9.y != 0) {
      r0.xy = (int2)r14.zw * int2(3,3);
      r0.xz = t0.Load(r0.x).xy;
      r3.xyzw = mad((int4)r14.xyzw, int4(3,3,3,3), int4(1,1,2,2));
      r1.yz = t0.Load(r3.x).xy;
      r4.xyz = cb0[3].xyz * r0.zzz;
      r4.xyz = r0.xxx * cb0[2].xyz + r4.xyz;
      r4.xyz = r1.yyy * cb0[4].xyz + r4.xyz;
      r4.xyz = cb0[5].xyz + r4.xyz;
      r0.x = (int)r13.x * 3;
      r0.xz = t0.Load(r0.x).xy;
      r5.xy = mad((int2)r13.xx, int2(3,3), int2(1,2));
      r5.xz = t0.Load(r5.x).xy;
      r6.xyz = cb0[3].xyz * r0.zzz;
      r6.xyz = r0.xxx * cb0[2].xyz + r6.xyz;
      r6.xyz = r5.xxx * cb0[4].xyz + r6.xyz;
      r6.xyz = cb0[5].xyz + r6.xyz;
      r0.xy = t0.Load(r0.y).xy;
      r3.xy = t0.Load(r3.y).xy;
      r7.xyz = cb0[3].xyz * r0.yyy;
      r0.xyz = r0.xxx * cb0[2].xyz + r7.xyz;
      r0.xyz = r3.xxx * cb0[4].xyz + r0.xyz;
      r0.xyz = cb0[5].xyz + r0.xyz;
      r3.xz = t0.Load(r3.z).xy;
      r7.xyz = cb0[3].xyz * r3.xxx;
      r7.xyz = r1.zzz * cb0[2].xyz + r7.xyz;
      r7.xyz = r3.zzz * cb0[4].xyz + r7.xyz;
      r1.yz = t0.Load(r5.y).xy;
      r5.xyw = cb0[3].xyz * r1.yyy;
      r5.xyz = r5.zzz * cb0[2].xyz + r5.xyw;
      r5.xyz = r1.zzz * cb0[4].xyz + r5.xyz;
      r1.yz = t0.Load(r3.w).xy;
      r3.xzw = cb0[3].xyz * r1.yyy;
      r3.xyz = r3.yyy * cb0[2].xyz + r3.xzw;
      r3.xyz = r1.zzz * cb0[4].xyz + r3.xyz;
      r1.x = r1.x + r6.w;
      r1.y = 1 + -r12.x;
      r1.y = r1.y + -r12.y;
      r4.xyz = r7.xyz * r12.zzz + r4.xyz;
      r5.xyz = r5.xyz * r12.zzz + r6.xyz;
      r5.xyz = r12.yyy * r5.xyz;
      r4.xyz = r12.xxx * r4.xyz + r5.xyz;
      r0.xyz = r3.xyz * r12.zzz + r0.xyz;
      r0.xyz = r1.yyy * r0.xyz + r4.xyz;
      r2.xyz = r6.www * r0.xyz + r2.xyz;
    }
    r0.x = cmp(9.99999975e-005 < r1.x);
    r0.y = 1 / r1.x;
    r1.xyz = r2.xyz * r0.yyy;
    r0.xyz = r0.xxx ? r1.xyz : 0;
  } else {
    r0.xyz = v0.xyz;
    r13.yzw = v0.xyz;
  }
  r1.x = (int)v3.x & 255;
  r1.y = (uint)v3.x >> 8;
  r1.z = mad(asint(cb0[10].y), (int)r1.x, (int)r1.y);
  r2.xyzw = float4(0,0,0,0);
  r3.xyzw = float4(0,0,0,0);
  r4.xyzw = float4(0,0,0,0);
  r5.x = cb0[10].y;
  r5.y = 0;
  while (true) {
    r5.z = cmp((int)r5.y >= (int)r1.x);
    if (r5.z != 0) break;
    r5.z = mad((int)r5.x, (int)r5.y, (int)r1.y);
    r5.w = t2.Load(r5.z).x;
    r6.x = cmp(1 < (uint)r5.x);
    if (r6.x != 0) {
      r5.z = (int)r5.z + 1;
      r5.z = t2.Load(r5.z).x;
      r5.z = (uint)r5.z << 8;
      r5.z = (int)r5.w | (int)r5.z;
      r6.x = (int)r1.z + (int)r5.y;
      r6.x = t2.Load(r6.x).x;
      r6.x = (uint)r6.x;
      r6.x = 0.00392156886 * r6.x;
      r6.y = (int)r5.z * 3;
      r7.xyzw = t4.Load(r6.y).xyzw;
      r6.yz = mad((int2)r5.zz, int2(3,3), int2(1,2));
      r8.xyzw = t4.Load(r6.y).xyzw;
      r9.xyzw = t4.Load(r6.z).xyzw;
      r2.xyzw = r6.xxxx * r7.xyzw + r2.xyzw;
      r3.xyzw = r6.xxxx * r8.xyzw + r3.xyzw;
      r4.xyzw = r6.xxxx * r9.xyzw + r4.xyzw;
    } else {
      r5.z = (int)r1.z + (int)r5.y;
      r5.z = t2.Load(r5.z).x;
      r5.z = (uint)r5.z;
      r5.z = 0.00392156886 * r5.z;
      r6.x = (int)r5.w * 3;
      r6.xyzw = t4.Load(r6.x).xyzw;
      r7.xy = mad((int2)r5.ww, int2(3,3), int2(1,2));
      r8.xyzw = t4.Load(r7.x).xyzw;
      r7.xyzw = t4.Load(r7.y).xyzw;
      r2.xyzw = r5.zzzz * r6.xyzw + r2.xyzw;
      r3.xyzw = r5.zzzz * r8.xyzw + r3.xyzw;
      r4.xyzw = r5.zzzz * r7.xyzw + r4.xyzw;
    }
    r5.y = (int)r5.y + 1;
  }
  r5.xyz = v5.xyz + v0.xyz;
  r5.w = 1;
  r6.x = dot(r2.xyzw, r5.xyzw);
  r6.y = dot(r3.xyzw, r5.xyzw);
  r6.z = dot(r4.xyzw, r5.xyzw);
  r6.xyz = v6.xyz + r6.xyz;
  r7.xyz = cb2[1].xyz * r6.yyy;
  r6.xyw = r6.xxx * cb2[0].xyz + r7.xyz;
  r6.xyz = r6.zzz * cb2[2].xyz + r6.xyw;
  r7.xyz = cb2[3].xyz + r6.xyz;
  r0.xyz = -r7.xyz + r0.xyz;
  r0.xyz = cb0[10].xxx * r0.xyz + r7.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r7.xyz = cb2[3].xyz + cb1[70].xyz;
  r6.xyz = r7.xyz + r6.xyz;
  r0.xyz = r1.www ? r0.xyz : r6.xyz;
  r6.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r2.xyzw = float4(0,0,0,0);
    r3.xyzw = float4(0,0,0,0);
    r4.xyzw = float4(0,0,0,0);
    r1.w = cb0[10].y;
    r7.x = 0;
    while (true) {
      r7.y = cmp((int)r7.x >= (int)r1.x);
      if (r7.y != 0) break;
      r7.y = mad((int)r1.w, (int)r7.x, (int)r1.y);
      r7.z = t2.Load(r7.y).x;
      r7.w = cmp(1 < (uint)r1.w);
      if (r7.w != 0) {
        r7.y = (int)r7.y + 1;
        r7.y = t2.Load(r7.y).x;
        r7.y = (uint)r7.y << 8;
        r7.y = (int)r7.z | (int)r7.y;
        r7.w = (int)r1.z + (int)r7.x;
        r7.w = t2.Load(r7.w).x;
        r7.w = (uint)r7.w;
        r7.w = 0.00392156886 * r7.w;
        r8.x = (int)r7.y * 3;
        r8.xyzw = t5.Load(r8.x).xyzw;
        r9.xy = mad((int2)r7.yy, int2(3,3), int2(1,2));
        r10.xyzw = t5.Load(r9.x).xyzw;
        r9.xyzw = t5.Load(r9.y).xyzw;
        r2.xyzw = r7.wwww * r8.xyzw + r2.xyzw;
        r3.xyzw = r7.wwww * r10.xyzw + r3.xyzw;
        r4.xyzw = r7.wwww * r9.xyzw + r4.xyzw;
      } else {
        r7.y = (int)r1.z + (int)r7.x;
        r7.y = t2.Load(r7.y).x;
        r7.y = (uint)r7.y;
        r7.y = 0.00392156886 * r7.y;
        r7.w = (int)r7.z * 3;
        r8.xyzw = t5.Load(r7.w).xyzw;
        r7.zw = mad((int2)r7.zz, int2(3,3), int2(1,2));
        r9.xyzw = t5.Load(r7.z).xyzw;
        r10.xyzw = t5.Load(r7.w).xyzw;
        r2.xyzw = r7.yyyy * r8.xyzw + r2.xyzw;
        r3.xyzw = r7.yyyy * r9.xyzw + r3.xyzw;
        r4.xyzw = r7.yyyy * r10.xyzw + r4.xyzw;
      }
      r7.x = (int)r7.x + 1;
    }
  }
  r1.x = dot(r2.xyzw, r5.xyzw);
  r1.y = dot(r3.xyzw, r5.xyzw);
  r1.z = dot(r4.xyzw, r5.xyzw);
  r1.xyz = v6.xyz + r1.xyz;
  r1.w = 1;
  r2.x = cb2[10].x;
  r2.y = cb2[11].x;
  r2.z = cb2[12].x;
  r2.w = r6.x;
  r2.x = dot(r1.xyzw, r2.xyzw);
  r3.x = cb2[10].y;
  r3.y = cb2[11].y;
  r3.z = cb2[12].y;
  r3.w = r6.y;
  r2.y = dot(r1.xyzw, r3.xyzw);
  r6.x = cb2[10].z;
  r6.y = cb2[11].z;
  r6.z = cb2[12].z;
  r2.z = dot(r1.xyzw, r6.xyzw);
  r1.xyz = cb1[113].xyz + r13.yzw;
  r1.xyz = r1.xyz + -r2.xyz;
  r1.xyz = cb0[10].xxx * r1.xyz + r2.xyz;
  r0.w = cmp((uint)r0.w >= 0x0000ffff);
  r1.xyz = r0.www ? r2.xyz : r1.xyz;
  r2.xyzw = cb1[92].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb1[91].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb1[93].xyzw + r2.xyzw;
  o2.xyzw = cb1[94].xyzw + r1.xyzw;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  return;
}