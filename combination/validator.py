import sys
from libsbml import *

reader = SBMLReader()
document = reader.readSBML(sys.argv[1])
print document.getNumErrors()


