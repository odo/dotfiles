export ZSH=~/.zsh
export ERL_LIBS=~/.erl
export EDITOR='vim'
export TZ=UTC
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

 #Load and run compinit
autoload -U compinit
compinit -i

# export PATH="/Users/florianodronitz/anaconda/bin:$PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#export PATH=$PATH:/opt/local/bin:/usr/local/elixir-1.0.5/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/odo101/.sdkman"
[[ -s "/Users/odo101/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/odo101/.sdkman/bin/sdkman-init.sh"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export ZSH_THEME="agnoster"
plugins=(
  git
  dotenv
  osx
)
export PATH="/Users/odo101/anaconda2/bin:/usr/local/opt/openssl/bin:/opt/homebrew/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

source <(kubectl completion zsh)
#source <(helm completion zsh)

ssh-add -A
