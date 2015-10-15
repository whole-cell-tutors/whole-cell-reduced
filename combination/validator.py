import sys
sys.path.append('/opt/libsbml/lib/python2.7/site-packages/libsbml/')
from libsbml import *

reader = SBMLReader()
#print "loading model"
document = reader.readSBML(sys.argv[1])
nErr = document.getNumErrors ()
if (nErr > 0):
    print nErr
else:
    document.setConsistencyChecks(LIBSBML_CAT_UNITS_CONSISTENCY, False)
    #document.setConsistencyChecks(LIBSBML_CAT_MODELING_PRACTICE, False)
    #document.setConsistencyChecks(LIBSBML_CAT_MATHML_CONSISTENCY, False)
    #print "checking for consistency"
    nErr=document.checkConsistency()

print nErr

if (nErr > 0):
    document.printErrors()


