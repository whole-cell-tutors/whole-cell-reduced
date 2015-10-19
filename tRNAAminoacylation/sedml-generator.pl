#!/usr/bin/perl
use strict;
use warnings;

#use Text::CSV;



open(MODELS, '>sedml-models.xml') or die "Could not write to sedml-models.xml $!\n";
open(SIMULATIONS, '>sedml-simulations.xml') or die "Could not write to sedml-simulations.xml $!\n";
open(TASKS, '>sedml-tasks.xml') or die "Could not write to sedml-tasks.xml $!\n";
open(DATAGENERATOR, '>sedml-datagenerator.xml') or die "Could not write to sedml-datagenerator.xml $!\n";
open(OUTPUTS, '>sedml-output.xml') or die "Could not write to sedml-output.xml $!\n";



# MODELS 
#  <listOfModels>
#    <model id="model1" language="urn:sedml:language:sbml" source="model1.xml"> // put correct model source here 
#      <listOfChanges>
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfCompartments/sbml:compartment[@id='c']/@size" newValue="1" /> // set compartment size here
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='AMP__c']/@initialAmount" newValue="1.66053878316273e-06" /> // generate a change attribute element for each species in the model -- not sure where to get the values from?
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='ATP__c']/@initialAmount" newValue="1.66053878316273e-06" /> 
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='PPI__c']/@initialAmount" newValue="1.66053878316273e-06" /> 
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='THR__c']/@initialAmount" newValue="1.66053878316273e-06" /> 
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='MG479__c']/@initialAmount" newValue="1.66053878316273e-06" /> 
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='MG479_aa__c']/@initialAmount" newValue="1.66053878316273e-06" />
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='PI__c']/@initialAmount" newValue="1.66053878316273e-06" />
#        <changeAttribute target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='MG_375_DIMER__c']/@initialAmount" newValue="1.66053878316273e-06" />
#      </listOfChanges>
#    </model>
#  </listOfModels>




# SIMULATIONS 

# take as is
# <listOfSimulations>
#    <uniformTimeCourse id="sim1" initialTime="0" outputStartTime="0" outputEndTime="800" numberOfPoints="800">
#      <algorithm kisaoID="KISAO:0000027" />
#    </uniformTimeCourse>
#  </listOfSimulations>





# TASK
# take as is
# <listOfTasks>
#    <task id="task1" modelReference="model1" simulationReference="sim1" />
#  </listOfTasks>




# DATAGENERATOR 

# needs modification
# <listOfDataGenerators>
#    <dataGenerator id="time" name="time">
#      <listOfVariables>
#       <variable id="var_time_0" name="time" taskReference="task1" symbol="urn:sedml:symbol:time" />
#      </listOfVariables>
#      <math xmlns="http://www.w3.org/1998/Math/MathML">
#        <ci> var_time_0 </ci>
#      </math>
#    </dataGenerator>
#    <dataGenerator id="MG479_aa__c_1" name="MG479_aa__c_1"> // for each tRNAi_AA generate a dataGenerator element with the id {original id in SBML file}_[1-36], and name {original id in SBML file}_[1-36]
#      <listOfVariables>
#        <variable id="MG479_aa__c" name="MG479_aa__c" taskReference="task1" target="/sbml:sbml/sbml:model/sbml:listOfSpecies/sbml:species[@id='MG479_aa__c']" />
#      </listOfVariables> // for each tRNAi_AA generate a variable inside dataGenerator with the id, name, and target @id  being original id from SBML file. 
#      <math xmlns="http://www.w3.org/1998/Math/MathML">
#        <ci> MG479_aa__c </ci> // put variable ID here
#      </math>
#    </dataGenerator>
#  </listOfDataGenerators>




# OUTPUTS

# needs modification
# <listOfOutputs>
#    <plot2D id="plot1"> 
#      <listOfCurves>
#        <curve id="curve_0" logX="false" logY="false" xDataReference="time" yDataReference="MG479_aa__c_1" /> // for each tRNAi_AA create a curve element and put ID of tRNAi_AA in "yDataReference
#      </listOfCurves>
#    </plot2D>
#  </listOfOutputs>


close(MODELS);
close(SIMULATIONS);
close(TASKS);
close(DATAGENERATORS);
close(OUTPUTS);






# putting all together
local $/=undef;

open FILE, "<sedml-template" or die "Couldn't open file sedml-template: $!";
my $template = <FILE>;
close FILE;

open FILE, "<sedml-models.xml" or die "Couldn't open file sbml-species.xml: $!";
my $species = <FILE>;
close FILE;

open FILE, "<sedml-simulations.xml" or die "Couldn't open file sbml-reactions.xml: $!";
my $reactions = <FILE>;
close FILE;

open FILE, "<sedml-tasks.xml" or die "Couldn't open file sbml-compartments.xml: $!";
my $compartments = <FILE>;
close FILE;

open FILE, "<sedml-datagenerator.xml" or die "Couldn't open file sedml-datagenerator.xml: $!";
my $parameters = <FILE>;
close FILE;

open FILE, "<sedml-output.xml" or die "Couldn't open file sedml-output.xml: $!";
my $parameters = <FILE>;
close FILE;


$template =~ s/MODELS/$models/g;
$template =~ s/SIMULATIONS/$simulations/g;
$template =~ s/TASKS/$tasks/g;
$template =~ s/DATAGENERATOR/$datagenerator/g;
$template =~ s/OUTPUT/$output/g;

open FILE, ">tRNAAminoacylation-module-sedml.xml" or die "Couldn't open file tRNAAminoacylation-module-sedml.xml: $!";
print FILE $template;
close FILE;

