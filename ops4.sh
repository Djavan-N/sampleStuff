#!/bin/bash

main () {
    file=("file1" "file2" "file3" "file4")
    for i in "${file[@]}";
    do
        touch "$i"
    done
}

main
echo "I will now create the text files ${file[*]}"