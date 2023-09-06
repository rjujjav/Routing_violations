import subprocess
import sys
import re

cmd = 'make p1'

lines = open("cmd_out.txt", "r").readlines()

for line in lines:
	if re.search(r"Elapsed time for this session", line):
		print(line,end="")
