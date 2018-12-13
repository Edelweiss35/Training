import sys
"""
A B C   F
----------
0 0 0 | 1
0 0 1 | 0
0 1 0 | 1
0 1 1 | 0
1 0 0 | 1
1 0 1 | 0
1 1 0 | 1
1 1 1 | 0
"""

f = [
		1, 1, 1, 0, # (i) + 0, (i) + 1, (i)+2, (i) +3
		0, 1, 1, 1  # (i) + 0, (i) + 1, (i) + 2, (i) + 3
];

"""
  00 01 11 10
--------------
0| 0  1  3  2
1| 4  5  7  6
"""

for i in [ 0, 1 ]:
	for j in [ 3, 1, 0, 2 ]:
		number = f[i * 4 + j] # x[y*row + column]
		sys.stdout.write(str(number) + ' ')
	sys.stdout.write("\n")
	
