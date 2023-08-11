##################################################################
# The following script will create a new file named cars.txt, and 
# then – with the help of the if statement – check if it exists and 
# delete it.
##################################################################
#!/bin/bash
myfile='cars.txt'
touch $myfile
sleep 10
if [ -f $myfile ]; then
   rm cars.txt
   echo "$myfile deleted"
fi