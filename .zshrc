bindkey -v
# ZSH does not add reverse history search binding to vim mode by default
bindkey "^R" history-incremental-search-backward

# Alias
alias ll='ls -l'
alias gis='git status'
alias home='cd ~/Desktop/Pranav/'
alias work='cd ~/Desktop/Pranav/projects'

# Ignore hidden files and node_modules while using fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden'

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

