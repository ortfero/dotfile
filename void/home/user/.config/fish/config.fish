function fish_greeting
    fortune | lolcat
end


function fish_prompt
    set_color green
    echo -n ' > '
end


alias pkg-add='sudo xbps-install -S'
alias pkg-up='sudo xbps-install -Syu'
alias pkg-rm='sudo xbps-remove -o'
alias pkg-find='xbps-query -Rs'
alias pkg-files='xbps-query -f'
alias ls='exa --icons'
alias tree='exa --icons --tree'
alias free='free -m'

abbr -a -g gadd git add
abbr -a -g grm git rm
abbr -a -g gct git commit -m
abbr -a -g gpsh git push
abbr -a -g gpll git pull

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
