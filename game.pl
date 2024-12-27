% Welcome the champion
welcome_champ :-
    write("Hey Champion!"), nl.

% Generate a random number to guess | between two specified bounds, inclusive.
generate_secret_number(Limit, Key) :-
    random_between(1, Limit, Key).

start :-
    write("Input a guess limit: "),
    read(Limit),nl,
    write("Guess a number between 1 to "),
    write(Limit).

% How to run program
% 1. Install SWI-Prolog
% 2. Add it to your system's PATH
% 3. Open terminal and navigate to the directory where this file is located
% 4. Run the file: swipl game.pl
% 5. Call the function in the Prolog REPL: ?- welcome_champ. or ?- get_user_guess_limit.
