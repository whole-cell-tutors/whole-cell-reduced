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

my $speciesFile = "tRNAAminoacylation-species.csv";
my $i = 0;
my @speciesIds = ();
my @compartmentIds = ();

open(my $data, '<', $speciesFile) or die "Could not open '$speciesFile' $!\n";
while (my $line = <$data>) {
  chomp $line;

  if ($csv->parse($line) && $i++ gt 0) {

  
      my @fields = $csv->fields();
      
  next if $fields[0] ~~ @speciesIds;
      
			#print SPECIES "<species id=\"".$fields[0]."\" name=\"".$fields[1]."\" compartment=\"".$fields[2]."\" initialAmount=\"".$fields[3]."\"/>\n";
			print SPECIES "<species id=\"".$fields[0]."\" compartment=\"".$fields[2]."\" initialAmount=\"".$fields[3]."\"/>\n";
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

my $reactionsFile = "tRNAAminoacylation-reactions.csv";
$i = 0;


open($data, '<', $reactionsFile) or die "Could not open '$reactionsFile' $!\n";
while (my $line = <$data>) {
  chomp $line;

  if ($csv->parse($line) && $i++ gt 0) {

  
      my @fields = $csv->fields();
      # ID,Name,Stoichiometry,Enzyme,Rate law,Rate parameters,Type,KM1,KM2,KM3
      print REACTIONS "<reaction id=\"".$fields[0]."\" name=\"".$fields[1]."\">\n";
			
			my @stoich = split "->", $fields[2];
			my @reactants = split " ", $stoich[0];
			my @products = split " ", $stoich[1];
			my @modifiers = split ", ", $fields[3];
			my @param = split " ", $fields[5];
      
      print PARAMETERS "<parameter id=\"".$param[0]."\" value=\"".$param[2]."\" />\n";
      
      my $multis = "\n";
      my $denomis = "";
      my $denomiNr = 0;
      
      print REACTIONS "\t<listOfReactants>\n";
      for (my $j = 1; $j < @reactants; $j+=3)
      {
				print REACTIONS "\t\t<speciesReference species=\"" . $reactants[$j] . "\" stoichiometry=\"".$reactants[$j - 1]."\" />\n";
				$multis .= "\t\t\t<ci>".$reactants[$j]."</ci>\n";
				$denomis .= "
				<apply>
					<times />
					<ci>".$reactants[$j]."</ci>
					<apply>
						<power />
						<ci>KM".++$denomiNr."</ci>
						<cn type='integer'>-1</cn>
					</apply>
				</apply>";
      }
      print REACTIONS "\t</listOfReactants>\n";

      
      print REACTIONS "\t<listOfProducts>\n";
      for (my $j = 1; $j < @products; $j+=3)
      {
				print REACTIONS "\t\t<speciesReference species=\"" . $products[$j] . "\" stoichiometry=\"".$products[$j - 1]."\" />\n";
      }
      print REACTIONS "\t</listOfProducts>\n";

      
      print REACTIONS "\t<listOfModifiers>\n";
      for (my $j = 0; $j < @modifiers; $j++)
      {
				print REACTIONS "\t\t<modifierSpeciesReference species=\"" . $modifiers[$j] . "\" />\n";
				$multis .= "\t\t\t<ci>".$modifiers[$j]."</ci>\n";
      }
      print REACTIONS "\t</listOfModifiers>\n";
      
      
      # KINETIC LAW
      print REACTIONS "
	<kineticLaw>
		<math xmlns='http://www.w3.org/1998/Math/MathML'>
		<apply>
			<times />
			<ci>".$param[0]."</ci>$multis
			<apply>
			<power />
			<apply>
				<plus />
				<cn type='integer'>1</cn>$denomis
			</apply>
			<cn type='integer'>-1</cn>
			</apply>
		</apply>
		</math>\n";
		print REACTIONS "\t<listOfParameters>\n";
		for (my $j = 1; $j <= $denomiNr; $j++)
		{
			print REACTIONS "\t\t<parameter id=\"KM".$j."\" value=\"1\" />\n";
		}
		print REACTIONS "\t</listOfParameters>";
		
	print REACTIONS "
	</kineticLaw>
</reaction>\n";
      
      
      
# 			print "<species id=\"".$fields[0]."\" name=\"".$fields[1]."\" compartment=\"".$fields[2]."\" initialAmount=\"".$fields[3]."\"/>\n";
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

open FILE, ">tRNAAminoacylation-module.xml" or die "Couldn't open file tRNAAminoacylation-module.xml: $!";
print FILE $template;
close FILE;

