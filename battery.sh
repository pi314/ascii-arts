#!/usr/bin/env sh
function print_battery () {
    case $1 in
        0)
            fill_str="            "
            ;;
        1)
            fill_str=" \033[42m  \033[m         "
            ;;
        2)
            fill_str=" \033[42m  \033[m \033[42m  \033[m      "
            ;;
        3)
            fill_str=" \033[42m  \033[m \033[42m  \033[m \033[42m  \033[m   "
            ;;
        *)
            fill_str=" \033[42m  \033[m \033[42m  \033[m \033[42m  \033[m \033[42m  \033[m"
    esac
    printf ".-------------.\n"
    printf "|${fill_str} |.\n"
    printf "|${fill_str}  |\n"
    printf "|${fill_str} |'\n"
    printf "'-------------'\n"
}
clear
power=''
print_battery 0
sleep 0.5
while [ 1 ]; do
    for i in $(seq 0 4); do
        printf "\033[1;1H"
        print_battery ${i}
        sleep 0.1
    done

    power="d${power}"

    if [ "x${power}" = "xdddddddddddddddddddddddddddddd" ]; then
        exit
    fi
done
