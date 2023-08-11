#!/bin/bash

##################################################################
# It starts four endless loops. Each of them is repeating the null
# instruction (:). Each loop is able to load a CPU core at 100%.
##################################################################

for i in 1 2 3 4; do while :; do :; done & done

##################################################################
# To kill the process use below code
##################################################################

for i in 1 2 3 4; do kill %$i; done

##################################################################
# Note:

# This code snippet is a combination of two loops written in Bash
# scripting language, a popular Unix shell. Let's break down each
# part:

# Outer Loop:

# for i in 1 2 3 4; do

# This is a for loop that iterates over the values 1, 2, 3, and 4
# (each assigned to the variable i in successive iterations).
# The loop body follows after the do keyword.

# Inner Loop:

# while : ; do
#     :
# done

# This is a while loop with a condition that is always true. The
# colon (:) is a no-op command in Unix-like shells. This means the
# loop will keep executing indefinitely since the condition : is
# always true. The loop body consists of the colon command followed
# by the done keyword.

# Background Execution:

# & done

# The & character at the end of the inner loop causes each inner
# loop to be executed in the background.
# The done keyword signifies the end of the outer for loop.

# Overall, what this code does is:

# It starts an outer loop that iterates over the values 1, 2, 3,
# and 4.

# For each iteration of the outer loop, an inner loop is started
# that runs indefinitely (due to the true condition).
# Each inner loop runs in the background, and since the outer
# loop has four iterations, four instances of the inner loop are
# started concurrently.
# The result is that you will have four separate processes running
# indefinitely in the background. These processes don't actually do
# anything useful; they just consume system resources in a loop
# with no actual work being performed. It's essentially a
# demonstration of how you can create multiple background processes
# using nested loops in a Bash script. This code snippet is
# likely used for illustrative or educational purposes rather than
# for any practical use.
##################################################################