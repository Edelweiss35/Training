from sys import argv

script, filename = argv

fid = open(filename)
text = fid.read();
print text
fid.close()
