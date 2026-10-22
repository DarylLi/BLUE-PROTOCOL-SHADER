// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[141];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v3.yyyy;
  r0.xyzw = v3.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v3.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.xyz = -cb0[70].xyz + r0.xyz;
  r1.xyz = -cb0[67].xyz + r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz / r0.www;
  r2.y = dot(cb1[10].xyz, cb0[67].xyz);
  r2.z = dot(cb1[11].xyz, cb0[67].xyz);
  r2.w = dot(cb1[12].xyz, cb0[67].xyz);
  r2.xyz = cb1[9].xyz + r2.yzw;
  r3.y = dot(cb1[10].xyz, r1.xyz);
  r3.z = dot(cb1[11].xyz, r1.xyz);
  r3.w = dot(cb1[12].xyz, r1.xyz);
  r4.xyz = float3(1,1,1) / r3.yzw;
  r5.xyz = cb1[7].xyz + -r2.xyz;
  r6.xyz = cb1[8].xyz + -r2.xyz;
  r5.xyz = r5.xyz * r4.xyz;
  r4.xyz = r6.xyz * r4.xyz;
  r6.xyz = max(r5.xyz, r4.xyz);
  r0.w = min(r6.x, r6.y);
  r0.w = min(r0.w, r6.z);
  r1.w = cmp(r0.w >= 0);
  if (r1.w != 0) {
    r4.xyz = min(r5.xyz, r4.xyz);
    r1.w = max(r4.x, r4.y);
    r4.x = max(r1.w, r4.z);
    r0.w = cmp(r0.w >= r4.x);
    if (r0.w != 0) {
      r0.w = cmp(0.00100000005 >= cb1[15].x);
      if (r0.w != 0) {
        r0.w = dot(r1.xyz, cb0[18].xyz);
        r0.w = 1000000 / r0.w;
        r4.yzw = r3.yzw * r4.xxx + r2.xyz;
        r1.xyz = cb1[8].xyz + -cb1[7].xyz;
        r1.w = cb1[14].z * cb1[14].x;
        r5.xyz = -cb1[7].xyz + r4.yzw;
        r5.xyz = r5.xyz / r1.xyz;
        r6.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r5.xyz);
        r7.xyz = cmp(r5.xyz < float3(1,1,1));
        r2.w = r6.x ? r7.x : 0;
        r2.w = r6.y ? r2.w : 0;
        r2.w = r7.y ? r2.w : 0;
        r2.w = r6.z ? r2.w : 0;
        r2.w = r7.z ? r2.w : 0;
        if (r2.w != 0) {
          r5.xyzw = t1.Sample(s0_s, r5.xyz).xyzw;
          r2.w = -cb1[14].y + r5.w;
          r3.x = cmp(abs(r2.w) < r1.w);
          r5.w = cmp(r4.x < r0.w);
          r3.x = r3.x ? r5.w : 0;
          r5.xyz = r3.xxx ? r5.xyz : 0;
          r2.w = r3.x ? cb1[14].z : r2.w;
        } else {
          r5.xyz = float3(0,0,0);
          r2.w = cb1[14].z;
          r3.x = 0;
        }
        r6.x = r2.w * cb1[14].w + r4.x;
        r6.yzw = r3.yzw * r6.xxx + r2.xyz;
        r4.xyzw = r3.xxxx ? r4.yzwx : r6.yzwx;
        if (r3.x == 0) {
          if (r3.x == 0) {
            r6.xyz = -cb1[7].xyz + r4.xyz;
            r6.xyz = r6.xyz / r1.xyz;
            r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
            r8.xyz = cmp(r6.xyz < float3(1,1,1));
            r2.w = r7.x ? r8.x : 0;
            r2.w = r7.y ? r2.w : 0;
            r2.w = r8.y ? r2.w : 0;
            r2.w = r7.z ? r2.w : 0;
            r2.w = r8.z ? r2.w : 0;
            if (r2.w != 0) {
              r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
              r2.w = -cb1[14].y + r6.w;
              r3.x = cmp(abs(r2.w) < r1.w);
              r5.w = cmp(r4.w < r0.w);
              r3.x = r3.x ? r5.w : 0;
              r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
              r2.w = r3.x ? cb1[14].z : r2.w;
            } else {
              r2.w = cb1[14].z;
              r3.x = 0;
            }
            r6.x = r2.w * cb1[14].w + r4.w;
            r6.yzw = r3.yzw * r6.xxx + r2.xyz;
            r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
          } else {
            r3.x = -1;
          }
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r6.xyz = -cb1[7].xyz + r4.xyz;
          r6.xyz = r6.xyz / r1.xyz;
          r7.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r6.xyz);
          r8.xyz = cmp(r6.xyz < float3(1,1,1));
          r2.w = r7.x ? r8.x : 0;
          r2.w = r7.y ? r2.w : 0;
          r2.w = r8.y ? r2.w : 0;
          r2.w = r7.z ? r2.w : 0;
          r2.w = r8.z ? r2.w : 0;
          if (r2.w != 0) {
            r6.xyzw = t1.Sample(s0_s, r6.xyz).xyzw;
            r2.w = -cb1[14].y + r6.w;
            r3.x = cmp(abs(r2.w) < r1.w);
            r5.w = cmp(r4.w < r0.w);
            r3.x = r3.x ? r5.w : 0;
            r5.xyz = r3.xxx ? r6.xyz : r5.xyz;
            r2.w = r3.x ? cb1[14].z : r2.w;
          } else {
            r2.w = cb1[14].z;
            r3.x = 0;
          }
          r6.x = r2.w * cb1[14].w + r4.w;
          r6.yzw = r3.yzw * r6.xxx + r2.xyz;
          r4.xyzw = r3.xxxx ? r4.xyzw : r6.yzwx;
        } else {
          r3.x = -1;
        }
        if (r3.x == 0) {
          r2.xyz = -cb1[7].xyz + r4.xyz;
          r1.xyz = r2.xyz / r1.xyz;
          r2.xyz = cmp(float3(9.99999994e-009,9.99999994e-009,9.99999994e-009) < r1.xyz);
          r3.xyz = cmp(r1.xyz < float3(1,1,1));
          r2.x = r2.x ? r3.x : 0;
          r2.x = r2.y ? r2.x : 0;
          r2.x = r3.y ? r2.x : 0;
          r2.x = r2.z ? r2.x : 0;
          r2.x = r3.z ? r2.x : 0;
          if (r2.x != 0) {
            r2.xyzw = t1.Sample(s0_s, r1.xyz).xyzw;
            r1.x = -cb1[14].y + r2.w;
            r1.x = cmp(abs(r1.x) < r1.w);
            r0.w = cmp(r4.w < r0.w);
            r0.w = r0.w ? r1.x : 0;
            r5.xyz = r0.www ? r2.xyz : r5.xyz;
          }
        }
      } else {
        r5.xyz = float3(1,1,1);
      }
    } else {
      r5.xyz = float3(0,0,0);
    }
  } else {
    r5.xyz = float3(0,0,0);
  }
  r1.xyz = cb1[13].xyz + -r5.xyz;
  r1.xyz = cb1[15].yyy * r1.xyz + r5.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r2.x = t0[r2.x].val[0/4];
    r2.z = t0[r2.x].val[0/4+1];
    r2.w = t0[r2.x].val[0/4+2];
    r2.xzw = -r2.xzw + r0.xyz;
    r3.x = t0[r2.y].val[0/4];
    r3.y = t0[r2.y].val[0/4+1];
    r3.z = t0[r2.y].val[0/4+2];
    r3.xyz = float3(1,1,1) + r3.xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xzw));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r0.x = dot(r0.xyz, float3(0.577000022,0.577000022,0.577000022));
    r0.x = 0.00200000009 * r0.x;
    r0.x = frac(r0.x);
    r0.x = cmp(0.5 < r0.x);
    r0.xyz = r0.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r0.www ? r0.xyz : r1.xyz;
  }
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}