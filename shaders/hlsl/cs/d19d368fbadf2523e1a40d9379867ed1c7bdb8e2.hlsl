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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
    r7.x = dot(r6.xzy, float3(1,1,2));
    r7.y = dot(r6.xz, float2(2,-2));
    r7.z = dot(r6.xzy, float3(-1,-1,2));
    r5.zw = float2(0,0);
    r5.xyzw = t1.Load(r5.xyz).xyzw;
    r6.x = dot(r5.xzy, float3(1,1,2));
    r6.y = dot(r5.xz, float2(2,-2));
    r6.z = dot(r5.xzy, float3(-1,-1,2));
    r5.xy = max(asint(cb0[20].xy), (int2)r4.zw);
    r8.xy = min(asint(cb0[20].zw), (int2)r5.xy);
    r8.zw = float2(0,0);
    r8.xyzw = t1.Load(r8.xyz).xyzw;
    r5.x = dot(r8.xzy, float3(1,1,2));
    r5.y = dot(r8.xz, float2(2,-2));
    r5.z = dot(r8.xzy, float3(-1,-1,2));
    r4.xyzw = (int4)r4.xyzw + int4(1,0,0,1);
    r4.xyzw = max(asint(cb0[20].xyxy), (int4)r4.xyzw);
    r4.xyzw = min(asint(cb0[20].zwzw), (int4)r4.zwxy);
    r9.xy = r4.zw;
    r9.zw = float2(0,0);
    r9.xyzw = t1.Load(r9.xyz).xyzw;
    r10.x = dot(r9.xzy, float3(1,1,2));
    r10.y = dot(r9.xz, float2(2,-2));
    r10.z = dot(r9.xzy, float3(-1,-1,2));
    r4.zw = float2(0,0);
    r4.xyzw = t1.Load(r4.xyz).xyzw;
    r9.x = dot(r4.xzy, float3(1,1,2));
    r9.y = dot(r4.xz, float2(2,-2));
    r9.z = dot(r4.xzy, float3(-1,-1,2));
    r4.xyz = min(r6.xyz, r5.xyz);
    r4.xyz = min(r7.xyz, r4.xyz);
    r2.w = min(r8.w, r5.w);
    r2.w = min(r6.w, r2.w);
    r11.xyz = min(r10.xyz, r9.xyz);
    r4.xyz = min(r11.xyz, r4.xyz);
    r3.x = min(r9.w, r4.w);
    r2.w = min(r3.x, r2.w);
    r11.xyz = max(r6.xyz, r5.xyz);
    r11.xyz = max(r11.xyz, r7.xyz);
    r3.x = max(r8.w, r5.w);
    r3.x = max(r6.w, r3.x);
    r12.xyz = max(r10.xyz, r9.xyz);
    r11.xyz = max(r12.xyz, r11.xyz);
    r7.w = max(r9.w, r4.w);
    r3.x = max(r7.w, r3.x);
    r2.xy = r2.xy * cb0[18].yx + cb0[18].wz;
    r2.xy = max(cb0[22].yx, r2.xy);
    r2.xy = min(cb0[22].wz, r2.xy);
    r12.xy = r2.yx * cb0[21].xy + float2(-0.5,-0.5);
    r12.xy = floor(r12.xy);
    r13.xyzw = float4(0.5,0.5,-0.5,-0.5) + r12.xyxy;
    r2.xy = r2.xy * cb0[21].yx + -r13.yx;
    r12.zw = r2.yx * r2.yx;
    r14.xy = r12.zw * r2.yx;
    r14.zw = r12.wz * r2.xy + r2.xy;
    r14.zw = -r14.zw * float2(0.5,0.5) + r12.wz;
    r15.xy = float2(2.5,2.5) * r12.wz;
    r14.xy = r14.yx * float2(1.5,1.5) + -r15.xy;
    r14.xy = float2(1,1) + r14.xy;
    r2.xy = r12.zw * r2.yx + -r12.zw;
    r12.zw = float2(0.5,0.5) * r2.xy;
    r15.xy = float2(1,1) + -r14.wz;
    r15.xy = r15.xy + -r14.yx;
    r2.xy = -r2.xy * float2(0.5,0.5) + r15.xy;
    r14.xy = r14.xy + r2.yx;
    r2.xy = r2.xy / r14.yx;
    r2.xy = r13.xy + r2.xy;
    r12.xy = float2(2.5,2.5) + r12.xy;
    r13.xy = cb0[21].wz * r13.wz;
    r15.zw = cb0[21].wz * r2.yx;
    r2.xy = cb0[21].zw * r12.xy;
    r12.xy = r14.yx * r14.zw;
    r7.w = r14.y * r14.x;
    r13.zw = r14.xy * r12.zw;
    r10.w = r12.x + r12.y;
    r10.w = r14.y * r14.x + r10.w;
    r10.w = r12.z * r14.x + r10.w;
    r10.w = r12.w * r14.y + r10.w;
    r10.w = 1 / r10.w;
    r15.xy = max(cb0[22].yx, r13.xy);
    r14.xyzw = t5.SampleLevel(s2_s, r15.wx, 0).xyzw;
    r16.xyzw = t5.SampleLevel(s2_s, r15.yz, 0).xyzw;
    r16.xyzw = r16.xyzw * r12.yyyy;
    r12.xyzw = r14.xyzw * r12.xxxx + r16.xyzw;
    r14.xyzw = t5.SampleLevel(s2_s, r15.wz, 0).xyzw;
    r12.xyzw = r14.xyzw * r7.wwww + r12.xyzw;
    r15.xy = min(cb0[22].zw, r2.xy);
    r14.xyzw = t5.SampleLevel(s2_s, r15.xz, 0).xyzw;
    r12.xyzw = r14.xyzw * r13.zzzz + r12.xyzw;
    r14.xyzw = t5.SampleLevel(s2_s, r15.wy, 0).xyzw;
    r12.xyzw = r14.xyzw * r13.wwww + r12.xyzw;
    r12.xyzw = r12.xyzw * r10.wwww;
    r12.xyz = cb0[0].xxx * r12.xyz;
    r13.x = dot(r12.xzy, float3(1,1,2));
    r13.y = dot(r12.xz, float2(2,-2));
    r13.z = dot(r12.xzy, float3(-1,-1,2));
    r2.x = cmp(asint(cb0[0].z) != 0);
    r2.x = (int)r2.x | (int)r2.z;
    r4.xyz = max(r13.xyz, r4.xyz);
    r11.xyz = min(r4.xyz, r11.xyz);
    r2.y = max(r12.w, r2.w);
    r11.w = min(r2.y, r3.x);
    r2.y = r2.x ? 0 : 1;
    r2.z = cb0[28].w * r0.w;
    r2.y = -r2.z * 0.100000001 + r2.y;
    r2.y = max(cb0[28].z, r2.y);
    r0.xy = -r3.zw + r0.xy;
    r12.xyzw = float4(0,-1,-1,0) + -r0.xyxy;
    r2.z = cb0[28].w * cb0[28].w;
    r2.y = r2.y * r2.y;
    r2.y = r2.z * r2.y;
    r2.z = dot(r12.xy, r12.xy);
    r2.z = r2.y * r2.z;
    r2.z = min(1, r2.z);
    r2.w = r2.z * 0.904999971 + -1.89999998;
    r2.z = r2.w * r2.z + 1;
    r2.w = cmp(1 < abs(r8.w));
    r3.x = rcp(abs(r8.w));
    r2.w = r2.w ? r3.x : 1;
    r3.x = r8.w + -r6.w;
    r3.x = saturate(-r3.x * r2.w + 1);
    r3.z = r3.x * r2.z;
    r3.w = dot(r12.zw, r12.zw);
    r3.w = r3.w * r2.y;
    r3.w = min(1, r3.w);
    r4.x = r3.w * 0.904999971 + -1.89999998;
    r3.w = r4.x * r3.w + 1;
    r4.x = r8.w + -r5.w;
    r4.x = saturate(-r4.x * r2.w + 1);
    r3.w = r4.x * r3.w;
    r4.xyz = r3.www * r6.xyz;
    r4.xyz = r3.zzz * r7.xyz + r4.xyz;
    r2.z = r2.z * r3.x + r3.w;
    r3.x = dot(-r0.xy, -r0.xy);
    r3.x = r3.x * r2.y;
    r3.x = min(1, r3.x);
    r3.z = r3.x * 0.904999971 + -1.89999998;
    r3.x = r3.z * r3.x + 1;
    r4.xyz = r3.xxx * r5.xyz + r4.xyz;
    r2.z = r3.x + r2.z;
    r5.xyzw = float4(1,0,0,1) + -r0.xyxy;
    r3.x = dot(r5.xy, r5.xy);
    r3.x = r3.x * r2.y;
    r3.x = min(1, r3.x);
    r3.z = r3.x * 0.904999971 + -1.89999998;
    r3.x = r3.z * r3.x + 1;
    r3.z = -r9.w + r8.w;
    r3.z = saturate(-r3.z * r2.w + 1);
    r3.w = r3.x * r3.z;
    r4.xyz = r3.www * r10.xyz + r4.xyz;
    r2.z = r3.x * r3.z + r2.z;
    r3.x = dot(r5.zw, r5.zw);
    r3.x = r3.x * r2.y;
    r3.x = min(1, r3.x);
    r3.z = r3.x * 0.904999971 + -1.89999998;
    r3.x = r3.z * r3.x + 1;
    r3.z = r8.w + -r4.w;
    r3.z = saturate(-r3.z * r2.w + 1);
    r3.w = r3.x * r3.z;
    r4.xyz = r3.www * r9.xyz + r4.xyz;
    r2.z = r3.x * r3.z + r2.z;
    r2.z = rcp(r2.z);
    r8.xyz = r4.xyz * r2.zzz;
    r0.x = dot(r0.xy, r0.xy);
    r0.x = r2.y * r0.x;
    r0.x = min(1, r0.x);
    r0.y = r0.x * 0.904999971 + -1.89999998;
    r0.x = r0.y * r0.x + 1;
    r0.x = r2.y * r0.x;
    r0.y = cb0[0].y * r0.x;
    r0.w = 0.0250000004 * r0.w;
    r0.w = min(1, r0.w);
    r0.x = -r0.x * cb0[0].y + 0.200000003;
    r0.x = r0.w * r0.x + r0.y;
    r0.y = 0.00999999978 * r13.x;
    r0.w = r4.x * r2.z + -r13.x;
    r0.y = saturate(r0.y / abs(r0.w));
    r0.x = max(r0.x, r0.y);
    r0.y = -r11.w + r8.w;
    r0.y = saturate(-abs(r0.y) * r2.w + 1);
    r0.x = -1 + r0.x;
    r0.x = r3.y ? -0.75 : r0.x;
    r0.x = r0.y * r0.x + 1;
    r0.x = cb0[0].z ? 1 : r0.x;
    r2.xyzw = r2.xxxx ? r8.xyzw : r11.xyzw;
    r0.y = r8.x * r0.z + 4;
    r0.z = r2.x * r0.z + 4;
    r0.yz = rcp(r0.yz);
    r0.w = 1 + -r0.x;
    r3.x = r0.w * r0.z;
    r0.x = r0.x * r0.y;
    r0.y = r0.w * r0.z + r0.x;
    r0.y = rcp(r0.y);
    r0.z = r3.x * r0.y;
    r0.x = r0.x * r0.y;
    r2.xyzw = r2.xyzw * r0.zzzz;
    r0.yzw = r8.xyz * r0.xxx + r2.xyz;
    r0.x = r8.w * r0.x + r2.w;
    r2.xyz = float3(0.25,0.25,0.25) * r0.yzw;
    r3.yz = r2.xx + r2.yz;
    r3.x = -r0.w * 0.25 + r3.y;
    r0.y = r0.y * 0.25 + -r2.y;
    r3.w = -r0.w * 0.25 + r0.y;
    r0.yzw = min(float3(0,0,0), -r3.xzw);
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