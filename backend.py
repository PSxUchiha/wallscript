#!/usr/bin/python

import sys

d = sys.argv #imports date from the shell script argument without needing to import os
date = int(d[1]) + 69  # nice 


def readFile(fileName):
    fileObj = open(fileName, "r")  # opens the file in read mode
    words = fileObj.read().splitlines()  # puts the file into an array
    fileObj.close()
    return words


words = readFile("list.txt")
k = len(words)
n = date % k
name = words[n]
print(name) # returns filename to the shell script
