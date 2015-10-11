#!/usr/bin/python

############################################################################
#
#	BioNetwork 1.0
#
#	Created by Paulo Burke at Federal University of Sao Paulo (2015)
#
#	The code is free to anyone use and edit but without any warranty.
#
#	Last update: 02/03/2015
#
############################################################################


import sys, getopt, subprocess, os
import MySQLdb as mdb
from libsbml import *


#Define key proteins WIDs:

RNAPOLIMERASE='RNA_POLYMERASE_HOLOENZYME'
NUSA = 'MG_141_MONOMER'
NUSB = 'MG_027_MONOMER'
NUSG = 'MG_054_MONOMER'
GREA = 'MG_282_MONOMER'
S10 = 'MG_150_MONOMER'
METPEPTDASE = 'MG_172_MONOMER'
DEFORMYLASE = 'MG_106_DIMER'
RIBOSOME = 'RIBOSOME_70S'
RIBOSOMES_SUB = ['RIBOSOME_30S','RIBOSOME_50S']
RIBONUCLEASE = 'MG_104_MONOMER'
DEAD_AMP = 'MG_425_DIMER'
TRNAHYDROLASE = 'MG_083_MONOMER'
RNASEIII = 'MG_367_DIMER'
RNASEJ = 'MG_139_DIMER'
RNASEP = 'MG_0003_465'
RSGA = 'MG_110_MONOMER'
RIBOSOME_30S = 'RIBOSOME_30S'
RIBOSOME_50S = 'RIBOSOME_50S'
IF = ['MG_173_MONOMER','MG_142_MONOMER','MG_196_MONOMER']
EFTU = 'MG_451_DIMER'
EFTS = 'MG_433_DIMER'
EF4 = 'MG_138_MONOMER'
EFG = 'MG_089_DIMER'
EFP = 'MG_026_MONOMER'
RRF = 'MG_435_MONOMER'
RF = 'MG_258_MONOMER'
LEPA = 'MG_138_MONOMER'
TRIGGER = 'MG_238_MONOMER'
RNA_HELICASE = 'MG_308_MONOMER'
GRPE = 'MG_201_DIMER'
DNAJ = 'MG_019_DIMER'
RNADECAY_RNASES = [RNASEIII,RNASEJ]
TRNA_FMET = 'TRNA_FMET'


#Ribosome 30s binding factors
RB30SBF = ['MG_143_MONOMER']
#Ribosome 50s binding factors
RB50SBF = ['MG_384_MONOMER','MG_442_MONOMER','MG_387_MONOMER','MG_335_MONOMER','MG_329_MONOMER']

#Protein Decay
PEPTDASE = ['MG_046_DIMER','MG_324_MONOMER','MG_391_HEXAMER','MG_183_MONOMER','MG_020_MONOMER']
CLP_PROTEASE = 'MG_355_HEXAMER'
FTSH_PROTEASE = 'MG_457_HEXAMER'
LA_PROTEASE = 'MG_239_HEXAMER'
SSRA = 'MG_0004'
SSRA_BP = 'MG_059_MONOMER'

ATP = 'ATP'
TTP = 'TTP'
CTP = 'CTP'
GTP = 'GTP'
URA = 'URA'
PPI = 'PPI'
PI = 'PI'
AMP = 'AMP'
TMP = 'TMP'
CMP = 'CMP'
GMP = 'GMP'
UMP = 'UMP'
ADP = 'ADP'
TDP = 'TDP'
CDP = 'CDP'
GDP = 'GDP'
UDP = 'UDP'
H = 'H'
H2O = 'H2O'
MET = 'MET'
FOR = 'FOR'
DNAA7 = 'MG_469_7MER_ATP'
DNAA = 'MG_469_1MER_ATP'
DNAAADP = 'MG_469_1MER_ADP'
DNAB = 'MG_349_HEXAMER'
DNAB2 = 'MG_364_MONOMER'
DATP = 'DATP'
DTTP = 'DTTP'
DCTP = 'DCTP'
DGTP = 'DGTP'
REPLISOME = 'REPLISOME'
SSBINDPROT = 'MG_091_OCTAMER'
GYRASE = 'DNA_GYRASE'
TOPOISOMERASE = 'MG_203_204_TETRAMER'
TOPOISOMERASE1 = 'MG_122_MONOMER'
CHROMO_SEGREGATION_PROTEIN = 'MG_213_214_298_6MER_ADP'
REPLICATION_CR = 'REPLICATION_CHROMOSOME'
DUPLICATED_CR = 'DUPLICATED_CHROMOSOME'
DAMN_CR = 'DAMAGED_CHROMOSOME'

CR = 'CHROMOSOME'

MEMBRANE = 'MEMBRANE'
TERMINAL_ORGANELLE = 'TERMINAL_ORGANELLE'

MEMBRANE_ATTACH_REACT = ['PG160',ATP,H2O]
MEMBRANE_ATTACH_PROD = ['SNGLYP',H,PI,ADP]
MEMBRANE_ATTACH_MOD = ['MG_086_MONOMER','MG_055_170_277_464_476_20MER','MG_210_MONOMER','MG_210_MONOMER','MG_072_DIMER']

MEMBRANE_SECR_REACT = [GTP,H2O]
MEMBRANE_SECR_PROD = [H,PI,GDP]
MEMBRANE_SECR_MOD = ['MG_0001_048','MG_297_MONOMER','MG_055_170_277_464_476_20MER']

AMINOACYLATION_TYPE = '<annotation>aminoacylation</annotation>'
RNA_TYPE = '<annotation>RNA</annotation>'
PROTEIN_TYPE = '<annotation>Protein Monomer</annotation>'
TRANSCRIPTION_TYPE = '<annotation>Transcription Reaction</annotation>'
TRANSCRIPTION2_TYPE = '<annotation>preRNA Processing Reaction</annotation>'
TRANSLATION_TYPE = '<annotation>Translation Reaction</annotation>'
TRNAHYDRO_PREFIX = 'PeptidylTRNAHs'
PROTPOLY_PREFIX = 'ProteinPolymerization'
RNAPOLY_PREFIX = 'RnaPolymerization'
RNACLEAVAGE_PREFIX = 'RNACleavage'
RIBOASSEMBLY_PREFIX = 'GTPHs_RibosomeAssembly'
METCLEAV_PREFIX = 'NTerminalMethionineClevage'
DEFORMYLATION_PREFIX = 'Deformylation'
MODIFICATION_PREFIX = 'MODIFICATION'
PROTDECAY_PREFIX = 'ProteinDegradation'
DNABINDREACT_PREFIX = 'DNABoundProteinRelease'
DNAPRIMERPOLY_PREFIX = 'DNAPrimerPolymerization'
CHROMOSEGREGATION_PREFIX = 'GTPHs_ChromosomeSegregation'
FTSZPOLY_PREFIX = 'FtsZ_polymerization'
DNAAPOLY_PREFIX = 'DnaAATP_polmerization'
DNAAPOLY_PREFIX2 = 'DNAPolymerization'
organelProcess = 'Process_TerminalOrganelleAssembly'
DNAA_PREFIX = 'MG_469_'
FTSZ_PREFIX = 'MG_224_'


#'MG_469_2MER_1ATP_ADP','MG_469_3MER_2ATP_ADP','MG_469_4MER_3ATP_ADP','MG_469_5MER_4ATP_ADP','MG_469_6MER_5ATP_ADP','MG_469_7MER_6ATP_ADP'

complexToDelete = ['DNA_POLYMERASE_2CORE_BETA_CLAMP_GAMMA_COMPLEX_PRIMASE',
					'DNA_POLYMERASE_CORE_BETA_CLAMP_GAMMA_COMPLEX','DNA_POLYMERASE_CORE_BETA_CLAMP_PRIMASE','DNA_POLYMERASE_HOLOENZYME','MG_001_DIMER',
					'RIBOSOME_30S_IF3','RIBOSOME_70S']
					
reactionsToDelete = ['ProLipoproteinDiacylglycerylTransferase','ATPHs_ProteinTranslocation_SecA','ATPHs_ProteinTranslocation_SRP','ATPHs_DNASupercoiling_topoisomeraseIV','ATPHs_DNASupercoiling_gyrase',
						'ATPHs_DNASupercoiling_topoisomeraseI','NTerminalMethionineClevage','DnaAATP_polymerization_2mer','DnaAATP_polymerization_3mer','DnaAATP_polymerization_4mer',
						'DnaAATP_polymerization_5mer','DnaAATP_polymerization_6mer','DnaAATP_polymerization_7mer','DnaA_activation','FtsZ_activation','FtsZ_nucleation','GTPHs_Cytokinesis_FtsZ']

AMINOACIDS = {
'ALA' : 'A',
'ARG' : 'R',
'ASN' : 'N',
'ASP' : 'D',
'CYS' : 'C',
'GLU' : 'E',
'GLN' : 'Q',
'GLY' : 'G',
'HIS' : 'H',
'ILE' : 'I',
'LEU' : 'L',
'LYS' : 'K',
'MET' : 'M',
'PHE' : 'F',
'PRO' : 'P',
'SER' : 'S',
'THR' : 'T',
'TRP' : 'W',
'TYR' : 'Y',
'VAL' : 'V',
'SEC' : 'U',
'PYL' : 'O'
}

AMINOACIDS_INVERSE = dict((v,k) for k,v in AMINOACIDS.iteritems())

deletedReactions = reactionsToDelete
deletedMolecules = complexToDelete

 
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
 

#-------------------------------------------------------------------------------------

def mysqlQuery(c,query):
	try:
		c.execute(query)
		result = c.fetchall()
		return result
	except mdb.Error, e:
		print "MySQL error %d: %s" % (e.args[0],e.args[1])
		sys.exit(1)


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
	check(s.setId(wid.replace("-","_")))
	check(s.setName(name))
	check(s.setCompartment(compartment))
	check(s.setConstant(False))
	check(s.setInitialAmount(0))
	check(s.setSubstanceUnits('mole'))
	check(s.setBoundaryCondition(False))
	check(s.setHasOnlySubstanceUnits(False))	
	check(s.appendAnnotation(tp))
	createPort(model,wid.replace("-","_"))

#create submodel --------------------------------------------------------------------

def createSubmodel(mplugin,wid,ref,name):
	submodel = mplugin.createSubmodel()
	check(submodel.setId(wid))
	check(submodel.setName(name))
	check(submodel.setModelRef(ref))
	return submodel

#Create parameter --------------------------------------------------------------------

def createParameter(model,wid,value=0,SBO=''):
	p = model.createParameter()
	check(p)
	check(p.setId(wid))
	check(p.setConstant(False))
	check(p.setValue(value))
	if SBO != '':
		check(p.setSBOTerm(SBO))
	return p

#create replacement ------------------------------------------------------------------

def createReplacedElement(obj,portRef,modelRef):
	oplugin = obj.getPlugin("comp")
	re = oplugin.createReplacedElement()
	check(re)
	check(re.setSubmodelRef(modelRef))
	check(re.setPortRef(portRef))
	return re

#Create Reactant ---------------------------------------------------------------------

def createReactant(model,sub,sp,q):
	#species replacement
	spObj = model.getSpecies(sp)
	createReplacedElement(spObj,sp,sub)
	#create parameter
	p = createParameter(model,sp+"_to_"+sub,q)
	#parameter replacement
	createReplacedElement(p,sp+"_to_"+sub,sub)

#Create Generic Reactant ---------------------------------------------------------------------

def createGenericReactant(model,sub,sp,gsp,q):
	#species replacement
	spObj = model.getSpecies(sp)
	createReplacedElement(spObj,gsp,sub)
	#create parameter
	p = createParameter(model,sp+"_to_"+sub,q)
	#parameter replacement
	createReplacedElement(p,sp+"_to_"+sub,sub)

#Create Product ---------------------------------------------------------------------

def createProduct(model,sub,sp,q):
	#species replacement
	spObj = model.getSpecies(sp)
	createReplacedElement(spObj,sp,sub)
	#create parameter
	p = createParameter(model,sp+"_to_"+sub,q)
	#parameter replacement
	createReplacedElement(p,sp+"_to_"+sub,sub)

#Create Generic Product ---------------------------------------------------------------------

def createGenericProduct(model,sub,sp,gsp,q):
	#species replacement
	spObj = model.getSpecies(sp)
	createReplacedElement(spObj,gsp,sub)
	#create parameter
	p = createParameter(model,sp+"_to_"+sub,q)
	#parameter replacement
	createReplacedElement(p,sp+"_to_"+sub,sub)

#Create Modifier ---------------------------------------------------------------------

def createModifier(model,sub,sp):
	#species replacement
	spObj = model.getSpecies(sp)
	createReplacedElement(spObj,sp,sub)

#Species List ----------------------------------------------------------------------

def getSpeciesList(l):
	l = l.getListOfSpecies()
	sp = []
	for i in range(l.size()):
		sp.append(l[i].getId())
	return sp


#MAIN ---------------------------------------------------------------------------------
 
def main(argv):

	sqlhost = 'localhost'
	sqluser = ''
	sqlpasswd = ''
	dbname = ''
	outputfile = ''
	usestring = 'Usage: ./bionetwork.py -u <mysqluser> -p <mysqlpswd> -d <dbname> -o <outputfile> [optional: -l <host>, -w (write deleted reactions and molecules to file)]'
	writeDeletedReactions = 0


#Options treatment --------------------------------------------------------------------

	try:
		opts, args = getopt.getopt(argv,"hwu:p:d:s:o:l:",["user=","passwd=","database=","submodels=","output=","host"])
	except getopt.GetoptError:
		print usestring
	for opt, arg in opts:
		if opt == '-h':
			print usestring
			sys.exit()
		elif opt == '-w':
			writeDeletedReactions = 1
		elif opt in ("-u","--user"):
			sqluser = arg
		elif opt in ("-p","--passwd"):
			sqlpasswd = arg
		elif opt in ("-d","--database"):
			dbname = arg
		elif opt in ("-s","--submodels"):
			submodels_file = arg
		elif opt in ("-o","--output"):
			outputfile = arg
		elif opt in ("-l","--host"):
			sqlhost = arg
	if sqluser=='' or dbname=='' or outputfile=='' or submodels_file=='':
		print 'Error - Check if all the parameters were set'
		print usestring
		sys.exit()

	print 'BioNetwork 1.0'
	print 'Created by Paulo Burke at Federal University of Sao Paulo (2015)'
	print 'Initializing...'
	print 'Connecting WholeCellKB database named: ' + dbname + ' at ' +sqlhost+ '...'



#EMBOSS transeq check ----------------------------------

	try:
		with open(os.devnull, 'wb') as devnull:
			process = subprocess.Popen('transeq -h',shell=True,stdin=subprocess.PIPE,stdout=devnull, stderr=subprocess.STDOUT)
	except OSError as e:
		if e.errno == os.errno.ENOENT:
			print 'EMBOSS transeq command not found. Check if is it installed.'
			sys.exit(1)
		else:
			print 'Can\'t run EMBOSS transeq command for not known reason. Check if is it installed.'
			sys.exit(1)

#MySQL connection --------------------------------------
	try:
		con = mdb.connect(host=sqlhost, user=sqluser, passwd=sqlpasswd,db=dbname)
		c = con.cursor(mdb.cursors.DictCursor)
		print "Database connected."
	except mdb.Error, e:
		print "MySQL error %d: %s" % (e.args[0],e.args[1])
		sys.exit(1)



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

#Create external Models References ----------------------------------------
	
	print "Creating external model definitions of submodels..."
	sbmlplugin = document.getPlugin("comp")

	sub_models_id = []
	f_submodels = open(submodels_file)
	for line in f_submodels.readlines():
		sub_models_id.append(line.replace('\n',''))
	f_submodels.close()

	for sub_file in sub_models_id:
		#Create External Model
		ext_model = sbmlplugin.createExternalModelDefinition()
		check(ext_model.setSource(sub_file))
		check(ext_model.setId(sub_file.replace('.xml','')))



#Reading and creating compartments ---------------------

	counter = 0;
	print 'Reading compartments...'
	compartments = mysqlQuery(c,'select public_entry.wid, public_entry.name from public_compartment inner join public_entry on public_entry.id=public_compartment.parent_ptr_species_component_id')
	for comp in compartments:
		compart = model.createCompartment()
		check(compart)
		check(compart.setId(comp['wid'].replace("-","_")))
		check(compart.setName(comp['name']))
		check(compart.setConstant(True))
		check(compart.setSize(1))
		check(compart.setSpatialDimensions(3))
		check(compart.setUnits('litre'))
		counter = counter+1
	print str(counter)+' compartments created.'

#Instantiate submodels ---------------------------------------------------

	print "Instantiating submodels..."
	mplugin = model.getPlugin("comp")
#	subModelcount = 1
#	modelRef = {}
#	for sub_file in sub_models_id:
#		#Create Submodel
#		createSubmodel(mplugin,'subModel'+str(subModelcount),sub_file.replace('.xml',''),sub_file.replace('.xml',''))
##		compartments = ['c','d','e','m','tc','tm']
#		compartments = ['c','e','m']
#		for com in compartments:
#			compartment = model.getCompartment(com)
#			createReplacedElement(compartment,'output__'+com,'subModel'+str(subModelcount))
#		modelRef[sub_file.replace('.xml','')] = 'subModel'+str(subModelcount)
#		subModelcount+=1


#Retrieving model species from database -------------

	print 'Starting molecules reading...'

	genome = mysqlQuery(c,'select sequence from public_chromosome limit 1')
	genome = genome[0]['sequence']

	queries = [
			['Transcriptional Unit','select public_entry.wid, public_entry.name from public_transcriptionunit inner join public_entry on public_entry.id = public_transcriptionunit.parent_ptr_molecule_id'],
			['Protein Monomer','select public_entry.wid, public_entry.name, public_proteinmonomer.localization_id from public_proteinmonomer inner join public_entry on public_entry.id = public_proteinmonomer.parent_ptr_protein_id'],
			['Protein Complex','select public_entry.wid, public_entry.name from public_proteincomplex inner join public_entry on public_entry.id = public_proteincomplex.parent_ptr_protein_id'],
			['Metabolite','select public_entry.wid, public_entry.name from public_metabolite inner join public_entry on public_entry.id = public_metabolite.parent_ptr_molecule_id']
		]
	for query in queries:
		print 'Reading '+query[0]+'...'
		result = mysqlQuery(c,query[1])
		counter = 0;
		for row in result:
			if query[0] == 'Protein Monomer':
				loc = 'c'
				loc = mysqlQuery(c,"select wid from public_entry where id = "+str(row['localization_id']))
				loc = loc[0]['wid']
				createSpecies(model,row['wid'].replace("-","_"),row['name'],query[0],loc)
			else:				
				createSpecies(model,row['wid'].replace("-","_"),row['name'],query[0])
			counter = counter + 1
		print str(counter)+' '+query[0]+' created.'

#Transcription reactions ------------------------------------------------------
	polycistrons = {}
	counter = 0
	decayCounter = 0
	processingCounter = 0
	print 'Creating DNA transcription reactions and RNA decay reactions...'

	modificationMolecules = mysqlQuery(c,'select public_entry.wid from public_modificationreaction inner join public_entry on public_entry.id=public_modificationreaction.molecule_id')
	modificationMolecules = [mol['wid'] for mol in modificationMolecules]
	modificationMolecules = [i for i in set(modificationMolecules) if not ('_MONOMER' in i)]
	#print modificationMolecules

	transUnits = mysqlQuery(c,'select public_entry.wid, public_entry.name, public_transcriptionunit.parent_ptr_molecule_id from public_transcriptionunit inner join public_entry on public_entry.id = public_transcriptionunit.parent_ptr_molecule_id')
	for tr in transUnits:
		counter = counter+1
		submodelName = tr['wid'].replace("-","_")+'_transcription'
		createSubmodel(mplugin,submodelName,'transcription','transcription')

		#ADD RNA Polimerase
		createModifier(model,submodelName,RNAPOLIMERASE)
#		#ADD NusA, B, G, GreA and S10
#		createModifier(r,NUSA)
#		createModifier(r,NUSB)
#		createModifier(r,NUSG)
#		createModifier(r,S10)
#		createModifier(r,GREA)
#		createModifier(r,TOPOISOMERASE1)

		genes = mysqlQuery(c,'select public_entry.wid,public_gene.coordinate,public_gene.length,public_gene.direction from public_transcriptionunit_genes inner join public_entry on public_entry.id=public_transcriptionunit_genes.gene_id inner join public_gene on public_gene.parent_ptr_molecule_id=public_transcriptionunit_genes.gene_id where public_transcriptionunit_genes.transcriptionunit_id='+str(tr['parent_ptr_molecule_id']))

		if len(genes)>0:
#			mRNA = ''
			createDecayFlag = 0
			ACounter=0
			UCounter=0
			CCounter=0
			GCounter=0
			for gene in genes:
				ini = gene['coordinate']-1
				direction = gene['direction']
				end = 0;
				if direction == 'f':
					end = ini+gene['length']-1
				elif direction == 'r':
					end = ini-gene['length']+1
				for i in range(ini,end):
					if genome[i] == "A":
						UCounter = UCounter+1
					elif genome[i] == "T":
						ACounter = ACounter+1
					elif genome[i] == "C":
						GCounter = GCounter+1
					elif genome[i] == "G":
						CCounter = CCounter+1
			if len(genes)>1:
				namesGenes = [g['wid'] for g in genes]
				processingFlag = len(set(namesGenes).intersection(modificationMolecules))
				if processingFlag:
					rnaCount = 0
					processingCounter = processingCounter+1
					for gene in genes:
						rnaCount = rnaCount+1
						createSpecies(model,gene['wid'],gene['wid']+' RNA','Processed RNA')
						createGenericProduct(model,submodelName,gene['wid'],'RNA'+str(rnaCount),1)
						#decay
						partACounter=0
						partUCounter=0
						partCCounter=0
						partGCounter=0
						ini = gene['coordinate']-1
						direction = gene['direction']
						end = 0;
						if direction == 'f':
							end = ini+gene['length']-1
						elif direction == 'r':
							end = ini-gene['length']+1
						for i in range(ini,end):
							if genome[i] == "A":
								partUCounter = partUCounter+1
							elif genome[i] == "T":
								partACounter = partACounter+1
							elif genome[i] == "C":
								partGCounter = partGCounter+1
							elif genome[i] == "G":
								partCCounter = partCCounter+1
						decaySubmodelName = gene['wid']+"_decay"
						createSubmodel(mplugin,decaySubmodelName,'rnadecay','rnadecay')
						#ADD Ribonuclease
						createModifier(model,decaySubmodelName,RIBONUCLEASE)
						#add rna
						createGenericReactant(model,decaySubmodelName,gene['wid'],'RNA',1)
						#Add ATPS
						createProduct(model,decaySubmodelName,AMP,partACounter)
						#Add URACILS
						createProduct(model,decaySubmodelName,UMP,partUCounter)
						#Add GTPS
						createProduct(model,decaySubmodelName,GMP,partGCounter)
						#Add CTPS
						createProduct(model,decaySubmodelName,CMP,partCCounter)
#						
#					#Add RNASEIII
#					createModifier(pr,RNASEIII)
#					#ADD H2O
#					createReactant(pr,H2O,len(genes))
				else:
					createGenericProduct(model,submodelName,tr['wid'].replace("-","_"),'RNA1',1)
					createDecayFlag = 1
			else:
				createGenericProduct(model,submodelName,tr['wid'].replace("-","_"),'RNA1',1)
				createDecayFlag = 1



			#add RNA
#			createGenericReactant(model,submodelName,tr['wid'],'RNA',1)
			createReactant(model,submodelName,ATP,ACounter)
			#Add URACILS
			createReactant(model,submodelName,URA,UCounter)
			#Add GTPS
			createReactant(model,submodelName,GTP,GCounter)
			#Add CTPS
			createReactant(model,submodelName,CTP,CCounter)
			#Add PPis
			createProduct(model,submodelName,PPI,ACounter+UCounter+CCounter+GCounter)


			if createDecayFlag:
				decayCounter = decayCounter+1
				submodelName = tr['wid']+"_decay"
			
				createSubmodel(mplugin,submodelName,'rnadecay','rnadecay')
				#add rna
				createGenericReactant(model,submodelName,tr['wid'],'RNA',1)
				#Add ATPS
				createProduct(model,submodelName,AMP,ACounter)
				#Add URACILS
				createProduct(model,submodelName,UMP,UCounter)
				#Add GTPS
				createProduct(model,submodelName,GMP,GCounter)
				#Add CTPS
				createProduct(model,submodelName,CMP,CCounter)
				#ADD Ribonuclease
				createModifier(model,submodelName,RIBONUCLEASE)

#							

#			
#		else:
#			print 'Warning: reaction '+tr['wid'].replace("-","_")+'_TRANSCRIPTION'+' has no product!'
#	print str(counter)+' transcription reactions created.'
#	print str(processingCounter)+' pre-RNA processing reactions created.'
#	print str(decayCounter)+' RNA decay reactions created.'


#Writing SMBL to file ---------------------------------------------------------

	print "Writing model to file " +outputfile+ "..."
	try:
		f.write(writeSBMLToString(document))
	except ValueError:
		print "Error - Can\'t write SBML document to the file " +outputfile+"."
		sys.exit(1)

#Closing database connection --------------------------------------------------

	print "Closing database connection..."
	if con:
		con.close();

	print 'The BioNetwork is done.'
 
if __name__ == '__main__':
	main(sys.argv[1:])
	
	
