# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="kennethreitz"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...


alias slt='"/opt/Sublime Text 2/sublime_text"'
alias runserver='python manage.py runserver'
alias syncdb='python manage.py syncdb'
alias youtube='/home/myusuf3/Github/youtube-dl/youtube-dl -t'
 
source /usr/local/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PATH=/home/myusuf3/android_sdk/tools:$PATH
export PATH=$HOME/Node/node/bin:$PATH
export NODE_PATH=$HOME/Node/node:$HOME/Node/node/lib/node_modules
export PYTHONPATH="/home/myusuf3/Github/delorean/":$PYTHONPATH

