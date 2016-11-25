open IN, "/etc/passwd" or die "passwd open error:$!";
while(<IN>){
my @arr = split /:/;
print "ID: $arr[0], Home: $arr[5]\n";
}
close IN;

