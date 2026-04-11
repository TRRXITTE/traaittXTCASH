// Copyright (c) 2012-2017, The CryptoNote developers, The Bytecoin developers
// Copyright (c) 2018-2019, The TurtleCoin Developers
//
// Please see the included LICENSE file for more information.

#pragma once

#define setcontext(u) setmcontext(&(u)->uc_mcontext)
#define getcontext(u) getmcontext(&(u)->uc_mcontext)

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdlib.h>

    typedef struct mcontext mctx;

    typedef struct ucontext uctx;

    extern int swapcontext(uctx *, const uctx *);

    extern void makecontext(uctx *, void (*)(void), intptr_t);

    extern int getmcontext(mctx *);

    extern void setmcontext(const mctx *);

#ifdef __aarch64__

    /* arm64 mcontext layout.
     * Offsets must exactly match the constants used in asm.s.
     */
    struct mcontext
    {
        long mc_onstack; /* offset   0 */
        long mc_x0;      /* offset   8 */
        long mc_x1;      /* offset  16 */
        long mc_x2;      /* offset  24 */
        long mc_x3;      /* offset  32 */
        long mc_x4;      /* offset  40 */
        long mc_x5;      /* offset  48 */
        long mc_x6;      /* offset  56 — holds first arg / return trick */
        long mc_x7;      /* offset  64 */
        long mc_x8;      /* offset  72 */
        long mc_x9;      /* offset  80 */
        long mc_x10;     /* offset  88 */
        long mc_x11;     /* offset  96 */
        long mc_x12;     /* offset 104 */
        long mc_x13;     /* offset 112 */
        long mc_x14;     /* offset 120 */
        long mc_spare0;  /* offset 128 */
        long mc_spare1;  /* offset 136 */
        long mc_spare2;  /* offset 144 */
        long mc_spare3;  /* offset 152 */
        long mc_pc;      /* offset 160 — program counter */
        long mc_spare4;  /* offset 168 */
        long mc_spare5;  /* offset 176 */
        long mc_sp;      /* offset 184 — stack pointer */
        long mc_x19;     /* offset 192 */
        long mc_x20;     /* offset 200 */
        long mc_x21;     /* offset 208 */
        long mc_x22;     /* offset 216 */
        long mc_x23;     /* offset 224 */
        long mc_x24;     /* offset 232 */
        long mc_x25;     /* offset 240 */
        long mc_x26;     /* offset 248 */
        long mc_x27;     /* offset 256 */
        long mc_x28;     /* offset 264 */
        long mc_x29;     /* offset 272 — frame pointer */
        long mc_x30;     /* offset 280 — link register */
    };

    /* Aliases so the C code (makecontext, swapcontext) can use the same names */
    #define mc_rdi mc_x6   /* first integer argument */
    #define mc_rip mc_pc
    #define mc_rsp mc_sp

#else  /* x86_64 */

    struct mcontext
    {
        /*
         * The first 20 fields must match the definition of
         * sigcontext. So that we can support sigcontext
         * and ucontext_t at the same time.
         */
        long mc_onstack; /* XXX - sigcontext compat. */
        long mc_rdi; /* machine state (struct trapframe) */
        long mc_rsi;
        long mc_rdx;
        long mc_rcx;
        long mc_r8;
        long mc_r9;
        long mc_rax;
        long mc_rbx;
        long mc_rbp;
        long mc_r10;
        long mc_r11;
        long mc_r12;
        long mc_r13;
        long mc_r14;
        long mc_r15;
        long mc_trapno;
        long mc_addr;
        long mc_flags;
        long mc_err;
        long mc_rip;
        long mc_cs;
        long mc_rflags;
        long mc_rsp;
        long mc_ss;

        long mc_len; /* sizeof(mcontext_t) */
#define _MC_FPFMT_NODEV 0x10000 /* device not present or configured */
#define _MC_FPFMT_XMM 0x10002
        long mc_fpformat;
#define _MC_FPOWNED_NONE 0x20000 /* FP state not used */
#define _MC_FPOWNED_FPU 0x20001 /* FP state came from FPU */
#define _MC_FPOWNED_PCB 0x20002 /* FP state came from PCB */
        long mc_ownedfp;
        /*
         * See <machine/fpu.h> for the internals of mc_fpstate[].
         */
        long mc_fpstate[64];
        long mc_spare[8];
    };

#endif  /* __aarch64__ / x86_64 */

    struct ucontext
    {
        /*
         * Keep the order of the first two fields. Also,
         * keep them the first two fields in the structure.
         * This way we can have a union with struct
         * sigcontext and ucontext_t. This allows us to
         * support them both at the same time.
         * note: the union is not defined, though.
         */
        sigset_t uc_sigmask;
        mctx uc_mcontext;

        struct __ucontext *uc_link;
        stack_t uc_stack;
        int __spare__[8];
    };

#ifdef __cplusplus
}
#endif
