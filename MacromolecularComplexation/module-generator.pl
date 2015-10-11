#!/usr/bin/perl
use strict;
use warnings;

use Text::CSV;



open(SPECIES, '>sbml-species.xml') or die "Could not write to sbml-species.xml $!\n";
open(REACTIONS, '>sbml-reactions.xml') or die "Could not write to sbml-reactions.xml $!\n";
open(PARAMETERS, '>sbml-parameters.xml') or die "Could not write to sbml-parameters.xml $!\n";
open(COMPARTMENTS, '>sbml-compartments.xml') or die "Could not write to sbml-compartment.xml $!\n";










# SPECIES

my $csv = Text::CSV->new({ sep_char => ',' });

my $speciesFile = "MacromolecularComplexation-species.csv";
my $i = 0;
my @speciesIds = ();
my @compartmentIds = ();

open(my $data, '<', $speciesFile) or die "Could not open '$speciesFile' $!\n";
while (my $line = <$data>) {
  chomp $line;

  if ($csv->parse($line) && $i++ gt 0) {

  
      my @fields = $csv->fields();
      
  next if $fields[0] ~~ @speciesIds;
      
			print SPECIES "<species id=\"".$fields[0]."__".$fields[2]."\" name=\"".$fields[1]."\" compartment=\"".$fields[2]."\" initialAmount=\"".$fields[3]."\"/>\n";
			push @speciesIds, $fields[0];
			
			next if $fields[2] ~~ @compartmentIds;
			
			print COMPARTMENTS "<compartment id=\"".$fields[2]."\" size=\"1\"/>\n";
			push @compartmentIds, $fields[2];
			
  } else {
      print "Line could not be parsed: $line\n" if ($i ne 1);
  }
}
close ($data);




# REACTIONS

my $reactionsFile = "MacromolecularComplexation-reactions.csv";
$i = 0;


open($data, '<', $reactionsFile) or die "Could not open '$reactionsFile' $!\n";
while (my $line = <$data>) {
  chomp $line;

  if ($csv->parse($line) && $i++ gt 0) {

  
      my @fields = $csv->fields();
      # ID,Name,Stoichiometry,Enzyme,Rate law,Rate parameters,Type,KM1,KM2,KM3
      print REACTIONS "<reaction id=\"".$fields[0]."\" name=\"".$fields[1]."\" reversible=\"false\" >\n";
			
			my @stoich = split "->", $fields[2];
			my @reactants = split " ", $stoich[0];
			my @products = split " ", $stoich[1];
			my @modifiers = split ", ", $fields[3];
			my @param = split " ", $fields[5];
      
      print PARAMETERS "<parameter id=\"".$param[0]."\" value=\"".$param[2]."\" />\n";
      
      my @minis = ();
      
      print REACTIONS "\t<listOfReactants>\n";
      for (my $j = 1; $j < @reactants; $j+=3)
      {
				$reactants[$j] =~ s/^(.*)\.(.*)$/$2__$1/g;
				print REACTIONS "\t\t<speciesReference species=\"" . $reactants[$j] . "\" stoichiometry=\"".$reactants[$j - 1]."\" />\n";
				push @minis, "<apply>
    <times />
    <ci>".$reactants[$j]."</ci>
    <apply>
     <power />
     <cn type='integer'>".$reactants[$j - 1]."</cn>
     <cn type='integer'>-1</cn>
    </apply>
   </apply>";
      }
      print REACTIONS "\t</listOfReactants>\n";

      
      print REACTIONS "\t<listOfProducts>\n";
      for (my $j = 1; $j < @products; $j+=3)
      {
				$products[$j] =~ s/^(.*)\.(.*)$/$2__$1/g;
				print REACTIONS "\t\t<speciesReference species=\"" . $products[$j] . "\" stoichiometry=\"".$products[$j - 1]."\" />\n";
      }
      print REACTIONS "\t</listOfProducts>\n";

      if (@modifiers gt 0)
      {
				print REACTIONS "\t<listOfModifiers>\n";
				for (my $j = 0; $j < @modifiers; $j++)
				{
					$modifiers[$j] =~ s/^(.*)\.(.*)$/$2__$1/g;
					print REACTIONS "\t\t<modifierSpeciesReference species=\"" . $modifiers[$j] . "\" />\n";
				}
				print REACTIONS "\t</listOfModifiers>\n";
      }
      
      my $math = $minis[0];
      
#       print $fields[0] . " -- minis is ".@minis.": ";
      my $j = 1;
#       for (my $j = 1; $j < @minis; $j++)
			while ($j lt @minis)
      {
				# get min of $math and $minis[j]
# 				print $j, @minis, "\n";
				if ($j + 4 < @minis)
				{
					$math = "<apply>
							<ci>min2</ci>
							".$math."
							<apply>
								<ci>min4</ci>
								".$minis[$j++]."
								".$minis[$j++]."
								".$minis[$j++]."
								".$minis[$j++]."
							</apply>
						</apply>";
				}
				else
				{
					$math = "<apply>
							<ci>min2</ci>
							".$math."
							".$minis[$j++]."
						</apply>";
				}
      }
      
      # KINETIC LAW
      print REACTIONS "
	<kineticLaw>
		<math xmlns='http://www.w3.org/1998/Math/MathML'>
			$math
		</math>\n";
		
	print REACTIONS "
	</kineticLaw>
</reaction>\n";
      
      
      
  } else {
      print "Line could not be parsed: $line\n" if ($i ne 1);
  }
}
close ($data);








close(SPECIES);
close(REACTIONS);
close(PARAMETERS);
close(COMPARTMENTS);






# putting all together
local $/=undef;

open FILE, "<sbml-template" or die "Couldn't open file sbml-template: $!";
my $template = <FILE>;
close FILE;

open FILE, "<sbml-species.xml" or die "Couldn't open file sbml-species.xml: $!";
my $species = <FILE>;
close FILE;

open FILE, "<sbml-reactions.xml" or die "Couldn't open file sbml-reactions.xml: $!";
my $reactions = <FILE>;
close FILE;

open FILE, "<sbml-compartments.xml" or die "Couldn't open file sbml-compartments.xml: $!";
my $compartments = <FILE>;
close FILE;

open FILE, "<sbml-parameters.xml" or die "Couldn't open file sbml-parameters.xml: $!";
my $parameters = <FILE>;
close FILE;


$template =~ s/SPECIES/$species/g;
$template =~ s/REACTIONS/$reactions/g;
$template =~ s/PARAMETERS/$parameters/g;
$template =~ s/COMPARTMENTS/$compartments/g;

open FILE, ">MacromolecularComplexation-module.xml" or die "Couldn't open file MacromolecularComplexation-module.xml: $!";
print FILE $template;
close FILE;

