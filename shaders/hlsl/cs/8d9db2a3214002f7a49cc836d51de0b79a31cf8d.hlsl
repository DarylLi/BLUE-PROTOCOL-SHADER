// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
groupshared struct { float val[4]; } g0[64];
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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyzw = (uint4)vThreadID.xyyy;
  r1.xy = float2(0.5,0.5) + r0.xw;
  r1.xy = cb0[23].zw * r1.xy;
  r1.z = t0.Load(float4(0,0,0,0)).x;
  r1.z = cb1[135].z * r1.z;
  r2.xy = r1.xy + r1.xy;
  r1.w = r1.x * 2 + -1;
  r3.x = -r1.y * 2 + 1;
  r3.yz = r1.xy * cb0[15].xy + cb0[15].zw;
  r3.yz = cb0[19].xy * r3.yz;
  r3.yz = trunc(r3.yz);
  r4.xy = (int2)r3.yz;
  r4.zw = float2(0,0);
  r3.y = t4.Load(r4.xyz).y;
  r1.xy = r1.xy * cb0[27].xy + cb0[28].xy;
  r3.zw = floor(r1.xy);
  r3.zw = float2(0.5,0.5) + r3.zw;
  r4.xyzw = cb0[26].xyxy + r3.zwzw;
  r5.xyzw = cb0[19].zwzw * r4.xyzw;
  r6.x = t2.SampleLevel(s0_s, r5.zw, 0, int2(0, 0)).x;
  r4.x = t2.SampleLevel(s0_s, r5.zw, 0, int2(-1, -1)).x;
  r4.y = t2.SampleLevel(s0_s, r5.zw, 0, int2(1, -1)).x;
  r6.w = t2.SampleLevel(s0_s, r5.zw, 0, int2(-1, 1)).x;
  r7.x = t2.SampleLevel(s0_s, r5.zw, 0, int2(1, 1)).x;
  r7.y = cmp(r4.y < r4.x);
  r7.y = r7.y ? -1 : 1;
  r7.w = cmp(r7.x < r6.w);
  r8.y = r7.w ? -1 : 1;
  r4.x = max(r4.x, r4.y);
  r4.y = max(r7.x, r6.w);
  r6.w = cmp(r4.y < r4.x);
  r7.z = -1;
  r8.z = 1;
  r7.xy = r6.ww ? r7.yz : r8.yz;
  r8.x = max(r4.x, r4.y);
  r4.x = cmp(r6.x < r8.x);
  r8.yz = cb0[19].zw * r7.xy;
  r6.yz = float2(0,0);
  r6.xyz = r4.xxx ? r8.xyz : r6.xyz;
  r7.xyz = cb1[123].xyw * r3.xxx;
  r7.xyz = r1.www * cb1[122].xyw + r7.xyz;
  r7.xyz = r6.xxx * cb1[124].xyw + r7.xyz;
  r7.xyz = cb1[125].xyw + r7.xyz;
  r4.xy = r7.yx / r7.zz;
  r2.zw = r2.xy * float2(1,-1) + float2(-1,1);
  r2.yz = r2.wz + -r4.xy;
  r4.xy = cb0[19].zw * r4.zw + r6.yz;
  r4.xy = t3.SampleLevel(s1_s, r4.xy, 0).xy;
  r1.w = cmp(0 < r4.x);
  r4.xy = r4.yx * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r2.yz = r1.ww ? r4.xy : r2.yz;
  r4.xy = cb0[23].xy * r2.zy;
  r1.w = dot(r4.xy, r4.xy);
  r1.w = sqrt(r1.w);
  r2.xw = float2(0,-1) + r2.wx;
  r2.xy = r2.xw + -r2.yz;
  r2.z = max(abs(r2.y), abs(r2.x));
  r2.z = cmp(r2.z >= 1);
  r4.xyzw = cb0[19].xyxy * r5.xyzw;
  r4.xyzw = (int4)r4.xyzw;
  r5.xyzw = (int4)r4.zwzw + int4(-1,-1,0,-1);
  r5.xyzw = max(asint(cb0[20].xyxy), (int4)r5.xyzw);
  r5.xyzw = min(asint(cb0[20].zwzw), (int4)r5.zwxy);
  r6.xy = r5.zw;
  r6.zw = float2(0,0);
  r6.xyz = t1.Load(r6.xyz).xyz;
  r7.x = dot(r6.xzy, float3(1,1,2));
  r7.y = dot(r6.xz, float2(2,-2));
  r7.z = dot(r6.xzy, float3(-1,-1,2));
  r5.zw = float2(0,0);
  r5.xyz = t1.Load(r5.xyz).xyz;
  r6.x = dot(r5.xzy, float3(1,1,2));
  r6.y = dot(r5.xz, float2(2,-2));
  r6.z = dot(r5.xzy, float3(-1,-1,2));
  r5.xyzw = (int4)r4.zwzw + int4(1,-1,-1,0);
  r5.xyzw = max(asint(cb0[20].xyxy), (int4)r5.xyzw);
  r5.xyzw = min(asint(cb0[20].zwzw), (int4)r5.zwxy);
  r8.xy = r5.zw;
  r8.zw = float2(0,0);
  r8.xyz = t1.Load(r8.xyz).xyz;
  r9.x = dot(r8.xzy, float3(1,1,2));
  r9.y = dot(r8.xz, float2(2,-2));
  r9.z = dot(r8.xzy, float3(-1,-1,2));
  r5.zw = float2(0,0);
  r5.xyz = t1.Load(r5.xyz).xyz;
  r8.x = dot(r5.xzy, float3(1,1,2));
  r8.y = dot(r5.xz, float2(2,-2));
  r8.z = dot(r5.xzy, float3(-1,-1,2));
  r5.xy = max(asint(cb0[20].xy), (int2)r4.zw);
  r5.xy = min(asint(cb0[20].zw), (int2)r5.xy);
  r5.zw = float2(0,0);
  r5.xyz = t1.Load(r5.xyz).xyz;
  r10.x = dot(r5.xzy, float3(1,1,2));
  r10.y = dot(r5.xz, float2(2,-2));
  r10.z = dot(r5.xzy, float3(-1,-1,2));
  r5.xyzw = (int4)r4.zwzw + int4(1,0,-1,1);
  r5.xyzw = max(asint(cb0[20].xyxy), (int4)r5.xyzw);
  r5.xyzw = min(asint(cb0[20].zwzw), (int4)r5.zwxy);
  r11.xy = r5.zw;
  r11.zw = float2(0,0);
  r11.xyz = t1.Load(r11.xyz).xyz;
  r12.x = dot(r11.xzy, float3(1,1,2));
  r12.y = dot(r11.xz, float2(2,-2));
  r12.z = dot(r11.xzy, float3(-1,-1,2));
  r5.zw = float2(0,0);
  r5.xyz = t1.Load(r5.xyz).xyz;
  r11.x = dot(r5.xzy, float3(1,1,2));
  r11.y = dot(r5.xz, float2(2,-2));
  r11.z = dot(r5.xzy, float3(-1,-1,2));
  r4.xyzw = (int4)r4.xyzw + int4(0,1,1,1);
  r4.xyzw = max(asint(cb0[20].xyxy), (int4)r4.xyzw);
  r4.xyzw = min(asint(cb0[20].zwzw), (int4)r4.zwxy);
  r5.xy = r4.zw;
  r5.zw = float2(0,0);
  r5.xyz = t1.Load(r5.xyz).xyz;
  r13.x = dot(r5.xzy, float3(1,1,2));
  r13.y = dot(r5.xz, float2(2,-2));
  r13.z = dot(r5.xzy, float3(-1,-1,2));
  r4.zw = float2(0,0);
  r4.xyz = t1.Load(r4.xyz).xyz;
  r5.x = dot(r4.xzy, float3(1,1,2));
  r5.y = dot(r4.xz, float2(2,-2));
  r5.z = dot(r4.xzy, float3(-1,-1,2));
  r4.xyz = min(r10.xyz, r8.xyz);
  r4.xyz = min(r6.xyz, r4.xyz);
  r14.xyz = min(r13.xyz, r12.xyz);
  r4.xyz = min(r14.xyz, r4.xyz);
  r14.xyz = max(r10.xyz, r8.xyz);
  r14.xyz = max(r14.xyz, r6.xyz);
  r15.xyz = max(r13.xyz, r12.xyz);
  r14.xyz = max(r15.xyz, r14.xyz);
  r1.xy = -r3.zw + r1.xy;
  r3.xz = (uint2)r1.xy >> int2(30,30);
  r3.xyz = (int3)r3.xyz & int3(2,8,2);
  r3.xw = (int2)-r3.xz + int2(1,1);
  r2.w = (int)r3.x + 4;
  r3.z = mad((int)r3.z, -3, (int)r2.w);
  r3.z = (int)r3.z + 3;
  r15.xyzw = cmp((int4)r3.zzzz == int4(2,4,6,8));
  r3.z = r3.z ? 0 : 1;
  r15.xyzw = r15.xyzw ? float4(1,1,1,1) : 0;
  r16.xyz = r3.zzz * r7.xyz;
  r16.xyz = r15.xxx * r9.xyz + r16.xyz;
  r16.xyz = r15.yyy * r10.xyz + r16.xyz;
  r15.xyz = r15.zzz * r11.xyz + r16.xyz;
  r15.xyz = r15.www * r5.xyz + r15.xyz;
  r4.xyz = min(r15.xyz, r4.xyz);
  r14.xyz = max(r15.xyz, r14.xyz);
  r2.xy = r2.xy * cb0[18].yx + cb0[18].wz;
  r2.xy = max(cb0[22].yx, r2.xy);
  r2.xy = min(cb0[22].wz, r2.xy);
  r15.xy = r2.yx * cb0[21].xy + float2(-0.5,-0.5);
  r15.xy = floor(r15.xy);
  r16.xyzw = float4(0.5,0.5,-0.5,-0.5) + r15.xyxy;
  r2.xy = r2.xy * cb0[21].yx + -r16.yx;
  r15.zw = r2.yx * r2.yx;
  r17.xy = r15.zw * r2.yx;
  r17.zw = r15.wz * r2.xy + r2.xy;
  r17.zw = -r17.zw * float2(0.5,0.5) + r15.wz;
  r18.xy = float2(2.5,2.5) * r15.wz;
  r17.xy = r17.yx * float2(1.5,1.5) + -r18.xy;
  r17.xy = float2(1,1) + r17.xy;
  r2.xy = r15.zw * r2.yx + -r15.zw;
  r15.zw = float2(0.5,0.5) * r2.xy;
  r18.xy = float2(1,1) + -r17.wz;
  r18.xy = r18.xy + -r17.yx;
  r2.xy = -r2.xy * float2(0.5,0.5) + r18.xy;
  r17.xy = r17.xy + r2.yx;
  r2.xy = r2.xy / r17.yx;
  r2.xy = r16.xy + r2.xy;
  r15.xy = float2(2.5,2.5) + r15.xy;
  r16.xy = cb0[21].wz * r16.wz;
  r18.zw = cb0[21].wz * r2.yx;
  r2.xy = cb0[21].zw * r15.xy;
  r15.xy = r17.yx * r17.zw;
  r3.z = r17.y * r17.x;
  r16.zw = r17.xy * r15.zw;
  r4.w = r15.x + r15.y;
  r4.w = r17.y * r17.x + r4.w;
  r4.w = r15.z * r17.x + r4.w;
  r4.w = r15.w * r17.y + r4.w;
  r4.w = 1 / r4.w;
  r18.xy = max(cb0[22].yx, r16.xy);
  r17.xyz = t5.SampleLevel(s2_s, r18.wx, 0).xyz;
  r19.xyz = t5.SampleLevel(s2_s, r18.yz, 0).xyz;
  r15.yzw = r19.xyz * r15.yyy;
  r15.xyz = r17.xyz * r15.xxx + r15.yzw;
  r17.xyz = t5.SampleLevel(s2_s, r18.wz, 0).xyz;
  r15.xyz = r17.xyz * r3.zzz + r15.xyz;
  r18.xy = min(cb0[22].zw, r2.xy);
  r17.xyz = t5.SampleLevel(s2_s, r18.xz, 0).xyz;
  r15.xyz = r17.xyz * r16.zzz + r15.xyz;
  r16.xyz = t5.SampleLevel(s2_s, r18.wy, 0).xyz;
  r15.xyz = r16.xyz * r16.www + r15.xyz;
  r15.xyz = r15.xyz * r4.www;
  r15.xyz = cb0[0].xxx * r15.xyz;
  r16.x = dot(r15.xzy, float3(1,1,2));
  r16.y = dot(r15.xz, float2(2,-2));
  r16.z = dot(r15.xzy, float3(-1,-1,2));
  r2.x = cmp(asint(cb0[0].z) != 0);
  r2.x = (int)r2.x | (int)r2.z;
  r4.xyz = max(r16.xyz, r4.xyz);
  r4.xyz = min(r4.xyz, r14.xyz);
  r14.xyzw = float4(0,-1,-1,0) + -r1.xyxy;
  r2.y = cb0[28].w * cb0[28].w;
  r2.z = dot(r14.xy, r14.xy);
  r2.z = r2.y * r2.z;
  r2.z = min(1, r2.z);
  r3.z = r2.z * 0.904999971 + -1.89999998;
  r2.z = r3.z * r2.z + 1;
  r3.z = r6.x * r1.z + 4;
  r3.z = rcp(r3.z);
  r4.w = r3.z * r2.z;
  r5.w = dot(r14.zw, r14.zw);
  r5.w = r5.w * r2.y;
  r5.w = min(1, r5.w);
  r6.w = r5.w * 0.904999971 + -1.89999998;
  r5.w = r6.w * r5.w + 1;
  r6.w = r8.x * r1.z + 4;
  r6.w = rcp(r6.w);
  r5.w = r6.w * r5.w;
  r8.xyz = r5.www * r8.xyz;
  r6.xyz = r4.www * r6.xyz + r8.xyz;
  r2.z = r2.z * r3.z + r5.w;
  r3.z = dot(-r1.xy, -r1.xy);
  r3.z = r3.z * r2.y;
  r3.z = min(1, r3.z);
  r4.w = r3.z * 0.904999971 + -1.89999998;
  r3.z = r4.w * r3.z + 1;
  r4.w = r10.x * r1.z + 4;
  r4.w = rcp(r4.w);
  r5.w = r4.w * r3.z;
  r6.xyz = r5.www * r10.xyz + r6.xyz;
  r2.z = r3.z * r4.w + r2.z;
  r8.xyzw = float4(1,0,0,1) + -r1.xyxy;
  r3.z = dot(r8.xy, r8.xy);
  r3.z = r3.z * r2.y;
  r3.z = min(1, r3.z);
  r4.w = r3.z * 0.904999971 + -1.89999998;
  r3.z = r4.w * r3.z + 1;
  r4.w = r12.x * r1.z + 4;
  r4.w = rcp(r4.w);
  r5.w = r4.w * r3.z;
  r6.xyz = r5.www * r12.xyz + r6.xyz;
  r2.z = r3.z * r4.w + r2.z;
  r3.z = dot(r8.zw, r8.zw);
  r3.z = r3.z * r2.y;
  r3.z = min(1, r3.z);
  r4.w = r3.z * 0.904999971 + -1.89999998;
  r3.z = r4.w * r3.z + 1;
  r4.w = r13.x * r1.z + 4;
  r4.w = rcp(r4.w);
  r5.w = r4.w * r3.z;
  r6.xyz = r5.www * r13.xyz + r6.xyz;
  r2.z = r3.z * r4.w + r2.z;
  r3.xz = (int2)r3.xw;
  r3.xz = r3.xz + -r1.xy;
  r3.x = dot(r3.xz, r3.xz);
  r3.x = r3.x * r2.y;
  r3.x = min(1, r3.x);
  r3.z = r3.x * 0.904999971 + -1.89999998;
  r3.x = r3.z * r3.x + 1;
  r2.w = mad((int)r3.w, 3, (int)r2.w);
  r8.xyzw = cmp((int4)r2.wwww == int4(2,4,6,8));
  r2.w = r2.w ? 0 : 1;
  r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
  r7.xyz = r2.www * r7.xyz;
  r7.xyz = r8.xxx * r9.xyz + r7.xyz;
  r7.xyz = r8.yyy * r10.xyz + r7.xyz;
  r7.xyz = r8.zzz * r11.xyz + r7.xyz;
  r5.xyz = r8.www * r5.xyz + r7.xyz;
  r2.w = r5.x * r1.z + 4;
  r2.w = rcp(r2.w);
  r3.z = r3.x * r2.w;
  r5.xyz = r3.zzz * r5.xyz + r6.xyz;
  r2.z = r3.x * r2.w + r2.z;
  r2.z = rcp(r2.z);
  r3.xzw = r5.xyz * r2.zzz;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = r2.y * r1.x;
  r1.x = min(1, r1.x);
  r1.y = r1.x * 0.904999971 + -1.89999998;
  r1.x = r1.y * r1.x + 1;
  r1.y = cb0[0].y * r1.x;
  r1.w = 0.0250000004 * r1.w;
  r1.w = min(1, r1.w);
  r1.x = -r1.x * cb0[0].y + 0.200000003;
  r1.x = r1.w * r1.x + r1.y;
  r1.y = 0.00999999978 * r16.x;
  r1.w = r5.x * r2.z + -r16.x;
  r1.y = saturate(r1.y / abs(r1.w));
  r1.x = max(r1.x, r1.y);
  r1.x = r3.y ? 0.25 : r1.x;
  r1.x = cb0[0].z ? 1 : r1.x;
  r2.xyz = r2.xxx ? r3.xzw : r4.xyz;
  r1.y = r3.x * r1.z + 4;
  r1.z = r2.x * r1.z + 4;
  r1.yz = rcp(r1.yz);
  r1.w = 1 + -r1.x;
  r2.w = r1.w * r1.z;
  r1.x = r1.x * r1.y;
  r1.y = r1.w * r1.z + r1.x;
  r1.y = rcp(r1.y);
  r1.z = r2.w * r1.y;
  r1.x = r1.x * r1.y;
  r1.xyw = r3.xzw * r1.xxx;
  r1.xyz = r2.xyz * r1.zzz + r1.xyw;
  r2.xyz = float3(0.25,0.25,0.25) * r1.xyz;
  r3.yz = r2.xx + r2.yz;
  r3.x = -r1.z * 0.25 + r3.y;
  r1.x = r1.x * 0.25 + -r2.y;
  r3.w = -r1.z * 0.25 + r1.x;
  r1.xyz = min(float3(0,0,0), -r3.xzw);
  r1.xyz = -r1.xyz;
  r0.xyzw = cb0[24].xyyy + r0.xyzw;
  r0.xyzw = (uint4)r0.xyzw;
  r2.xy = (uint2)r0.xw;
  r2.xy = cmp(r2.xy < cb0[24].zw);
  r2.x = r2.y ? r2.x : 0;
  if (r2.x != 0) {
    r2.xyz = min(float3(65504,65504,65504), r1.xyz);
    r3.xy = (int2)r0.xw * int2(0x19660d,0x19660d);
    r3.z = asint(cb1[144].y) * 0x0019660d;
    r3.xyz = (int3)r3.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r2.w = mad((int)r3.y, (int)r3.z, (int)r3.x);
    r3.x = mad((int)r3.z, (int)r2.w, (int)r3.y);
    r3.y = mad((int)r2.w, (int)r3.x, (int)r3.z);
    r2.w = mad((int)r3.x, (int)r3.y, (int)r2.w);
    r2.w = (uint)r2.w >> 16;
    r2.w = (uint)r2.w;
    r2.w = 1.52587891e-005 * r2.w;
    r2.w = frac(r2.w);
    r3.xyz = cb0[25].xyz * r2.www;
    r2.xyz = r2.xyz * r3.xyz + r2.xyz;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xwww, r2.xyzw
  }
  r2.x = mad((int)vThreadIDInGroup.y, 8, (int)vThreadIDInGroup.x);
  r1.w = 0;
  g0[r2.x].val[0/4] = r1.x;
  g0[r2.x].val[0/4+1] = r1.y;
  g0[r2.x].val[0/4+2] = r1.z;
  g0[r2.x].val[0/4+3] = r1.w;
  GroupMemoryBarrierWithGroupSync();
  r2.y = (int)vThreadIDInGroup.y | (int)vThreadIDInGroup.x;
  r2.y = (int)r2.y & 1;
  if (r2.y == 0) {
    r2.xyz = (int3)r2.xxx + int3(1,8,9);
    r0.xyzw = (uint4)r0.xyzw >> int4(1,1,1,1);
    r3.x = g0[r2.x].val[0/4];
    r3.y = g0[r2.x].val[0/4+1];
    r3.z = g0[r2.x].val[0/4+2];
    r3.w = g0[r2.x].val[0/4+3];
    r1.xyzw = r3.xyzw + r1.xyzw;
    r3.x = g0[r2.y].val[0/4];
    r3.y = g0[r2.y].val[0/4+1];
    r3.z = g0[r2.y].val[0/4+2];
    r3.w = g0[r2.y].val[0/4+3];
    r1.xyzw = r3.xyzw + r1.xyzw;
    r2.x = g0[r2.z].val[0/4];
    r2.y = g0[r2.z].val[0/4+1];
    r2.z = g0[r2.z].val[0/4+2];
    r2.w = g0[r2.z].val[0/4+3];
    r1.xyzw = r2.xyzw + r1.xyzw;
    r1.xyzw = float4(0.25,0.25,0.25,0.25) * r1.xyzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u1.xyzw, r0.xyzw, r1.xyzw
  }
  return;
}