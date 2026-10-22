// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u0_t {
  float val[8];
};
RWStructuredBuffer<u0_t> u0 : register(u0);

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (uint,uint,uint,uint) u1
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)cb0[1].xy;
  r0.xy = cmp((uint2)vThreadID.xy < (uint2)r0.xy);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.xy = vThreadID.xy;
    r0.zw = float2(0,0);
    r0.xy = t0.Load(r0.xyz).xy;
    r0.y = cmp(0 < r0.y);
    if (r0.y != 0) {
      // Needs manual fix for instruction:
        imm_atomic_iadd r1.x, u1, l(1), l(4)
      InterlockedAdd(dest, imm_value, orig_value);
      r0.y = (int)r1.x + 4;
      r0.y = cmp(asuint(cb0[0].z) >= (uint)r0.y);
      if (r0.y != 0) {
        r0.x = 100000 * r0.x;
        r0.yz = (uint2)vThreadID.xy;
        r0.yz = cb0[1].zw * r0.yz;
        r1.yz = r0.yz * float2(2,-2) + float2(-1,1);
        r2.xyzw = cb0[4].xyzw * r1.zzzz;
        r2.xyzw = r1.yyyy * cb0[3].xyzw + r2.xyzw;
        r2.xyzw = cb0[5].xyzw + r2.xyzw;
        r2.xyzw = cb0[6].xyzw + r2.xyzw;
        r1.yzw = r2.xyz / r2.www;
        r2.xyzw = (int4)vThreadID.xyxy + int4(0,1,1,1);
        r2.xyzw = (uint4)r2.xyzw;
        r2.xyzw = cb0[1].zwzw * r2.xyzw;
        r2.xyzw = r2.xyzw * float4(2,-2,2,-2) + float4(-1,1,-1,1);
        r3.xyzw = cb0[4].xyzw * r2.yyyy;
        r3.xyzw = r2.xxxx * cb0[3].xyzw + r3.xyzw;
        r3.xyzw = cb0[5].xyzw + r3.xyzw;
        r3.xyzw = cb0[6].xyzw + r3.xyzw;
        r3.xyz = r3.xyz / r3.www;
        r4.xyzw = cb0[4].xyzw * r2.wwww;
        r2.xyzw = r2.zzzz * cb0[3].xyzw + r4.xyzw;
        r2.xyzw = cb0[5].xyzw + r2.xyzw;
        r2.xyzw = cb0[6].xyzw + r2.xyzw;
        r2.xyz = r2.xyz / r2.www;
        r4.xy = (int2)vThreadID.xy + int2(1,0);
        r4.xy = (uint2)r4.xy;
        r4.xy = cb0[1].zw * r4.xy;
        r4.xy = r4.xy * float2(2,-2) + float2(-1,1);
        r5.xyzw = cb0[4].xyzw * r4.yyyy;
        r4.xyzw = r4.xxxx * cb0[3].xyzw + r5.xyzw;
        r4.xyzw = cb0[5].xyzw + r4.xyzw;
        r4.xyzw = cb0[6].xyzw + r4.xyzw;
        r4.xyz = r4.xyz / r4.www;
        r5.xyz = cb0[2].xyz * r0.xxx + r1.yzw;
        r3.xyz = cb0[2].xyz * r0.xxx + r3.xyz;
        r2.xyz = cb0[2].xyz * r0.xxx + r2.xyz;
        r4.xyz = cb0[2].xyz * r0.xxx + r4.xyz;
        r0.yz = saturate(r0.yz);
        r0.xy = float2(255,255) * r0.yz;
        r0.xy = (uint2)r0.xy;
        r0.y = (uint)r0.y << 16;
        r0.x = mad((int)r0.x, 0x01000000, (int)r0.y);
        r5.w = (int)r0.x + 6655;
        u0[r1.x].val[0/4] = r5.x;
        u0[r1.x].val[0/4+1] = r5.y;
        u0[r1.x].val[0/4+2] = r5.z;
        u0[r1.x].val[0/4+3] = r5.w;
        r3.w = r5.w;
        u0[r1.x].val[16/4] = r3.x;
        u0[r1.x].val[16/4+1] = r3.y;
        u0[r1.x].val[16/4+2] = r3.z;
        u0[r1.x].val[16/4+3] = r3.w;
        r0.xyz = (int3)r1.xxx + int3(1,2,3);
        u0[r0.x].val[0/4] = r3.x;
        u0[r0.x].val[0/4+1] = r3.y;
        u0[r0.x].val[0/4+2] = r3.z;
        u0[r0.x].val[0/4+3] = r3.w;
        r2.w = r3.w;
        u0[r0.x].val[16/4] = r2.x;
        u0[r0.x].val[16/4+1] = r2.y;
        u0[r0.x].val[16/4+2] = r2.z;
        u0[r0.x].val[16/4+3] = r2.w;
        u0[r0.y].val[0/4] = r2.x;
        u0[r0.y].val[0/4+1] = r2.y;
        u0[r0.y].val[0/4+2] = r2.z;
        u0[r0.y].val[0/4+3] = r2.w;
        r4.w = r2.w;
        u0[r0.y].val[16/4] = r4.x;
        u0[r0.y].val[16/4+1] = r4.y;
        u0[r0.y].val[16/4+2] = r4.z;
        u0[r0.y].val[16/4+3] = r4.w;
        u0[r0.z].val[0/4] = r4.x;
        u0[r0.z].val[0/4+1] = r4.y;
        u0[r0.z].val[0/4+2] = r4.z;
        u0[r0.z].val[0/4+3] = r4.w;
        u0[r0.z].val[16/4] = r5.x;
        u0[r0.z].val[16/4+1] = r5.y;
        u0[r0.z].val[16/4+2] = r5.z;
        u0[r0.z].val[16/4+3] = r5.w;
      } else {
        // Needs manual fix for instruction:
            atomic_iadd u1, l(1), l(-4)
        InterlockedAdd(dest, value, orig_value);
      }
    }
  }
  return;
}