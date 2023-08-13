
./hello_world.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <_start>:
   0:	50                   	push   %rax
   1:	53                   	push   %rbx
   2:	51                   	push   %rcx
   3:	52                   	push   %rdx
   4:	48 c7 c0 01 00 00 00 	mov    $0x1,%rax
   b:	48 c7 c7 01 00 00 00 	mov    $0x1,%rdi
  12:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 19 <len+0xf>
  19:	48 c7 c2 0a 00 00 00 	mov    $0xa,%rdx
  20:	0f 05                	syscall 
  22:	5a                   	pop    %rdx
  23:	59                   	pop    %rcx
  24:	5b                   	pop    %rbx
  25:	58                   	pop    %rax
  26:	48 8d 3d 23 fc ff ff 	lea    -0x3dd(%rip),%rdi        # fffffffffffffc50 <len+0xfffffffffffffc46>
  2d:	ff e7                	jmpq   *%rdi
  2f:	b8 3c 00 00 00       	mov    $0x3c,%eax
  34:	bb 00 00 00 00       	mov    $0x0,%ebx
  39:	0f 05                	syscall 

Disassembly of section .data:

0000000000000000 <msg>:
   0:	67 6f                	outsl  %ds:(%esi),(%dx)
   2:	6f                   	outsl  %ds:(%rsi),(%dx)
   3:	64 20 72 75          	and    %dh,%fs:0x75(%rdx)
   7:	6e                   	outsb  %ds:(%rsi),(%dx)
   8:	21 0a                	and    %ecx,(%rdx)

000000000000000a <filename>:
   a:	6f                   	outsl  %ds:(%rsi),(%dx)
   b:	75 74                	jne    81 <filename+0x77>
   d:	70 75                	jo     84 <filename+0x7a>
   f:	74 2e                	je     3f <filename+0x35>
  11:	74 78                	je     8b <filename+0x81>
  13:	74                   	.byte 0x74
