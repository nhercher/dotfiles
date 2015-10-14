function fish_prompt
        set -l blandcol '#8FA388'
        set -l datecol white 
        set -l battcol red 
        set -l arrowcol '#FFFFFF' 
        set_color $blandcol
        printf "("
        set_color $datecol
	printf (date "+$c2%l$c0:$c2%M$c0:$c2%S ")
        set_color $arrowcol
        printf "// "
        set_color $battcol
        printf "batt:" 
        printf (upower -i /org/freedesktop/UPower/devices/battery_BATX| grep -E "percentage" | tr -d 'percentage' | tr -d ':' | tr -s [:space:] | tr -d '%')
        set_color $arrowcol
        printf " // "
        set_color $datecol
        printf (basename $PWD)
        set_color $blandcol
        printf " )"
        set_color $arrowcol
        echo -n ' > '
end
