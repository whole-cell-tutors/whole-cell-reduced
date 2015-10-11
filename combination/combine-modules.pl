#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use XML::TreeBuilder;



my @files = (
"../tRNAAminoacylation/tRNAAminoacylation-module.xml",
"../MacromolecularComplexation/MacromolecularComplexation-module.xml",
"../ProteinTranslocation/ProteinTranslocation.xml"
# "../ProteinDecay/protein-decay.xml" # -> that's l3...
);

my %species = ();
my $reactions = "";
my $parameters = "";
my $functionDefinitions = "";


# read XML file
for my $file (@files)
{
	my $root = XML::TreeBuilder->new ();
	$root->parse_file ($file);

	my @itemNodes = $root->find_by_tag_name ('reaction');
	my $nodeCount;

	for my $nodeIndex (0 .. @itemNodes - 1)
	{
		$reactions .= $itemNodes[$nodeIndex]->as_XML ();
	}
	
	@itemNodes = $root->find_by_tag_name ('species');
	for my $nodeIndex (0 .. @itemNodes - 1)
	{
		$species{$itemNodes[$nodeIndex]->id()} = $itemNodes[$nodeIndex]->as_XML ();
	}
	
	@itemNodes = $root->find_by_tag_name ('functionDefinition');
	for my $nodeIndex (0 .. @itemNodes - 1)
	{
		$functionDefinitions .= $itemNodes[$nodeIndex]->as_XML ();
	}
	
	@itemNodes = $root->find_by_tag_name ('parameter');
	for my $nodeIndex (0 .. @itemNodes - 1)
	{
		next if $itemNodes[$nodeIndex]->parent()->parent()->tag eq "kineticLaw";
		$parameters .= $itemNodes[$nodeIndex]->as_XML ();
	}
	
}

local $/=undef;

open FILE, "<sbml-template" or die "Could not write to output $!\n";
my $template = <FILE>;
close FILE;

my $uniqSpecies = "";
while (my ($key, $value) = each(%species)){
     $uniqSpecies .= $value;
}
$template =~ s/SPECIES/$uniqSpecies/g;
$template =~ s/REACTIONS/$reactions/g;
$template =~ s/PARAMETERS/$parameters/g;
$template =~ s/FUNCTIONDEF/$functionDefinitions/g;


open FILE, ">combined-model.sbml" or die "Could not write to output $!\n";
print FILE $template;
close FILE;

