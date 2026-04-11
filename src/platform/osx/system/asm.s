#ifdef __aarch64__

/* arm64 getmcontext / setmcontext
 *
 * struct mcontext layout (see Context.h arm64 section):
 *   offset  0: mc_onstack (unused)
 *   offset  8: mc_x0
 *   offset 16: mc_x1
 *   offset 24: mc_x2
 *   offset 32: mc_x3
 *   offset 40: mc_x4
 *   offset 48: mc_x5
 *   offset 56: mc_x6   <- used as arg / return trick (maps to mc_rdi/mc_rax)
 *   offset 64: mc_x7
 *   offset 72: mc_x8
 *   offset 80: mc_x9
 *   offset 88: mc_x10
 *   offset 96: mc_x11
 *   offset 104: mc_x12
 *   offset 112: mc_x13
 *   offset 120: mc_x14
 *   offset 128: (padding/spare)
 *   offset 136: (padding/spare)
 *   offset 144: (padding/spare)
 *   offset 152: (padding/spare)
 *   offset 160: mc_pc   (program counter)
 *   offset 168: (padding)
 *   offset 176: (padding)
 *   offset 184: mc_sp   (stack pointer)
 *   offset 192: mc_x19
 *   offset 200: mc_x20
 *   offset 208: mc_x21
 *   offset 216: mc_x22
 *   offset 224: mc_x23
 *   offset 232: mc_x24
 *   offset 240: mc_x25
 *   offset 248: mc_x26
 *   offset 256: mc_x27
 *   offset 264: mc_x28
 *   offset 272: mc_x29 (frame pointer)
 *   offset 280: mc_x30 (link register)
 */

.globl _getmcontext
_getmcontext:
    /* x0 = pointer to mctx */
    str  x0,  [x0, #8]       /* mc_x0 = x0 (save arg for completeness) */
    str  x1,  [x0, #16]
    str  x2,  [x0, #24]
    str  x3,  [x0, #32]
    str  x4,  [x0, #40]
    str  x5,  [x0, #48]
    mov  x1,  #1
    str  x1,  [x0, #56]      /* mc_x6 = 1 (return value trick, like rax=1 on x86) */
    str  x7,  [x0, #64]
    str  x8,  [x0, #72]
    str  x9,  [x0, #80]
    str  x10, [x0, #88]
    str  x11, [x0, #96]
    str  x12, [x0, #104]
    str  x13, [x0, #112]
    str  x14, [x0, #120]
    /* save callee-saved registers */
    str  x19, [x0, #192]
    str  x20, [x0, #200]
    str  x21, [x0, #208]
    str  x22, [x0, #216]
    str  x23, [x0, #224]
    str  x24, [x0, #232]
    str  x25, [x0, #240]
    str  x26, [x0, #248]
    str  x27, [x0, #256]
    str  x28, [x0, #264]
    str  x29, [x0, #272]     /* frame pointer */
    str  x30, [x0, #280]     /* link register = return address */
    /* save pc = return address (lr) */
    str  x30, [x0, #160]     /* mc_pc = lr */
    /* save sp */
    mov  x1,  sp
    str  x1,  [x0, #184]     /* mc_sp = sp */
    /* return 0 */
    mov  x0,  #0
    ret

.globl _setmcontext
_setmcontext:
    /* x0 = pointer to mctx */
    /* restore callee-saved registers first */
    ldr  x19, [x0, #192]
    ldr  x20, [x0, #200]
    ldr  x21, [x0, #208]
    ldr  x22, [x0, #216]
    ldr  x23, [x0, #224]
    ldr  x24, [x0, #232]
    ldr  x25, [x0, #240]
    ldr  x26, [x0, #248]
    ldr  x27, [x0, #256]
    ldr  x28, [x0, #264]
    ldr  x29, [x0, #272]     /* frame pointer */
    ldr  x30, [x0, #280]     /* link register */
    /* restore sp */
    ldr  x1,  [x0, #184]
    mov  sp,  x1
    /* load pc into x1, then jump */
    ldr  x1,  [x0, #160]
    /* load first argument from mc_x6 (makecontext stores arg there) */
    ldr  x0,  [x0, #56]
    br   x1

#else  /* x86_64 */

.globl _setmcontext
_setmcontext:
	movq	16(%rdi), %rsi
	movq	24(%rdi), %rdx
	movq	32(%rdi), %rcx
	movq	40(%rdi), %r8
	movq	48(%rdi), %r9
	movq	56(%rdi), %rax
	movq	64(%rdi), %rbx
	movq	72(%rdi), %rbp
	movq	80(%rdi), %r10
	movq	88(%rdi), %r11
	movq	96(%rdi), %r12
	movq	104(%rdi), %r13
	movq	112(%rdi), %r14
	movq	120(%rdi), %r15
	movq	184(%rdi), %rsp
	pushq	160(%rdi)	/* new %eip */
	movq	8(%rdi), %rdi
	ret

.globl _getmcontext
_getmcontext:
	movq	%rdi, 8(%rdi)
	movq	%rsi, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%r8, 40(%rdi)
	movq	%r9, 48(%rdi)
	movq	$1, 56(%rdi)	/* %rax */
	movq	%rbx, 64(%rdi)
	movq	%rbp, 72(%rdi)
	movq	%r10, 80(%rdi)
	movq	%r11, 88(%rdi)
	movq	%r12, 96(%rdi)
	movq	%r13, 104(%rdi)
	movq	%r14, 112(%rdi)
	movq	%r15, 120(%rdi)

	movq	(%rsp), %rcx	/* %rip */
	movq	%rcx, 160(%rdi)
	leaq	8(%rsp), %rcx	/* %rsp */
	movq	%rcx, 184(%rdi)

	movq	32(%rdi), %rcx	/* restore %rcx */
	movq	$0, %rax
	ret

#endif  /* __aarch64__ / x86_64 */
