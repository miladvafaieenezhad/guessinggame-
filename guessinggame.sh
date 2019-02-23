echo "how many files are in the current directory?:"
read response
echo "you guess: $response"
while [[ $response -ne 5 ]]
do
function high {
echo "sorry, $response is too high"
}
function low {
echo "sorry, $response is too low"
}
if [[ $response -gt 5 ]]
then
high
echo "try again:"
read response
echo "your new guess: $response"
elif [[ $response -lt 5 ]]
then
low
echo "try again:"
read response
echo "your new guess: $response"
fi
done
echo "~*~*~congratulation~*~*~"
