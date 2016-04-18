
# Short bender.
alias b="bender"

# Go to and activate the given install name. E.g.:
#     bgo sund
function bgo() {
    cd $(bender cd $1) && source $(bender source)
}

# Shortcut to runserver.
function br() {
    python manage.py runserver $(bender runserver)
}

export LC_CTYPE=da_DK.utf8                                                                                                                                   
export LC_ALL=da_DK.utf8

export PATH=~/wl/bender:$PATH

alias l='ls -lah'
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'


function cdl() {
  cd "$@" && ls -la
}

function mk() {
  mkdir -p "$@" && cd "$@"
}

function hgcp() {
  hg ci -m $1 && hg push
}

alias sund="cd ~/wl/sund/sundhedstallet"
