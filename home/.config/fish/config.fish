set -gx TERM xterm

function fish_greeting
    fortune wh40k.quotes | lolcat
end


function fish_prompt
    set time (date +%H:%M)
    read -l capacity < /sys/class/power_supply/BAT0/capacity
    set dir (prompt_pwd)
    set_color green
    printf "[%s %d%% %s] > " $time $capacity $dir
end


abbr -ag pi doas xbps-install -S
abbr -ag pu doas xbps-install -Syu
abbr -ag pr doas xbps-remove -o
abbr -ag pf xbps-query -Rs
abbr -ag pfl xbps-query -Rf
abbr -ag gst git status
abbr -ag gadd git add
abbr -ag grm git rm
abbr -ag gcmt git commit -m
abbr -ag gpsh git push
abbr -ag gpll git pull
abbr -ag free free -m
abbr -ag ls exa
abbr -ag tree exa --tree
abbr -ag zzz doas zzz
abbr -ag reboot doas reboot
abbr -ag halt doas halt
abbr -ag df df -h -x tmpfs
abbr -ag weather curl wttr.in/

function battery
    if test ! -e /sys/class/power_supply/BAT0/status
        return
    end
    read -l charging < /sys/class/power_supply/BAT0/status
    read -l capacity < /sys/class/power_supply/BAT0/capacity
    printf "%d%% [%s]\n" $capacity $charging
end


function mkcd
    mkdir -p $argv
    cd $argv
end
