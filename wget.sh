#/bin/bash
clear
echo -e "\033[0;32m  _                                      _     _  _            ___                                             "
echo " | |     __ _   _ _   __ _  __ __  ___  | |   | \| |  ___     / __|  ___   _ __    _ __   ___   ___  ___   _ _ "
echo " | |__  / _  | | '_| / _  | \ V / / -_) | |   | .  | / _ \   | (__  / _ \ | '  \  | '_ \ / _ \ (_-< / -_) | '_|"
echo " |____| \__,_| |_|   \__,_|  \_/  \___| |_|   |_|\_| \___/    \___| \___/ |_|_|_| | .__/ \___/ /__/ \___| |_|  "
echo -e "                                                                                  |_|                          \033[0m"


echo -e "\033[0;32mEnter your Laravel project name\033[0m"
read -p " > "$'' folder1

function choose_from_menu() {
    local prompt="$1" outvar="$2"
    shift
    shift
    local options=("$@") cur=0 count=${#options[@]} index=0
    local esc=$(echo -en "\e") # cache ESC as test doesn't allow esc codes
    printf "$prompt\n"
    while true
    do
        # list all options (option list is zero-based)
        index=0 
        for o in "${options[@]}"
        do
            if [ "$index" == "$cur" ]
            then echo -e " > \e[7m$o\e[0m" # mark & highlight the current option
            else echo "   $o"
            fi
            index=$(( $index + 1 ))
        done
        read -s -n3 key # wait for user to key in arrows or ENTER
        if [[ $key == $esc[A ]] # up arrow
        then cur=$(( $cur - 1 ))
            [ "$cur" -lt 0 ] && cur=0
        elif [[ $key == $esc[B ]] # down arrow
        then cur=$(( $cur + 1 ))
            [ "$cur" -ge $count ] && cur=$(( $count - 1 ))
        elif [[ $key == "" ]] # nothing, i.e the read delimiter - ENTER
        then break
        fi
        echo -en "\e[${count}A" # go up to the beginning to re-render
    done
    # export the selection to the requested output variable
    printf -v $outvar "${options[$cur]}"
}

selections=(
"Laravel 8.x"
"Laravel 9.x"
"Laravel 10.x"
)

choose_from_menu "\033[0;32mChoose Laravel version to install:\033[0m" selected_choice "${selections[@]}"
# echo "Selected choice: $selected_choice"

if [ "$selected_choice" = "Laravel 8.x" ]; 
then
    mkdir "$folder1"
    echo ""
    echo -e "\033[0;32mDownloading Laravel No Composer... \033[0m";
    wget -O laravel.tar.gz "https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/laravel8.tar.gz"
    tar -xf laravel.tar.gz -C ./"$folder1"
    rm laravel.tar.gz
    echo -e "\033[0;32m.env Setup success. \033[0m ";
    (cd "$folder1" && php artisan key:generate)
    echo ""
    echo -e "\U0002713 \033[1;32mYour Laravel 8 project setup is complete \033[0m ";
    echo ""
elif [ "$selected_choice" = "Laravel 9.x" ]; 
then
    echo "Laravel 9 not setup yet"
else
    echo "You need more bash programming"
fi