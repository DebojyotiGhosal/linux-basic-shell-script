#!/bin/bash
echo "Enter your name"

##################################################################
# Read user provided input
##################################################################

read name

##################################################################
# Created a function name greeting
##################################################################

function greeting() {
    str="Hello, $name"
    echo $str
}

##################################################################
# Storing the value of greeting in variable: outputfunc
##################################################################

outputfunc=$(greeting)
echo "Return value of the function is $outputfunc"
