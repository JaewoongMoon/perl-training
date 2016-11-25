# 파일 핸들을 통해서 데이터를 읽거나 쓸 수 있는데, 먼저 STDIN, STDOUT, STDERR 를 통해서 데이터를 읽고,
# 출력하는 부분에 대해서 간략히 다뤄보자. 

# 먼저 해당 파일 핸들을 통해서 사용자로부터 값을 읽어들이고, 이를 그대로 출력하는 예제 프로그램을 만들어 보자. 
print "Input String : ";

chomp($inline = <STDIN>);

print "In Line is [$inline]\n";
