
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e ~/.dircolors && eval `dircolors -b ~/.dircolors`
alias ls="ls --color=always" 
alias grep="grep --color=always"
alias zgrep="zgrep --color=always"
alias egrep="egrep --color=always"
alias vms="cd ~/VirtualBox\ VMs/"
alias subl='subl -w'

alias log="cd ~/Projects/debug/log/"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if [ $TERM != dumb ]; then
    . ~/.ssh/agent > /dev/null 2>&1
    if ! ps -p $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Launching new agent"
        ssh-agent  > ~/.ssh/agent
        . ~/.ssh/agent > /dev/null 2>&1
    fi
    if ! ssh-add -L > /dev/null 2>&1 ; then
        ssh-add -A
    fi
fi

