import libsbml
import sys

doc=libsbml.readSBMLFromFile (sys.argv[1])
doc.setLevelAndVersion(2, 4, False)
#print doc.toSBML()
f = open(sys.argv[2], 'w')
f.write(doc.toSBML())
f.close()
