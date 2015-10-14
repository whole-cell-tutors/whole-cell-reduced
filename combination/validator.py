import sys
from libsbml import *

reader = SBMLReader()
#print "loading model"
document = reader.readSBML(sys.argv[1])
print document.getNumErrors()
#print "checking for consistency"
print document.checkConsistency()


