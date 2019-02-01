#!/bin/bash
# Authors : Sam Liang
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a File Name: "
read filename
echo "Enter a regex: "
read regex

grep -E  $regex $filename

grep -E '[0-9]{3}-[0-9]{3}-[0-9]{4}' regex_practice.txt 

grep -E '303-[0-9]{3}-[0-9]{4}' regex_practice.txt  > phone_results.txt 

grep -E '\b[A-Za-z]+@[A-Za-z]+\.[A-Za-z]' regex_practice.txt

grep -E $1 regex_practice.txt > commond_results.txt

# grep '' regex_practice.txt
