#                 _                _            _       _    _            _
#               /\ \              / /\         / /\    / /\ /\ \        /\ \
#              /  \ \            / /  \       / / /   / / //  \ \      /  \ \
#           __/ /\ \ \          / / /\ \__   / /_/   / / // /\ \ \    / /\ \ \
#          /___/ /\ \ \        / / /\ \___\ / /\ \__/ / // / /\ \_\  / / /\ \ \
#          \___\/ / / /        \ \ \ \/___// /\ \___\/ // / /_/ / / / / /  \ \_\
#                / / /          \ \ \     / / /\/___/ // / /__\/ / / / /    \/_/
#               / / /    _  _    \ \ \   / / /   / / // / /_____/ / / /
#               \ \ \__/\_\/_/\__/ / /  / / /   / / // / /\ \ \  / / /________
#                \ \___\/ /\ \/___/ /  / / /   / / // / /  \ \ \/ / /_________\
#                 \/___/_/  \_____\/   \/_/    \/_/ \/_/    \_\/\/____________/
#
#
#
#
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/home/$USER/.local/bin:$HOME/go/bin:$PATH
# PROMPT='(?.%F{blue}√.%F{red}?%?)%f %B%F{240}%1~%f%b '
# RPROMPT=%*


export ZSH="$HOME/.oh-my-zsh"
export EDITOR=vim
setopt INC_APPEND_HISTORY
plugins=(
		git
		zsh-autosuggestions
		zsh-completions
)

autoload -Uz compinit 
compinit

# History_config
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
# setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt autocd              # change directory just by typing its name
setopt interactivecomments # allow comments in interactive mode
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt nonomatch           # hide error message if there is no match for the pattern

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Alias Section

# enable color support of ls/less/man; also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.config/dircolors/.dir_colors)" || eval "$(dircolors -b)"

    #alias sudo='doas'
    alias ls='lsd'
    alias dir='dir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
fi

#    alias ls='ls --color=auto'
# aliasses
alias lf='lfrun'
alias la='ls -A'
alias l='ls -CF'
alias ll='ls -alF'
alias lst='lsd --tree'
alias ..='cd ..'
alias ascii='ascii-image-converter'
alias nc="ncat"
alias zhup="source ~/.zshrc"
alias vconf="vim ~/.vimrc"
#alias ds="du -hs * | sort -h"
alias ip='ip --color=auto'
alias ohmyzsh="mate ~/.oh-my-zsh"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# add interactive flags for rm and mv commands
alias rm='rm -i'
alias mv='mv -i'
alias discord='firejail discord'
# function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; 

# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific theme was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=random
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.



ZSH_THEME_RANDOM_CANDIDATES=( 
    "bira"
    "frontcube"
)

#ZSH_THEME_RANDOM_CANDIDATES=( 
#	"robbyrussell"
#	"agnoster"
#	"gnzh"
#	"xiong-chiamiov"
#	"frisk"
#	"mrtazz"
#	"kafeitu"
#	"humza"
#	"geoffgarside"
#	"cypher"
#	"takashiyoshida"
#	"wedisagree"
#	"bira"
#	"frontcube"
#)

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# add color to manpages
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[45;93m' \
	  LESS_TERMCAP_se=$'\e[0m' \
	  command man "$@"
}
# source $ZSH/oh-my-zsh.sh - this should go at the end or before 
# loading profiles.
[[ -e $ZSH/oh-my-zsh.sh ]] && source $ZSH/oh-my-zsh.sh

# vim mode for terminal 
bindkey -v
# decrease key timeout
export KEYTIMEOUT=1

# source bash profile so that we can use zsh with some other stuff
# source ~/.bash_profile

