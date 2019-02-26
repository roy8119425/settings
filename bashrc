# Roy
alias vim='vim -p'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias b='cd ..'
alias bb='cd ../..'
alias bbb='cd ../../..'
alias bbbb='cd ../../../..'

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[1;31m\]\T\[\e[m\] \[\e[38;5;111m\][\w]\[\e[38;5;172m\]\$(parse_git_branch)\[\e[m\]\n\[\e[1;38;5;82m\]\u@\h\[\e[m\]~\$ "
# End of Roy
