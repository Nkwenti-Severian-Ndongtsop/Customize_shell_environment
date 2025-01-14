#!/bin/bash

# update your machine
apt update &&  apt upgrade

# alias chmod commands
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# Create and go to the directory
mkdir() {
        mkdir -p "$1"
        cd "$1"
}

# Automatically do an ls after each cd, z, or zoxide
cd ()
{
        cd "$1" && ls "$1"
}

# aliases
alias ll='ls -l'
alias la='ls -la'
alias ld='ls -ld'
alias cl='clear'
alias his='history'

# git aliase
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

# customize PS1 VARIABLE
makeprompt() {
PS1='\[\033[1;31m\]\u@\h\[\033[1;31m\]@\[\033[1;33m\]\w\[\033[0m\] '
}
PROMPT_COMMAND='makeprompt'

# executes the bash_profile script
./bash_profile
