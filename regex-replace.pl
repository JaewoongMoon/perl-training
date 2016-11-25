
$_ = "this is a pen."
$matchcount = ($str =~ s/this/that/); # change 'this' to 'that'
s/^s*(.*?)s*$/$1/; # trim white space

print $matchcount
