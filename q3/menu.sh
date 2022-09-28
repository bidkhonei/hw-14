input='Please enter your choice: '
options=("createFile 1" "HelloWrld 2" "Replase 3" "Quit")
select opt in "${options[@]}"; do
    case $opt in
    "createFile 1")
        echo "you chose choice 1"
        touch file-{0..3}.txt
        ;;
    "HelloWrld 2")

        for ((i = 1; i < 3; i++)); do

            echo "Helloworld" >"/home/ubunutu/Desktop/hw-14/q3/file-$i.txt"
            echo # Empty line
            for line in "${lines[@]}"; do
                echo "${line}" >>"Hello World" # >> means append
            done

            echo 'text here'

        done

        ;;
    "Replase 3")
        
            for((i=1;i<3;i++)); do
            sed -i -e 's/world/bash/g' /home/ubunutu/Desktop/hw-14/q3/file-$i.txt
            done  
        ;;
        "Quit")
        break
    
    esac
done
