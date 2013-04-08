#!/usr/bin/perl
use strict;
use HTML::TreeBuilder;

my $html = '';
while(defined(my $line = <STDIN>)){
    $html .= $line;
}

my $root = HTML::TreeBuilder->new;
$root->parse($html);
print $root->as_HTML('<>&', ' ', {});
exit;


