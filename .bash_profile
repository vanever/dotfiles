alias ls="ls -Gh"
alias ll="ls -lF"
alias l="less"
alias g="grep --color"
alias sd="sync && sync && sudo shutdown -h now"
alias rb="sync && sync && sudo shutdown -r now"
alias vi='mvim'

alias vb="vim ~/.bash_profile"
alias sb="source ~/.bash_profile"

set -o vi

alias c="clear"

export PS1="\u \w\$ "
# export PS1="[36;1m[\u@\h[35;1m \w]$ [m"
# alias dps='export PS1="[36;1m[\u@\h]\$ [m"'
# alias nps='export PS1="[36;1m[\u@\h[35;1m \w]\$ [m"'

SERVER='fudan@10.1.4.10'
GPUNODE='root@10.1.2.13'
RELAY='yuchaofan@relay02.baidu.com'
D="/Users/van/Downloads"

export PATH=$PATH:~/bin:/usr/local/mysql/bin

[[ -r /usr/local/etc/bash_completion ]] && source /usr/local/etc/bash_completion

export HISTSIZE=3000

ulimit -c unlimited

# hilight manpage
export LESS_TERMCAP_mb=$'\E[0m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;34m'   # begin bold
export LESS_TERMCAP_me=$'\E[0m'       # end mode
export LESS_TERMCAP_se=$'\E[0m'       # end standout-mode
export LESS_TERMCAP_so=$'\E[0;47;30m'  # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'       # end underline
export LESS_TERMCAP_us=$'\E[04;31m'   # begin underline]']']']']']']'

[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" # Load bashrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
