############
## test
##########


import sys
from libsbml import *



## Set variables


m=1
k_1=1
k_2=1
speciesIDFortRNAlist="Translation_MG_031_MONOMER"


## INPUT: Translation_Species_list,Translation_ReactionID_list






###################################################
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

def Extract_Translation_Excel_File():
    # import xlrd package to read from excel file (sudo pip install xlrd)
    import xlrd

    # open excel file
    workbook = xlrd.open_workbook('Translation.xls')

    # get sheet name for species data
    sheet = workbook.sheet_by_index(0)
    nrows = sheet.nrows

    # instantiate variables
    species = {}

    # cycle through rows of sheet
    for rindex in range(1, nrows):
        curr_id = sheet.cell(rindex, 0)
        curr_id = str(curr_id.value)

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

def Extract_ProteinDecay_Excel_File():
    # import xlrd package to read from excel file (sudo pip install xlrd)
    import xlrd

    # open excel file
    workbook = xlrd.open_workbook('ProteinDecay.xls')

    # get sheet name for species data
    sheet = workbook.sheet_by_index(0)
    nrows = sheet.nrows

    # instantiate variables
    species = {}

    # cycle through rows of sheet
    for rindex in range(1, nrows):
        curr_id = sheet.cell(rindex, 0)
        curr_id = str(curr_id.value)

        try:
            curr_name = sheet.cell(rindex, 1)
            curr_name = str(curr_name.value)
        except UnicodeEncodeError:
            curr_name = str(curr_name.value[0:10])

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

        try:
            curr_name = sheet.cell(rindex, 1)
            curr_name = str(curr_name.value)
        except UnicodeEncodeError:
            curr_name = str(curr_name.value[0:10])

        curr_stoichiometry = sheet.cell(rindex, 2)
        curr_stoichiometry = str(curr_stoichiometry.value)
        [curr_reactants, curr_products] = Get_Stoichiometries(curr_stoichiometry)

        curr_enzymes = sheet.cell(rindex, 3)
        curr_enzymes = str(curr_enzymes.value)
        curr_enzymes = curr_enzymes.split(', ')

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
[Translation_Species_Dict, Translation_Reactions_Dict] = Extract_Translation_Excel_File()
[ProteinDecay_Species_Dict, ProteinDecay_Reactions_Dict] = Extract_ProteinDecay_Excel_File()

Translation_Species_List = Get_List(Translation_Species_Dict)
Translation_Reactions_List = Get_List(Translation_Reactions_Dict)

ProteinDecay_Species_List = Get_List(ProteinDecay_Species_Dict)
ProteinDecay_Reactions_List = Get_List(ProteinDecay_Reactions_Dict)
###############################################


All_reactants_list=Get_Field(Translation_Reactions_Dict, speciesIDFortRNAlist, 'reactants')
All_tRNAs_list=All_reactants_list[:-2]


#Proper kinetic_law_string_Translation
## TODO test
## def Make_kinetic_law_string_Translation(speciesID,All_tRNAs_list=All_tRNAs_list,m,k_1,k_2):
##     ## speciesID -- Translation_reaction_ID
##     All_tRNAs_string='*'.join(All_tRNAs_list)
##     min_tRNA_sring="min("+All_tRNAs_string+")"
##     current_enzymes = Get_Field(Translation_Reactions_Dict, speciesID, 'enzymes')
##     enzymes_string='*'.join(current_enzymes)
##     min_enzymes_string="min("+enzymes_string+")"
##     current_rate_parameter_value = Get_Field(Translation_Reactions_Dict, speciesID, 'rate_parameter_value')
##     kcat=str(current_rate_parameter_value)
##     k_1=str(k_1)
##     k_2=str(k_2)
##     m=str(m)
##     Law_string="("+kcat+"*"+min_enzymes_string+"*"+min_tRNA_sring+"*GTP^"+m+")/((1+"+min_tRNA_sring+"/"+k_1+")*(1+GTP^"+m+"/"+k_2+"))"
##     return Law_string




# dummy kinetic_law_string_Translation
def Make_kinetic_law_string_Translation(speciesID,All_tRNAs_list=All_tRNAs_list,m=m,k_1=k_1,k_2=k_2):
    ## speciesID -- Translation_reaction_ID
    current_rate_parameter_value = Get_Field(Translation_Reactions_Dict, speciesID, 'rate_parameter_value')
    kcat=str(current_rate_parameter_value)
    k_1=str(k_1)
    k_2=str(k_2)
    m=str(m)
    Law_string="(kcat*RIBOSOME_70S*GTP^"+m+")/(1+GTP^"+m+"/"+k_2+")"
    return Law_string
    
        
def create_species(model, var_name,initialAmount=0):
    s1 = model.createSpecies()
    check(s1,                                 'create species s1')
    check(s1.setName(var_name),                     'set species s1 name')
    check(s1.setId(var_name),                     'set species s1 id')
    check(s1.setCompartment('c'),            'set species s1 compartment')
    check(s1.setConstant(False),              'set "constant" attribute on s1')
    check(s1.setInitialAmount(initialAmount),             'set initial amount for s1')
    check(s1.setSubstanceUnits('item'),       'set substance units for s1')
    check(s1.setBoundaryCondition(False),     'set "boundaryCondition" on s1')
    check(s1.setHasOnlySubstanceUnits(True), 'set "hasOnlySubstanceUnits" on s1')

def Translation_Reaction(model,Reaction_name, reactants_list, products_list,kinetic_law_string,enzymes_list):
    ## input: Reaction name
    ## Lists in the form [[coeffitient, ID]...] 

    r1 = model.createReaction()
    check(r1,                                 'create reaction')
    check(r1.setName(Reaction_name),                     'set reaction name')
    check(r1.setId(Reaction_name),                     'set reaction id')
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
    check(math_ast,                           'create AST for rate expression')
 
    kinetic_law = r1.createKineticLaw()
    check(kinetic_law,                        'create kinetic law')
    check(kinetic_law.setMath(math_ast),      'set math on kinetic law')

        ## set parameters
    para = kinetic_law.createParameter();
    para.setId("kcat");
    speciesID=Reaction_name
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

    ## create species
    for One_Species_ID in Translation_Species_List:
        ## TODO parse initial amount
        initialAmount=1 
        create_species(model,One_Species_ID,initialAmount)

    for speciesID in Translation_Reactions_List:
        current_reactants = Get_Field(Translation_Reactions_Dict, speciesID, 'reactants')
        current_products = Get_Field(Translation_Reactions_Dict, speciesID, 'products')
        kinetic_law_string=Make_kinetic_law_string_Translation(speciesID)
        enzymes_list=Get_Field(Translation_Reactions_Dict, speciesID, 'enzymes')
        Translation_Reaction(model,speciesID, current_reactants, current_products,kinetic_law_string,enzymes_list)

    return writeSBMLToFile(document,'ProteinToy.xml')

# write the model
if __name__ == '__main__':
    print(create_model(Translation_Species_List,Translation_Reactions_List))
###