#!/usr/bin/env bash
# File: guessinggame.sh

function init {
  echo "-------Guessing Game--------"
  echo "How many files are there in the current directory?"
  echo "Please enter a guess:"
}

function guessinggame {
  init
  read response
  folder_count=$(ls -al | grep ^- | wc -l)

  while [[ $response -ne $folder_count ]]
  do
    if [[ $response -gt $folder_count ]]
    then
      echo "Guess too high!  Please enter a guess again:"
      read response
    elif [[ $response -lt $folder_count ]]
    then
      echo "Guess too low!  Please enter a guess again:"
      read response
    fi
  done

  echo "That's correct!  Congratulation!"
}

guessinggame
