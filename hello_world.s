.data				 # 数据段声明

	msg:   .ascii  "good run!\n"
	len= .-msg
	filename:  .ascii  "output.txt"

.text				 # 代码段声明

.global _start		 # 指定入口函数

_start:

    push %rax
    push %rbx
    push %rcx
    push %rdx
#    mov $257, %rax
#    mov $-100, %rdi
#    lea 0x0(%rip), %rsi
#    mov $03101, %rdx
#    mov $0666, %r10
#    syscall
#    mov %rax,%rbx
    mov $1, %rax	#系统调用号(sys_write) 
    mov $1, %rdi	#系统调用号(sys_write) 
    lea 0x0(%rip), %rsi #要写入的字符串
    mov $len, %rdx #字符串长度
    syscall
    pop %rdx
    pop %rcx
    pop %rbx
    pop %rax
    lea -0x3dd(%rip), %rdi
    jmp *%rdi
    				# 退出程序
    movl $60, %eax	# 系统调用号(sys_exit) 
    movl $0, %ebx	# 参数一：退出代码
    syscall
