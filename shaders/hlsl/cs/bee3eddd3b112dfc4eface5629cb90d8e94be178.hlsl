// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct u0_t {
  float val[4];
};
RWStructuredBuffer<u0_t> u0 : register(u0);




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 1, 1, 1
  u0[0].val[8/4] = 0;
  u0[0].val[8/4+1] = 0;
  return;
}