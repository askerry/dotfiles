echo "loading profile from /Users/amyskerry/.bash_profile"

#put homebrew directory at top of path
export PATH=/usr/local/bin:$PATH

#put homebrew installed python installation on path
export PATH=/usr/local/share/python:$PATH
#echo "running homebrew python: /usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/Resources/Python.app/Contents/MacOS/Python"
#echo "modules here: /usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages"

#to make mysql work
export PATH=/usr/local/mysql/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

#set python path
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
echo python $PYTHONPATH

export matlabpath=/Applications/MATLAB_R2013b.app/bin/matlab
#echo "matlab $matlabpath"

export matlab="open -a MATLAB_R2013b"
# $matlab now opens matlab from terminal

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

myhome="pro" 

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
 
PS1="$GREEN\u@\$myhome$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source /Users/amyskerry/.iterm2_shell_integration.bash

# alias rm='mv --target-directory ~/.Trash'

alias mysql='mysql -u root -p'

alias cdproj='cd ~/Documents/Projects'

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/amyskerry/google-cloud-sdk/path.bash.inc'
#export SDKROOT='/Users/amyskerry/google-cloud-sdk'

# The next line enables bash completion for gcloud.
#source '/Users/amyskerry/google-cloud-sdk/completion.bash.inc'


# put google SDK in python path
#export PYTHONPATH=$SDKROOT/platform/bq:$PYTHONPATH
