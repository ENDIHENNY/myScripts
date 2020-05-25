########################################################
# Author: ENDIHENNY 
# Purpose: Generate header for my source files
# Date: 2020-05-24
########################################################

#!/usr/bin/perl
use strict;
use warnings;

my $outfile = $ARGV[0];
my ($ext) = $outfile =~ /((\.[^.\s]+)+)$/; # Parse file extension
my $character = "";

print "File extension is: ". $ext . "\n";
print "Generating file header...\n";

# Generate comment charactor for different source language
if ($ext eq ".v" or $ext eq ".cpp")	{
	$character = "//";
} elsif ($ext eq ".m" or $ext eq ".pl")	{
	$character = "\#";
} else	{
	$character = "\#";
}

my $datestring = gmtime();
my $second_line = "$character Project:\n";
my $third_line = "$character Filename: $ARGV[0]\n";
my $fourth_line = "$character Author:\n";
my $fifth_line = "$character Description:\n";
my $sixth_line = "$character Date: $datestring\n";

open(my $OFILE, '>', $outfile) or die $!;

print $OFILE "$character"x50 . "\n";
print $OFILE "$second_line$third_line$fourth_line$fifth_line$sixth_line";
print $OFILE "$character"x50 . "\n";

close($OFILE)


