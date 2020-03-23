#!/usr/bin/python
import sys
from math import *
import os.path
from os import path

burn = []
for i in range(1, 31):
  file_name = 'H1CX-'+str(i)+'.dep'
  inp_handle = open(file_name, 'r')
  line = inp_handle.readline()

  while line:
    if 'Max burnup difference from last cycle (GWD/T):' in line:
      split_line = line.split()
      burn.append(split_line[7])
    line = inp_handle.readline()
  inp_handle.close()

for i in range(0,30):
  print(str(burn[i])+', ')
