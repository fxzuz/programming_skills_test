#!/usr/bin/env ruby

ARGF.each do |line|
    prices = line.split(",").map { |s| s.to_f }

    max_price = 0
    avg       = 0

    prices.each do |price|
        max_price = price if price > max_price
        avg += price
    end

    avg  = (avg / prices.length).floor
    puts avg
    puts max_price
    fluc = (max_price - avg) / max_price * 100
    puts fluc
end

__END__
#!/usr/env/bin perl

use strict;

while (my $line = <>) {

    chomp $line;

    my @prices    = split ',', $line;
    my $max_price = 0;
    my $avg       = 0;

    for my $price (@prices) {

        $max_price = $price if $price > $max_price;
        $avg      += $price;
    }

    $avg     = int($avg / scalar @prices);
    my $fluc = ($max_price - $avg) / $max_price * 100;
    print $fluc."\n";
}
