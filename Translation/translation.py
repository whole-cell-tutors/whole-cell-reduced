############
## test
##########


import sys
#sys.path.append('/opt/libsbml/lib/python2.7/site-packages/libsbml/')

import libsbml
from libsbml import *



## Set variables


m=1
k_1=1
k_2=1
speciesIDFortRNAlist="Translation_MG_031_MONOMER"


## INPUT: Translation_Species_list,Translation_ReactionID_list






###################################################
##  functions to parse data from excel tables 
def Get_Stoichiometries(string):
    # define function to get stoichiometries for each species
    [reactants, products] = string.split(' -> ')
    
    ind_products = products.split(' + ')
    ind_reactants = reactants.split(' + ')
    
    ind_reactants_list = []
    for item in ind_reactants:
        [coef, species] = item.split(' ')
        ind_reactants_list.append([int(coef), species])
    
    ind_products_list = []
    for item in ind_products:
        [coef, species] = item.split(' ')
        ind_products_list.append([int(coef), species])
        
    return [ind_reactants_list, ind_products_list]

def Extract_Translation_Excel_File(file_name='Translation.xls'):
    # import xlrd package to read from excel file (sudo pip install xlrd)
    import xlrd

    # open excel file
    workbook = xlrd.open_workbook(file_name)

    # get sheet name for species data
    sheet = workbook.sheet_by_index(0)
    nrows = sheet.nrows

    # instantiate variables
    species = {}

    # cycle through rows of sheet
    for rindex in range(1, nrows):
        curr_id = sheet.cell(rindex, 0)
        curr_id = str(curr_id.value)

        #---#
        curr_id=curr_id+'__c'

        curr_name = sheet.cell(rindex, 1)
        curr_name = str(curr_name.value)

        curr_compartment = sheet.cell(rindex, 2)
        curr_compartment = str(curr_compartment.value)

        curr_copy_number = sheet.cell(rindex, 3)
        curr_copy_number = int(curr_copy_number.value)

        curr_type = sheet.cell(rindex, 4)
        curr_type = str(curr_type.value)

        curr_role = sheet.cell(rindex, 5)
        curr_role = str(curr_role.value)

        # populate dict for the rindex-th entry
        species[curr_id] = {}
        species[curr_id]['name'] = curr_name
        species[curr_id]['compartment'] = curr_compartment
        species[curr_id]['copy_number'] = curr_copy_number
        species[curr_id]['type'] = curr_type
        species[curr_id]['role'] = curr_role

    # get sheet name for reaction data
    sheet = workbook.sheet_by_index(1)
    nrows = sheet.nrows

    # instantiate variables
    proteins = {}

    # cycle through rows of sheet
    for rindex in range(1, nrows):
        curr_id = sheet.cell(rindex, 0)
        curr_id = str(curr_id.value)

        curr_name = sheet.cell(rindex, 1)
        curr_name = str(curr_name.value)

        curr_stoichiometry = sheet.cell(rindex, 2)
        curr_stoichiometry = str(curr_stoichiometry.value)
        [curr_reactants, curr_products] = Get_Stoichiometries(curr_stoichiometry)

        curr_enzymes = sheet.cell(rindex, 3)
        curr_enzymes = str(curr_enzymes.value)
        curr_enzymes = curr_enzymes.split(', ')
        

        #---#
        tmp=map(lambda x: [x[0],x[1]+'__c'], curr_reactants)
        curr_reactants=tmp
        tmp=map(lambda x: [x[0],x[1]+'__c'], curr_products)
        curr_products=tmp
        tmp=map(lambda x: x+'__c', curr_enzymes)
        curr_enzymes=tmp

        curr_rate_parameter = sheet.cell(rindex, 5)
        curr_rate_parameter = str(curr_rate_parameter.value)
        [curr_rate_parameter_name, curr_rate_parameter_value] = curr_rate_parameter.split(' = ')
        curr_rate_parameter_value = float(curr_rate_parameter_value)

        # populate dict for the rindex-th entry
        proteins[curr_id] = {}
        proteins[curr_id]['name'] = curr_name
        proteins[curr_id]['products'] = curr_products
        proteins[curr_id]['reactants'] = curr_reactants
        proteins[curr_id]['enzymes'] = curr_enzymes
        proteins[curr_id]['rate_parameter_name'] = curr_rate_parameter_name
        proteins[curr_id]['rate_parameter_value'] = curr_rate_parameter_value
        
    return [species, proteins]


def Get_List(dictionary):
    # get list of dictionary keys
    return dictionary.keys()

def Get_Field(dictionary, ID, field):
    # given an ID and a field (both strings), return value from dictionary
    return dictionary[ID][field]

##############################################
## parse global dictionaries of species and reactions
## from excel table 
[Translation_Species_Dict, Translation_Reactions_Dict] = Extract_Translation_Excel_File()
Translation_Species_List = Get_List(Translation_Species_Dict)
Translation_Reactions_List = Get_List(Translation_Reactions_Dict)

###############################################


All_reactants_list=Get_Field(Translation_Reactions_Dict, speciesIDFortRNAlist, 'reactants')
All_tRNAs_list=All_reactants_list[:-2]

#print(All_tRNAs_list)
#print(All_reactants_list)


def generateMinLaw (listofStuff):
	i = 1
	Law_string=listofStuff[0]
	while i < len(listofStuff):
		if i + 16 < len(listofStuff):
			Law_string="min16("+Law_string+",";
			for j in range (16):
				Law_string=Law_string+listofStuff[i]
				if j != 15:
					Law_string=Law_string+","
				i=i+1;
			Law_string=Law_string+")"
		elif i + 8 < len(listofStuff):
			Law_string="min8("+Law_string+",";
			for j in range (8):
				Law_string=Law_string+listofStuff[i]
				if j != 7:
					Law_string=Law_string+","
				i=i+1;
			Law_string=Law_string+")"
		elif i + 4 < len(listofStuff):
			Law_string="min4("+Law_string+",";
			for j in range (3):
				Law_string=Law_string+listofStuff[i]
				if j != 2:
					Law_string=Law_string+","
				i=i+1;
			Law_string=Law_string+")"
		else:
			Law_string="min2("+Law_string+","+listofStuff[i]+")"
			i+=1
	return Law_string

#Proper kinetic_law_string_Translation
def Make_kinetic_law_string_Translation(speciesID,m=m,k_1=k_1,k_2=k_2):
    ## speciesID -- Translation_reaction_ID
    current_enzymes = Get_Field(Translation_Reactions_Dict, speciesID, 'enzymes')
    current_rate_parameter_value = Get_Field(Translation_Reactions_Dict, speciesID, 'rate_parameter_value')
    kcat=str(current_rate_parameter_value)
    k_1=str(k_1)
    k_2=str(k_2)
    m=str(m)
    minis=[]
    All_reactants_list_tmp=Get_Field(Translation_Reactions_Dict, speciesID, 'reactants')
    ## assume that latter 2 reactants are GTP and H20 in every reaction
    All_tRNAs_list_tmp=All_reactants_list_tmp[:-2]
    for mini in All_tRNAs_list_tmp:
        minis.append (mini[1])
    Law_string_enz=generateMinLaw(current_enzymes)
    Law_string_trna=generateMinLaw(minis)
    Law_string="(kcat*("+Law_string_enz+"*"+Law_string_trna+")*GTP__c^m)/((1+"+Law_string_trna+"/k_1)*(1+GTP__c^m/k_2))"
    return Law_string
    
        
def create_species(model, var_id, var_name, initialAmount=0):
    s1 = model.createSpecies()
    check(s1,                                 'create species s1')
    check(s1.setName(var_name),                     'set species s1 name')
    check(s1.setId(var_id),                     'set species s1 id')
    check(s1.setCompartment('c'),            'set species s1 compartment')
    check(s1.setConstant(False),              'set "constant" attribute on s1')
    check(s1.setInitialAmount(initialAmount),             'set initial amount for s1')
    check(s1.setSubstanceUnits('item'),       'set substance units for s1')
    check(s1.setBoundaryCondition(False),     'set "boundaryCondition" on s1')
    check(s1.setHasOnlySubstanceUnits(True), 'set "hasOnlySubstanceUnits" on s1')

def Translation_Reaction(model, reaction_id, Reaction_name, reactants_list, products_list,kinetic_law_string,enzymes_list):
    ## input: Reaction name
    ## Lists in the form [[coeffitient, ID]...] 

    r1 = model.createReaction()
    check(r1,                                 'create reaction')
    check(r1.setName(Reaction_name),                     'set reaction name')
    check(r1.setId(reaction_id),                     'set reaction id')
    check(r1.setReversible(False),            'set reaction reversibility flag')
    check(r1.setFast(False),                  'set reaction "fast" attribute')

    ## create reactants
    
    for reactantIDX in  range(len(reactants_list)):
        ## REACTANT is [coeffitient, ID]
        stochio=reactants_list[reactantIDX][0]
        reactant=reactants_list[reactantIDX][1]
        
        exec("Reactant"+str(reactantIDX)+" = r1.createReactant()")
        exec("check("+"Reactant"+str(reactantIDX)+",                       'create reactant')")
        exec("check("+"Reactant"+str(reactantIDX)+".setSpecies(reactant),      'assign reactant species')")
        exec("check("+"Reactant"+str(reactantIDX)+".setConstant(False),     'set constant on species ref 1')")
        exec("check("+"Reactant"+str(reactantIDX)+".setStoichiometry(stochio),     'set coefficient on species ref 1')")

    for productIDX in range(len(products_list)):
        stochio=products_list[productIDX][0]
        product=products_list[productIDX][1]

        exec("Product_"+str(productIDX)+ "= r1.createProduct()")
        exec("check("+"Product_"+str(productIDX)+",                       'create product')")
        exec("check("+"Product_"+str(productIDX)+".setSpecies(product),      'assign product species')")
        exec("check("+"Product_"+str(productIDX)+".setConstant(False),     'set constant on species ref 2')")
        exec("check("+"Product_"+str(productIDX)+".setStoichiometry(stochio),     'set coefficient on species ref IDX')")

    for enzymeIDX in range(len(enzymes_list)):
        enzyme=enzymes_list[enzymeIDX]
        
        exec("Enzyme_"+str(enzymeIDX)+ "= r1.createModifier()")
        exec("check("+"Enzyme_"+str(enzymeIDX)+",                       'create product')")
        exec("check("+"Enzyme_"+str(enzymeIDX)+".setSpecies(enzyme),      'assign product species')")
    #    exec("check("+"Enzyme_"+str(enzymeIDX)+".setConstant(False),     'set constant on species ref 2')")
     #   exec("check("+"Enzyme_"+str(enzymeIDX)+".setStoichiometry(stochio),     'set coefficient on species ref IDX')")

        

    ### kinetic law part
    math_ast = parseL3Formula(kinetic_law_string)
    if math_ast == None:
			print kinetic_law_string
    check(math_ast,                           'create AST for rate expression')
 
    kinetic_law = r1.createKineticLaw()
    check(kinetic_law,                        'create kinetic law')
    check(kinetic_law.setMath(math_ast),      'set math on kinetic law')

        ## set parameters
    para = kinetic_law.createParameter();
    para.setId("kcat");
    speciesID=reaction_id
    paraValue=Get_Field(Translation_Reactions_Dict, speciesID, 'rate_parameter_value')
    para.setValue(paraValue);

    para = kinetic_law.createParameter();
    para.setId("m");
    paraValue=m
    para.setValue(paraValue);

    para = kinetic_law.createParameter();
    para.setId("k_1");
    paraValue=k_1
    para.setValue(paraValue);

    para = kinetic_law.createParameter();
    para.setId("k_2");
    paraValue=k_2
    para.setValue(paraValue);

        

def check(value, message):
  """If 'value' is None, prints an error message constructed using
  'message' and then exits with status code 1.  If 'value' is an integer,
  it assumes it is a libSBML return status code.  If the code value is
  LIBSBML_OPERATION_SUCCESS, returns without further action; if it is not,
  prints an error message constructed using 'message' along with text from
  libSBML explaining the meaning of the code, and exits with status code 1.
  """
  if value == None:
    raise SystemExit('LibSBML returned a null value trying to ' + message + '.')
  elif type(value) is int:
    if value == LIBSBML_OPERATION_SUCCESS:
      return
    else:
      err_msg = 'Error encountered trying to ' + message + '.' \
                + 'LibSBML returned error code ' + str(value) + ': "' \
                + OperationReturnValue_toString(value).strip() + '"'
      raise SystemExit(err_msg)
  else:
    return
    

    
def create_model(Translation_Species_List,Translation_ReactionID_List):
    from libsbml import *
    # level 3 SBML model
  
    # Create an empty SBMLDocument object.  It's a good idea to check for
    # possible errors.  Even when the parameter values are hardwired like
    # this, it is still possible for a failure to occur (e.g., if the
    # operating system runs out of memory).
    try:
      document = SBMLDocument(3, 1)
    except ValueError:
      raise SystemExit('Could not create SBMLDocumention object')
    model = document.createModel()
    check(model,                              'create model')
    check(model.setTimeUnits("second"),       'set model-wide time units')
    check(model.setExtentUnits("item"),       'set model units of extent')
    check(model.setSubstanceUnits('item'),    'set model substance units')



        # Create a compartment inside this model, and set the required
    # attributes for an SBML compartment in SBML Level 3.
    c1 = model.createCompartment()
    check(c1,                                 'create compartment')
    check(c1.setId('c'),                     'set compartment id')
    check(c1.setConstant(True),               'set compartment "constant"')
    check(c1.setSize(1),                      'set compartment "size"')
    check(c1.setSpatialDimensions(3),         'set compartment dimensions')
    check(c1.setUnits('litre'),               'set compartment size units')
    
    ## create functions
    f1 = model.createFunctionDefinition()
    check (f1, "create function definition for min2")
    check (f1.setId('min2'),  "set id of function definition for min2")
    check (f1.setMath (libsbml.readMathMLFromString("<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><lambda><bvar> <ci> a </ci> </bvar> <bvar> <ci> b </ci> </bvar> <apply> <times></times> <cn type=\"rational\"> 1 <sep></sep> 2 </cn> <apply> <minus></minus> <apply> <plus></plus> <ci> a </ci> <ci> b </ci> </apply> <apply> <abs></abs> <apply> <minus></minus> <ci> a </ci> <ci> b </ci> </apply> </apply> </apply> </apply> </lambda> </math>")), "setting math for function definition for min2")
    
    f2 = model.createFunctionDefinition()
    check (f2, "create function definition for min4")
    check (f2.setId('min4'),  "set id of function definition for min4")
    check (f2.setMath (libsbml.readMathMLFromString("<math xmlns=\"http://www.w3.org/1998/Math/MathML\"> <lambda> <bvar> <ci> a </ci> </bvar> <bvar> <ci> b </ci> </bvar> <bvar> <ci> c </ci> </bvar> <bvar> <ci> d </ci> </bvar> <apply> <ci> min2 </ci> <apply> <ci> min2 </ci> <ci> a </ci> <ci> b </ci> </apply> <apply> <ci> min2 </ci> <ci> c </ci> <ci> d </ci> </apply> </apply> </lambda> </math>")), "setting math for function definition for min2")
    
    f3 = model.createFunctionDefinition()
    check (f3, "create function definition for min8")
    check (f3.setId('min8'),  "set id of function definition for min8")
    check (f3.setMath (libsbml.readMathMLFromString("<math xmlns=\"http://www.w3.org/1998/Math/MathML\"> <lambda> <bvar> <ci> a </ci> </bvar> <bvar> <ci> b </ci> </bvar> <bvar> <ci> c </ci> </bvar> <bvar> <ci> d </ci> </bvar> <bvar> <ci> e </ci> </bvar> <bvar> <ci> f </ci> </bvar> <bvar> <ci> g </ci> </bvar> <bvar> <ci> h </ci> </bvar> <apply> <ci> min2 </ci> <apply> <ci> min4 </ci> <ci> a </ci> <ci> b </ci> <ci> c </ci> <ci> d </ci> </apply> <apply> <ci> min4 </ci> <ci> e </ci> <ci> f </ci> <ci> g </ci> <ci> h </ci> </apply> </apply> </lambda> </math>")), "setting math for function definition for min8")
    
    f3 = model.createFunctionDefinition()
    check (f3, "create function definition for min16")
    check (f3.setId('min16'),  "set id of function definition for min16")
    check (f3.setMath (libsbml.readMathMLFromString("<math xmlns=\"http://www.w3.org/1998/Math/MathML\"> <lambda> <bvar> <ci> a </ci> </bvar> <bvar> <ci> b </ci> </bvar> <bvar> <ci> c </ci> </bvar> <bvar> <ci> d </ci> </bvar> <bvar> <ci> e </ci> </bvar> <bvar> <ci> f </ci> </bvar> <bvar> <ci> g </ci> </bvar> <bvar> <ci> h </ci> </bvar> <bvar> <ci> i </ci> </bvar> <bvar> <ci> j </ci> </bvar> <bvar> <ci> k </ci> </bvar> <bvar> <ci> l </ci> </bvar> <bvar> <ci> m </ci> </bvar> <bvar> <ci> n </ci> </bvar> <bvar> <ci> o </ci> </bvar> <bvar> <ci> p </ci> </bvar> <apply> <ci> min4 </ci> <apply> <ci> min4 </ci> <ci> a </ci> <ci> b </ci> <ci> c </ci> <ci> d </ci> </apply> <apply> <ci> min4 </ci> <ci> e </ci> <ci> f </ci> <ci> g </ci> <ci> h </ci> </apply> <apply> <ci> min4 </ci> <ci> i </ci> <ci> j </ci> <ci> k </ci> <ci> l </ci> </apply> <apply> <ci> min4 </ci> <ci> m </ci> <ci> n </ci> <ci> o </ci> <ci> p </ci> </apply> </apply> </lambda> </math>")), "setting math for function definition for min16")

    ## create species
    for One_Species_ID in Translation_Species_List:
        initialAmount=Get_Field (Translation_Species_Dict, One_Species_ID, "copy_number")
        species_name=Get_Field (Translation_Species_Dict, One_Species_ID, "name")
        create_species(model,One_Species_ID,species_name,initialAmount)

    for reactionID in Translation_Reactions_List:
        current_reactants = Get_Field(Translation_Reactions_Dict, reactionID, 'reactants')
        current_products = Get_Field(Translation_Reactions_Dict, reactionID, 'products')
        kinetic_law_string=Make_kinetic_law_string_Translation(reactionID)
        enzymes_list=Get_Field(Translation_Reactions_Dict, reactionID, 'enzymes')
        reactionName = Translation_Reactions_Dict[reactionID]['name']
        Translation_Reaction(model, reactionID, reactionName, current_reactants, current_products,kinetic_law_string,enzymes_list)


        ####
    ## debugging (from @Frank)

    ##show more errors
    ##numErrors = document.checkConsistency()
    ##if numErrors > 0:
      ##  document.printErrors()


    return writeSBMLToFile(document,'Translation_lvl3_v1.xml')

# write the model
if __name__ == '__main__':
    print(create_model(Translation_Species_List,Translation_Reactions_List))
###
