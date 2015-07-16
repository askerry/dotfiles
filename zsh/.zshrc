echo "loading profile from /Users/amyskerry/.zshrc"

export PATH=/usr/local/bin:$PATH

#put homebrew installed python installation on path
export PATH=/usr/local/share/python:$PATH

#to make mysql work
export PATH=/usr/local/mysql/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

#misc
export PATH=$PATH:/opt/X11/bin:/usr/local/git/bin:/usr/texbin

# Path to oh-my-zsh installation.
export ZSH=/Users/amyskerry/.oh-my-zsh

#set python path
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
echo python $PYTHONPATH

#matlab path
export matlabpath=/Applications/MATLAB_R2013b.app/bin/matlab

# Note:for a full list of active aliases, run `alias`.
# alias rm='mv --target-directory ~/.Trash'
alias mysql='mysql -u root -p'
alias cdproj='cd ~/Documents/Projects'
alias zshcfg="open ~/.zshrc"
alias emacscfg="open ~/.emacs"
alias read="open README.md"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# updates path for the Google Cloud SDK.
#source '/Users/amyskerry/google-cloud-sdk/path.bash.inc'
#export SDKROOT='/Users/amyskerry/google-cloud-sdk'

#enables bash completion for gcloud.
#source '/Users/amyskerry/google-cloud-sdk/completion.bash.inc'

# put google SDK in python path
#export PYTHONPATH=$SDKROOT/platform/bq:$PYTHONPATH


ZSH_THEME="simple"


# hyphen-insensitive completion:. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=30

# command auto-correction.
# ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

setopt append_history share_history histignorealldups
setopt extendedglob

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(python cd-gitroot hipchat zsh-snippets zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh

autoload -Uz cd-gitroot
alias cdg='cd-gitroot'

# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# User configuration
export PATH="/usr/local/mysql/bin:/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin"
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='emacs'
 else
   export EDITOR='emacs'
 fi


# ssh
 export SSH_KEY_PATH="~/.ssh/id_rsa"

