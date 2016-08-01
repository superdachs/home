#!/usr/bin/python

import prettytable
import os
import sys

bashversion = sys.argv[1]
bash_string = "**** GNU bash V%s ****" % bashversion
memory_string = "20GB RAM SYSTEM  2635384 MEGA BYTES FREE"

t = prettytable.PrettyTable([" "])
t.border = False

t.add_row([bash_string])
t.add_row([memory_string])

print(t)
print("")
