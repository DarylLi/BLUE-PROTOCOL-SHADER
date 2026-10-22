// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[341];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[131];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xyz = cmp((uint3)vThreadID.xyz < asuint(cb2[1].xyz));
  r0.x = r0.y ? r0.x : 0;
  r0.x = r0.z ? r0.x : 0;
  if (r0.x != 0) {
    r0.x = mad((int)vThreadID.z, asint(cb2[1].y), (int)vThreadID.y);
    r0.x = mad((int)r0.x, asint(cb2[1].x), (int)vThreadID.x);
    r0.y = 1 << asint(cb2[2].x);
    r0.y = (int)r0.y;
    r0.yz = cb0[130].zw * r0.yy;
    r0.yz = float2(2,-2) * r0.yz;
    r1.xyz = (uint3)vThreadID.xyz;
    r1.xy = r1.xy * r0.yz + float2(-1,1);
    r2.xyz = (int3)vThreadID.xyz + int3(1,1,1);
    r2.xyw = (uint3)r2.xyz;
    r0.yz = r2.xy * r0.yz + float2(-1,1);
    r0.w = r1.z / cb2[3].z;
    r0.w = exp2(r0.w);
    r0.w = -cb2[3].y + r0.w;
    r0.w = r0.w / cb2[3].x;
    r1.z = cmp((int)vThreadID.z == asint(cb2[1].z));
    r0.w = r1.z ? 2000000 : r0.w;
    r3.z = vThreadID.z ? r0.w : 0;
    r0.w = r2.w / cb2[3].z;
    r0.w = exp2(r0.w);
    r0.w = -cb2[3].y + r0.w;
    r0.w = r0.w / cb2[3].x;
    r1.z = cmp((int)r2.z == asint(cb2[1].z));
    r2.z = r1.z ? 2000000 : r0.w;
    r0.w = cmp(cb0[31].w < 1);
    r1.z = cb0[65].w + r3.z;
    r1.z = cb0[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.w = r3.z * cb0[30].z + cb0[31].z;
    r1.z = r0.w ? r1.z : r1.w;
    r4.xyz = cb0[37].xyw * r1.yyy;
    r5.xyz = r1.xxx * cb0[36].xyw + r4.xyz;
    r6.xyz = r1.zzz * cb0[38].xyw + r5.xyz;
    r6.xyz = cb0[39].xyw + r6.xyz;
    r7.xyz = cb0[37].xyw * r0.zzz;
    r8.xyz = r0.yyy * cb0[36].xyw + r7.xyz;
    r9.xyz = r1.zzz * cb0[38].xyw + r8.xyz;
    r9.xyz = cb0[39].xyw + r9.xyz;
    r1.xyw = r1.xxx * cb0[36].xyw + r7.xyz;
    r7.xyz = r1.zzz * cb0[38].xyw + r1.xyw;
    r7.xyz = cb0[39].xyw + r7.xyz;
    r4.xyz = r0.yyy * cb0[36].xyw + r4.xyz;
    r10.xyz = r1.zzz * cb0[38].xyw + r4.xyz;
    r10.xyz = cb0[39].xyw + r10.xyz;
    r0.y = cb0[65].w + r2.z;
    r0.y = cb0[65].z * r0.y;
    r0.y = 1 / r0.y;
    r0.z = r2.z * cb0[30].z + cb0[31].z;
    r0.y = r0.w ? r0.y : r0.z;
    r5.xyz = r0.yyy * cb0[38].xyw + r5.xyz;
    r5.xyz = cb0[39].xyw + r5.xyz;
    r8.xyz = r0.yyy * cb0[38].xyw + r8.xyz;
    r8.xyz = cb0[39].xyw + r8.xyz;
    r1.xyz = r0.yyy * cb0[38].xyw + r1.xyw;
    r1.xyz = cb0[39].xyw + r1.xyz;
    r0.yzw = r0.yyy * cb0[38].xyw + r4.xyz;
    r0.yzw = cb0[39].xyw + r0.yzw;
    r4.xy = r6.xy / r6.zz;
    r4.zw = r9.xy / r9.zz;
    r6.xy = r7.xy / r7.zz;
    r6.zw = r10.xy / r10.zz;
    r5.xy = r5.xy / r5.zz;
    r5.zw = r8.xy / r8.zz;
    r1.xy = r1.xy / r1.zz;
    r0.yz = r0.yz / r0.ww;
    r1.zw = min(r4.xy, r4.zw);
    r1.zw = min(r1.zw, r6.xy);
    r1.zw = min(r1.zw, r6.zw);
    r1.zw = min(r1.zw, r5.xy);
    r1.zw = min(r1.zw, r5.zw);
    r1.zw = min(r1.zw, r1.xy);
    r3.xy = min(r1.zw, r0.yz);
    r1.zw = max(r4.xy, r4.zw);
    r1.zw = max(r1.zw, r6.xy);
    r1.zw = max(r1.zw, r6.zw);
    r1.zw = max(r1.zw, r5.xy);
    r1.zw = max(r1.zw, r5.zw);
    r1.xy = max(r1.zw, r1.xy);
    r2.xy = max(r1.xy, r0.yz);
    r0.yzw = r3.xyz + r2.xyz;
    r1.xyz = -r0.yzw * float3(0.5,0.5,0.5) + r2.xyz;
    r1.w = (uint)r0.x << 1;
    bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    r2.y = cb2[1].w;
    r2.z = 0;
    while (true) {
      r2.w = cmp((uint)r2.z >= asuint(cb2[0].x));
      if (r2.w != 0) break;
      r3.xyzw = t0.Load(r2.z).xyzw;
      r4.xyz = -r0.yzw * float3(0.5,0.5,0.5) + r3.xyz;
      r4.xyz = abs(r4.xyz) + -r1.xyz;
      r4.xyz = max(float3(0,0,0), r4.xyz);
      r2.w = dot(r4.xyz, r4.xyz);
      r3.w = r3.w * r3.w;
      r2.w = cmp(r2.w < r3.w);
      if (r2.w != 0) {
        r4.xyzw = t1.Load(r2.z).xyzw;
        r2.w = cmp(0 < r4.w);
        r3.xyz = r0.yzw * float3(0.5,0.5,0.5) + -r3.xyz;
        r5.xyz = r3.yzx * -r4.xyz;
        r5.xyz = r3.xyz * -r4.yzx + -r5.xyz;
        r6.xyz = r5.xyz * -r4.yzx;
        r5.xyz = r5.zxy * -r4.zxy + -r6.xyz;
        r3.w = dot(r5.xyz, r5.xyz);
        r3.w = rsqrt(r3.w);
        r5.xyz = r5.xyz * r3.www;
        r4.xyz = r4.www * r4.xyz + -r5.xyz;
        r3.x = dot(r3.xyz, r4.xyz);
        r3.y = dot(r1.xyz, abs(r4.xyz));
        r3.x = cmp(r3.y >= r3.x);
        r2.w = r2.w ? r3.x : -1;
        if (r2.w != 0) {
          // Needs manual fix for instruction:
                imm_atomic_iadd r3.x, u0, r1.w, l(1)
          InterlockedAdd(dest, imm_value, orig_value);
          r2.w = (int)r0.x * (int)r2.y;
        // No code for instruction (needs manual fix):
                store_uav_typed u0.xyzw, r2.xxxx, r2.wwww
          r2.w = cmp((uint)r3.x < (uint)r2.y);
          if (r2.w != 0) {
            r2.w = mad((int)r0.x, (int)r2.y, (int)r3.x);
          // No code for instruction (needs manual fix):
                    store_uav_typed u1.xyzw, r2.wwww, r2.zzzz
          }
        }
      }
      r2.z = (int)r2.z + 1;
    }
    r0.x = (int)r0.x + asint(cb2[0].w);
    r1.w = (uint)r0.x << 1;
    bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.x = (((uint)r0.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
    r2.y = cb2[1].w;
    r2.z = 0;
    while (true) {
      r2.w = cmp((uint)r2.z >= asuint(cb2[0].y));
      if (r2.w != 0) break;
      r3.xyz = cb1[r2.z+0].xyz + cb0[70].xyz;
      r4.xyz = cb0[13].xyz * r3.yyy;
      r3.xyw = r3.xxx * cb0[12].xyz + r4.xyz;
      r3.xyz = r3.zzz * cb0[14].xyz + r3.xyw;
      r3.xyz = cb0[15].xyz + r3.xyz;
      r3.xyz = -r0.yzw * float3(0.5,0.5,0.5) + r3.xyz;
      r3.xyz = abs(r3.xyz) + -r1.xyz;
      r3.xyz = max(float3(0,0,0), r3.xyz);
      r2.w = dot(r3.xyz, r3.xyz);
      r3.x = cb1[r2.z+0].w * cb1[r2.z+0].w;
      r2.w = cmp(r2.w < r3.x);
      if (r2.w != 0) {
        // Needs manual fix for instruction:
            imm_atomic_iadd r3.x, u0, r1.w, l(1)
        InterlockedAdd(dest, imm_value, orig_value);
        r2.w = (int)r0.x * (int)r2.y;
      // No code for instruction (needs manual fix):
            store_uav_typed u0.xyzw, r2.xxxx, r2.wwww
        r2.w = cmp((uint)r3.x < (uint)r2.y);
        if (r2.w != 0) {
          r2.w = mad((int)r0.x, (int)r2.y, (int)r3.x);
        // No code for instruction (needs manual fix):
                store_uav_typed u1.xyzw, r2.wwww, r2.zzzz
        }
      }
      r2.z = (int)r2.z + 1;
    }
  }
  return;
}