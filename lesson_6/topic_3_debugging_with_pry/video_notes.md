Outline
  What is debugging?
  Debugging Steps
  Debugging Tools/pry
  What is pry?
  Using pry
  Invoking pry at runtime
  Accessing variables and scope
  Debugging with pry
  Stepping through code with pry-byebug

1. What is debugging?
Bugs are human errors in code
  - If we made them, we can fix them!
2. Debugging is the process of identifying and fixing those errors
  - A lot of time is spent doing this
3. Mistakes happen. Important to know how to deal with them.


How do we debug code? => Debugging Steps

1. Identify the Problem
  - Track down the problem => Detective work!

2. Understand the Problem
  - Why is this code causing a problem?
3. Implement a Solution
  - Change the code in order to eliminate the bug!

Types of Errors
1. Syntax Errors
  - Error in writing the code; the code does not conform to the grammar of the programming language
2. Logical Errors
  - The code runs, but produces unexpected results
  - Harder to find and diagnos
  - The reason that debugging tools exist!

What is pry?
1. pry is a Ruby gem
2. pry is a REPL
  - Read Evaluate Print Loop
  - An interactive environment that:
    - Takes user input
    - Evaluates the input
    - Returns the results to the user
    - Loops back to the start
