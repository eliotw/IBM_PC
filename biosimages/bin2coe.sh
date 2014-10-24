#!/bin.bash
# A simple script to transform a binary file into a coe file

# Variable
STRINGM="memory_initialization_radix=16;"
STRINGN="memory_initialization_vector="


# Get input and output file names
echo -e "Please enter the input file name"
read iname
echo "Input File Name: $iname"
echo -e "Please enter the output file name"
read oname
echo "Output File Name: $oname"
echo $STRINGM > $oname
echo $STRINGN >> $oname
xxd -c 1 -p $iname >> $oname
echo "Done"
