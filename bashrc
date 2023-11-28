#
# ~/.bashrc
#

# ps1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

PS1='\[\033[01;32m\][\u -\[\033[01;37m\] \[\033[01;34m\]\w\[\033[01;32m\] - \[\033[01;33m\]\#\[\033[01;32m\] - \[\033[01;35m\]$?\[\033[01;32m\] - \[\033[01;31m\]$(parse_git_branch)\[\033[01;32m\]]\$\[\033[00m\]\n => '


# editor aliases
alias ne="emacs -nw"

# ls aliases
alias ls="ls --color"
alias lsa="ls -lsah --color"
alias lsah="ls -lsah --color"

# download & update
# Determine the Linux distribution
if grep -q "ID=arch" /etc/os-release; then
    alias dl="sudo pacman -S"
    alias maj="sudo pacman -Syyu"
elif grep -q "ID=ubuntu" /etc/os-release; then
    alias dl="sudo apt install"
    alias maj="sudo apt update && sudo apt upgrade"
fi

# connection test
alias co="ping google.com"

# swap emptying
alias swap_reset="sudo swapoff -a; sudo swapon"
