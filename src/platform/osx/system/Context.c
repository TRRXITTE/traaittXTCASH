// Copyright (c) 2012-2017, The CryptoNote developers, The Bytecoin developers
// Copyright (c) 2018-2019, The TurtleCoin Developers
//
// Please see the included LICENSE file for more information.

#include "Context.h"

#include <string.h>

void makecontext(uctx *ucp, void (*func)(void), intptr_t arg)
{
    memset(&ucp->uc_mcontext, 0, sizeof ucp->uc_mcontext);

#ifdef __aarch64__
    /* Store arg in mc_x6 (offset 56). setmcontext loads it into x0 before
     * branching, so it becomes the first argument register. */
    ucp->uc_mcontext.mc_x6 = (long)arg;

    /* Align stack to 16 bytes. No return-address slot needed on arm64 because
     * setmcontext uses 'br' (not 'blr'), so lr is not touched on entry. */
    long *sp = (long *)ucp->uc_stack.ss_sp + ucp->uc_stack.ss_size / sizeof(long);
    sp = (long *)((uintptr_t)sp & ~(uintptr_t)15);

    ucp->uc_mcontext.mc_pc  = (long)func;
    ucp->uc_mcontext.mc_sp  = (long)sp;
#else
    /* x86_64 */
    long *sp;

    ucp->uc_mcontext.mc_rdi = (long)arg;
    sp = (long *)ucp->uc_stack.ss_sp + ucp->uc_stack.ss_size / sizeof(long);
    sp -= 1;
    sp = (void *)((uintptr_t)sp - (uintptr_t)sp % 16); /* 16-align for OS X */
    *--sp = 0; /* return address */
    ucp->uc_mcontext.mc_rip = (long)func;
    ucp->uc_mcontext.mc_rsp = (long)sp;
#endif
}

int swapcontext(uctx *oucp, const uctx *ucp)
{
    if (getcontext(oucp) == 0)
        setcontext(ucp);
    return 0;
}
