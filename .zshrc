# 【解決済み】Error: Cannot install in Homebrew on ARM processor in Intel default prefix (/usr/local)!のエラーを解消する方法｜シロウブログ「change life」
# https://shiro-changelife.com/error-cannot-install-in-homebrew/

export PATH="/opt/homebrew/bin:$PATH"

eval "$(starship init zsh)"

# Alias
#=================================
## General
alias la='ls -la'
alias ll='ls -laF'

alias vi='vim'
alias vim='nvim'

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

# PATH
#=================================


