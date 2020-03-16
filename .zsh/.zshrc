export ZSH=~/.zsh
export ERL_LIBS=~/.erl
export EDITOR='vim'
export TZ=UTC
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
