############
## test
##########

import sys
from libsbml import *
import re


## Set variables
k_1=1



## INPUT: ProteinDecay_Species_list,ProteinDecay_ReactionID_list

speciesCompartmentPattern = re.compile('^([a-z])\.(.*)$')



from sys import argv

# load command line arguments
def getopts(argv):
    opts = {}
    while argv:
        if argv[0][0] == '-':
            opts[argv[0]] = argv[1]
            argv = argv[2:]
        else:
            argv = argv[1:]
    return opts
myargs = getopts(argv)

try:
    fileName = myargs['-species']
#    id1 = myargs['-id1']
#   id2 = myargs['-id2']
except:
    print('Exaple usage is: ', \
    'python proteindecaySubset.py -species ProteinIDsubsetExample.txt')     
    sys.exit()


# read file with species for subset
FileWIthSubset = open(fileName, 'r')
Decay_Species_List_Subset= [line.split(',') for line in FileWIthSubset.readlines()]
Decay_Species_List_Subset=Decay_Species_List_Subset[0]
FileWIthSubset.close()

Decay_Species_List_Subset=[x.strip() for x in Decay_Species_List_Subset]
Decay_Reactions_List_Subset=map(lambda x: "Protein_decay_"+x[:-3]+x[-2:],Decay_Species_List_Subset)
    
print(Decay_Species_List_Subset)
print(Decay_Reactions_List_Subset)


###################################################
def Get_Stoichiometries(string):
    # define function to get stoichiometries for each species
    [reactants, products] = string.split(' -> ')
    
    ind_products = products.split(' + ')
    ind_reactants = reactants.split(' + ')
    
    ind_reactants_list = []
    for item in ind_reactants:
        [coef, species] = item.split(' ')
        species = speciesCompartmentPattern.sub (r'\2__\1', species)
        ind_reactants_list.append([int(coef), species])
    
    ind_products_list = []
    for item in ind_products:
        [coef, species] = item.split(' ')
        species = speciesCompartmentPattern.sub (r'\2__\1', species)
        ind_products_list.append([int(coef), species])
        
    return [ind_reactants_list, ind_products_list]

def GetDecaySpeciesPatch(xlsFile='ProteinDecay.xls'):
    ## input excel file
    ## ouput: list of species

    # import xlrd package to read from excel file (sudo pip install xlrd)
    import xlrd

    # open excel file
    workbook = xlrd.open_workbook(xlsFile)

    # get sheet name for species data
    sheet = workbook.sheet_by_index(0)
    nrows = sheet.nrows

    # instantiate variables
    species = []

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

        curr_species_string=curr_id+"__"+curr_compartment
                
        species.append(curr_species_string)

    return species

# global
ProteinDecay_Species_List = GetDecaySpeciesPatch()


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
    # Note: 'proteins' means reactions here

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
        enzymes = []
        for enzyme in curr_enzymes:
            # assumtion: each enzyme resides in one compartment only
            tmp=[x for x in ProteinDecay_Species_List if x[:-3]==enzyme]
            enzyme=tmp[0]
            enzymes.append(enzyme)

        curr_rate_parameter = sheet.cell(rindex, 5)
        curr_rate_parameter = str(curr_rate_parameter.value)
        [curr_rate_parameter_name, curr_rate_parameter_value] = curr_rate_parameter.split(' = ')
        curr_rate_parameter_value = float(curr_rate_parameter_value)

        # populate dict for the rindex-th entry
        proteins[curr_id] = {}
        proteins[curr_id]['name'] = curr_name
        proteins[curr_id]['products'] = curr_products
        proteins[curr_id]['reactants'] = curr_reactants
        proteins[curr_id]['enzymes'] = enzymes
        proteins[curr_id]['rate_parameter_name'] = curr_rate_parameter_name
        proteins[curr_id]['rate_parameter_value'] = curr_rate_parameter_value
        
    return [species, proteins]

def Get_List(dictionary):
    # get list of dictionary keys
    return dictionary.keys()

def Get_Field(dictionary, ID, field):
    # given an ID and a field (both strings), return value from dictionary
    return dictionary[ID][field]

def Relabel_Compartments(species):
    # change label from compartment.Species to Species_compartment (e.g., c.GTP --> GTP__c)
    
    for pair in species:
        current = pair[1]
        compartment = current[0]
        
        current = current[2:]
        current = current + '__' + compartment
        
        pair[1] = current
        
    return species



##############################################
# global dictionaries and lists
# for reactions and for species
[ProteinDecay_Species_Dict, ProteinDecay_Reactions_Dict] = Extract_ProteinDecay_Excel_File()

## choose subset
ProteinDecay_Reactions_Dict_tmp={k:ProteinDecay_Reactions_Dict[k] for k in Decay_Reactions_List_Subset}

ProteinDecay_Reactions_Dict = ProteinDecay_Reactions_Dict_tmp

#print(ProteinDecay_Reactions_Dict)

ProteinDecay_Reactions_List=Decay_Reactions_List_Subset

Redundant_Species_list=[]
for Reaction_name in ProteinDecay_Reactions_List:
    list_tmp2=ProteinDecay_Reactions_Dict[Reaction_name]['products']
    list_tmp=[x[1] for x in list_tmp2]
    Redundant_Species_list=Redundant_Species_list+list_tmp
    list_tmp2=ProteinDecay_Reactions_Dict[Reaction_name]['reactants']
    list_tmp=[x[1] for x in list_tmp2]
    Redundant_Species_list=Redundant_Species_list+list_tmp
    list_tmp=ProteinDecay_Reactions_Dict[Reaction_name]['enzymes']
    Redundant_Species_list=Redundant_Species_list+list_tmp

#print(Redundant_Species_list)

    
## select unique species only
ProteinDecay_Species_set = set(Redundant_Species_list)
ProteinDecay_Species_List=list(ProteinDecay_Species_set)  

#print(ProteinDecay_Species_List)
###############################################









def Make_kinetic_law_string_ProteinDecay(speciesID,k_1=k_1):
    ## speciesID -- ProteinDecay_reaction_ID
    current_rate_parameter_value = Get_Field(ProteinDecay_Reactions_Dict, speciesID, 'rate_parameter_value')
    kcat=str(current_rate_parameter_value)
    current_enzymes = Get_Field(ProteinDecay_Reactions_Dict, speciesID, 'enzymes')
    enzymes_string='*'.join(current_enzymes)
    k_1=str(k_1)
    species=speciesID[14:-1]+"_"+speciesID[-1]
    Law_string="(kcat*"+enzymes_string+"*"+species+")/(1+"+species+"/k_1)"
#        Law_string="("+kcat+"*"+enzymes_string+"*"+species+")/(1+"+species+"/"+k_1+")"
    return Law_string


    
        
def create_species(model, var_id, var_name, compartment, initialAmount=0):
    s1 = model.createSpecies()
    check(s1,                                 'create species s1')
    check(s1.setName(var_name),                     'set species s1 name')
    check(s1.setId(var_id),                     'set species s1 id')
    check(s1.setCompartment(compartment),            'set species s1 compartment')
    check(s1.setConstant(False),              'set "constant" attribute on s1')
    check(s1.setInitialAmount(initialAmount),             'set initial amount for s1')
    check(s1.setSubstanceUnits('item'),       'set substance units for s1')
    check(s1.setBoundaryCondition(False),     'set "boundaryCondition" on s1')
    check(s1.setHasOnlySubstanceUnits(True), 'set "hasOnlySubstanceUnits" on s1')

def ProteinDecay_Reaction(model, reaction_id, Reaction_name, reactants_list, products_list,kinetic_law_string,enzymes_list):
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
    check(math_ast,                           'create AST for rate expression')
 
    kinetic_law = r1.createKineticLaw()
    check(kinetic_law,                        'create kinetic law')
    check(kinetic_law.setMath(math_ast),      'set math on kinetic law')

    para = kinetic_law.createParameter();
    para.setId("kcat");
    speciesID=reaction_id
    paraValue=Get_Field(ProteinDecay_Reactions_Dict, speciesID, 'rate_parameter_value')
    paraValue=1

    para.setValue(paraValue);

    p2 = kinetic_law.createParameter()
    p2.setId("k_1")
    p2value = k_1
    p2.setValue(p2value)

    
def check(value, message):
  """If 'value' is None, prints an error message constructed using
  'message' and then exits with status code 1.  If 'value' is an integer,
  it assumes it is a libSBML return status code.  If the code value is
  LIBSBML_OPERATION_SUCCESS, returns without further action; if it is not,
  prints an error message constructed using 'message' along with text from
  libSBML explaining the meaning of the code, and exits with status code 0.
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
    

    
def create_model(ProteinDecay_Species_List,ProteinDecay_ReactionID_List):
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
    c1 = model.createCompartment()
    check(c1,                                 'create compartment')
    check(c1.setId('m'),                     'set compartment id')
    check(c1.setConstant(True),               'set compartment "constant"')
    check(c1.setSize(1),                      'set compartment "size"')
    check(c1.setSpatialDimensions(3),         'set compartment dimensions')
    check(c1.setUnits('litre'),               'set compartment size units')
    c1 = model.createCompartment()
    check(c1,                                 'create compartment')
    check(c1.setId('e'),                     'set compartment id')
    check(c1.setConstant(True),               'set compartment "constant"')
    check(c1.setSize(1),                      'set compartment "size"')
    check(c1.setSpatialDimensions(3),         'set compartment dimensions')
    check(c1.setUnits('litre'),               'set compartment size units')

    ## create species
    for One_Species_ID in ProteinDecay_Species_List:
        initialAmount=Get_Field (ProteinDecay_Species_Dict, One_Species_ID[:-3], "copy_number")
        compartment=One_Species_ID[-1]
        species_name=Get_Field (ProteinDecay_Species_Dict, One_Species_ID[:-3], "name")
        create_species(model,One_Species_ID, species_name, compartment,initialAmount)

    for reactionID in ProteinDecay_ReactionID_List:
        current_reactants = Get_Field(ProteinDecay_Reactions_Dict, reactionID, 'reactants')
        current_products = Get_Field(ProteinDecay_Reactions_Dict, reactionID, 'products')
        #current_reactants = Relabel_Compartments(current_reactants)
        #current_products = Relabel_Compartments(current_products)
        kinetic_law_string=Make_kinetic_law_string_ProteinDecay(reactionID)
        enzymes_list=Get_Field(ProteinDecay_Reactions_Dict, reactionID, 'enzymes')
        reactionName = ProteinDecay_Reactions_Dict[reactionID]['name']
        ProteinDecay_Reaction(model,reactionID, reactionName, current_reactants, current_products,kinetic_law_string,enzymes_list)

    ####
    ## debugging (from @Frank)

    ## show more errors
    #numErrors = document.checkConsistency()
    ## if numErrors > 0:
    ##     document.printErrors()

    ## show less errors 
    document.setConsistencyChecks(LIBSBML_CAT_UNITS_CONSISTENCY, False)
    document.setConsistencyChecks(LIBSBML_CAT_MODELING_PRACTICE, False)
    numErrors = document.checkConsistency()
    if numErrors > 0:
        document.printErrors()


        

    return writeSBMLToFile(document,'Protein_Decay_subset.xml')

## # write the model
if __name__ == '__main__':
    print(create_model(ProteinDecay_Species_List,ProteinDecay_Reactions_List))
## ###

