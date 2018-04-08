#!/usr/bin/perl

use strict;
use warnings;
use SQL::Parser;

my $sql = "SELECT bytes,ggg,kkk al FROM tb1 a,tb2 b JOIN c WHERE c=1 AND e=7 ORDER BY f DESC LIMIT 5,2";
my $parser = SQL::Parser->new('Ansi');
$parser->parse($sql);
my $out_ref = $parser->structure;

print "* table name *","\n";
foreach my $table (@{$out_ref->{'table_names'}}){
    print $table,"\n";
}

print "* table name(map&print) *","\n";
#map { print $_,"\n" } @{$out_ref->{'table_names'}};
map { print $_,"\n" } @{$parser->structure->{'table_names'}};

print "* column name *","\n";
foreach my $column (@{$out_ref->{'org_col_names'}}){
    print $column,"\n";
}
