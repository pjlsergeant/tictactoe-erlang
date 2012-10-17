-module(tictactoe).
-export([evaluate/1]).

% Massively multi-player tic-tac-toe

% `evaluate` takes a board, and determines if either player is the winner
evaluate([ A,A,A, _,_,_, _,_,_ ]) when A != b -> { winner, A };
evaluate([ _,_,_, A,A,A, _,_,_ ]) when A != b -> { winner, A };
evaluate([ _,_,_, _,_,_, A,A,A ]) when A != b -> { winner, A };

evaluate([ A,_,_, A,_,_, A,_,_ ]) when A != b -> { winner, A };
evaluate([ _,A,_, _,A,_, _,A,_ ]) when A != b -> { winner, A };
evaluate([ _,_,A, _,_,A, _,_,A ]) when A != b -> { winner, A };

evaluate([ A,_,_, _,A,_, _,_,A ]) when A != b -> { winner, A };
evaluate([ _,_,A, _,A,_, A,_,_ ]) when A != b -> { winner, A };

evaluate([ _,_,_, _,_,_, _,_,_ ]) -> { next }.