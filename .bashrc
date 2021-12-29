#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

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
#Functions
function z() {
zathura "$1" & disown;
}

#wal -a 75 --saturate .75 -i /bigdrv/Pictures/wallpapers/Wallpapers/papes/1465556313372.jpg>/dev/null
wal -R>/dev/null
neofetch --source 




[ -f ~/.fzf.bash ] && source ~/.fzf.bash
