from sys import argv

script, file = argv

with open("Makefile", "r+") as f:
	old = f.readline()
	rest = f.read()
	f.seek(0)
	old = old.rstrip()
	old += " " + file
	f.write(old)
	f.write("\n" + rest)
