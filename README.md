## **MyDemo**

# 我所使用到的工具

*   readelf
    *   -e  确定入口点地址
*   objdump
    *   -S  查看汇编
    *   -D  查看所有段的汇编
*   as
    *   用于将汇编转换为.o文件
    *   -o  指定目标文件(.o文件)
    *   例: as -o ./hello_world.o ./hello_world.s
*   ld
    *   用于将.o文件转换为可执行文件
    *   -dynamic-linker 指定动态链接器
    *   -o              指定目标文件(可执行文件)
    *   -lc             指定源文件(.o文件)
    *   例:             ld -dynamic-linker /lib/ld-linux.so.2 -o hello_world -lc hello_world.o
*   strace
    *   用于查看注入是否成功
    *   若不成功则用来推断hello_world.s中的汇编存在什么样的问题
*   qtcreator
    *   用于二进制查看

# 其它注意事项

*   详见 optional2.c 文件修改点( 1 - 6 )部分
*   代码需要根据自身系统环境进行修改
*   我的当前环境，环境相同或许可以直接用
   *   kbin@kbin-virtual-machine:~/MyGit/SignatureElf$ uname -a
   *   Linux kbin-virtual-machine 5.4.0-150-generic #167~18.04.1-Ubuntu SMP Wed May 24 00:51:42 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
*   原作者README.md -> README.md.old
*   详细流程自行摸索（鄙人也摸索了整整一天才使其能正常运行于本地）
*   大致流程
   *   while(1) 
   *   {
   *       修改hello_world.s;
   *
   *       生成hello_world.D汇编;
   *
   *       通过hello_world.D修改optional2.c中code变量;
   *
   *       编译运行;
   *
   *       if(成功) break;
   *   }
