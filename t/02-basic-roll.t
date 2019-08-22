use v6;
use Test;
use Game::RPG::Dice;

ok my $pool = Game::RPG::Dice.new( :6size, :3count ), "Can make a dice pool";
ok $pool ~~ Game::RPG::Dice, "Expected object returned";
is $pool.size, 6, "6 sided dice";
is $pool.count, 3, "3 dice in total";
ok my $total = $pool.total;
ok 3 <= $total <= 18, "3d6 is in expected range for total";
is $pool.total, $total, "Total is fixed after first roll";

done-testing;
