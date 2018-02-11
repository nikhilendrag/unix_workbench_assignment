#!/usr/bin/env bash

echo " Lets play Guessing game  "
num_files=$(ls | wc -l)

guess_check ()
{
  if [ $1 -gt $num_files ]; then
    echo "Guess to high, retry"
  elif [ $1 -lt $num_files ]; then 
    echo "Guess too low, retry"
  else
    echo "Congratulations, perfect guess"
    break
  fi
}
  
while true; do
  echo "Guess the number of files in the current directory"
  read user_input
  guess_check $user_input
done

