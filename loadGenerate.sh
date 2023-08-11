#!/bin/bash

##################################################################
# It starts four endless loops. Each of them is repeating the null
# instruction (:). Each loop is able to load a CPU core at 100%.
##################################################################

for i in 1 2 3 4; do while : ; do : ; done & done

##################################################################
# To kill the process use below code
##################################################################

for i in 1 2 3 4; do kill %$i; done
