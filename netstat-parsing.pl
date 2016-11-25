sub func{
	my %state;
	foreach( `netstat -an | grep tcp` ){
		my @arr = split / +/;

		$state{$arr[5]}++;
	}

	foreach my $s (sort keys %state){
		print "$s : $state{$s}\n";
	}

}

while(1){
	print '-' x 30 ."\n";
	func();
	sleep 5;
}
