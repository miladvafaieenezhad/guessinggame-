#!/usr/bin/env bash
function forbiden {
while [[ $response =~ ^[a-zA-Z*/_%-+@$\s]*$  ]]
do
  echo "you have to enter a  number"
  echo "try again:"
  read response
  echo "your new guess: $response"
done
}
function file_number {
echo $(ls -l | wc -l)
}
x=$(file_number)
function high {
echo "sorry, $response is too high"
}
function low {
echo "sorry, $response is too low"
}



echo "how many files are in the current directory?:"
read response
echo "you guess: $response"
while [[ $response -ne x ]]
  do
  forbiden
      if [[ $response -gt x ]]
      then
      high
      echo "try again:"
      read response
      echo "your new guess: $response"
      elif [[ $response -lt x ]]
      then
      low
      echo "try again:"
      read response
      echo "your new guess: $response"
      fi
done
echo "~*~*~congratulation~*~*~"

