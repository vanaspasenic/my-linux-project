#!/usr/bin/env bash
#File: guessingame.sh

filesnumber=0

function guess()
{
    filecounter=`ls | wc -l`
    read -p "How many files are in the current directory > " INPUT
    if [ -z $INPUT ]
    then
        return
    fi

    if [ $INPUT -eq $filecounter ]
    then
        echo "Great news, correct answer! "
        filesnumber=1
    elif [ $INPUT -lt $filecounter ]
    then
        echo "No, try again, your answer is too low. "
    else
        echo "No, try again,your answer is too high. "
    fi
}

while [ $filesnumber -ne 1 ]
do
    guess
done
