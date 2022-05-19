# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dylandy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
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
export TERM=kitty



[ -f ~/.fzf.bash ] && source ~/.fzf.bash>/dev/null

#tty

#theme
setopt PROMPT_SUBST
autoload -U colors && colors
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host="%B%(!.%{$fg[red]%}.%{$fg[green]%})%n@%m%{$reset_color%} "
local user_symbol=''
local current_dir="%B%{$fg[blue]%}%~ %{$reset_color%}"

local vcs_branch='$(git_prompt_info)$(hg_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"
PROMPT="╭─${user_host}${current_dir}
╰─%B${user_symbol}%b "
RPROMPT="%B${return_code}%b"

#autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	

#vim mode
# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.







source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

