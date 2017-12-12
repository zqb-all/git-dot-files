#!/usr/bin/env python

#zqb for calc
import sys

equation=sys.argv[1]
result=eval(equation)
if isinstance(result, (float)):
    print "Attention:only base10 is float, others change to int before type"
print "equation:",sys.argv[1]
print "base2 : ",str(bin(int(result)))
print "base8 : ",str(oct(int(result)))
print "base10: ",str((result))
print "base16: ",str(hex(int(result)))
