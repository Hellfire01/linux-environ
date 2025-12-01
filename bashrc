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

# directories related
alias ".."="cd .."
alias "..."="cd ../.."
alias "...."="cd ../../.."
alias "....."="cd ../../../.."

# connection test
alias co="ping google.com"

# swap emptying
alias swap_reset="sudo swapoff -a; sudo swapon -a"

# python related
alias va="source venv/bin/activate"
alias pytest="pytest --color=yes"
alias pytestx="pytest --color=yes -x"
alias pytests="pytest --color=yes -s"
alias pytestsx="pytest --color=yes -s -x"

# git add -A / git commit -m [your message] / git push origin [name of the current branch]
megagit() {
    if [ "$#" -ne 1 ]; then
        echo "Need just one argument for megagit : the commit message ( received $# )"
    fi
    git add -A
    echo "###### added code"
    git commit -m "$1"
    echo "###### commited with message $1"
    branch_name=git rev-parse --abbrev-ref HEAD
    git push origin $branch_name
    echo "###### pushed to $branch_name"  
}

# store the ssh key password in the session
startgitssh() {
    eval "$(ssh-agent -s)" >/dev/null
    ssh-add ~/.ssh/id_rsa
}
