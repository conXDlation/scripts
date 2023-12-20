alias ls='exa --icons'
alias l='exa --icons'
alias la='exa --icons -lah'
alias L='exa --icons -lah'
alias conf=' cd $( find ~/.config   -type d  |fzf --reverse --preview "lt -lBb --colour-scale {}"
)'
alias jd=' cd $( find -type d  |fzf --reverse --preview "lt -lBb --colour-scale {}"
)'
alias dnd=' cd $( find ~/Downloads -type d  |fzf --reverse --preview "lt -lBb --colour-scale {}"
)'
alias proj=' cd $( find ~/projects -type d  |fzf --reverse --preview "lt -lBb --colour-scale {}"
)'
alias econf='find ~/.config  -type f | fzf --reverse --preview "bat --color=always --style=numbers --line-range=:100 {}"|xargs nvim {}'

alias cdd=' cd $( fd -H --type d --max-depth=1 |fzf-tmux --reverse -p -w --preview " exa -laBb --colour-scale --no-permissions --no-time --no-user {}")'

alias eid='nvim  $(fd -H --type f --max-depth=1 |fzf --reverse --preview "bat --color=always --style=numbers  --line-range=:100 {}")'
alias ct='
tmux list-windows -a -F "#S:#I-#W" | fzf-tmux -p | cut -d "-" -f 1 | xargs tmux switch-client -t
'



function tmuxswitch() {
 ct
};
zle -N tmuxswitch
bindkey '^[t' tmuxswitch



pop()
{
 tmux popup
};
zle -N pop
bindkey '^\' pop



# fdd() {
#   cd $(fd -H --type=d "$@" |fzf --preview " exa -laBb --colour-scale --no-permissions --no-time --no-user {}")
# };

# fdz() {
#   fd -H --type=d "$!" | fzf --preview "exa -laBb --colour-scale --no-permissions --no-time --no-user {}"
# }

fld() {
    cd $(fd -H --type=d "$1" | fzf --preview "exa -labB {}")

}
