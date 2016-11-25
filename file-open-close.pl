# 기본적으로 제공되는 3개의 파일핸들 이외에 추가적인 파일 핸들을 얻기 위해서는 open() 함수를,
# 파일핸들 사용을 종료할 때는 close() 함수를 호출해주면 된다. 
# perl 에서는 괄호를 쓸 수도 있고, 안쓸 수도 있는데 이는 개인의 취향에 따른 문제이며,
# 대부분의 함수들의 리턴 값을 함수가 성공하면 TRUE(1)를, 실패하면 FALSE(0)를 되돌려 준다. 

# 기본형태
# open INPUT, "readme.txt" or die "File Open Error:$!";
# ....
# close INPUT;

open IN, "readme.txt" or die "readme.txt File Open Error:$!";
my @arr = <IN>;
while(<IN>){
	$line++;
}

close IN;

print "Line Cnt: $line\n";
print @arr."\n";

