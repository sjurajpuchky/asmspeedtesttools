#!/bin/bash


if [ ! -f "xor.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"xor %eax, %eax\n\t\"" >> xor.100k;echo -en "XOR: 100000/$n\r";done
fi
echo
if [ ! -f "xmov.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"xor %eax,%eax\n\t\"" >> xmov.100k;echo "\"xor \$0,%eax\n\t\"" >> xmov.100k;echo -en "XMOV: 100000/$n\r";done
fi
echo
if [ ! -f "mov.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"mov \$0, %eax\n\t\"" >> mov.100k;echo -en "MOV: 100000/$n\r";done
fi
echo
if [ ! -f "and.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"and \$0, %eax\n\t\"" >> and.100k;echo -en "AND: 100000/$n\r";done
fi
echo
if [ ! -f "add.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"add \$0, %eax\n\t\"" >> add.100k;echo -en "ADD: 100000/$n\r";done
fi
echo
if [ ! -f "xorl.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"xorl %eax, %eax\n\t\"" >> xorl.100k;echo -en "XORL: 100000/$n\r";done
fi
if [ ! -f "xmovl.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"xorl %eax,%eax \n\t\"" >> xmovl.100k;echo "\"xorl \$0,%eax \n\t\"" >> xmovl.100k;echo -en "XMOVL: 100000/$n\r";done
fi
echo
if [ ! -f "movl.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"movl \$0, %eax\n\t\"" >> movl.100k;echo -en "MOVL: 100000/$n\r";done
fi
echo
if [ ! -f "andl.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"andl \$0, %eax\n\t\"" >> andl.100k;echo -en "ANDL: 100000/$n\r";done
fi
echo
if [ ! -f "addl.100k" ]; then
 n=0;
 while [ $n -lt 100000 ]; do n=`expr $n + 1`;echo "\"addl \$0, %eax\n\t\"" >> addl.100k;echo -en "ADDL: 100000/$n\r";done
fi
echo
