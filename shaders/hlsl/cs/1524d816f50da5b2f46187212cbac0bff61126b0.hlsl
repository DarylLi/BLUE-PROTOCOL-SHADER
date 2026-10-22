// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<uint4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[145];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[29];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r1.xyzw = cb0[24].xyyy + r0.xyyy;
  r1.xyzw = (uint4)r1.xyzw;
  r0.zw = (uint2)r1.xw;
  r0.zw = cmp(r0.zw < cb0[24].zw);
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.xy = float2(0.5,0.5) + r0.xy;
    r0.xy = cb0[16].zw * r0.xy;
    r0.xy = min(cb0[16].xy, r0.xy);
    r0.z = t0.Load(float4(0,0,0,0)).x;
    r0.z = cb1[135].z * r0.z;
    r2.xy = r0.xy + r0.xy;
    r0.w = r0.x * 2 + -1;
    r3.x = -r0.y * 2 + 1;
    r3.yz = r0.xy * cb0[15].xy + cb0[15].zw;
    r3.yz = cb0[19].xy * r3.yz;
    r3.yz = trunc(r3.yz);
    r4.xy = (int2)r3.yz;
    r4.zw = float2(0,0);
    r3.y = t4.Load(r4.xyz).y;
    r3.y = (int)r3.y & 8;
    r0.xy = r0.xy * cb0[27].xy + cb0[28].xy;
    r3.zw = floor(r0.xy);
    r3.zw = float2(0.5,0.5) + r3.zw;
    r4.xyzw = cb0[26].xyxy + r3.zwzw;
    r5.xyzw = cb0[19].zwzw * r4.xyzw;
    r6.x = t2.SampleLevel(s0_s, r5.zw, 0, int2(0, 0)).x;
    r4.x = t2.SampleLevel(s0_s, r5.zw, 0, int2(-4, -4)).x;
    r4.y = t2.SampleLevel(s0_s, r5.zw, 0, int2(4, -4)).x;
    r6.w = t2.SampleLevel(s0_s, r5.zw, 0, int2(-4, 4)).x;
    r7.x = t2.SampleLevel(s0_s, r5.zw, 0, int2(4, 4)).x;
    r7.y = cmp(r4.y < r4.x);
    r7.y = r7.y ? -4 : 4;
    r7.w = cmp(r7.x < r6.w);
    r8.y = r7.w ? -4 : 4;
    r4.x = max(r4.x, r4.y);
    r4.y = max(r7.x, r6.w);
    r6.w = cmp(r4.y < r4.x);
    r7.z = -4;
    r8.z = 4;
    r7.xy = r6.ww ? r7.yz : r8.yz;
    r8.x = max(r4.x, r4.y);
    r4.x = cmp(r6.x < r8.x);
    r8.yz = cb0[19].zw * r7.xy;
    r6.yz = float2(0,0);
    r6.xyz = r4.xxx ? r8.xyz : r6.xyz;
    r7.xyz = cb1[123].xyw * r3.xxx;
    r7.xyz = r0.www * cb1[122].xyw + r7.xyz;
    r7.xyz = r6.xxx * cb1[124].xyw + r7.xyz;
    r7.xyz = cb1[125].xyw + r7.xyz;
    r4.xy = r7.yx / r7.zz;
    r2.zw = r2.xy * float2(1,-1) + float2(-1,1);
    r2.yz = r2.wz + -r4.xy;
    r4.xy = cb0[19].zw * r4.zw + r6.yz;
    r4.xy = t3.SampleLevel(s1_s, r4.xy, 0).xy;
    r0.w = cmp(0 < r4.x);
    r4.xy = r4.yx * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
    r2.yz = r0.ww ? r4.xy : r2.yz;
    r4.xy = cb0[23].xy * r2.zy;
    r0.w = dot(r4.xy, r4.xy);
    r0.w = sqrt(r0.w);
    r2.xw = float2(0,-1) + r2.wx;
    r2.xy = r2.xw + -r2.yz;
    r2.z = max(abs(r2.y), abs(r2.x));
    r2.z = cmp(r2.z >= 1);
    r4.xyzw = cb0[19].xyxy * r5.xyzw;
    r4.xyzw = (int4)r4.xyzw;
    r5.xyzw = (int4)r4.zwzw + int4(0,-1,-1,0);
    r5.xyzw = max(asint(cb0[20].xyxy), (int4)r5.xyzw);
    r5.xyzw = min(asint(cb0[20].zwzw), (int4)r5.zwxy);
    r6.xy = r5.zw;
    r6.zw = float2(0,0);
    r6.xyzw = t1.Load(r6.xyz).xyzw;
    r5.zw = float2(0,0);
    r5.xyzw = t1.Load(r5.xyz).xyzw;
    r7.xy = max(asint(cb0[20].xy), (int2)r4.zw);
    r7.xy = min(asint(cb0[20].zw), (int2)r7.xy);
    r7.zw = float2(0,0);
    r7.xyzw = t1.Load(r7.xyz).xyzw;
    r4.xyzw = (int4)r4.xyzw + int4(1,0,0,1);
    r4.xyzw = max(asint(cb0[20].xyxy), (int4)r4.xyzw);
    r4.xyzw = min(asint(cb0[20].zwzw), (int4)r4.zwxy);
    r8.xy = r4.zw;
    r8.zw = float2(0,0);
    r8.xyzw = t1.Load(r8.xyz).xyzw;
    r4.zw = float2(0,0);
    r4.xyzw = t1.Load(r4.xyz).xyzw;
    r9.xyzw = min(r7.xyzw, r5.xyzw);
    r9.xyzw = min(r9.xyzw, r6.xyzw);
    r10.xyzw = min(r8.xyzw, r4.xyzw);
    r9.xyzw = min(r10.xyzw, r9.xyzw);
    r10.xyzw = max(r7.xyzw, r5.xyzw);
    r10.xyzw = max(r10.xyzw, r6.xyzw);
    r11.xyzw = max(r8.xyzw, r4.xyzw);
    r10.xyzw = max(r11.xyzw, r10.xyzw);
    r2.xy = r2.xy * cb0[18].yx + cb0[18].wz;
    r2.xy = max(cb0[22].yx, r2.xy);
    r2.xy = min(cb0[22].wz, r2.xy);
    r11.xy = r2.yx * cb0[21].xy + float2(-0.5,-0.5);
    r11.xy = floor(r11.xy);
    r12.xyzw = float4(0.5,0.5,-0.5,-0.5) + r11.xyxy;
    r2.xy = r2.xy * cb0[21].yx + -r12.yx;
    r11.zw = r2.yx * r2.yx;
    r13.xy = r11.zw * r2.yx;
    r13.zw = r11.wz * r2.xy + r2.xy;
    r13.zw = -r13.zw * float2(0.5,0.5) + r11.wz;
    r14.xy = float2(2.5,2.5) * r11.wz;
    r13.xy = r13.yx * float2(1.5,1.5) + -r14.xy;
    r13.xy = float2(1,1) + r13.xy;
    r2.xy = r11.zw * r2.yx + -r11.zw;
    r11.zw = float2(0.5,0.5) * r2.xy;
    r14.xy = float2(1,1) + -r13.wz;
    r14.xy = r14.xy + -r13.yx;
    r2.xy = -r2.xy * float2(0.5,0.5) + r14.xy;
    r13.xy = r13.xy + r2.yx;
    r2.xy = r2.xy / r13.yx;
    r2.xy = r12.xy + r2.xy;
    r11.xy = float2(2.5,2.5) + r11.xy;
    r12.xy = cb0[21].wz * r12.wz;
    r14.zw = cb0[21].wz * r2.yx;
    r2.xy = cb0[21].zw * r11.xy;
    r11.xy = r13.yx * r13.zw;
    r2.w = r13.y * r13.x;
    r12.zw = r13.xy * r11.zw;
    r3.x = r11.x + r11.y;
    r3.x = r13.y * r13.x + r3.x;
    r3.x = r11.z * r13.x + r3.x;
    r3.x = r11.w * r13.y + r3.x;
    r3.x = 1 / r3.x;
    r14.xy = max(cb0[22].yx, r12.xy);
    r13.xyzw = t5.SampleLevel(s2_s, r14.wx, 0).xyzw;
    r15.xyzw = t5.SampleLevel(s2_s, r14.yz, 0).xyzw;
    r15.xyzw = r15.xyzw * r11.yyyy;
    r11.xyzw = r13.xyzw * r11.xxxx + r15.xyzw;
    r13.xyzw = t5.SampleLevel(s2_s, r14.wz, 0).xyzw;
    r11.xyzw = r13.xyzw * r2.wwww + r11.xyzw;
    r14.xy = min(cb0[22].zw, r2.xy);
    r13.xyzw = t5.SampleLevel(s2_s, r14.xz, 0).xyzw;
    r11.xyzw = r13.xyzw * r12.zzzz + r11.xyzw;
    r13.xyzw = t5.SampleLevel(s2_s, r14.wy, 0).xyzw;
    r11.xyzw = r13.xyzw * r12.wwww + r11.xyzw;
    r11.xyzw = r11.xyzw * r3.xxxx;
    r2.xyw = cb0[0].xxx * r11.xyz;
    r3.x = cmp(asint(cb0[0].z) != 0);
    r2.z = (int)r2.z | (int)r3.x;
    r11.xy = r2.yx + r2.yw;
    r3.x = r11.x + r11.y;
    r2.xyw = max(r2.xyw, r9.xyz);
    r12.xyz = min(r2.xyw, r10.xyz);
    r2.x = max(r11.w, r9.w);
    r12.w = min(r2.x, r10.w);
    r0.xy = -r3.zw + r0.xy;
    r9.xyzw = float4(0,-1,-1,0) + -r0.xyxy;
    r2.x = cb0[28].w * cb0[28].w;
    r2.y = dot(r9.xy, r9.xy);
    r2.y = r2.x * r2.y;
    r2.y = min(1, r2.y);
    r2.w = r2.y * 0.904999971 + -1.89999998;
    r2.y = r2.w * r2.y + 1;
    r2.w = cmp(1 < abs(r7.w));
    r3.z = rcp(abs(r7.w));
    r2.w = r2.w ? r3.z : 1;
    r3.z = r7.w + -r6.w;
    r3.z = saturate(-r3.z * r2.w + 1);
    r3.w = r3.z * r2.y;
    r6.w = dot(r9.zw, r9.zw);
    r6.w = r6.w * r2.x;
    r6.w = min(1, r6.w);
    r9.x = r6.w * 0.904999971 + -1.89999998;
    r6.w = r9.x * r6.w + 1;
    r5.w = r7.w + -r5.w;
    r5.w = saturate(-r5.w * r2.w + 1);
    r5.w = r6.w * r5.w;
    r5.xyz = r5.www * r5.xyz;
    r5.xyz = r3.www * r6.xyz + r5.xyz;
    r2.y = r2.y * r3.z + r5.w;
    r3.z = dot(-r0.xy, -r0.xy);
    r3.z = r3.z * r2.x;
    r3.z = min(1, r3.z);
    r3.w = r3.z * 0.904999971 + -1.89999998;
    r3.z = r3.w * r3.z + 1;
    r5.xyz = r3.zzz * r7.xyz + r5.xyz;
    r2.y = r3.z + r2.y;
    r6.xyzw = float4(1,0,0,1) + -r0.xyxy;
    r3.z = dot(r6.xy, r6.xy);
    r3.z = r3.z * r2.x;
    r3.z = min(1, r3.z);
    r3.w = r3.z * 0.904999971 + -1.89999998;
    r3.z = r3.w * r3.z + 1;
    r3.w = -r8.w + r7.w;
    r3.w = saturate(-r3.w * r2.w + 1);
    r5.w = r3.z * r3.w;
    r5.xyz = r5.www * r8.xyz + r5.xyz;
    r2.y = r3.z * r3.w + r2.y;
    r3.z = dot(r6.zw, r6.zw);
    r3.z = r3.z * r2.x;
    r3.z = min(1, r3.z);
    r3.w = r3.z * 0.904999971 + -1.89999998;
    r3.z = r3.w * r3.z + 1;
    r3.w = r7.w + -r4.w;
    r3.w = saturate(-r3.w * r2.w + 1);
    r4.w = r3.z * r3.w;
    r4.xyz = r4.www * r4.xyz + r5.xyz;
    r2.y = r3.z * r3.w + r2.y;
    r2.y = rcp(r2.y);
    r7.xyz = r4.xyz * r2.yyy;
    r0.x = dot(r0.xy, r0.xy);
    r0.x = r2.x * r0.x;
    r0.x = min(1, r0.x);
    r0.y = r0.x * 0.904999971 + -1.89999998;
    r0.x = r0.y * r0.x + 1;
    r2.xy = r7.yx + r7.yz;
    r0.y = r2.x + r2.y;
    r2.x = cb0[0].y * r0.x;
    r0.w = 0.0250000004 * r0.w;
    r0.w = min(1, r0.w);
    r0.x = -r0.x * cb0[0].y + 0.200000003;
    r0.x = r0.w * r0.x + r2.x;
    r0.w = 0.00999999978 * r3.x;
    r0.y = r0.y + -r3.x;
    r0.y = saturate(r0.w / abs(r0.y));
    r0.x = max(r0.x, r0.y);
    r0.y = -r12.w + r7.w;
    r0.y = saturate(-abs(r0.y) * r2.w + 1);
    r0.x = -1 + r0.x;
    r0.x = r3.y ? -0.75 : r0.x;
    r0.x = r0.y * r0.x + 1;
    r0.x = cb0[0].z ? 1 : r0.x;
    r2.xyzw = r2.zzzz ? r7.xyzw : r12.xyzw;
    r0.y = r7.x * r0.z;
    r0.y = r0.y * 4 + 4;
    r0.z = r2.x * r0.z;
    r0.z = r0.z * 4 + 4;
    r0.yz = rcp(r0.yz);
    r0.w = 1 + -r0.x;
    r3.x = r0.w * r0.z;
    r0.x = r0.x * r0.y;
    r0.y = r0.w * r0.z + r0.x;
    r0.y = rcp(r0.y);
    r0.z = r3.x * r0.y;
    r0.x = r0.x * r0.y;
    r2.xyzw = r2.xyzw * r0.zzzz;
    r0.yzw = r7.xyz * r0.xxx + r2.xyz;
    r0.x = r7.w * r0.x + r2.w;
    r0.yzw = min(float3(0,0,0), -r0.yzw);
    r2.xyz = -r0.yzw;
    r0.y = cmp(r0.x != r0.x);
    r2.w = r0.y ? 0 : r0.x;
    r0.xyzw = min(float4(65504,65504,65504,65504), r2.xyzw);
    r2.xy = (int2)r1.xw * int2(0x19660d,0x19660d);
    r2.z = asint(cb1[144].y) * 0x0019660d;
    r2.xyz = (int3)r2.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r2.x = mad((int)r2.y, (int)r2.z, (int)r2.x);
    r2.y = mad((int)r2.z, (int)r2.x, (int)r2.y);
    r2.z = mad((int)r2.x, (int)r2.y, (int)r2.z);
    r2.x = mad((int)r2.y, (int)r2.z, (int)r2.x);
    r2.x = (uint)r2.x >> 16;
    r2.x = (uint)r2.x;
    r2.x = 1.52587891e-005 * r2.x;
    r2.x = frac(r2.x);
    r2.xyz = cb0[25].xyz * r2.xxx;
    r0.xyz = r0.xyz * r2.xyz + r0.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  }
  return;
}