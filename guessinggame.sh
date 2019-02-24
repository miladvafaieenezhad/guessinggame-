#!/usr/bin/env bash
function file_number {
ls -l | wc -l
}
echo "how many files are in the current directory?:"
read response
echo "you guess: $response"
while [[ $response -ne file_number ]]
do
function high {
echo "sorry, $response is too high"
}
function low {
echo "sorry, $response is too low"
}
if [[ $response -gt file_number ]]
then
high
echo "try again:"
read response
echo "your new guess: $response"
elif [[ $response -lt file_number ]]
then
low
echo "try again:"
read response
echo "your new guess: $response"
fi
done
echo "~*~*~congratulation~*~*~"
