#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Guess the no. -> "
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is lesser than the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater than the true number"
        else
            echo " Congratulations, you guessed right!"
        break;
        fi
    done
}
echo "Welcome to the Guessing Game!"
echo "Guess the no. of files in the current directory!"
guess
