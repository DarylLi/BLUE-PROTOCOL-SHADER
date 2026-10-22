// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[48];
}

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
  uint4 v3 : ATTRIBUTE3,
  uint4 v4 : ATTRIBUTE14,
  float4 v5 : ATTRIBUTE4,
  float4 v6 : ATTRIBUTE15,
  float2 v7 : ATTRIBUTE5,
  float2 v8 : ATTRIBUTE6,
  float3 v9 : ATTRIBUTE11,
  float3 v10 : ATTRIBUTE12,
  uint v11 : SV_VertexID0,
  float4 v12 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : COLOR0,
  out float4 o4 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v11.x + asint(cb0[10].z);
  r0.x = (int)r0.x + asint(-cb0[10].y);
  r0.y = (int)r0.x * 20;
  r0.z = mad((int)r0.x, 20, 3);
  r1.xyz = t2.Load(r0.z).zxy;
  r0.zw = (uint2)r1.yz >> int2(16,16);
  r1.w = cmp((uint)r0.w < 0x0000ffff);
  if (r1.w != 0) {
    r2.xyz = t2.Load(r0.y).xyw;
    r3.xyzw = (int4)r1.yzyz & int4(0xffff,0xffff,0xffff,0xffff);
    r4.xyzw = mad((int4)r0.xxxx, int4(20,20,20,20), int4(4,8,12,16));
    r5.xyz = t2.Load(r4.x).xyw;
    r6.xyzw = (int4)r4.xyzw + int4(3,3,3,3);
    r7.xyz = t2.Load(r6.x).xyz;
    r0.xy = (uint2)r7.xy >> int2(16,16);
    r8.xyzw = (int4)r7.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
    r7.xyw = t2.Load(r4.y).xyw;
    r9.xyz = t2.Load(r6.y).xyz;
    r1.yz = (uint2)r9.xy >> int2(16,16);
    r10.xyzw = (int4)r9.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
    r4.xyz = t2.Load(r4.z).xyw;
    r6.xyz = t2.Load(r6.z).xyz;
    r9.xy = (uint2)r6.xy >> int2(16,16);
    r11.xyzw = (int4)r6.xyxy & int4(0xffff,0xffff,0xffff,0xffff);
    r12.xyz = t2.Load(r4.w).xyw;
    r6.xyw = t2.Load(r6.w).xyz;
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
  r2.xyzw = (int4)v3.xyzw * int4(3,3,3,3);
  r3.xyzw = t3.Load(r2.x).xyzw;
  r4.xyzw = mad((int4)v3.xxyy, int4(3,3,3,3), int4(1,2,1,2));
  r5.xyzw = t3.Load(r4.x).xyzw;
  r6.xyzw = t3.Load(r4.y).xyzw;
  r7.xyzw = t3.Load(r2.y).xyzw;
  r8.xyzw = t3.Load(r4.z).xyzw;
  r9.xyzw = t3.Load(r4.w).xyzw;
  r7.xyzw = v5.yyyy * r7.xyzw;
  r8.xyzw = v5.yyyy * r8.xyzw;
  r9.xyzw = v5.yyyy * r9.xyzw;
  r3.xyzw = v5.xxxx * r3.xyzw + r7.xyzw;
  r5.xyzw = v5.xxxx * r5.xyzw + r8.xyzw;
  r6.xyzw = v5.xxxx * r6.xyzw + r9.xyzw;
  r7.xyzw = t3.Load(r2.z).xyzw;
  r8.xyzw = mad((int4)v3.zzww, int4(3,3,3,3), int4(1,2,1,2));
  r9.xyzw = t3.Load(r8.x).xyzw;
  r10.xyzw = t3.Load(r8.y).xyzw;
  r3.xyzw = v5.zzzz * r7.xyzw + r3.xyzw;
  r5.xyzw = v5.zzzz * r9.xyzw + r5.xyzw;
  r6.xyzw = v5.zzzz * r10.xyzw + r6.xyzw;
  r7.xyzw = t3.Load(r2.w).xyzw;
  r9.xyzw = t3.Load(r8.z).xyzw;
  r10.xyzw = t3.Load(r8.w).xyzw;
  r3.xyzw = v5.wwww * r7.xyzw + r3.xyzw;
  r5.xyzw = v5.wwww * r9.xyzw + r5.xyzw;
  r6.xyzw = v5.wwww * r10.xyzw + r6.xyzw;
  r1.x = cmp(4 < asuint(cb0[1].y));
  if (r1.x != 0) {
    r7.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
    r9.xyzw = t3.Load(r7.x).xyzw;
    r10.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
    r11.xyzw = t3.Load(r10.x).xyzw;
    r12.xyzw = t3.Load(r10.y).xyzw;
    r9.xyzw = v6.xxxx * r9.xyzw + r3.xyzw;
    r11.xyzw = v6.xxxx * r11.xyzw + r5.xyzw;
    r12.xyzw = v6.xxxx * r12.xyzw + r6.xyzw;
    r14.xyzw = t3.Load(r7.y).xyzw;
    r15.xyzw = t3.Load(r10.z).xyzw;
    r10.xyzw = t3.Load(r10.w).xyzw;
    r9.xyzw = v6.yyyy * r14.xyzw + r9.xyzw;
    r11.xyzw = v6.yyyy * r15.xyzw + r11.xyzw;
    r10.xyzw = v6.yyyy * r10.xyzw + r12.xyzw;
    r12.xyzw = t3.Load(r7.z).xyzw;
    r14.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
    r15.xyzw = t3.Load(r14.x).xyzw;
    r16.xyzw = t3.Load(r14.y).xyzw;
    r9.xyzw = v6.zzzz * r12.xyzw + r9.xyzw;
    r11.xyzw = v6.zzzz * r15.xyzw + r11.xyzw;
    r10.xyzw = v6.zzzz * r16.xyzw + r10.xyzw;
    r7.xyzw = t3.Load(r7.w).xyzw;
    r12.xyzw = t3.Load(r14.z).xyzw;
    r14.xyzw = t3.Load(r14.w).xyzw;
    r3.xyzw = v6.wwww * r7.xyzw + r9.xyzw;
    r5.xyzw = v6.wwww * r12.xyzw + r11.xyzw;
    r6.xyzw = v6.wwww * r14.xyzw + r10.xyzw;
  }
  r7.xyz = v9.xyz + v0.xyz;
  r7.w = 1;
  r9.x = dot(r3.xyzw, r7.xyzw);
  r9.y = dot(r5.xyzw, r7.xyzw);
  r9.z = dot(r6.xyzw, r7.xyzw);
  r9.xyz = v10.xyz + r9.xyz;
  r10.xyz = cb2[1].xyz * r9.yyy;
  r9.xyw = r9.xxx * cb2[0].xyz + r10.xyz;
  r9.xyz = r9.zzz * cb2[2].xyz + r9.xyw;
  r10.xyz = cb2[3].xyz + r9.xyz;
  r0.xyz = -r10.xyz + r0.xyz;
  r0.xyz = cb0[10].xxx * r0.xyz + r10.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r10.xyz = cb2[3].xyz + cb1[70].xyz;
  r9.xyz = r10.xyz + r9.xyz;
  r0.xyz = r1.www ? r0.xyz : r9.xyz;
  o4.xy = cb3[47].xy + v7.xy;
  r9.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r10.xyzw = t4.Load(r2.x).xyzw;
    r11.xyzw = t4.Load(r4.x).xyzw;
    r12.xyzw = t4.Load(r4.y).xyzw;
    r14.xyzw = t4.Load(r2.y).xyzw;
    r15.xyzw = t4.Load(r4.z).xyzw;
    r4.xyzw = t4.Load(r4.w).xyzw;
    r14.xyzw = v5.yyyy * r14.xyzw;
    r15.xyzw = v5.yyyy * r15.xyzw;
    r4.xyzw = v5.yyyy * r4.xyzw;
    r10.xyzw = v5.xxxx * r10.xyzw + r14.xyzw;
    r11.xyzw = v5.xxxx * r11.xyzw + r15.xyzw;
    r4.xyzw = v5.xxxx * r12.xyzw + r4.xyzw;
    r12.xyzw = t4.Load(r2.z).xyzw;
    r14.xyzw = t4.Load(r8.x).xyzw;
    r15.xyzw = t4.Load(r8.y).xyzw;
    r10.xyzw = v5.zzzz * r12.xyzw + r10.xyzw;
    r11.xyzw = v5.zzzz * r14.xyzw + r11.xyzw;
    r4.xyzw = v5.zzzz * r15.xyzw + r4.xyzw;
    r2.xyzw = t4.Load(r2.w).xyzw;
    r12.xyzw = t4.Load(r8.z).xyzw;
    r8.xyzw = t4.Load(r8.w).xyzw;
    r3.xyzw = v5.wwww * r2.xyzw + r10.xyzw;
    r5.xyzw = v5.wwww * r12.xyzw + r11.xyzw;
    r6.xyzw = v5.wwww * r8.xyzw + r4.xyzw;
    if (r1.x != 0) {
      r1.xyzw = (int4)v4.xyzw * int4(3,3,3,3);
      r2.xyzw = t4.Load(r1.x).xyzw;
      r4.xyzw = mad((int4)v4.xxyy, int4(3,3,3,3), int4(1,2,1,2));
      r8.xyzw = t4.Load(r4.x).xyzw;
      r10.xyzw = t4.Load(r4.y).xyzw;
      r2.xyzw = v6.xxxx * r2.xyzw + r3.xyzw;
      r8.xyzw = v6.xxxx * r8.xyzw + r5.xyzw;
      r10.xyzw = v6.xxxx * r10.xyzw + r6.xyzw;
      r11.xyzw = t4.Load(r1.y).xyzw;
      r12.xyzw = t4.Load(r4.z).xyzw;
      r4.xyzw = t4.Load(r4.w).xyzw;
      r2.xyzw = v6.yyyy * r11.xyzw + r2.xyzw;
      r8.xyzw = v6.yyyy * r12.xyzw + r8.xyzw;
      r4.xyzw = v6.yyyy * r4.xyzw + r10.xyzw;
      r10.xyzw = t4.Load(r1.z).xyzw;
      r11.xyzw = mad((int4)v4.zzww, int4(3,3,3,3), int4(1,2,1,2));
      r12.xyzw = t4.Load(r11.x).xyzw;
      r14.xyzw = t4.Load(r11.y).xyzw;
      r2.xyzw = v6.zzzz * r10.xyzw + r2.xyzw;
      r8.xyzw = v6.zzzz * r12.xyzw + r8.xyzw;
      r4.xyzw = v6.zzzz * r14.xyzw + r4.xyzw;
      r1.xyzw = t4.Load(r1.w).xyzw;
      r10.xyzw = t4.Load(r11.z).xyzw;
      r11.xyzw = t4.Load(r11.w).xyzw;
      r3.xyzw = v6.wwww * r1.xyzw + r2.xyzw;
      r5.xyzw = v6.wwww * r10.xyzw + r8.xyzw;
      r6.xyzw = v6.wwww * r11.xyzw + r4.xyzw;
    }
  }
  r1.x = dot(r3.xyzw, r7.xyzw);
  r1.y = dot(r5.xyzw, r7.xyzw);
  r1.z = dot(r6.xyzw, r7.xyzw);
  r1.xyz = v10.xyz + r1.xyz;
  r1.w = 1;
  r2.x = cb2[10].x;
  r2.y = cb2[11].x;
  r2.z = cb2[12].x;
  r2.w = r9.x;
  r2.x = dot(r1.xyzw, r2.xyzw);
  r3.x = cb2[10].y;
  r3.y = cb2[11].y;
  r3.z = cb2[12].y;
  r3.w = r9.y;
  r2.y = dot(r1.xyzw, r3.xyzw);
  r9.x = cb2[10].z;
  r9.y = cb2[11].z;
  r9.z = cb2[12].z;
  r2.z = dot(r1.xyzw, r9.xyzw);
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
  o3.xyzw = v12.xyzw;
  o4.zw = v8.xy;
  return;
}