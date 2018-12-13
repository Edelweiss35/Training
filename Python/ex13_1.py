from sys import argv

script, fname, mname, lname  = argv

print "Hello, %s %s %s!" % (fname, mname, lname)

color = raw_input("What is your favorite color?")
sport = raw_input("What is your favorite sport?")
music = raw_input("What is your favoirte music?")
print "%s, you like %r, %r, and %r." % (fname, color, sport, music)

