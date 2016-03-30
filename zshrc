# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kennethreitz"

# Example aliases
#alias zshconf="vim ~/.zshrc"
#alias ohmyzsh="vim ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip django python brew rails ruby bundler)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...

export PATH="/home/vagrant/.gem/ruby/2.1.5/bin:/usr/lib/shopify-ruby/2.1.5-shopify1/lib/ruby/gems/2.1.0/bin:/usr/lib/shopify-ruby/2.1.5-shopify1/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

alias youtube='~/code/personal/youtube-dl/youtube-dl -t'


alias bx="bundle exec"
alias rsd="bundle exec rails server --debugger"
alias rk="bundle exec rake"
alias rkdm="bundle exec rake db:migrate && bundle exec rake db:test:prepare"
alias rktp="bundle exec rake db:test:prepare"
alias rkt="rake test RAILS_PARALLEL_WORKERS=4 PARALLEL=1"
alias rt="bundle exec ruby -Itest"
alias chaching="git commit -am "
alias addto="git add . && git commit --amend --no-edit"

alias flush_all="echo 'flush_all' | nc localhost 11211"

alias jsfind='find . -name  "*.js.coffee" | xargs grep -n'
