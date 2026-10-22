// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<uint4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb1[132].zwzw * v1.xyxy;
  r1.xyzw = t4.SampleLevel(s0_s, r0.zw, 0).xyzw;
  r2.x = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r2.y = t2.SampleLevel(s0_s, r0.zw, 0).w;
  r2.y = 255 * r2.y;
  r2.y = round(r2.y);
  r2.y = (uint)r2.y;
  r2.y = (int)r2.y & 15;
  r2.yz = cmp((int2)r2.yy == int2(12,13));
  r2.y = (int)r2.z | (int)r2.y;
  r3.xyz = t3.SampleLevel(s0_s, r0.zw, 0).xyz;
  r2.zw = cb1[132].xy * r0.zw;
  r4.xy = (uint2)r2.zw;
  if (cb0[0].x != 0) {
    r4.z = 0;
    r2.z = t5.Load(r4.xyz).x;
  }
  if (1 == 0) r2.z = 0; else if (1+4 < 32) {   r2.z = (uint)r2.z << (32-(1 + 4)); r2.z = (uint)r2.z >> (32-1);  } else r2.z = (uint)r2.z >> 4;
  r2.z = (uint)r2.z;
  r3.w = cb0[0].x ? r2.z : 1;
  r2.zw = cb1[132].zw * cb0[2].xx;
  r4.z = cmp(0 < r1.x);
  if (r4.z != 0) {
    r4.z = t6.SampleLevel(s1_s, r0.zw, 0).w;
    r5.xy = r2.zw * r1.xx;
    r6.xy = -r5.xy;
    r6.z = 0;
    r7.xyzw = r5.xyxy * float4(-0.709999979,-0.709999979,0.709999979,-0.709999979) + r0.zwzw;
    r6.xyzw = v1.xyxy * cb1[132].zwzw + r6.zyxz;
    r5.z = 0;
    r8.xyzw = v1.xyxy * cb1[132].zwzw + r5.xzzy;
    r9.xyzw = r5.xyxy * float4(-0.709999979,0.709999979,0.709999979,0.709999979) + r0.zwzw;
    r7.xy = t4.SampleLevel(s0_s, r7.xy, 0).xy;
    r5.z = cmp(0 < r7.x);
    r7.x = cmp(r1.y < r7.y);
    r5.z = r5.z ? r7.x : 0;
    r5.z = r5.z ? r7.y : r1.y;
    r6.xy = t4.SampleLevel(s0_s, r6.xy, 0).xy;
    r6.x = cmp(0 < r6.x);
    r7.x = cmp(r1.y < r6.y);
    r6.x = r6.x ? r7.x : 0;
    r6.x = r6.x ? r6.y : r1.y;
    r7.xy = t4.SampleLevel(s0_s, r7.zw, 0).xy;
    r6.y = cmp(0 < r7.x);
    r7.x = cmp(r1.y < r7.y);
    r6.y = r6.y ? r7.x : 0;
    r6.y = r6.y ? r7.y : r1.y;
    r6.zw = t4.SampleLevel(s0_s, r6.zw, 0).xy;
    r6.z = cmp(0 < r6.z);
    r7.x = cmp(r1.y < r6.w);
    r6.z = r6.z ? r7.x : 0;
    r6.z = r6.z ? r6.w : r1.y;
    r7.xy = t4.SampleLevel(s0_s, r8.xy, 0).xy;
    r6.w = cmp(0 < r7.x);
    r7.x = cmp(r1.y < r7.y);
    r6.w = r6.w ? r7.x : 0;
    r6.w = r6.w ? r7.y : r1.y;
    r7.xy = t4.SampleLevel(s0_s, r9.xy, 0).xy;
    r7.x = cmp(0 < r7.x);
    r7.z = cmp(r1.y < r7.y);
    r7.x = r7.z ? r7.x : 0;
    r7.x = r7.x ? r7.y : r1.y;
    r7.yz = t4.SampleLevel(s0_s, r8.zw, 0).xy;
    r7.y = cmp(0 < r7.y);
    r7.w = cmp(r1.y < r7.z);
    r7.y = r7.w ? r7.y : 0;
    r7.y = r7.y ? r7.z : r1.y;
    r7.zw = t4.SampleLevel(s0_s, r9.zw, 0).xy;
    r7.z = cmp(0 < r7.z);
    r8.x = cmp(r1.y < r7.w);
    r7.z = r7.z ? r8.x : 0;
    r7.z = r7.z ? r7.w : r1.y;
    r7.w = -r6.y + r5.z;
    r6.z = r6.z + -r6.w;
    r6.z = r6.z * 2 + r7.w;
    r6.z = r6.z + r7.x;
    r5.z = -r7.x + r5.z;
    r6.xz = -r7.yz + r6.xz;
    r5.z = r6.x * 2 + r5.z;
    r5.z = r5.z + r6.y;
    r5.z = r5.z + -r7.z;
    r5.z = r5.z * r5.z;
    r5.z = r6.z * r6.z + r5.z;
    r5.z = cb0[2].w * r5.z;
    r5.z = sqrt(r5.z);
    r5.z = 1 + -r5.z;
    if (cb0[0].x != 0) {
      r4.w = 0;
      r4.x = t5.Load(r4.xyw).x;
    }
    if (1 == 0) r4.x = 0; else if (1+3 < 32) {     r4.x = (uint)r4.x << (32-(1 + 3)); r4.x = (uint)r4.x >> (32-1);    } else r4.x = (uint)r4.x >> 3;
    r4.x = cb0[0].x ? r4.x : 1;
    if (r4.x != 0) {
      r4.xyw = t1.SampleLevel(s0_s, r0.zw, 0).xyz;
      r4.xyw = r4.xyw * float3(2,2,2) + float3(-1,-1,-1);
      r6.xy = cb1[13].xy * r4.yy;
      r6.xy = r4.xx * cb1[12].xy + r6.xy;
      r6.xy = r4.ww * cb1[14].xy + r6.xy;
      r6.z = r6.y * r5.y;
      r5.w = -1;
      r5.xy = r6.xz * r5.xw;
      r6.xy = v1.xy * cb1[132].zw + r5.xy;
      r5.w = t4.SampleLevel(s0_s, r6.xy, 0).x;
      r5.w = cmp(0 < r5.w);
      if (cb0[0].x != 0) {
        r6.zw = cb1[132].xy * r6.xy;
        r7.xy = (uint2)r6.zw;
        r7.zw = float2(0,0);
        r6.z = t5.Load(r7.xyz).x;
      }
      if (1 == 0) r6.z = 0; else if (1+3 < 32) {       r6.z = (uint)r6.z << (32-(1 + 3)); r6.z = (uint)r6.z >> (32-1);      } else r6.z = (uint)r6.z >> 3;
      r6.z = cmp((int)r6.z != 0);
      r6.z = cb0[0].x ? r6.z : -1;
      r5.w = r5.w ? r6.z : 0;
      if (r5.w != 0) {
        r6.xyz = t1.SampleLevel(s0_s, r6.xy, 0).xyz;
        r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
      }
      r6.xyz = r5.www ? r6.xyz : r4.xyw;
      r5.w = dot(r4.xyw, r6.xyz);
      r5.w = 1 + r5.w;
      r5.w = 0.5 * r5.w;
      r5.xy = v1.xy * cb1[132].zw + -r5.xy;
      r6.x = t4.SampleLevel(s0_s, r5.xy, 0).x;
      r6.x = cmp(0 < r6.x);
      if (cb0[0].x != 0) {
        r6.yz = cb1[132].xy * r5.xy;
        r7.xy = (uint2)r6.yz;
        r7.zw = float2(0,0);
        r6.y = t5.Load(r7.xyz).x;
      }
      if (1 == 0) r6.y = 0; else if (1+3 < 32) {       r6.y = (uint)r6.y << (32-(1 + 3)); r6.y = (uint)r6.y >> (32-1);      } else r6.y = (uint)r6.y >> 3;
      r6.y = cmp((int)r6.y != 0);
      r6.y = cb0[0].x ? r6.y : -1;
      r6.x = r6.x ? r6.y : 0;
      if (r6.x != 0) {
        r6.yzw = t1.SampleLevel(s0_s, r5.xy, 0).xyz;
        r6.yzw = r6.yzw * float3(2,2,2) + float3(-1,-1,-1);
      }
      r6.xyz = r6.xxx ? r6.yzw : r4.xyw;
      r4.x = dot(r4.xyw, r6.xyz);
      r4.x = 1 + r4.x;
      r4.x = r4.x * r5.w;
      r4.x = 0.5 * r4.x;
      r4.x = log2(r4.x);
      r4.x = cb0[3].x * r4.x;
      r4.x = exp2(r4.x);
      r4.x = min(1, r4.x);
      r5.z = r5.z * r4.x;
    }
    r4.x = r5.z * r1.z;
    r1.y = r4.z;
    r4.y = -1;
  } else {
    if (r2.y == 0) {
      r5.zw = v1.xy * cb1[132].zw + -r2.zw;
      r5.xy = v1.xy * cb1[132].zw + r2.zw;
      r4.z = t4.SampleLevel(s0_s, r5.zw, 0).x;
      r4.w = cmp(0 < r4.z);
      if (r4.w != 0) {
        r1.x = r4.z + r1.x;
        r1.y = t6.SampleLevel(s1_s, r5.zw, 0).w;
        r1.z = 1;
      } else {
        r1.yz = float2(0,0);
      }
      r4.z = t4.SampleLevel(s0_s, r5.xw, 0).x;
      r4.w = cmp(0 < r4.z);
      if (r4.w != 0) {
        r1.z = 1 + r1.z;
        r1.x = r4.z + r1.x;
        r4.z = t6.SampleLevel(s1_s, r5.xw, 0).w;
        r1.y = r4.z + r1.y;
      }
      r4.z = t4.SampleLevel(s0_s, r5.zy, 0).x;
      r4.w = cmp(0 < r4.z);
      if (r4.w != 0) {
        r1.z = 1 + r1.z;
        r1.x = r4.z + r1.x;
        r4.z = t6.SampleLevel(s1_s, r5.zy, 0).w;
        r1.y = r4.z + r1.y;
      }
      r4.z = t4.SampleLevel(s0_s, r5.xy, 0).x;
      r4.w = cmp(0 < r4.z);
      if (r4.w != 0) {
        r1.z = 1 + r1.z;
        r1.x = r4.z + r1.x;
        r4.z = t6.SampleLevel(s1_s, r5.xy, 0).w;
        r1.y = r4.z + r1.y;
      }
      r4.y = cmp(0 < r1.z);
      r4.zw = r1.xy / r1.zz;
      r1.xy = r4.yy ? r4.zw : r1.xy;
    } else {
      r1.y = 0;
      r4.y = 0;
    }
    r4.x = 1;
  }
  if (r4.y != 0) {
    r5.xy = r2.zw * r1.xx;
    r6.xy = -r5.xy;
    r6.z = 0;
    r7.xyzw = r5.xyxy * float4(-0.709999979,-0.709999979,0.709999979,-0.709999979) + r0.zwzw;
    r6.xyzw = v1.xyxy * cb1[132].zwzw + r6.zyxz;
    r5.z = 0;
    r8.xyzw = v1.xyxy * cb1[132].zwzw + r5.xzzy;
    r0.xyzw = r5.xyxy * float4(-0.709999979,0.709999979,0.709999979,0.709999979) + r0.xyzw;
    r1.z = r2.y ? r2.x : 0;
    r2.zw = t4.SampleLevel(s0_s, r7.xy, 0).xw;
    r4.y = t2.SampleLevel(s0_s, r7.xy, 0).w;
    r4.y = 255 * r4.y;
    r4.y = round(r4.y);
    r4.y = (uint)r4.y;
    r4.y = (int)r4.y & 15;
    r4.z = cmp(0 < r2.z);
    if (r4.z != 0) {
      r4.z = t0.SampleLevel(s0_s, r7.xy, 0).x;
      r5.xyz = t3.SampleLevel(s0_s, r7.xy, 0).xyz;
      r4.w = cmp(r1.z < r4.z);
      if (cb0[0].x != 0) {
        r7.xy = cb1[132].xy * r7.xy;
        r9.xy = (uint2)r7.xy;
        r9.zw = float2(0,0);
        r7.x = t5.Load(r9.xyz).x;
      }
      if (1 == 0) r7.x = 0; else if (1+4 < 32) {       r7.x = (uint)r7.x << (32-(1 + 4)); r7.x = (uint)r7.x >> (32-1);      } else r7.x = (uint)r7.x >> 4;
      r7.x = cb0[0].x ? r7.x : 1;
      r4.w = r4.w ? r7.x : 0;
      r5.w = (uint)r4.w;
      r2.z = r4.z;
      r4.w = 1;
    } else {
      r2.zw = float2(0,0);
      r4.w = 0;
      r5.xyzw = float4(0,0,0,0);
      r4.z = r1.z;
    }
    r4.y = cmp((int)r4.y == 14);
    r7.x = cmp(r4.z < r1.z);
    r4.y = (int)r4.y | (int)r7.x;
    r4.y = r4.y ? r1.z : r4.z;
    r7.xy = t4.SampleLevel(s0_s, r6.xy, 0).xw;
    r4.z = t2.SampleLevel(s0_s, r6.xy, 0).w;
    r4.z = 255 * r4.z;
    r4.z = round(r4.z);
    r4.z = (uint)r4.z;
    r4.z = (int)r4.z & 15;
    r7.x = cmp(0 < r7.x);
    if (r7.x != 0) {
      r7.x = t0.SampleLevel(s0_s, r6.xy, 0).x;
      r2.z = r7.x + r2.z;
      r2.w = r7.y + r2.w;
      r9.xyz = t3.SampleLevel(s0_s, r6.xy, 0).xyz;
      r5.xyz = r9.xyz + r5.xyz;
      r7.y = cmp(r1.z < r7.x);
      if (cb0[0].x != 0) {
        r6.xy = cb1[132].xy * r6.xy;
        r9.xy = (uint2)r6.xy;
        r9.zw = float2(0,0);
        r6.x = t5.Load(r9.xyz).x;
      }
      if (1 == 0) r6.x = 0; else if (1+4 < 32) {       r6.x = (uint)r6.x << (32-(1 + 4)); r6.x = (uint)r6.x >> (32-1);      } else r6.x = (uint)r6.x >> 4;
      r6.x = cb0[0].x ? r6.x : 1;
      r6.x = r7.y ? r6.x : 0;
      r6.x = (uint)r6.x;
      r5.w = r6.x + r5.w;
      r4.w = 1 + r4.w;
    } else {
      r7.x = r1.z;
    }
    r4.z = cmp((int)r4.z == 14);
    r6.x = cmp(r7.x < r1.z);
    r4.z = (int)r4.z | (int)r6.x;
    r4.z = r4.z ? r1.z : r7.x;
    r6.xy = t4.SampleLevel(s0_s, r7.zw, 0).xw;
    r7.x = t2.SampleLevel(s0_s, r7.zw, 0).w;
    r7.x = 255 * r7.x;
    r7.x = round(r7.x);
    r7.x = (uint)r7.x;
    r7.x = (int)r7.x & 15;
    r6.x = cmp(0 < r6.x);
    if (r6.x != 0) {
      r6.x = t0.SampleLevel(s0_s, r7.zw, 0).x;
      r2.z = r6.x + r2.z;
      r2.w = r6.y + r2.w;
      r9.xyz = t3.SampleLevel(s0_s, r7.zw, 0).xyz;
      r5.xyz = r9.xyz + r5.xyz;
      r6.y = cmp(r1.z < r6.x);
      if (cb0[0].x != 0) {
        r7.yz = cb1[132].xy * r7.zw;
        r9.xy = (uint2)r7.yz;
        r9.zw = float2(0,0);
        r7.y = t5.Load(r9.xyz).x;
      }
      if (1 == 0) r7.y = 0; else if (1+4 < 32) {       r7.y = (uint)r7.y << (32-(1 + 4)); r7.y = (uint)r7.y >> (32-1);      } else r7.y = (uint)r7.y >> 4;
      r7.y = cb0[0].x ? r7.y : 1;
      r6.y = r6.y ? r7.y : 0;
      r6.y = (uint)r6.y;
      r5.w = r6.y + r5.w;
      r4.w = 1 + r4.w;
    } else {
      r6.x = r1.z;
    }
    r6.y = cmp((int)r7.x == 14);
    r7.x = cmp(r6.x < r1.z);
    r6.y = (int)r6.y | (int)r7.x;
    r6.x = r6.y ? r1.z : r6.x;
    r7.xy = t4.SampleLevel(s0_s, r6.zw, 0).xw;
    r6.y = t2.SampleLevel(s0_s, r6.zw, 0).w;
    r6.y = 255 * r6.y;
    r6.y = round(r6.y);
    r6.y = (uint)r6.y;
    r6.y = (int)r6.y & 15;
    r7.x = cmp(0 < r7.x);
    if (r7.x != 0) {
      r7.x = t0.SampleLevel(s0_s, r6.zw, 0).x;
      r2.z = r7.x + r2.z;
      r2.w = r7.y + r2.w;
      r7.yzw = t3.SampleLevel(s0_s, r6.zw, 0).xyz;
      r5.xyz = r7.yzw + r5.xyz;
      r7.y = cmp(r1.z < r7.x);
      if (cb0[0].x != 0) {
        r6.zw = cb1[132].xy * r6.zw;
        r9.xy = (uint2)r6.zw;
        r9.zw = float2(0,0);
        r6.z = t5.Load(r9.xyz).x;
      }
      if (1 == 0) r6.z = 0; else if (1+4 < 32) {       r6.z = (uint)r6.z << (32-(1 + 4)); r6.z = (uint)r6.z >> (32-1);      } else r6.z = (uint)r6.z >> 4;
      r6.z = cb0[0].x ? r6.z : 1;
      r6.z = r7.y ? r6.z : 0;
      r6.z = (uint)r6.z;
      r5.w = r6.z + r5.w;
      r4.w = 1 + r4.w;
    } else {
      r7.x = r1.z;
    }
    r6.y = cmp((int)r6.y == 14);
    r6.z = cmp(r7.x < r1.z);
    r6.y = (int)r6.z | (int)r6.y;
    r6.y = r6.y ? r1.z : r7.x;
    r6.zw = t4.SampleLevel(s0_s, r8.xy, 0).xw;
    r7.x = t2.SampleLevel(s0_s, r8.xy, 0).w;
    r7.x = 255 * r7.x;
    r7.x = round(r7.x);
    r7.x = (uint)r7.x;
    r7.x = (int)r7.x & 15;
    r6.z = cmp(0 < r6.z);
    if (r6.z != 0) {
      r6.z = t0.SampleLevel(s0_s, r8.xy, 0).x;
      r2.z = r6.z + r2.z;
      r2.w = r6.w + r2.w;
      r7.yzw = t3.SampleLevel(s0_s, r8.xy, 0).xyz;
      r5.xyz = r7.yzw + r5.xyz;
      r6.w = cmp(r1.z < r6.z);
      if (cb0[0].x != 0) {
        r7.yz = cb1[132].xy * r8.xy;
        r9.xy = (uint2)r7.yz;
        r9.zw = float2(0,0);
        r7.y = t5.Load(r9.xyz).x;
      }
      if (1 == 0) r7.y = 0; else if (1+4 < 32) {       r7.y = (uint)r7.y << (32-(1 + 4)); r7.y = (uint)r7.y >> (32-1);      } else r7.y = (uint)r7.y >> 4;
      r7.y = cb0[0].x ? r7.y : 1;
      r6.w = r6.w ? r7.y : 0;
      r6.w = (uint)r6.w;
      r5.w = r6.w + r5.w;
      r4.w = 1 + r4.w;
    } else {
      r6.z = r1.z;
    }
    r6.w = cmp((int)r7.x == 14);
    r7.x = cmp(r6.z < r1.z);
    r6.w = (int)r6.w | (int)r7.x;
    r6.z = r6.w ? r1.z : r6.z;
    r7.xy = t4.SampleLevel(s0_s, r0.xy, 0).xw;
    r6.w = t2.SampleLevel(s0_s, r0.xy, 0).w;
    r6.w = 255 * r6.w;
    r6.w = round(r6.w);
    r6.w = (uint)r6.w;
    r6.w = (int)r6.w & 15;
    r7.x = cmp(0 < r7.x);
    if (r7.x != 0) {
      r7.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
      r2.z = r7.x + r2.z;
      r2.w = r7.y + r2.w;
      r7.yzw = t3.SampleLevel(s0_s, r0.xy, 0).xyz;
      r5.xyz = r7.yzw + r5.xyz;
      r7.y = cmp(r1.z < r7.x);
      if (cb0[0].x != 0) {
        r0.xy = cb1[132].xy * r0.xy;
        r9.xy = (uint2)r0.xy;
        r9.zw = float2(0,0);
        r0.x = t5.Load(r9.xyz).x;
      }
      if (1 == 0) r0.x = 0; else if (1+4 < 32) {       r0.x = (uint)r0.x << (32-(1 + 4)); r0.x = (uint)r0.x >> (32-1);      } else r0.x = (uint)r0.x >> 4;
      r0.x = cb0[0].x ? r0.x : 1;
      r0.x = r7.y ? r0.x : 0;
      r0.x = (uint)r0.x;
      r5.w = r5.w + r0.x;
      r4.w = 1 + r4.w;
    } else {
      r7.x = r1.z;
    }
    r0.x = cmp((int)r6.w == 14);
    r0.y = cmp(r7.x < r1.z);
    r0.x = (int)r0.y | (int)r0.x;
    r0.x = r0.x ? r1.z : r7.x;
    r7.xy = t4.SampleLevel(s0_s, r8.zw, 0).xw;
    r0.y = t2.SampleLevel(s0_s, r8.zw, 0).w;
    r0.y = 255 * r0.y;
    r0.y = round(r0.y);
    r0.y = (uint)r0.y;
    r0.y = (int)r0.y & 15;
    r6.w = cmp(0 < r7.x);
    if (r6.w != 0) {
      r6.w = t0.SampleLevel(s0_s, r8.zw, 0).x;
      r2.z = r6.w + r2.z;
      r2.w = r7.y + r2.w;
      r7.xyz = t3.SampleLevel(s0_s, r8.zw, 0).xyz;
      r5.xyz = r7.xyz + r5.xyz;
      r7.x = cmp(r1.z < r6.w);
      if (cb0[0].x != 0) {
        r7.yz = cb1[132].xy * r8.zw;
        r8.xy = (uint2)r7.yz;
        r8.zw = float2(0,0);
        r7.y = t5.Load(r8.xyz).x;
      }
      if (1 == 0) r7.y = 0; else if (1+4 < 32) {       r7.y = (uint)r7.y << (32-(1 + 4)); r7.y = (uint)r7.y >> (32-1);      } else r7.y = (uint)r7.y >> 4;
      r7.y = cb0[0].x ? r7.y : 1;
      r7.x = r7.x ? r7.y : 0;
      r7.x = (uint)r7.x;
      r5.w = r7.x + r5.w;
      r4.w = 1 + r4.w;
    } else {
      r6.w = r1.z;
    }
    r0.y = cmp((int)r0.y == 14);
    r7.x = cmp(r6.w < r1.z);
    r0.y = (int)r0.y | (int)r7.x;
    r0.y = r0.y ? r1.z : r6.w;
    r7.xy = t4.SampleLevel(s0_s, r0.zw, 0).xw;
    r6.w = t2.SampleLevel(s0_s, r0.zw, 0).w;
    r6.w = 255 * r6.w;
    r6.w = round(r6.w);
    r6.w = (uint)r6.w;
    r6.w = (int)r6.w & 15;
    r7.x = cmp(0 < r7.x);
    if (r7.x != 0) {
      r7.x = t0.SampleLevel(s0_s, r0.zw, 0).x;
      r2.z = r7.x + r2.z;
      r2.w = r7.y + r2.w;
      r7.yzw = t3.SampleLevel(s0_s, r0.zw, 0).xyz;
      r5.xyz = r7.yzw + r5.xyz;
      r7.y = cmp(r1.z < r7.x);
      if (cb0[0].x != 0) {
        r0.zw = cb1[132].xy * r0.zw;
        r8.xy = (uint2)r0.zw;
        r8.zw = float2(0,0);
        r0.z = t5.Load(r8.xyz).x;
      }
      if (1 == 0) r0.z = 0; else if (1+4 < 32) {       r0.z = (uint)r0.z << (32-(1 + 4)); r0.z = (uint)r0.z >> (32-1);      } else r0.z = (uint)r0.z >> 4;
      r0.z = cb0[0].x ? r0.z : 1;
      r0.z = r7.y ? r0.z : 0;
      r0.z = (uint)r0.z;
      r5.w = r5.w + r0.z;
      r4.w = 1 + r4.w;
    } else {
      r7.x = r1.z;
    }
    r0.z = cmp((int)r6.w == 14);
    r0.w = cmp(r7.x < r1.z);
    r0.z = (int)r0.w | (int)r0.z;
    r0.z = r0.z ? r1.z : r7.x;
    r0.w = ~(int)r2.y;
    r1.z = cmp(0 < r4.w);
    r0.w = r0.w ? r1.z : 0;
    r2.yz = r2.zw / r4.ww;
    r1.x = r2.x;
    r1.xz = r0.ww ? r2.yz : r1.xw;
    r0.w = max(9.99999997e-007, r1.x);
    r1.x = -r6.x + r4.y;
    r1.w = r6.y + -r6.z;
    r1.x = r1.w * 2 + r1.x;
    r1.x = r1.x + r0.x;
    r1.x = r1.x + -r0.z;
    r0.xy = r4.yz + -r0.xy;
    r0.x = r0.y * 2 + r0.x;
    r0.x = r0.x + r6.x;
    r0.x = r0.x + -r0.z;
    r0.x = r0.x * r0.x;
    r0.x = r1.x * r1.x + r0.x;
    r0.x = cb0[2].y * r0.x;
    r0.x = sqrt(r0.x);
    r0.y = cb0[2].z + r1.z;
    r0.y = r0.y * r0.w;
    r0.x = cmp(r0.x >= r0.y);
    r0.y = r0.x ? 1.000000 : 0;
    r0.x = r0.x ? 0 : 1;
    r4.x = r4.x * r0.x;
    r5.xyzw = r5.xyzw / r4.wwww;
    r5.xyzw = r5.xyzw + -r3.xyzw;
    r3.xyzw = r0.yyyy * r5.xyzw + r3.xyzw;
  } else {
    r0.w = r2.x;
  }
  r4.x = saturate(r4.x);
  r0.x = 1 + -r4.x;
  r0.y = cmp(0 < r0.x);
  r0.y = r0.y ? r0.w : r2.x;
  r0.z = r0.y * cb1[65].x + cb1[65].y;
  r0.w = r0.y * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.z = saturate(r0.z / cb0[1].w);
  r0.w = cmp(0.699999988 < r1.y);
  r1.x = cb0[1].z + -cb0[1].y;
  r1.x = r0.z * r1.x + cb0[1].y;
  r1.y = cb0[1].x + -cb0[0].w;
  r0.z = r0.z * r1.y + cb0[0].w;
  r0.z = r0.w ? r1.x : r0.z;
  r1.xyz = cb0[4].xyz * r0.zzz;
  r2.xyz = -cb0[0].yyy + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r0.z = 1 + -cb0[0].y;
  r2.xyz = r2.xyz / r0.zzz;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r0.z = 1 / cb0[0].w;
  r0.z = cb0[1].y * r0.z;
  r0.z = r0.w ? r0.z : 1;
  r0.w = cb0[0].z * r3.w;
  r2.xyz = r2.xyz * r0.zzz + -r1.xyz;
  o0.xyz = r0.www * r2.xyz + r1.xyz;
  o0.w = r0.x;
  oDepth = r0.y;
  return;
}