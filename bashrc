#
# ~/.bashrc
#

# ps1
PS1='\[\033[01;32m\][matthieu\[\033[01;37m\] \[\033[01;34m\]\w\[\033[01;32m\] - \[\033[01;33m\]\#\[\033[01;32m\] - \[\033[01;35m\]$?\[\033[01;32m\]]\$\[\033[00m\]\[\033[00m\]\n => '

# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# editor aliases
alias ne="emacs -nw"

# ls aliases
alias ls="ls --color"
alias lsa="ls -lsah --color"
alias lsah="ls -lsah --color"

# clean directory
alias out="rm -f *~ *#"

# download & update
alias dl="yaourt"
alias maj="yaourt -Syyu"

# connection test
alias co="ping google.com"

# swap emptying
alias swap_reset="sudo swapoff -a; sudo swapon"

# confirm before overwriting something
alias cp="cp -i"

