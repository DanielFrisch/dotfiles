# OH-MY-ZSH SETUP
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="rain_coat"

export UPDATE_ZSH_DAYS=13

DISABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# plugins=(brew bundle colorize fasd gem node npm vagrant battery)

plugins=(battery sublime colorize fasd z osx ssh-agent) # FOR JUST A LITTLE WHILE

# register homebrew completions folder

fpath=('/usr/local/share/zsh/site-functions/' $fpath)

# load configuration files
for file in ~/.confiles/.*; do
    [ -r "$file" ] && source "$file"
done
unset file

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi

source $ZSH/oh-my-zsh.sh
zstyle :omz:plugins:ssh-agent agent-forwarding on

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
source '~/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source `~/google-cloud-sdk/completion.zsh.inc'
