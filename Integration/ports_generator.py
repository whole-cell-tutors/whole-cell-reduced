#!/usr/bin/python

import sys, getopt
from libsbml import *

def check(value, message=None):

	"""If 'value' is None, prints an error message constructed using
	'message' and then exits with status code 1. If 'value' is an integer,
	it assumes it is a libSBML return status code. If the code value is
	LIBSBML_OPERATION_SUCCESS, returns without further action; if it is not,
	prints an error message constructed using 'message' along with text from
	libSBML explaining the meaning of the code, and exits with status code 1.
	"""
	if value == None:
		print('LibSBML returned a null value trying to ' + str(message) + '.')
		print('Exiting.')
		sys.exit(1)
	elif type(value) is int:
		if value == LIBSBML_OPERATION_SUCCESS:
			if message:
				print message + '...'
		else:
			print('Error encountered at ' + str(message) + '.')
			print('LibSBML returned error code ' + str(value) + ': "' \
			+ OperationReturnValue_toString(value).strip() + '"')
			print('Exiting.')
			sys.exit(1)
	else:
		if message:
			print message
 
#Port creator ------------------------------------------------------------------------

def createPort(model,wid):
	mcomp = model.getPlugin("comp")
	p = mcomp.createPort()
	check(p)
	check(p.setId(wid))
	check(p.setIdRef(wid))
	return p

#Species creator ---------------------------------------------------------------------

def createSpecies(model,wid,name,tp,compartment='c'):
	s = model.createSpecies()
	check(s)
	check(s.setId(wid.replace("-","_")+'__'+compartment))
	check(s.setName(name))
	check(s.setCompartment(compartment))
	check(s.setConstant(False))
	check(s.setInitialAmount(0))
	check(s.setSubstanceUnits('mole'))
	check(s.setBoundaryCondition(False))
	check(s.setHasOnlySubstanceUnits(False))	
	check(s.appendAnnotation(tp))
	createPort(model,wid.replace("-","_"))

#MAIN ---------------------------------------------------------------------------------
 
def main(argv):

	inputfile = ''
	outputfile = ''
	usestring = 'Usage: ./ports_generator.py -i <input file> -o <outputfile>'


#Options treatment --------------------------------------------------------------------

	try:
		opts, args = getopt.getopt(argv,"i:o:",["input=","output="])
	except getopt.GetoptError:
		print usestring
	for opt, arg in opts:
		if opt == '-h':
			print usestring
			sys.exit()
		elif opt == '-i':
			inputfile = arg
		elif opt in ("-o","--output"):
			outputfile = arg
	if inputfile=='' or outputfile=='':
		print 'Error - Check if all the parameters were set'
		print usestring
		sys.exit()


#Creating SBML -----------------------------------------
	try:	
		f = open(outputfile,'w')
	except ValueError:
		print 'Error - Can\'t create a file.'
		sys.exit(1)

	print 'Starting SBML module...'
	try:
		sbmlns = SBMLNamespaces(3,1,"comp",1);
		document = SBMLDocument(sbmlns)
		document.enablePackage("http://www.sbml.org/sbml/level3/version1/comp/version1", "comp", True)
		document.setPackageRequired('comp',True)
	except ValueError:
		print('Error - Could not create SBMLDocumention object')
		sys.exit(1)

	model = document.createModel()
	check(model, 'Creating model')
	check(model.enablePackage("http://www.sbml.org/sbml/level3/version1/comp/version1", "comp", True))

	sbmlplugin = document.getPlugin("comp")


#Reading and creating compartments ---------------------
	
	compartments = {'c':'Cytosol','m':'Membrane','e':'Extracellular'}
	for key in compartments:
		compart = model.createCompartment()
		check(compart)
		check(compart.setId(key))
		check(compart.setName(compartments[key]))
		check(compart.setConstant(True))
		check(compart.setSize(1))
		check(compart.setSpatialDimensions(3))
		check(compart.setUnits('litre'))

#Create species and ports from file --------------------


	f_input = open(inputfile)

	lines = f_input.readlines()

	f_input.close()
	types = ['Metabolite','ProteinMonomer','ProteinComplex','TranscriptionUnit','Gene']

	for line in lines:
		line = line[:-2]
		cols = line.split('\t')
		if cols[1] in types:
			for key in compartments:
				createSpecies(model,cols[2],cols[3],cols[1],key)




#Writing SMBL to file ---------------------------------------------------------

	print "Writing model to file " +outputfile+ "..."
	try:
		f.write(writeSBMLToString(document))
	except ValueError:
		print "Error - Can\'t write SBML document to the file " +outputfile+"."
		sys.exit(1)


if __name__ == '__main__':
	main(sys.argv[1:])
	

