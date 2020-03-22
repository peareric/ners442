#!/usr/bin/python
import sys
from math import *
import os.path
from os import path



# Helper functions ############################################################# 
# Hard coded parcs print scheme
sig_vals = [8, 8, 8, 8, 7, 7, 6, 4]
def read_row(line, row_num):
  row_powers = []
  split_line = line.split()
  for i in range(0, sig_vals[row_num-1]):
    row_powers.append(split_line[i+1])
  return row_powers

def read_rad_powers(line, handle):
  # Get to data
  for i in range(0,2):
    line = handle.readline()
  # Read in data
  rad_powers = []
  for i in range(0, 8):
    line = handle.readline()
    rad_powers.append(read_row(line, i+1))

  return rad_powers

def read_ax_powers(line, handle):
  # Get to data
  for i in range(0,2):
    line = handle.readline()
  # Read in data
  ax_powers = []
  for i in range(0, 26):
    split_line = line.split()
    ax_powers.append(split_line[1])
    line = handle.readline()
  return ax_powers

# number of filler zeros
filler_zeros = [0, 0, 0, 0, 1, 1, 2, 4]
def print_rad_powers(powers, handle):
  # Print in matlab format
  print_file.write('[ ')
  # Print top half in reverse row order
  for i in range(0, 8):
    # Print left half in reverse column order
    row_num = 7-i
    row = powers[row_num]
    sz = len(row)
    for j in range(0, filler_zeros[row_num]):
      print_file.write('0, ')
    for j in range(1, sz+1):
      print_file.write(str(row[sz-j])+', ')
    # Print right half in normal column order
    for j in range(0, sz-1):
      print_file.write(str(row[j])+', ')
    print_file.write(str(row[sz-1]))
    if filler_zeros[row_num] == 1:
      print_file.write(', 0; \n')
    elif filler_zeros[row_num] == 2:
      print_file.write(', 0, 0; \n')
    elif filler_zeros[row_num] == 4:
      print_file.write(', 0, 0, 0, 0; \n')
    else:
      print_file.write('; \n')
  # Print bottom half in normal row order
  for i in range(0, 8):
    # Print left half in reverse column order
    row_num = i
    row = powers[row_num]
    sz = len(row)
    for j in range(0, filler_zeros[row_num]):
      print_file.write('0, ')
    for j in range(1, sz+1):
      print_file.write(str(row[sz-j])+', ')
    # Print right half in normal column order
    for j in range(0, sz-1):
      print_file.write(str(row[j])+', ')
    print_file.write(str(row[sz-1]))
    if filler_zeros[row_num] == 1:
      print_file.write(', 0; \n')
    elif filler_zeros[row_num] == 2:
      print_file.write(', 0, 0; \n')
    elif filler_zeros[row_num] == 4:
      print_file.write(', 0, 0, 0, 0]; \n')
    else:
      print_file.write('; \n')


def print_ax_powers(powers, handle):
  print_file.write('[ ')
  for i in range(0, len(powers)-1):
    print_file.write(str(powers[i])+', ')
  print_file.write(str(powers[len(powers)-1])+']; \n')

################################################################################

# Get input file
inp = sys.argv[1] 
if (not path.exists(inp)):
  inp = str(input('GIVE ME SOMETHING REAL BITCH: \n'))
inp_handle = open(inp,'r')

# Read in assembly powers
axial_powers = []
radial_powers = []
line = inp_handle.readline()
while line:
  if 'RPF 2D MAP' in line:
    radial_powers = read_rad_powers(line,inp_handle)
    line = inp_handle.readline()
  elif 'RPF 1D MAP' in line:
    axial_powers = read_ax_powers(line,inp_handle)
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

# Print to file
print_rad_powers(radial_powers, print_file)
print_file.write('\n\n\n\n')
print_ax_powers(axial_powers, print_file)
print_file.close()




