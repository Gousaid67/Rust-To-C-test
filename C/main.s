	.file	"main.c"
	.text
.Ltext0:
	.globl	getargvinput
	.def	getargvinput;	.scl	2;	.type	32;	.endef
	.seh_proc	getargvinput
getargvinput:
.LFB10:
	.file 1 "main.c"
	.loc 1 4 1
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI0:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI1:
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 5 11
	cmpl	$0, 16(%rbp)
	jle	.L2
	.loc 1 7 20
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L1
.L2:
.L1:
	.loc 1 10 1
	popq	%rbp
.LCFI2:
	ret
.LFE10:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "C:\\Users\\19erlind\\Desktop\\Rust Code\\physicssim_rust\\Sol.json\0\0"
.LC1:
	.ascii "%s\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB11:
	.loc 1 12 34
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI3:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI4:
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 12 34
	call	__main
	.loc 1 14 17
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 15 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	printf
	.loc 1 16 17
	leaq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	get_body_from_json
	movl	$0, %eax
	.loc 1 21 1
	addq	$96, %rsp
	popq	%rbp
.LCFI5:
	ret
.LFE11:
	.seh_endproc
	.section	.debug_frame,"dr"
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x3
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.secrel32	.Lframe0
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.secrel32	.Lframe0
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI3-.LFB11
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE2:
	.text
.Letext0:
	.file 2 "C:/msys64/mingw64/x86_64-w64-mingw32/include/corecrt.h"
	.file 3 "C:/msys64/mingw64/x86_64-w64-mingw32/include/stdint.h"
	.file 4 "lib/parse_json.h"
	.file 5 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x32e
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C17 10.3.0 -mtune=generic -march=x86-64 -g\0"
	.byte	0xc
	.ascii "main.c\0"
	.ascii "C:\\Users\\19erlind\\Desktop\\Rust Code\\Rust_to_C\\C\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0x87
	.uleb128 0x4
	.ascii "size_t\0"
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.long	0xa3
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x5
	.byte	0x8
	.long	0x87
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x4
	.ascii "uint8_t\0"
	.byte	0x3
	.byte	0x24
	.byte	0x19
	.long	0x122
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x5
	.byte	0x8
	.long	0xf7
	.uleb128 0x6
	.ascii "body\0"
	.byte	0x68
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.long	0x1f3
	.uleb128 0x7
	.ascii "name\0"
	.byte	0x4
	.byte	0x9
	.byte	0xb
	.long	0x1f8
	.byte	0
	.uleb128 0x7
	.ascii "bid\0"
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.long	0xfd
	.byte	0x20
	.uleb128 0x7
	.ascii "mass\0"
	.byte	0x4
	.byte	0xb
	.byte	0xa
	.long	0x16e
	.byte	0x28
	.uleb128 0x7
	.ascii "radius\0"
	.byte	0x4
	.byte	0xc
	.byte	0xa
	.long	0x16e
	.byte	0x30
	.uleb128 0x7
	.ascii "position\0"
	.byte	0x4
	.byte	0xd
	.byte	0xa
	.long	0x208
	.byte	0x38
	.uleb128 0x7
	.ascii "velocity\0"
	.byte	0x4
	.byte	0xe
	.byte	0xa
	.long	0x208
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.long	0x187
	.uleb128 0x8
	.long	0x151
	.long	0x208
	.uleb128 0x9
	.long	0xa3
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.long	0x16e
	.long	0x218
	.uleb128 0x9
	.long	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.ascii "blist\0"
	.byte	0x30
	.byte	0x4
	.byte	0x11
	.byte	0x10
	.long	0x252
	.uleb128 0x7
	.ascii "name\0"
	.byte	0x4
	.byte	0x12
	.byte	0xb
	.long	0x1f8
	.byte	0
	.uleb128 0x7
	.ascii "size\0"
	.byte	0x4
	.byte	0x13
	.byte	0xa
	.long	0x94
	.byte	0x20
	.uleb128 0x7
	.ascii "list\0"
	.byte	0x4
	.byte	0x14
	.byte	0x16
	.long	0x252
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1f3
	.uleb128 0x4
	.ascii "blist\0"
	.byte	0x4
	.byte	0x15
	.byte	0x3
	.long	0x218
	.uleb128 0xa
	.ascii "main\0"
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.long	0xe4
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e3
	.uleb128 0xb
	.ascii "argc\0"
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "argv\0"
	.byte	0x1
	.byte	0xc
	.byte	0x1a
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.ascii "path\0"
	.byte	0x1
	.byte	0xe
	.byte	0x11
	.long	0x2e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.ascii "printf\0"
	.byte	0x5
	.byte	0
	.long	0xe4
	.long	0x2d2
	.uleb128 0xe
	.long	0x2e3
	.uleb128 0xf
	.byte	0
	.uleb128 0xc
	.ascii "res\0"
	.byte	0x1
	.byte	0x10
	.byte	0xb
	.long	0x258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x8f
	.uleb128 0x10
	.ascii "getargvinput\0"
	.byte	0x1
	.byte	0x3
	.byte	0xd
	.long	0x2e3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.ascii "argc\0"
	.byte	0x1
	.byte	0x3
	.byte	0x1e
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "argv\0"
	.byte	0x1
	.byte	0x3
	.byte	0x2a
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (Rev7, Built by MSYS2 project) 10.3.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	get_body_from_json;	.scl	2;	.type	32;	.endef
