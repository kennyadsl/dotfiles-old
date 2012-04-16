# Aliases
[ -r "$HOME/.aliases" ] && source "$HOME/.aliases"

# Prompt
[ -r "$HOME/.prompt" ] && source "$HOME/.prompt"

# Exports
[ -r "$HOME/.exports" ] && source "$HOME/.exports"

# Completion
[ -r "$HOME/.completion" ] && source "$HOME/.completion"

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Enable git Bash Completion if Homebrew is available
if [ -x /usr/local/bin/brew ]; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
fi

# Append to the bash history file, rather than overwriting it
shopt -s histappend

# RVM stuff
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

