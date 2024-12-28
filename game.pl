% Welcome the champion
welcome_champ :-
    write("Hey Champion!"), nl.

% Generate a random number to guess | between two specified bounds, inclusive.
generate_random_number(Limit, Key) :-
    random_between(1, Limit, Key).

start :-
    write("Welcome to the Guessing Game!"), nl,nl,
    write("Please enter the maximum number for the guessing range: "), % personalized prompt
    read(Limit), nl, % read user input
    generate_random_number(Limit, NumToGuess), % generate the random number
    write("Alright! I've picked a secret number between 1 and "), 
    write(Limit), write(". Can you guess what it is?"), nl, % engage the user
    guess(NumToGuess). % Start the guessing loop

guess(NumToGuess) :-
    nl, write("Take a shot! Enter your guess"), % engaging prompt for a guess
    read(UserGuess), % read the user's guess
    (
        UserGuess =:= NumToGuess -> 
        write("Amazing! You got it right! Well done!"), nl; % celebrate the correct guess
        nl, write("Oops! That's not it. Don't give up, try again!"), nl, % encourage the user
        guess(NumToGuess) % recursive call for another attempt
    ).

% How to run program
% 1. Install SWI-Prolog
% 2. Add it to your system's PATH
% 3. Open terminal and navigate to the directory where this file is located
% 4. Run the file: swipl game.pl
% 5. Call the function in the Prolog REPL: ?- welcome_champ. or ?- get_user_guess_limit.
