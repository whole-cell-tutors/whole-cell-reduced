#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use XML::TreeBuilder;


my @files = (
"../tRNAAminoacylation/tRNAAminoacylation-module.xml",
"../MacromolecularComplexation/MacromolecularComplexation-module.xml",
"../ProteinTranslocation/ProteinTranslocation.xml",
"../Transcription/transcription_sbml.xml",
"../Translation/Translation_lvl3_v1.xml",
"../RNADecay/rnadecay_sbml.xml",
"../ProteinDecay/Decay_lvl3_v1.xml"
);

my %species = ();
my $reactions = "";
my %parameters = ();
my %functionDefinitions = ();


# read XML file
for my $file (@files)
{
	print "converting $file\n";
	my $tmp = $file;
	$tmp =~ s/^.*\///g;
	$tmp = $tmp."-converted";
	if ($file ne "../ProteinTranslocation/ProteinTranslocation.xml")
	{
		unlink $tmp;
		system ("python", "sbml-converter.py", $file, $tmp);
	}
	else
	{
		$tmp = $file;
	}
	
	my $root = XML::TreeBuilder->new ();
	$root->parse_file ($tmp);

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
		$functionDefinitions{$itemNodes[$nodeIndex]->id()} = $itemNodes[$nodeIndex]->as_XML ();
	}
	
	@itemNodes = $root->find_by_tag_name ('parameter');
	for my $nodeIndex (0 .. @itemNodes - 1)
	{
		next if $itemNodes[$nodeIndex]->parent()->parent()->tag eq "kineticLaw";
		$parameters{$itemNodes[$nodeIndex]->id()} = $itemNodes[$nodeIndex]->as_XML ();
	}
	
}

local $/=undef;

open FILE, "<sbml-template" or die "Could not write to output $!\n";
my $template = <FILE>;
close FILE;

my $uniqSpecies = "";
my $uniqParameters = "";
my $uniqFunctions = "";

while (my ($key, $value) = each(%species)){
     $uniqSpecies .= $value;
}
while (my ($key, $value) = each(%parameters)){
     $uniqParameters .= $value;
}
while (my ($key, $value) = each(%functionDefinitions)){
     $uniqFunctions .= $value;
}



$template =~ s/SPECIES/$uniqSpecies/g;
$template =~ s/REACTIONS/$reactions/g;
$template =~ s/PARAMETERS/$uniqParameters/g;
$template =~ s/FUNCTIONDEF/$uniqFunctions/g;


open FILE, ">combined-model.sbml" or die "Could not write to output $!\n";
print FILE $template;
close FILE;


my $errs=`python validator.py combined-model.sbml`;
if ($errs > 0)
{
	print "found $errs errors in combined model!!";
	exit 2;
}