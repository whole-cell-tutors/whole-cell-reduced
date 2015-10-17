#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use XML::TreeBuilder;


my @files = (
"../MacromolecularComplexation/MacromolecularComplexation-module.xml",
"../ProteinTranslocation/ProteinTranslocation.xml",
"../Transcription/transcription_sbml.xml",
"../ProteinDecay/Decay_lvl3_v1.xml",
"../Translation/Translation_lvl3_v1.xml",
"../RNADecay/rnadecay_sbml.xml",
"../tRNAAminoacylation/tRNAAminoacylation-module.xml"
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
	if ($file ne "../ProteinTranslocation/ProteinTranslocation_v2.xml")
	{
		unlink $tmp;
		system ("python", "sbml-converter.py", $file, $tmp);
        sleep 2;
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

print "validating combined file\n";
my $errs=`python validator.py combined-model.sbml`;
if ($errs > 0)
{
	print "found $errs errors in combined model!!\n";
	exit 2;
}
