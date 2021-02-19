#!/bin/bash



dir=("dir1" "dir2" "dir3" "dir4")
file=("file1" "file2" "file3" "file4")

main() {
    for k in {0..3};
    do
        if [ -d "$HOME/dev/${dir[$k]}" ]; then
            echo -e "\n${dir[$k]} exists already\n"
        else
            mkdir "$HOME/dev/${dir[$k]}"       
        fi  
       
        if [ -f "$HOME/dev/${dir[$k]}/${file[$k]}" ]; then
            echo -e "\n${file[$k]} exists already, creating new ones\n"
            rm "$HOME/dev/${dir[$k]}/${file[$k]}"
        else
            touch "$HOME/dev/${dir[$k]}/${file[$k]}"    
        fi 
    done
}

main