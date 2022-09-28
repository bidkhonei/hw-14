#!/bin/bash 

function strt() {
   echo 'Enter the nober of task'
   read  inputTime
   Computing
}

function Computing(){

    if [ $inputTime = 5 ]; then
       
       for((i=0;i<inputTime;i++)); do
        
        /home/ubunutu/Desktop/hw-14/q2/workTime.sh 10
        clear
        /home/ubunutu/Desktop/hw-14/q2/restTime.sh 3
        clear
        if [ $i = 4 ]; then
                  printf "🍅🤓\n"
            /home/ubunutu/Desktop/hw-14/q2/restTime.sh 5
            clear
            /home/ubunutu/Desktop/hw-14/q2/workTime.sh 10
        fi
        done
         
        
    fi

    if [ $inputTime = 4 ]; 
    then   
       for((i=0;i<inputTime;i++)); do
        
        /home/ubunutu/Desktop/hw-14/q2/workTime.sh 10
        clear
        /home/ubunutu/Desktop/hw-14/q2/restTime.sh 3
        clear
        done
               printf "🍅🤓\n"
    
    fi
   
       
  
  
    
}

strt

 
   








