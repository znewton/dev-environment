# Config Editing
alias vbrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias vbp='vim ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias vba='vim ~/.bash_aliases'
alias sba='source ~/.bash_aliases'
alias vbf='vim ~/.bash_functions'
alias sbf='source ~/.bash_functions'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dev='cd ~/Code'
alias note='vim ~/note.txt'
alias zdconsole='cd ~/Code/zendesk/zendesk_console'
alias zddi='cd ~/Code/zendesk/docker-images'
alias zd='cd ~/Code/zendesk/zendesk'
alias lotus='cd ~/Code/zendesk/zendesk_console/lotus_react'
alias playground='cd ~/Code/playground; yarn start'

# Miscellaneous
alias gitlines='cloc $(git ls-files)'
alias cov='yarn test --coverage --coverageDirectory=coverage; open ./coverage/lcov-report/index.html'
alias newbash='exec /bin/bash -l'

