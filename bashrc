#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return>/dev/null

alias ls='ls --color=auto'
 #PS1='[\u@\h \W]\$ '

# ALiases
alias f='firefox & disown'
alias d='discord & disown'
alias chr='chromium & disown>/dev/null' 
alias zz='zathura'
alias di='bash Digita1/Digital/Digital.sh & disown'
alias shutdown='sudo shutdown -h now'
alias vxinitrc='sudo nvim /etc/X11/xinit/xinitrc' 
alias Digital='bash Digita1/Digital/Digital.sh & disown'
alias vbox='virtualbox & disown'
alias sync-time='sudo ntpd -qg'
alias tmux='TERM=xterm-256color tmux'
alias sync-hw='sudo hwclock -w'
alias discordo='cd .config/more_programs/discordo && ./discordo'
alias show_battery='cat /sys/class/power_supply/CMB0/capacity'
alias color_test='curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash'
alias betterpywal='wpg'
#Functions

#wal -a 80 -i /home/dylandy/Wallpapers/Pictures/wallpapers/walls/colorful-flowers.jpg>/dev/null
# 
wal -R>/dev/null

pfetch
export TERM=xterm-256color


[ -f ~/.fzf.bash ] && source ~/.fzf.bash>/dev/null

#tty
