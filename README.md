SPEED TEST comparsion
=====================
### for instructions
XOR,MOV,ADD,AND,XMOV
--------------------

> Author: Juraj Puchký - Devtech <sjurajpuchky@seznam.cz>
>
> Web: http://www.devtech.cz/knowledge-base/advanced-techniques/advanced-programming-tips/compare-what-is-faster-mov-xor-add-and-ld-xmov-and-their-long-operand-instructions-updated
>
> GIT: https://github.com/sjurajpuchky/asmspeedtesttools
>

INTRODUCTION
------------
I was looking for comparation of speed MOV vs XOR instructions. In this case for NULL registers few time ago. 
But results do not satisfy me as well. Then i decide to make own experiment and measure speed of processing on CPU Intel Pentium D with System CentOS 6.4. 
I developed some applications and tools for that reason. 
To reduce adjust of measurements you should stop all not necesary applications and leave system clean so much as possible also run tests as root. 
Each test runs 100 000 of instructions in one block and each experiment has 1000 samples.

HOW TO RUN
----------

### store your work, login as root
~~~~
init 4
make
init 5
~~~~
### start X
~~~~
make results
~~~~
