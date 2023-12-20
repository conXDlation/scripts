if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/amro.omp.json)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

autoload -U compinit
#     compinit

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    eval "$(oh-my-posh init zsh)"
fi

#-------------------------------------alias-----------------------------------------------
#
#
#########################################################
#########################################################
#########################################################
#########################################################
#
#







export PATH="$HOME/.zsh:$PATH"
alias run='run.sh'

export VISUAL=nvim
export EDITOR=nvim



#
#
#########################################################
#########################################################
#########################################################
#########################################################
#
#
#----------------------nvim--------------------------------
# alias vi='nvim'
alias v='nvim'
alias e='nvim'
alias py='python'

#-----------------------------clear-------------------------
alias c='clear'
alias cl='clear'
alias cls='clear'

#--------------------------apps----------------------------
alias fm='ranger'
alias b='btop'
alias net='speedtest'

#------------------------dnf------------------------------
alias sdi='sudo dnf install'
alias upd='sudo dnf update'
alias ref='sudo dnf upgrade --refresh'
alias upg='sudo dnf upgrade '

#------------------------exa------------------------------
alias lt2='exa --tree --level=3 --icons -a  -lBb --colour-scale'
alias lt3='exa --tree --level=4 --icons -a  -lBb --colour-scale'
alias lt='exa --tree --level=2 --icons -a   -lBb --colour-scale'

#--------------------------tmux----------------------------
alias t='tmux'
alias ta='tmux attach-session'

alias ttop='tmux set -g status-position top'
alias tbot='tmux set -g status-position bottom'

#------------------------------------------------------
alias host='npm run dev'
alias livehost='npm run dev -- -H 192.168.1.8'
alias zshs='source ~/.zshrc'

#-------------------c--------------------------
alias gp='g++'
alias pp='g++'
alias cc'gcc'

#-----------------------------scripts-------------------------
alias mdc='mcd() { mkdir "$@" && cd "$@" }; mcd'

setxkbmap -layout us -option ctrl:nocaps

#---------------------------navigation-----------------------------
#--------------------------------
alias ef="fd --hidden --type f | fzf --reverse | xargs -o nvim"
# alias sd='fd --hidden --type d | fzf --preview "exa -lah --icons {} "
# '
alias epf=" fd --type f -H |fzf --reverse --preview 'bat --color=always --style=numbers --line-range=:100 {}'| xargs nvim {}

"
alias pf=" fd --type f |fzf --reverse --preview 'bat --color=always --style=numbers --line-range=:100 {}'
"

alias ec='fd --hidden --type f --max-depth=1 | fzf-tmux -p --reverse | xargs -o nvim'
#
alias fl2='fd --max-depth=2 |fzf --reverse '

alias play='find ~/Music -type f \( -name "*.mp3" -or -name "*.m4a" -or -name "*.webm" \)| fzf-tmux --reverse -p |xargs -I {} vlc "{}"
'
# Print tree structure in the preview window
export FZF_ALT_C_OPTS="--preview 'exa -lah --icons {}'"

# Run the command when Alt+E is pressed
function my_command() {
  epf
}
zle -N my_command
bindkey '^[e' my_command

#--------------------golang-------------------------






























# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the follow`ing line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo history web-search encode64 copypath zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# web_search from terminal

function web_search() {
  emulate -L zsh

  # define search engine URLS
  typeset -A urls
  urls=(
    $ZSH_WEB_SEARCH_ENGINES
    google          "https://www.google.com/search?q="
    bing            "https://www.bing.com/search?q="
    brave           "https://search.brave.com/search?q="
    yahoo           "https://search.yahoo.com/search?p="
    dckduckgo      "https://www.duckduckgo.com/?q="
    startpage       "https://www.startpage.com/do/search?q="
    yandex          "https://yandex.ru/yandsearch?text="
    github          "https://github.com/search?q="
    baidu           "https://www.baidu.com/s?wd="
    ecosia          "https://www.ecosia.org/search?q="
    goodreads       "https://www.goodreads.com/search?q="
    qwant           "https://www.qwant.com/?q="
    givero          "https://www.givero.com/search?q="
    stackoverflow   "https://stackoverflow.com/search?q="
    wolframalpha    "https://www.wolframalpha.com/input/?i="
    archive         "https://web.archive.org/web/*/"
    scholar         "https://scholar.google.com/scholar?q="
    ask             "https://www.ask.com/web?q="
    youtube         "https://www.youtube.com/results?search_query="
    phind           "https://www.phind.com/search?q="
    mdn             "https://developer.mozilla.org/en-US/search?q="
    gpt             "https://chat.openai.com/"
  )

  # check whether the search engine is supported
  if [[ -z "$urls[$1]" ]]; then
    echo "Search engine '$1' not supported."
    return 1
  fi

  # search or go to main page depending on number of arguments passed
  if [[ $# -gt 1 ]]; then
    # build search url:
    # join arguments passed with '+', then append to search engine URL
    url="${urls[$1]}$(omz_urlencode ${@[2,-1]})"
  else
    # build main page url:
    # split by '/', then rejoin protocol (1) and domain (2) parts with '//'
    url="${(j://:)${(s:/:)urls[$1]}[1,2]}"
  fi

  open_command "$url"
}
alias pd="web_search phind "
alias gpt="web_search gpt "
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


source ~/.zsh/alias.sh
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/bin:$PATH"
