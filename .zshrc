# OH-MY-ZSH SETUP
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="the_poncho"

export UPDATE_ZSH_DAYS=1

DISABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(brew bundle colorize fasd gem node npm vagrant battery)
plugins=(bundle colorize fasd gem node npm battery) # FOR THE JUST A LITTLE WHILE

# register homebrew completions folder
fpath=('/usr/local/share/zsh/site-functions/' $fpath)

# load configuration files
for file in ~/.confiles/.*; do
    [ -r "$file" ] && source "$file"
done
unset file

# rbenv
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh
