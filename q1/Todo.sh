#!/bin/bash
# Bash Menu Script Example
fileTask='tasks.txt'

PS3='Enter your choice: '
options=("Save task 1" "show-sort 2" "exchange 3" "showdo 4" "showundo 5" "exit 6")

select opt in "${options[@]}"; do

    case $opt in

    "Save task 1")
        echo 'Enter * for Log out:'

        if [[ "$newtext" != "*" ]]; then

            if [ $HOME/ubunutu/Desktop/hw-14/q1/tasks.txt ]; then
                read -p "Enter the task that you want to append:" newtext

                while read -r newtext; do
                    echo "${newtext}" >>"$fileTask" # >> means append
                done

            else
                ls $HOME >$HOME/ubunutu/Desktop/hw-14/q1/undo.txt

                ls $HOME >$HOME/ubunutu/Desktop/hw-14/q1/tasks.txt
                
                ls $HOME >$HOME/ubunutu/Desktop/hw-14/q1/do.txt
                
                read -p "Enter the task that you want to append:" newtext

                while read -r newtext; do
                    echo "${newtext}" >>"$fileTask" # >> means append
                done

            fi
            Counter+=1

        else

            break

        fi

        ;;

    
        "show-sort 2")

        while read -r line; do
            echo "$line"
        done <tasks.txt
        ;;

        "exchange 3")

        echo "you chose choice $REPLY which is $opt"

        while read -r line; do
            if [[ "${line}" == "hassan" ]]; then
                  echo "${line}" >>"do.txt" # >> means append
                  
            fi
        done <tasks.txt

        while read -r line; do
            if [[ "${line}" == "zahedi" ]]; then
                  echo "${line}" >>"undo.txt" # >> means append
            fi
        done <tasks.txt

         rm -f ${fileTask}
           

            ;;
        "showdo 4")

        while read -r line; do
            echo "$line"
        done <do.txt
        ;;

        "showundo 5")

        while read -r line; do
            echo "$line"
        done <undo.txt
        ;;
        "exit 6")
        
        truncate -s 0 undo.txt
        truncate -s 0 do.txt

        

    esac

done
