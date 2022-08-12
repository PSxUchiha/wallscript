#!/usr/bin/python

import sys
d=sys.argv
date=int(d[1])
def readFile(fileName):
        fileObj = open(fileName, "r") #opens the file in read mode
        words = fileObj.read().splitlines() #puts the file into an array
        fileObj.close()
        return words
words=readFile("list.txt")
k=len(words)
n=date% k

name=words[n]
print (name)

