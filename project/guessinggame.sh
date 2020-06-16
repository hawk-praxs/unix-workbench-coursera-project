#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Guess no. of files? -> "
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater then the true number"
        else
            echo " Congratulations, you guessed it correctly!"
        break;
        fi
    done
}
echo "Welcome to the Guess Game where you guess the no. of files in the current directory!"
guess