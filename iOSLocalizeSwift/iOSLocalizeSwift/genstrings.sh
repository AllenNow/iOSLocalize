#!/bin/bash
function getLocalizeString(){
for element in `ls "$*" | tr " " "\?"`
    do
        element=`tr "\?" " " <<<$element`
        dir_or_file="$1"/"$element"
        if [ -d "$dir_or_file" ];then
            getLocalizeString "$dir_or_file"
        else
            echo "$dir_or_file"
            suffix="${dir_or_file##*.}"
            if [ "$suffix"x = "swift"x ]||[ "$suffix"x = "m"x ]||[ "$suffix"x = "mm"x ];then
                genstrings -a -o en.lproj "$dir_or_file"
            fi
        fi
    done
}

root_dir="./"
getLocalizeString $root_dir

