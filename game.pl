% Welcome the champion
welcome_champ :-
    write("Hey Champion!"), nl.

% Get guessing limit from user
% Pass in a variable to catch the input value
get_user_guess_limit(Limit) :- % 'Limit' catch input value and act as 'return' value
    write("What is the guess limit you'd like it to be? "),
    read(Limit), % read user input into variable 'Limit'
    write("Your guess limit is: "), write(Limit), nl,
    write("Your ")


% How to run program
% 1. Install SWI-Prolog
% 2. Add it to your system's PATH
% 3. Open terminal and navigate to the directory where this file is located
% 4. Run the file: swipl game.pl
% 5. Call the function in the Prolog REPL: ?- welcome_champ. or ?- get_user_guess_limit.
