#!/usr/bin/env perl

use strict;
use warnings;

use PDF::API2;

use constant X_WIDTH => 480;
use constant Y_HEIGHT => 720;

my $pdf = PDF::API2->new(-file => 'book.pdf');

foreach (glob 'pbm/*.pbm') {
    print "processing $_...\n";
    my $page = $pdf->page;
    $page->mediabox(X_WIDTH, Y_HEIGHT);

    my $gfx = $page->gfx;
    my $img_file = $pdf->image_pnm("$_");

    $gfx->image($img_file, 0, 0, X_WIDTH, Y_HEIGHT);
#    $gfx->image($img_file, 0, 0, 0.10);
}

$pdf->save;
