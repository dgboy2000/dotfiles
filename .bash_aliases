CODE_HOME=$HOME/Documents/code

alias code="cd $CODE_HOME"
alias csd='git push && cap staging deploy'
alias dotfiles="cd $CODE_HOME/config/dotfiles"
alias fixtures='rake db:fixtures:load'
alias gp='git commit -am "progress commit" && git push'
alias gbm='git merge --no-ff'
alias gsr='git stash save && git review -R `git rev-parse --abbrev-ref HEAD` && git stash pop'
alias ow='cd $CODE_HOME/consulting/ow/aia'
alias rdbm='rake db:migrate && rake db:test:prepare && rake db:fixtures:load'

