#!/bin/zsh -li

alias c='clear'
alias ll='ls -lAh'

if hash exa 2>/dev/null;then
	alias ls="exa -abghl --git --color=automatic"
elif hash lsd 2>/dev/null;then
	alias l="lsd -1"
else
	alias l="ls -lh"
fi

alias catt='pygmentize -O style=borland -f console256 -g'

alias lsp="stat -c '%U:%G| %A | %a | %n'"

alias pbcopy='xclip -selection clipboard'

alias mux='tmux a || tmux new -s shell'

#alias rgg='rg --no-{filename,heading,line-number} --color never'

alias rmd='rm -fr'

alias mkdir='mkdir -pv'

alias fports='for p in 8080 443 80'
