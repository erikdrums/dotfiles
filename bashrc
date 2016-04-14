export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

hg_ps1() {
    hg prompt "{ on {branch}}{ at {bookmark}}{status}" 2> /dev/null
}

export PS1='\u at \h in \w$(hg_ps1)\n$ '

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
export PATH=~/wl/bender:$PATH

export PATH=$PATH:/Users/eriksvendsen/Sites/jazz.dk/wp-content/themes/jazz.dk-theme-only/vendor/bin/
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

