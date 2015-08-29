#!/usr/bin/env sh
function print_battery () {
    case $1 in
        0)
            fill_str="            "
            ;;
        1)
            fill_str=" \033[47m  \033[m         "
            ;;
        2)
            fill_str=" \033[47m  \033[m \033[47m  \033[m      "
            ;;
        3)
            fill_str=" \033[47m  \033[m \033[47m  \033[m \033[47m  \033[m   "
            ;;
        *)
            fill_str=" \033[47m  \033[m \033[47m  \033[m \033[47m  \033[m \033[47m  \033[m"
    esac
    printf ".-------------.\n"
    printf "|${fill_str} |.\n"
    printf "|${fill_str}  |\n"
    printf "|${fill_str} |'\n"
    printf "'-------------'\n"
}
clear
print_battery 0
sleep 0.5
while [ 1 ]; do
    clear
    print_battery 1
    sleep 0.25
    clear
    print_battery 2
    sleep 0.25
    clear
    print_battery 3
    sleep 0.25
    clear
    print_battery 4
    sleep 0.25
done
