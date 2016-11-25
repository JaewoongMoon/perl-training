#file-로 시작하는 파일들의 리스트를 보여준다.
while(<file-*>){
print $_."\n";
}

print "-" x 30 ."\n";
# 현재 디렉토리의 모든 파일에 대해서 그 사이즈를 출력한다. 
while(<*>){
my $size = -s $_;

print "$_ size :$size\n";
}

print "-" x 30 ."\n";

# "/tmp" 밑에 있는 모든 파일을 검색하여 그 사이즈가 1k 보다 큰 파일들을 출력한다.

sub dopath{
	my ($dir) = @_;

	while(<$dir/*>){
		if( -d $_){
			return dopath($_);
		}

		my $size = -s $_;
#		if($size > 102){
			print "$_ : $size \n";
#		}
	}
}

dopath("/tmp");

