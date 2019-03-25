Conway’s automaton, or “Game Of Life”, is a cellular automaton whose initial input
configuration determines its evolution. The game is played on a virtually infinit grid of
cells, each cell beeing either alive or dead. The life or death of a cell is determined by
the state of its 8 neighbors according to a set of simple rules.

◦ Any live cell with fewer than two live neighbours dies, as if caused by under-
population.

◦ Any live cell with two or three live neighbours lives on to the next generation.

◦ Any live cell with more than three live neighbours dies, as if by over-population.

◦ Any dead cell with exactly three live neighbours becomes a live cell, as if by
reproduction.

Lisp is an amazing language, really. The swarm of parenthesis might be a little bit
difficult to wrap your head around at first, but once you get it, a new world opens. Its
functionnal paradigm, the way “everything” is a list, the way the list are processed, han-
dling data as code and vice versa, etc. Beeing able to use Lisp and to understand it gives
you an edge when adressing any programming language.

When first watching a Conway’s automaton unfold, one is mesmerized. Seeing all
these little cells live and die, again and again, at high speed while creating complex and
seemingly “alive” patterns really reminds of actual living cells. Things really get weird
when one discovers that, through this entertaining chaos, order can emerge. Specific
patterns can be used to create complex interractions between blobs of cells, self replica-
tion, or message passing for instance. Lot’s of sorcerer’s apprentices try day after day to
create more and more complex interactions and use Conway’s automaton as a rightful
computing model.
