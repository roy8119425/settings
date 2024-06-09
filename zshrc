# Roy
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias vim='vim -p'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias b='cd ..'
alias bb='cd ../..'
alias bbb='cd ../../..'
alias bbbb='cd ../../../..'

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

setopt PROMPT_SUBST
autoload -U colors && colors
PROMPT='%F{red}%*%f %F{blue}[%~]%f%F{208}$(parse_git_branch)%f
%F{green}%n@%m%f~$ '
# End of Roy
