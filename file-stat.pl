#!/usr/bin/perl -w

# C 언어에서의 stat() 함수의 결과와 같은 것이다.

@arr = stat "file-stat.pl";
foreach $a (@arr){
	print "VAL : $a\n";
}
