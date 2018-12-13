name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

print "Let's talk about %s." % name
print "He's %d inches tall." % height
print "He's %d pounds heavy." % weight
print "Actually that's not too heavy."
print "He's got %r eyes and %r hair." % (eyes, 89098)
print "His teeth are actually %s depending on the coffee. " % teeth
# this line is tricky, try to get it exactly right
print "If I add %d, %d, and %d I get %d." % (age, height, weight, age + height + weight)
inches = 10.0;
factor = 0.46;
cent = inches*factor
print "centimeters: %f" % cent
pounds = 10.0;
factor = 1.45;
kilos = pounds*factor
print "kilograms: %r" % kilos
