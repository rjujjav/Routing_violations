import subprocess
import sys
import re
from datetime import datetime

with open('cmd_out.txt','r') as f:
	contents = f.read()


a = re.findall(r"\d\d", contents)
start = a[0] + ':' + a[1] + ':' + a[2]
end = a[5] + ':' + a[6] + ':' + a[7]


time1 = datetime.strptime(start,"%H:%M:%S")
print("start time is :",time1.time()) 

time2 = datetime.strptime(end,"%H:%M:%S")
print("End time is", time2.time())

delta = time2 - time1

print("the time the process took in seconds is", delta.total_seconds(), "seconds")

