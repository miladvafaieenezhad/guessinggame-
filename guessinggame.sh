#!/usr/bin/env bash
let x=$(find . -maxdepth 1 -type f | wc -l)
function high {
echo "sorry, $response is too high"
}
function low {
echo "sorry, $response is too low"
}
echo "how many files are in the current directory?:"
read response
echo "you guess: $response"
while [[ ! $response =~ ^[0-9]+$ ]]
  do
  echo "please enter a natural number"
  echo "try again:"
  read response
  echo "your new guess: $response"
while [[ $response =~ ^[0-9]+$  ]]
 do
      if [[ $response -gt $x ]]
      then
      high
      echo "try again:"
      read response
      echo "your new guess: $response"
      elif [[ $response -lt $x ]]
      then
      low
      echo "try again:"
      read response
      echo "your new guess: $response"
      fi
done
done
echo "~*~*~congratulation~*~*~"
