export  ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

export PYTHONDONTWRITEBYTECODE=1
export PYGAME_HIDE_SUPPORT_PROMPT=1

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

plugins=(poetry)

alias time="\time -p"
alias vtop="vtop -t certs"
alias ipython="ipython3 --no-banner"
alias minecraft="java -jar $HOME/.minecraft/tlauncher.jar"

precmd () { rehash }

osu () {
    pkill picom
    nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceCompositionPipeline = Off }" > /dev/null

    WINEPREFIX=~/.osu-wine WINEARCH=win32 wine /run/media/nwxnk/.../AppData/Local/osu\!/osu\!.exe

    picom -b
    nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceCompositionPipeline = On }" > /dev/null
}