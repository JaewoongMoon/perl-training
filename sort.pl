@arr = (50, 3, 14, 1, 2);
#@sarr = sort @arr;   # 숫자를 아스키 값으로 변환한 값을 기준으로 정렬
#@sarr = sort {$a <=> $b} @arr; # 숫자 크기 기준으로 정렬 
@sarr = reverse @arr;  # 역순으로 정렬 
print "Sort:@sarr\n";
