# 【解決済み】Error: Cannot install in Homebrew on ARM processor in Intel default prefix (/usr/local)!のエラーを解消する方法｜シロウブログ「change life」
# https://shiro-changelife.com/error-cannot-install-in-homebrew/

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND='fd --type f'
export FZF_ALT_C_COMMAND='fd --type d'

eval "$(starship init zsh)"

cat <<EOT

Useful Command:
  - exa: alias ll, lta
  - bat
  - fd: like find
  - fzf
  - rg
  - hx
  - navi

EOT

export PATH="/opt/homebrew/bin:$PATH"

eval "$(starship init zsh)"

# Alias
#=================================
## General
alias la='ls -la'
alias ll='ls -laF'

alias vi='vim'
alias vim='nvim'

alias codei='code-insiders'

### exa
if [[ $(command -v exa) ]]; then
  alias e='exa --icons'
  alias l=e
  alias ls=e
  alias ea='exa -a --icons'
  alias la=ea
  alias ee='exa -aal --icons --sort=modified'
  alias ll=ee
  alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias lt=et
  alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
  alias lta=eta

# ------------------------------
# exa - Color Scheme Definitions
# ------------------------------

export EXA_COLORS="\
da=38;5;245:\
di=38;5;14:\
sn=38;5;28:\
sb=38;5;28:\
uu=38;5;40:\
un=38;5;160:\
gu=38;5;40:\
gn=38:5:160:\
bl=38;5;220:\
ur=37:\
uw=37:\
ux=37:\
ue=37:\
gr=37:\
gw=37:\
gx=37:\
tr=37:\
tw=37:\
tx=37:\
su=37:\
sf=37:\
xa=37"

fi

## docker
alias d='docker'
alias d-c='docker-compose'

## git
alias gb='git branch -vv'
alias gba='git branch -a -v'
alias gco='git checkout'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gcb='git checkout -b'
alias gsw='git switch'
alias gcm='git commit -m'
alias gd='git diff'
alias gf='git fetch'
alias gpl='git pull'
alias gs='git status'
alias gst='git status'
alias gcm='git checkout master'
alias gpom='git pull origin master'

## diff
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

# PATH
#=================================

# 
# cf. https://code.visualstudio.com/docs/remote/containers#_using-ssh-keys
if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> $HOME/.ssh/ssh-agent
   fi
   eval `cat $HOME/.ssh/ssh-agent`
fi

# Change Key bind of zsh from Emacs to Vim
set -o vi

eval "$(zoxide init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hajime.koshiro/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hajime.koshiro/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hajime.koshiro/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hajime.koshiro/google-cloud-sdk/completion.zsh.inc'; fi

export CLOUDSDK_PYTHON=/Path/to/python2/binary
export GCP_SDK=/Path/to/google-cloud-sdk/bin
export PATH=$GCP_SDK:$PATH

alias fgif='(){ffmpeg -i $1 -filter_complex "[0:v] fps=30,scale=iw/2:-1:flags=lanczos,split [a][b];[a] palettegen [p];[b][p] paletteuse" ${1%.*}_converted.gif}'
alias fgif1x='(){ffmpeg -i $1 -filter_complex "[0:v] fps=30,split [a][b];[a] palettegen [p];[b][p] paletteuse" ${1%.*}_converted_1x.gif}'

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export GOPATH=$HOME/go 
export PATH=$GOPATH/bin:$PATH

