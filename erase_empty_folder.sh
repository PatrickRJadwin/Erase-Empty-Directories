#!/usr/bin/env bash

#This branch is for testing only do not merge to master

printf "DO NOT RUN THIS WITH SUDO\n"
printf "THIS WILL RUN ON EVERY DIRECTORY AND SUB-DIRECTORY\n\n"

for D in `find . -type d`
do
    if [[ $D != "." ]]; then
       if [[ $(ls $D -l | wc -l) -le 1 ]]; then
            printf "\nDo you want to delete $D? ( Y / default (N) ): "
            read res
            if [[ $res == "Y" ]]; then
                rm -rf $D
                printf "\n$D IS DELETED\n"
            else
                printf "NOT DELETED"
            fi
        fi
    fi
done
