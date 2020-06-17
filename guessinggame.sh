#!/usr/bin/env bash

# File: guessinggame.sh for final project The Unix Workbench

flag=empty #global variable used to denote if guess was right
actual=$(ls | wc -l) # count the lines in the current directory

function check_guess {
# takes two arguments - guess and actual
# prints message and updates global flag variable
  if [[ $1 -gt $2 ]]
  then
    echo "Your guess is too high. Try again."; echo
    flag=wrong
  elif [[ $1 -lt $2 ]]
  then
    echo "Your guess is too low.  Try again"; echo
    flag=wrong
  else
    echo "Congratulations!  There are indeed $2 files.  Game over!"; echo
    flag=right
  fi
}

echo; echo "Welcome. How many files are there in the current directory?"
echo

while [[ $flag != right ]]
do
  echo -n "Enter your guess: "
  read guess
  check_guess $guess $actual
done
