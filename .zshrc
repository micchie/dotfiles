# %F{120} .. %f defines the color
# See https://kittygiraudel.com/2022/10/29/making-sense-of-zsh/
PS1='%F{120}%n@%m%f:%~ >'
RPS1='%F{120}${vcs_info_msg_0_}%f%F{120}(%T %D)%f'

OSTYPE=`uname`

bindkey -v
bindkey "^R" history-incremental-search-backward

autoload -Uz compinit; compinit
#autoload -Uz colors; colors

export ZLS_COLORS="${LS_COLORS}"
export CLICOLOR="true"
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
# see https://arjanvandergaag.nl/blog/customize-zsh-prompt-with-vcs-info.html
zstyle ':vcs_info:git:*' formats "%F{120}%b%m%u%c%f "

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ip="ip -color"
alias diff='diff --color=auto'
export LESS='-R --use-color -Dd+r$Du+b'
export BLOCKSIZE;BLOCKSIZE=K

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export TERM=xterm-256color
# https://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console
export LS_COLORS="$LS_COLORS:di=1;37:ln=1;92:ow=1;34:ex=1;31:tw=1;34:*.tar=1;35:*.gz=1;35:*.zip=1;35:*.tbz2=1;35"
export GREP_COLOR='1;37'

setopt HIST_SAVE_NO_DUPS
setopt IGNORE_EOF
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_NO_STORE
setopt AUTO_CD
setopt PROMPT_SUBST
setopt NO_BEEP
# on by default anyways
setopt NO_CLOBBER
