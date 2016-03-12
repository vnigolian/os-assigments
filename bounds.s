	.file	"bounds.c"
# GNU C (Debian 4.7.2-5) version 4.7.2 (i486-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.5, MPFR version 3.1.0-p10, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=63 --param ggc-min-heapsize=63608
# options passed:  -nostdinc -I ./arch/x86/include
# -I arch/x86/include/generated -I include -I ./arch/x86/include/uapi
# -I arch/x86/include/generated/uapi -I ./include/uapi
# -I include/generated/uapi -imultiarch i386-linux-gnu -D __KERNEL__
# -D CONFIG_AS_CFI=1 -D CONFIG_AS_CFI_SIGNAL_FRAME=1
# -D CONFIG_AS_CFI_SECTIONS=1 -D CONFIG_AS_CRC32=1 -D CONFIG_AS_AVX=1
# -D CONFIG_AS_AVX2=1 -D CC_HAVE_ASM_GOTO -D KBUILD_STR(s)=#s
# -D KBUILD_BASENAME=KBUILD_STR(bounds)
# -D KBUILD_MODNAME=KBUILD_STR(bounds)
# -isystem /usr/lib/gcc/i486-linux-gnu/4.7/include
# -include ./include/linux/kconfig.h -MD kernel/.bounds.s.d kernel/bounds.c
# -m32 -msoft-float -mregparm=3 -mpreferred-stack-boundary=2 -march=i686
# -mtune=generic -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx
# -auxbase-strip kernel/bounds.s -g -O2 -Wall -Wundef -Wstrict-prototypes
# -Wno-trigraphs -Werror=implicit-function-declaration -Wno-format-security
# -Wno-sign-compare -Wframe-larger-than=2048 -Wno-unused-but-set-variable
# -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
# -Werror=strict-prototypes -std=gnu90 -fno-strict-aliasing -fno-common
# -freg-struct-return -fno-pic -ffreestanding
# -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks
# -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls
# -fno-var-tracking-assignments -femit-struct-debug-baseonly
# -fno-var-tracking -fno-strict-overflow -fconserve-stack -fverbose-asm
# --param allow-store-data-races=0
# options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdebug-types-section -fdefer-pop
# -fdevirtualize -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -foptimize-register-move
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fprefetch-loop-arrays -free -freg-struct-return -fregmove
# -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstrict-volatile-bitfields -fthread-jumps -ftoplevel-reorder
# -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
# -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vrp
# -funit-at-a-time -fvect-cost-model -fverbose-asm
# -fzero-initialized-in-bss -m32 -m96bit-long-double
# -maccumulate-outgoing-args -malign-stringops -mglibc -mieee-fp
# -mno-fancy-math-387 -mno-red-zone -mno-sse4 -mpush-args -msahf
# -mtls-direct-seg-refs

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.p2align 4,,15
	.globl	foo
	.type	foo, @function
foo:
.LFB443:
	.file 1 "kernel/bounds.c"
	.loc 1 16 0
	.cfi_startproc
	pushl	%ebp	#
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
.LCFI1:
	.cfi_def_cfa_register 5
	.loc 1 18 0
#APP
# 18 "kernel/bounds.c" 1
	
->NR_PAGEFLAGS $22 __NR_PAGEFLAGS	#
# 0 "" 2
	.loc 1 19 0
# 19 "kernel/bounds.c" 1
	
->MAX_NR_ZONES $4 __MAX_NR_ZONES	#
# 0 "" 2
	.loc 1 21 0
# 21 "kernel/bounds.c" 1
	
->NR_CPUS_BITS $3 ilog2(CONFIG_NR_CPUS)	#
# 0 "" 2
	.loc 1 23 0
# 23 "kernel/bounds.c" 1
	
->SPINLOCK_SIZE $32 sizeof(spinlock_t)	#
# 0 "" 2
	.loc 1 25 0
#NO_APP
	popl	%ebp	#
.LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE443:
	.size	foo, .-foo
.Letext0:
	.file 2 "include/linux/page-flags.h"
	.file 3 "include/linux/mmzone.h"
	.file 4 "./arch/x86/include/asm/page_types.h"
	.file 5 "include/linux/printk.h"
	.file 6 "include/linux/kernel.h"
	.file 7 "./arch/x86/include/asm/current.h"
	.file 8 "include/linux/cpumask.h"
	.file 9 "./arch/x86/include/asm/special_insns.h"
	.file 10 "./arch/x86/include/asm/processor.h"
	.file 11 "include/linux/debug_locks.h"
	.file 12 "include/asm-generic/int-ll64.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x261
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF58
	.byte	0x1
	.long	.LASF59
	.long	.LASF60
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.string	"u32"
	.byte	0xc
	.byte	0x16
	.long	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF39
	.byte	0x4
	.byte	0x2
	.byte	0x4a
	.long	0x139
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.uleb128 0x6
	.long	.LASF13
	.sleb128 2
	.uleb128 0x6
	.long	.LASF14
	.sleb128 3
	.uleb128 0x6
	.long	.LASF15
	.sleb128 4
	.uleb128 0x6
	.long	.LASF16
	.sleb128 5
	.uleb128 0x6
	.long	.LASF17
	.sleb128 6
	.uleb128 0x6
	.long	.LASF18
	.sleb128 7
	.uleb128 0x6
	.long	.LASF19
	.sleb128 8
	.uleb128 0x6
	.long	.LASF20
	.sleb128 9
	.uleb128 0x6
	.long	.LASF21
	.sleb128 10
	.uleb128 0x6
	.long	.LASF22
	.sleb128 11
	.uleb128 0x6
	.long	.LASF23
	.sleb128 12
	.uleb128 0x6
	.long	.LASF24
	.sleb128 13
	.uleb128 0x6
	.long	.LASF25
	.sleb128 14
	.uleb128 0x6
	.long	.LASF26
	.sleb128 15
	.uleb128 0x6
	.long	.LASF27
	.sleb128 16
	.uleb128 0x6
	.long	.LASF28
	.sleb128 17
	.uleb128 0x6
	.long	.LASF29
	.sleb128 18
	.uleb128 0x6
	.long	.LASF30
	.sleb128 19
	.uleb128 0x6
	.long	.LASF31
	.sleb128 20
	.uleb128 0x6
	.long	.LASF32
	.sleb128 21
	.uleb128 0x6
	.long	.LASF33
	.sleb128 22
	.uleb128 0x6
	.long	.LASF34
	.sleb128 8
	.uleb128 0x6
	.long	.LASF35
	.sleb128 12
	.uleb128 0x6
	.long	.LASF36
	.sleb128 8
	.uleb128 0x6
	.long	.LASF37
	.sleb128 4
	.uleb128 0x6
	.long	.LASF38
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF40
	.byte	0x4
	.byte	0x3
	.value	0x112
	.long	0x165
	.uleb128 0x6
	.long	.LASF41
	.sleb128 0
	.uleb128 0x6
	.long	.LASF42
	.sleb128 1
	.uleb128 0x6
	.long	.LASF43
	.sleb128 2
	.uleb128 0x6
	.long	.LASF44
	.sleb128 3
	.uleb128 0x6
	.long	.LASF45
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF46
	.uleb128 0x8
	.byte	0x1
	.string	"foo"
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.long	.LFB443
	.long	.LFE443
	.long	.LLST0
	.byte	0x1
	.uleb128 0x9
	.long	.LASF61
	.byte	0x1
	.uleb128 0xa
	.long	.LASF47
	.byte	0x4
	.byte	0x34
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x41
	.long	0x1a0
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x2f
	.long	0x195
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	.LASF49
	.byte	0x6
	.value	0x1a5
	.long	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x76
	.long	0x1c6
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x6
	.value	0x1d8
	.long	0x1d4
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x1bb
	.uleb128 0xd
	.long	.LASF51
	.byte	0x6
	.value	0x1e3
	.long	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x1bb
	.uleb128 0xa
	.long	.LASF52
	.byte	0x7
	.byte	0xa
	.long	0x1f9
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x4
	.long	0x182
	.uleb128 0xb
	.long	0x6f
	.long	0x215
	.uleb128 0x10
	.long	0x165
	.byte	0x20
	.uleb128 0x10
	.long	0x165
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0x8
	.value	0x30c
	.long	0x223
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x1ff
	.uleb128 0xa
	.long	.LASF54
	.byte	0x9
	.byte	0x13
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.value	0x24b
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	.LASF56
	.byte	0xa
	.value	0x24c
	.long	0x251
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x4
	.long	0x5d
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0xa
	.long	0x41
	.byte	0x1
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB443-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LCFI2-.Ltext0
	.long	.LFE443-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"PG_checked"
.LASF44:
	.string	"ZONE_MOVABLE"
.LASF51:
	.string	"hex_asc_upper"
.LASF32:
	.string	"PG_uncached"
.LASF6:
	.string	"long long unsigned int"
.LASF40:
	.string	"zone_type"
.LASF33:
	.string	"__NR_PAGEFLAGS"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"PG_private_2"
.LASF15:
	.string	"PG_dirty"
.LASF39:
	.string	"pageflags"
.LASF59:
	.string	"kernel/bounds.c"
.LASF7:
	.string	"long int"
.LASF20:
	.string	"PG_arch_1"
.LASF11:
	.string	"PG_locked"
.LASF16:
	.string	"PG_lru"
.LASF13:
	.string	"PG_referenced"
.LASF56:
	.string	"trampoline_cr4_features"
.LASF4:
	.string	"unsigned int"
.LASF55:
	.string	"mmu_cr4_features"
.LASF22:
	.string	"PG_private"
.LASF8:
	.string	"long unsigned int"
.LASF48:
	.string	"console_printk"
.LASF3:
	.string	"short unsigned int"
.LASF57:
	.string	"debug_locks"
.LASF37:
	.string	"PG_savepinned"
.LASF28:
	.string	"PG_reclaim"
.LASF46:
	.string	"sizetype"
.LASF25:
	.string	"PG_compound"
.LASF36:
	.string	"PG_pinned"
.LASF43:
	.string	"ZONE_HIGHMEM"
.LASF24:
	.string	"PG_writeback"
.LASF31:
	.string	"PG_mlocked"
.LASF49:
	.string	"panic_timeout"
.LASF58:
	.string	"GNU C 4.7.2"
.LASF53:
	.string	"cpu_bit_bitmap"
.LASF42:
	.string	"ZONE_NORMAL"
.LASF14:
	.string	"PG_uptodate"
.LASF10:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"PG_swapcache"
.LASF2:
	.string	"short int"
.LASF41:
	.string	"ZONE_DMA"
.LASF52:
	.string	"current_task"
.LASF18:
	.string	"PG_slab"
.LASF45:
	.string	"__MAX_NR_ZONES"
.LASF47:
	.string	"max_pfn_mapped"
.LASF9:
	.string	"char"
.LASF38:
	.string	"PG_slob_free"
.LASF12:
	.string	"PG_error"
.LASF19:
	.string	"PG_owner_priv_1"
.LASF27:
	.string	"PG_mappedtodisk"
.LASF21:
	.string	"PG_reserved"
.LASF17:
	.string	"PG_active"
.LASF61:
	.string	"task_struct"
.LASF50:
	.string	"hex_asc"
.LASF35:
	.string	"PG_fscache"
.LASF54:
	.string	"__force_order"
.LASF29:
	.string	"PG_swapbacked"
.LASF60:
	.string	"/usr/src/linux"
.LASF30:
	.string	"PG_unevictable"
	.ident	"GCC: (Debian 4.7.2-5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
