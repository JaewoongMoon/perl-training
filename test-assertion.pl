
# \b 는 단어와 단어 간의 경계 부분을 의미 
@arr = ("test is good", "testisgood", "testisgoodisgood");

foreach $a (@arr){
	if ($a =~ /\bis\b/ ){
		print "[$a] is true\n";
	}else{
		print "[$a] is FALSE\n";
	}
}

