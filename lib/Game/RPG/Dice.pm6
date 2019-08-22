use v6.c;
unit class Game::RPG::Dice:ver<0.0.1>:auth<cpan:SCIMON>;

has Int $.size;
has Int $.count;
has Int $!total;

method total () {
    $!total //= [+] (1..$!size).roll($!count);
    return $!total;
}

=begin pod

=head1 NAME

Game::RPG::Dice - blah blah blah

=head1 SYNOPSIS

  use Game::RPG::Dice;

=head1 DESCRIPTION

Game::RPG::Dice is ...

=head1 AUTHOR

Simon Proctor <simon.proctor@zpg.co.uk>

=head1 COPYRIGHT AND LICENSE

Copyright 2019 Simon Proctor

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
