# use rbenv for ruby management
eval "$(rbenv init - --no-rehash)"

# yarn
export PATH="$PATH:`yarn global bin`"

# postgres app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
# SML
export PATH="$PATH:/usr/local/smlnj/bin"

# add sbin to path for rabbitmq
export PATH=$PATH:/usr/local/sbin

# java home
export JAVA_HOME=$(/usr/libexec/java_home)

# android
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4.1_1
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color-italic

# To deploy Firefly App to QA without have to worry about environment variables being set
export FIREBOLT_SKIP_WARMING=true


export GOPATH=/Users/zachtoolson/go/
export PATH=$GOPATH/bin:$PATH

# Here there be Aliases

# Emacs Aliases
# alias emacs="emacsclient -a /usr/local/bin/emacs -nw"
alias e="emacs"

# General Aliases
alias cd..="cd .."
alias deployolo="bx treb sand deploy"

# Bundle Aliases
alias b="bundle"
alias bu="b update"
alias bx="b exec"

# Git Aliases
alias g="git"
alias ga="g add"
alias gaa="g add -A"
alias gb="g branch"
alias gba="g branch -a"
alias gc="g checkout"
alias gf="g fetch"
alias gh="g rev-parse HEAD"
alias gi="g commit"
alias gl="g log"
alias glo="gl --oneline"
alias gs="g status"
alias pop="g stash pop"
alias stash="g stash"

# Misc Aliases
alias derp='PB_IGNORE_DEPRECATIONS=1'
alias cop='t bx rubocop -a'
alias coppa='t bx rubocop -a'
alias jrbdev='JRUBY_OPTS="$JRUBY_OPTS --dev"'
alias jrbdebug='JRUBY_OPTS="$JRUBY_OPTS --debug"'
alias migrate='bin/rake db:migrate && bin/rake db:test:prepare'
alias reload='source ~/.bash_profile'
alias t='turbo'
alias turbo='jrbdev jrbdebug derp'
alias nats='PB_CLIENT_TYPE=protobuf/nats/client PB_SERVER_TYPE=protobuf/nats/runner'

# SICP Alias
alias edwin='mit-scheme --edit'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\D{%F %T} \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: \[\033[0;91m\]$\[\033[0m\] "

# Color in the terminal
export CLICOLOR=1

# export JRUBY_OPTS='--disable:did_you_mean --dev -J-Xmx1024m'
export JRUBY_OPTS='--disable:did_you_mean --dev'
export PB_IGNORE_DEPRECATIONS=true

source ~/.bashrc
