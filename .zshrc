source $ZSH/oh-my-zsh.sh

export  ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

export PYTHONDONTWRITEBYTECODE=1
export PYGAME_HIDE_SUPPORT_PROMPT=1

ZSH_THEME="robbyrussell"

plugins=(
    poetry
)

alias vtop="vtop -t certs"
alias ipython="ipython3 --no-banner"

precmd () { rehash }