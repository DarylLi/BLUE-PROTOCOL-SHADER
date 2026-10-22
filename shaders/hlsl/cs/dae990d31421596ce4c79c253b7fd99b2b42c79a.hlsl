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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r0.xy = cb0[23].zw * r0.xy;
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
    r2.w = dot(r5.xzy, float3(1,1,2));
    r3.x = dot(r5.xz, float2(2,-2));
    r5.x = dot(r5.xzy, float3(-1,-1,2));
    r6.xyzw = (int4)r4.zwzw + int4(1,-1,-1,0);
    r6.xyzw = max(asint(cb0[20].xyxy), (int4)r6.xyzw);
    r6.xyzw = min(asint(cb0[20].zwzw), (int4)r6.zwxy);
    r8.xy = r6.zw;
    r8.zw = float2(0,0);
    r5.yzw = t1.Load(r8.xyz).xyz;
    r8.x = dot(r5.ywz, float3(1,1,2));
    r8.y = dot(r5.yw, float2(2,-2));
    r8.z = dot(r5.ywz, float3(-1,-1,2));
    r6.zw = float2(0,0);
    r5.yzw = t1.Load(r6.xyz).xyz;
    r6.x = dot(r5.ywz, float3(1,1,2));
    r6.y = dot(r5.yw, float2(2,-2));
    r5.y = dot(r5.ywz, float3(-1,-1,2));
    r5.zw = max(asint(cb0[20].xy), (int2)r4.zw);
    r9.xy = min(asint(cb0[20].zw), (int2)r5.zw);
    r9.zw = float2(0,0);
    r9.xyz = t1.Load(r9.xyz).xyz;
    r10.x = dot(r9.xzy, float3(1,1,2));
    r10.y = dot(r9.xz, float2(2,-2));
    r10.z = dot(r9.xzy, float3(-1,-1,2));
    r9.xyzw = (int4)r4.zwzw + int4(1,0,-1,1);
    r9.xyzw = max(asint(cb0[20].xyxy), (int4)r9.xyzw);
    r9.xyzw = min(asint(cb0[20].zwzw), (int4)r9.zwxy);
    r11.xy = r9.zw;
    r11.zw = float2(0,0);
    r11.xyz = t1.Load(r11.xyz).xyz;
    r5.z = dot(r11.xzy, float3(1,1,2));
    r5.w = dot(r11.xz, float2(2,-2));
    r6.z = dot(r11.xzy, float3(-1,-1,2));
    r9.zw = float2(0,0);
    r9.xyz = t1.Load(r9.xyz).xyz;
    r11.x = dot(r9.xzy, float3(1,1,2));
    r11.y = dot(r9.xz, float2(2,-2));
    r11.z = dot(r9.xzy, float3(-1,-1,2));
    r4.xyzw = (int4)r4.xyzw + int4(0,1,1,1);
    r4.xyzw = max(asint(cb0[20].xyxy), (int4)r4.xyzw);
    r4.xyzw = min(asint(cb0[20].zwzw), (int4)r4.zwxy);
    r9.xy = r4.zw;
    r9.zw = float2(0,0);
    r9.xyz = t1.Load(r9.xyz).xyz;
    r6.w = dot(r9.xzy, float3(1,1,2));
    r7.w = dot(r9.xz, float2(2,-2));
    r8.w = dot(r9.xzy, float3(-1,-1,2));
    r4.zw = float2(0,0);
    r4.xyz = t1.Load(r4.xyz).xyz;
    r9.x = dot(r4.xzy, float3(1,1,2));
    r9.y = dot(r4.xz, float2(2,-2));
    r9.z = dot(r4.xzy, float3(-1,-1,2));
    r4.xy = min(r10.xy, r6.xy);
    r4.x = min(r4.x, r2.w);
    r4.y = min(r4.y, r3.x);
    r4.z = min(r10.z, r5.y);
    r4.z = min(r5.x, r4.z);
    r4.w = min(r6.w, r5.z);
    r12.x = min(r4.x, r4.w);
    r4.x = min(r7.w, r5.w);
    r12.y = min(r4.y, r4.x);
    r4.x = min(r8.w, r6.z);
    r12.z = min(r4.z, r4.x);
    r4.x = max(r10.x, r6.x);
    r2.w = max(r4.x, r2.w);
    r4.x = max(r10.y, r6.y);
    r3.x = max(r4.x, r3.x);
    r4.x = max(r10.z, r5.y);
    r4.x = max(r5.x, r4.x);
    r4.y = max(r6.w, r5.z);
    r5.x = max(r4.y, r2.w);
    r2.w = max(r7.w, r5.w);
    r5.y = max(r3.x, r2.w);
    r2.w = max(r8.w, r6.z);
    r5.z = max(r4.x, r2.w);
    r0.xy = -r3.zw + r0.xy;
    r0.xy = (uint2)r0.xy >> int2(30,30);
    r0.xy = (int2)r0.xy & int2(2,2);
    r0.x = (int)-r0.x + 1;
    r0.x = (int)r0.x + 4;
    r0.x = mad((int)r0.y, -3, (int)r0.x);
    r0.x = (int)r0.x + 3;
    r4.xyzw = cmp((int4)r0.xxxx == int4(2,4,6,8));
    r0.x = r0.x ? 0 : 1;
    r4.xyzw = r4.xyzw ? float4(1,1,1,1) : 0;
    r3.xzw = r0.xxx * r7.xyz;
    r3.xzw = r4.xxx * r8.xyz + r3.xzw;
    r3.xzw = r4.yyy * r10.xyz + r3.xzw;
    r3.xzw = r4.zzz * r11.xyz + r3.xzw;
    r3.xzw = r4.www * r9.xyz + r3.xzw;
    r4.xyz = min(r12.xyz, r3.xzw);
    r3.xzw = max(r5.xyz, r3.xzw);
    r0.xy = r2.xy * cb0[18].yx + cb0[18].wz;
    r0.xy = max(cb0[22].yx, r0.xy);
    r0.xy = min(cb0[22].wz, r0.xy);
    r2.xy = r0.yx * cb0[21].xy + float2(-0.5,-0.5);
    r2.xy = floor(r2.xy);
    r5.xyzw = float4(0.5,0.5,-0.5,-0.5) + r2.xyxy;
    r0.xy = r0.xy * cb0[21].yx + -r5.yx;
    r6.xy = r0.yx * r0.yx;
    r6.zw = r6.xy * r0.yx;
    r7.xy = r6.yx * r0.xy + r0.xy;
    r7.xy = -r7.xy * float2(0.5,0.5) + r6.yx;
    r7.zw = float2(2.5,2.5) * r6.yx;
    r6.zw = r6.wz * float2(1.5,1.5) + -r7.zw;
    r6.zw = float2(1,1) + r6.zw;
    r0.xy = r6.xy * r0.yx + -r6.xy;
    r6.xy = float2(0.5,0.5) * r0.xy;
    r7.zw = float2(1,1) + -r7.yx;
    r7.zw = r7.zw + -r6.wz;
    r0.xy = -r0.xy * float2(0.5,0.5) + r7.zw;
    r6.zw = r6.zw + r0.yx;
    r0.xy = r0.xy / r6.wz;
    r0.xy = r5.xy + r0.xy;
    r2.xy = float2(2.5,2.5) + r2.xy;
    r5.xy = cb0[21].wz * r5.wz;
    r8.zw = cb0[21].wz * r0.yx;
    r0.xy = cb0[21].zw * r2.xy;
    r2.xy = r6.wz * r7.xy;
    r2.w = r6.w * r6.z;
    r5.zw = r6.xy * r6.zw;
    r4.w = r2.x + r2.y;
    r4.w = r6.w * r6.z + r4.w;
    r4.w = r6.x * r6.z + r4.w;
    r4.w = r6.y * r6.w + r4.w;
    r4.w = 1 / r4.w;
    r8.xy = max(cb0[22].yx, r5.xy);
    r6.xyz = t5.SampleLevel(s2_s, r8.wx, 0).xyz;
    r7.xyz = t5.SampleLevel(s2_s, r8.yz, 0).xyz;
    r7.xyz = r7.xyz * r2.yyy;
    r6.xyz = r6.xyz * r2.xxx + r7.xyz;
    r7.xyz = t5.SampleLevel(s2_s, r8.wz, 0).xyz;
    r2.xyw = r7.xyz * r2.www + r6.xyz;
    r8.xy = min(cb0[22].zw, r0.xy);
    r6.xyz = t5.SampleLevel(s2_s, r8.xz, 0).xyz;
    r2.xyw = r6.xyz * r5.zzz + r2.xyw;
    r5.xyz = t5.SampleLevel(s2_s, r8.wy, 0).xyz;
    r2.xyw = r5.xyz * r5.www + r2.xyw;
    r2.xyw = r2.xyw * r4.www;
    r2.xyw = cb0[0].xxx * r2.xyw;
    r5.x = dot(r2.xwy, float3(1,1,2));
    r5.y = dot(r2.xw, float2(2,-2));
    r5.z = dot(r2.xwy, float3(-1,-1,2));
    r0.x = cmp(asint(cb0[0].z) != 0);
    r0.x = (int)r0.x | (int)r2.z;
    r2.xyz = max(r5.xyz, r4.xyz);
    r2.xyz = min(r2.xyz, r3.xzw);
    r0.y = 0.0250000004 * r0.w;
    r0.y = min(1, r0.y);
    r0.w = 0.200000003 + -cb0[0].y;
    r0.y = r0.y * r0.w + cb0[0].y;
    r0.w = 0.00999999978 * r5.x;
    r2.w = r10.x + -r5.x;
    r0.w = saturate(r0.w / abs(r2.w));
    r0.y = max(r0.y, r0.w);
    r0.y = r3.y ? 0.25 : r0.y;
    r0.y = cb0[0].z ? 1 : r0.y;
    r2.xyz = r0.xxx ? r10.xyz : r2.xyz;
    r0.x = r10.x * r0.z + 4;
    r0.z = r2.x * r0.z + 4;
    r0.xz = rcp(r0.xz);
    r0.w = 1 + -r0.y;
    r2.w = r0.w * r0.z;
    r0.x = r0.y * r0.x;
    r0.y = r0.w * r0.z + r0.x;
    r0.y = rcp(r0.y);
    r0.z = r2.w * r0.y;
    r0.x = r0.x * r0.y;
    r0.xyw = r10.xyz * r0.xxx;
    r0.xyz = r2.xyz * r0.zzz + r0.xyw;
    r2.xyz = float3(0.25,0.25,0.25) * r0.xyz;
    r3.yz = r2.xx + r2.yz;
    r3.x = -r0.z * 0.25 + r3.y;
    r0.x = r0.x * 0.25 + -r2.y;
    r3.w = -r0.z * 0.25 + r0.x;
    r0.xyz = min(float3(0,0,0), -r3.xzw);
    r0.xyz = min(float3(65504,65504,65504), -r0.xyz);
    r2.xy = (int2)r1.xw * int2(0x19660d,0x19660d);
    r2.z = asint(cb1[144].y) * 0x0019660d;
    r2.xyz = (int3)r2.xyz + int3(0x3c6ef35f,0x3c6ef35f,0x3c6ef35f);
    r0.w = mad((int)r2.y, (int)r2.z, (int)r2.x);
    r2.x = mad((int)r2.z, (int)r0.w, (int)r2.y);
    r2.y = mad((int)r0.w, (int)r2.x, (int)r2.z);
    r0.w = mad((int)r2.x, (int)r2.y, (int)r0.w);
    r0.w = (uint)r0.w >> 16;
    r0.w = (uint)r0.w;
    r0.w = 1.52587891e-005 * r0.w;
    r0.w = frac(r0.w);
    r2.xyz = cb0[25].xyz * r0.www;
    r0.xyz = r0.xyz * r2.xyz + r0.xyz;
    r0.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xyzw, r0.xyzw
  }
  return;
}