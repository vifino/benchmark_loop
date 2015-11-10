use strict;

my $iterations = 0;

my $start_time = time();

while ($iterations % 128 != 0 || (time()-$start_time) < 1) {
	++$iterations;
}

print "$iterations iterations";
