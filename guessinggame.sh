#!/usr/bin/env bash
# File:guessinggame.sh

finished=0

number_of_files=$(ls | wc -l)

function checkguess {
    if [[ $response -eq $number_of_files ]]
    then
        echo "Congratulations! You guessed correctly."
        finished=1
    elif [[ response -gt $number_of_files ]]
    then
        echo "Sorry, your guess was too high. Please guess again." 
    elif [[ $number_of_files -gt $response ]] 
    then
        echo "Sorry, your guess was too low. Please guess again."
    fi
}

echo -e "How many files are in the current directory?\nPlease type how many you think there are."
while [[ $finished -eq 0 ]]
do
    read response
    checkguess
done

