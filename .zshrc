cowsay `cat /etc/motd` | lolcat -F 0.03
echo

export QT_QPA_PLATFORMTHEME=qt5ct

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '/home/lockness/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U colors && colors
PROMPT="%{$fg[black]%}%K{9}%n%{$reset_color%}%{$bg[red]%}%F{9}%{$fg[black]%}%d%{$fg[red]%}%{$bg[black]%}"$'\n'"%{$bg[red]%}%{$fg[black]%}>%{$reset_color%}%{$fg[red]%}% %k%f"
RPROMPT="%{$fg[black]%}%F{9}%{$fg[black]%}%K{9}%? | %t%k%f"
# PROMPT=$'%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%n%(#.��.㉿)%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '

bindkey '^[[1;5C' forward-word                    # ctrl + ->
#bindkey '^[[C' forward-word                       # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-
#bindkey '^[[D' backward-word                      # ctrl + <-
bindkey '^[[3~' delete-char 
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

alias vim='nvim'

alias ls='exa -ll'                                                         # ls
alias l='exa -lbF --git'                                               # list, size, type, git
alias ll='exa -lbGF --git'                                             # long list
alias llm='exa -lbGF --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

# speciality views
alias lS='exa -1'			                                                  # one column, just names
alias lt='exa --tree --level=2'                                         # tree

PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"

alias ga='git add .'
alias gc='git commit -m '
alias gp='git push && echo | xclip -sel c'

alias clip='xclip -sel c'

alias ghp='gpg -o- -d /home/lockness/.gh_pat.gpg 2>/dev/null | xclip -sel c'

alias sc='maim -s -u | xclip -selection clipboard -t image/png -i'

alias c='pal'

export TERM=xterm-256color
source $HOME/.cargo/env
