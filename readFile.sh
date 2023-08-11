##################################################################
# The code will read a file called readme.txt and read the line
# and print it
# Note: If last line is not getting printed will be because in the
# last line new line is not appeneded. You need to add a new line
# in the last line as well
##################################################################

#!/bin/bash
while read line; do
    echo $line
done <'readme.txt'

##################################################################
# Reading the file with line number
##################################################################

i=1
while read lines; do
echo "$i : $lines"
i=$((i+1))
done < 'readme.txt'
