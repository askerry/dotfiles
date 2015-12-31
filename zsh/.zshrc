echo "loading profile from /Users/amy/.zshrc"

export PATH=/usr/local/bin:$PATH

#put homebrew installed python installation on path
#export PATH=/usr/local/share/python:$PATH

#to make mysql work
#export PATH=/usr/local/mysql/bin:$PATH
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

#misc
export PATH=$PATH:/opt/X11/bin:/usr/local/git/bin:/usr/texbin

#for hdf5
#export HDF5_DIR=/usr/local/Cellar/hdf5/1.8.12

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#set python path
export PYTHONPATH=/Library/Python/2.7/site-packages
#echo python $PYTHONPATH

#matlab path
export matlabpath=/Applications/MATLAB_R2013b.app/bin/matlab

#set iterm2 profile
it2prof() { echo -e "\033]50;SetProfile=$1\a" }

# Note:for a full list of active aliases, run `alias`.
# alias rm='mv --target-directory ~/.Trash'
alias mysql='mysql -u root -p'
alias awsnb="ssh -i /Users/amy/khan/jupyterhub_bq/aws_secret.pem ec2-user@52.8.54.254"
alias awsnbsftp="sftp -o StrictHostKeyChecking=no -i /Users/amy/khan/jupyterhub_bq/aws_secret.pem ec2-user@52.8.54.254"
alias pandas="cd ~/khan/pandas; source ~/.virtualenv/pandas/bin/activate; gcloud config configurations activate default"
alias web="cd ~/khan/webapp; source ~/.virtualenv/khan27/bin/activate; gcloud config configurations activate default"
alias cqt="cd ~/khan/datasci/cheery-query-theory/amy; source ~/.virtualenv/dataenv/bin/activate; gcloud config configurations activate default"
alias ap="cd ~/khan/datasci/analytics-private/amy; source ~/.virtualenv/dataenv/bin/activate; gcloud config configurations activate default"
alias ds="cd ~/khan/datasci; source ~/.virtualenv/dataenv/bin/activate; gcloud config configurations activate default"
alias thoth="cd ~/personal/thoth; source ~/.virtualenv/misc/bin/activate; gcloud config configurations activate thoth"
alias bqenv="cd ~/khan/bq; source ~/.virtualenv/bigquery_env/bin/activate"
alias misc="cd ~/khan/misc; source ~/.virtualenv/misc/bin/activate"
alias py3="source ~/.virtualenv/py3/bin/activate"
alias sp='cd $VIRTUAL_ENV/lib/python2.7/site-packages'
alias zshcfg="open ~/.zshrc"
alias emacscfg="open ~/.emacs"
alias dockerup='bash -c "clear && DOCKER_HOST=tcp://192.168.99.100:2376 DOCKER_CERT_PATH=/Users/amy/.docker/machine/machines/default DOCKER_TLS_VERIFY=1 /bin/zsh"'
alias dockershow="echo docker hosting on 192.168.99.100:2376"
alias 'nb'='ipython notebook'
alias read="open README.md"
alias cdiff="cdiff -s; it2prof diff"
alias sshtoby="ssh -i $HOME/.ssh/internal-webserver-key ubuntu@toby.khanacademy.org"
alias sftptoby='sftp -o "IdentityFile=$HOME/.ssh/internal-webserver-key" ubuntu@toby.khanacademy.org'

gito () { git diff --name-only $1 | xargs open }

#alias to remove a command from history
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

ZSH_THEME="simple"

export TERM=xterm-256color

# hyphen-insensitive completion:. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=30

# command auto-correction.
# ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

setopt inc_append_history share_history histignorealldups
#setopt extendedglob
setopt menu_complete

HISTSIZE=10000000
SAVEHIST=10000000

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(python cd-gitroot hipchat zsh-snippets zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

autoload -Uz cd-gitroot
alias cdg='cd-gitroot'

# Enable autosuggestions automatically.
 # zle-line-init() {
 #     zle autosuggest-start
 # }
 # zle -N zle-line-init
 # export AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
 # export AUTOSUGGESTION_HIGHLIGHT_COLOR="fg=cyan"
 
bindkey '^R' history-incremental-pattern-search-backward

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


#function kill_port() { lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9 }
#function kill_by_name() { lsof -i| grep $1| awk '{print $2}' | xargs kill -9 }

# The next line updates PATH for the Google Cloud SDK.
source '/Users/amy/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/amy/google-cloud-sdk/completion.zsh.inc'

export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export AWS_ACCESS_KEY=<access key>
export AWS_SECRET_KEY=<secret key>

if [ -s ~/.bash_profile.khan ]; then
	source ~/.bash_profile.khan
fi

export PATH=$PATH:$EC2_HOME/bin


