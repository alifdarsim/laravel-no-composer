#/bin/bash
clear
echo -e "\033[0;32m "
echo -e "░█    █▀▀█ █▀▀█ █▀▀█ ▀█ █▀ █▀▀ █     ░█▄ ░█ █▀▀█   ░█▀▀█ █▀▀█ █▀▄▀█ █▀▀█ █▀▀█ █▀▀ █▀▀ █▀▀█ "
echo -e "░█    █▄▄█ █▄▄▀ █▄▄█  █▄█  █▀▀ █     ░█░█░█ █  █   ░█    █  █ █ ▀ █ █  █ █  █ ▀▀█ █▀▀ █▄▄▀ "
echo -e "░█▄▄█ ▀  ▀ ▀ ▀▀ ▀  ▀   ▀   ▀▀▀ ▀▀▀   ░█  ▀█ ▀▀▀▀   ░█▄▄█ ▀▀▀▀ ▀   ▀ █▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀ ▀ ▀▀ "
echo -e "                  **Installing Laravel Project without using Composer**"
echo -e "\033[0m"
echo -e "\033[0;32mEnter your Laravel project name (eg: my-project)\033[0m"
read -p " > "$'' folder1
if [ -z "$folder1" ]
then
    echo -e "\033[0;31mProject name cannot be empty. Exiting...\033[0m"
    echo -e ""
    exit 0
fi
if [ -d "$folder1" ] 
then
    echo -e "\033[0;31mDirectory '$folder1' already exists. Exiting...\033[0m"
    echo -e ""
    exit 0
fi
function choose_from_menu() {
    local prompt="$1" outvar="$2"
    shift
    shift
    local options=("$@") cur=0 count=${#options[@]} index=0
    local esc=$(echo -en "\e")
    printf "$prompt\n"
    while true
    do
        index=0 
        for o in "${options[@]}"
        do
            if [ "$index" == "$cur" ]
            then echo -e " > \e[7m$o\e[0m"
            else echo "   $o"
            fi
            index=$(( $index + 1 ))
        done
        read -s -n3 key 
        if [[ $key == $esc[A ]]
        then cur=$(( $cur - 1 ))
            [ "$cur" -lt 0 ] && cur=0
        elif [[ $key == $esc[B ]]
        then cur=$(( $cur + 1 ))
            [ "$cur" -ge $count ] && cur=$(( $count - 1 ))
        elif [[ $key == "" ]]
        then break
        fi
        echo -en "\e[${count}A"
    done
    printf -v $outvar "${options[$cur]}"
}

selections=(
"Laravel 8.x"
"Laravel 9.x"
"Laravel 10.x"
)
choose_from_menu "\033[0;32mChoose Laravel version to install:\033[0m" selected_choice "${selections[@]}"
mkdir "$folder1"
echo -e "\033[0;32mDownloading Laravel No Composer... \033[0m";

if [ "$selected_choice" = "Laravel 8.x" ]; 
then
    wget -O laravel.tar.gz "https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/laravel8.tar.gz"
elif [ "$selected_choice" = "Laravel 9.x" ]; 
then
    wget -O laravel.tar.gz "https://raw.githubusercontent.com/alifdarsim/laravel-no-composer/master/laravel9.tar.gz"
else
    echo "Comming soon"
    exit 0
fi

tar -xf laravel.tar.gz -C ./"$folder1"
rm laravel.tar.gz
(cd "$folder1" && php artisan key:generate)
echo -e "\U0002713 \033[1;32mYour ${selected_choice:0:-2} project setup is complete \033[0m ";
echo ""
echo -e "To run your laravel project (local)";
echo -e " 1. cd $folder1";
echo -e " 2. php artisan serve";
echo ""