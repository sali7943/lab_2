#!/bin/bash
# Authors : Sam Liang
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#1
echo "Enter a File Name: "
read filename
echo "Enter a regex: "
read regex

#2
#the following will take a filename and regex from user and uses grep to search that regex of
#that file
grep -E  $regex $filename

#3.1
#counts the number of phone numbers looks for that pattern with grep
#any 3 digits with - any 3 digits - any 4 digits
grep -c -E '[0-9]{3}-[0-9]{3}-[0-9]{4}' regex_practice.txt 

#3.2
#same concept but now we look for any string that ends has alphanumeric characters
#we look for anything@anything.anything
grep -c -E '\b[A-Za-z0-9]+@[A-Za-z0-9]+\.[A-Za-z0-9]' regex_practice.txt

#3.3
#same concept as above but now the first three digits have to be 303 
#and it is saved in txt file called phone_results
grep -E '303-[0-9]{3}-[0-9]{4}' regex_practice.txt  > phone_results.txt 

#3.4
#same concept but now we look for any string that ends has alphanumeric characters
#we look for anything@geocities.com
grep -E '\b[A-Za-z0-9]+@geocities+\.com' regex_practice.txt > email_results.txt

#3.5
#now we use command line to run our regex to search 
#example ./lab2_scripts.sh 123 looks for 123 in regex_practice.txt
grep -E $1 regex_practice.txt > command_results.txt


