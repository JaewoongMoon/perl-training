$_ = "목 7월 29 11:59:57 KST 2004";
my @arr = m/
(\d+) # for digit
\D+ # for not digit
/xg;

print "@arr\n";
