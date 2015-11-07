This contains the Stack Interpreter implementation in COOL language \n\n\nThe QUESTION is\n\nprimitive language for programming a stack machine:

the top of the stack. The behavior of the ‘e’ command depends on the contents of the stack when ‘e’ is

issued:

• If ‘+’ is on the top of the stack, then the ‘+’ is popped off the stack, the following two integers are

popped and added, and the result is pushed back on the stack.

• If ‘s’ is on top of the stack, then the ‘s’ is popped and the following two items are swapped on the

stack.

• If an integer is on top of the stack or the stack is empty, the stack is left unchanged.

is on the left:

commands, one command per line. Your interpreter should prompt for commands with >. Your program

need not do any error checking: you may assume that all commands are valid and that the appropriate

number and type of arguments are on the stack for evaluation. You may also assume that the input

integers are unsigned. Your interpreter should exit gracefully; do not call abort() after receiving an x.

a Cool compiler, we recommend that you try to develop an object-oriented solution. One approach is

to define a class StackCommand with a number of generic operations, and then to define subclasses of

StackCommand, one for each kind of command in the language. These subclasses define operations specific

to each command, such as how to evaluate that command, display that command, etc. If you wish, you
may use the classes defined in atoi.cl in the ~cool/examples directory to perform string to integer

conversion. If you find any other code in ~cool/examples that you think would be useful, you are free

to use it as well.

you as a rough measure of the amount of work involved in the assignment—your solution may be either

substantially shorter or longer.

Sample session

The following is a sample compile and run of our solution.

%coolc stack.cl atoi.cl

%spim -file stack.s

SPIM Version 5.6 of January 18, 1995

Copyright 1990-1994 by James R. Larus (larus@cs.wisc.edu).

All Rights Reserved.

See the file README a full copyright notice.

Loaded: /usr/class/cs3020/cool/lib/trap.handler

>1

>+

>2

>s

>d

s

2

+

1

>e

>e

>d

3

>x

COOL program successfully executed




