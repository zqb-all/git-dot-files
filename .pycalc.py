#!/usr/bin/env python

#zqb for calc
import sys

def formatBinString(num):
    result='bit:   '
    result_index='index: '
    num_len=len(num)
    if num_len > 32:
        return ""
    for i in num:
        num_len-=1
        result+=i
        result+=' | '
        result_index+=str(num_len).zfill(2)
        result_index+='| '
    return result+'\n'+result_index

equation=sys.argv[1]
result=eval(equation)
if isinstance(result, (float)):
    print "Attention:only base10 is float, others change to int before type"

print "equation:",sys.argv[1]
print ""

print "base2 : ",str(bin(int(result)))
#  print "base8 : ",str(oct(int(result)))
print "base10: ",str((result))
print "base16: ",str(hex(int(result)))

print ""
print formatBinString(str(bin(int(result))[2:].zfill(32)))
