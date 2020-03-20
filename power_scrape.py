#!/usr/bin/python
import sys
from math import *
import os.path
from os import path

# Hard coded parcs print scheme
leading_zeros = [1, 1, 2, 2, 3, 4, 5, 7]

# Helper function 
def read_row(line, row_num):
  row_powers = []
  for i in range(0, leading_zeros[row_num-1]):
    row_powers.append(0)
  split_line = line.split()
  for i in range(1, len(split_line)):
    row_powers.append(split_line[i])
  for i in range(0, leading_zeros[row_num-1]):
    row_powers.append(0)
  return row_powers

# Get input file
inp = sys.argv[1] 
if (not path.exists(inp)):
  inp = str(input('GIVE ME SOMETHING REAL BITCH: \n'))
inp_handle = open(inp,'r')

# Read in assembly powers
assembly_powers = []
line = inp_handle.readline()
while line:
  if 'Assembly Power Distribution' in line:
    for i in range(0, 5):
      line = inp_handle.readline()
    for i in range(1,9):
      assembly_powers.append(read_row(line,i))
      line = inp_handle.readline()
  else:
    line = inp_handle.readline()
inp_handle.close()

# Open output file
print_file_name = str('power_from_'+inp)
i = 1
while path.exists(print_file_name):
  print_file_name = 'v_'+str(i)+'_power_from_'+inp
  i = i+1
print_file = open(print_file_name,'w')

# Print in matlab format
print_file.write('[ ')
# Print top half in reverse
for i in range(0, 16):
  print_file.write(str(0)+', ')
print_file.write(str(0)+';\n')
for i in range(7,0,-1):
  for j in range(0,16):
    print_file.write(str(assembly_powers[i][j])+', ')
  print_file.write(str(assembly_powers[i][16])+';\n')
# Print bottom half in correct order
for i in range(0,8):
  for j in range(0,16):
    print_file.write(str(assembly_powers[i][j])+', ')
  print_file.write(str(assembly_powers[i][16])+';\n')
for i in range(0, 16):
  print_file.write(str(0)+', ')
print_file.write(str(0)+'];\n')

print_file.close()
