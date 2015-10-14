import sys
from libsbml import *

reader = SBMLReader()
#print "loading model"
document = reader.readSBML(sys.argv[1])
nErr = document.getNumErrors ()
if (nErr > 0):
    print nErr
else:
    document.setConsistencyChecks(LIBSBML_CAT_UNITS_CONSISTENCY, False)
    document.setConsistencyChecks(LIBSBML_CAT_MODELING_PRACTICE, False)
    document.setConsistencyChecks(LIBSBML_CAT_MATHML_CONSISTENCY, False)
    #print "checking for consistency"
    print document.checkConsistency()


