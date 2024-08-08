### ----- EXPORTS ----- ###
export BROWSER="brave"
export EDITOR="nvim"
export VISUAL="code"

### ----- PROMP ----- ###
eval "$(starship init zsh)"

setopt histignorealldups sharehistory

### ----- HISTORY ----- ###
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history



### ----- ALIASES ----- ###
## --- BATCAT --- ###
alias cat="bat --paging=never"
alias catp="bat"

## --- EZA --- ##
alias ls="eza -a --group-directories-first --icons=always"
alias lsd="eza -aD --icons=always"
alias lsf="eza -af --icons=always"
alias ll="eza -alh --total-size --git --git-repos-no-status --group-directories-first --icons=always"
alias llc="eza -alhU --group-directories-first --icons=always"
alias lld="eza -alDh --icons=always"
alias llf="eza -alfh --icons=always"
alias lt="eza -alTh -L=2 --group-directories-first --icons=always"


### ----- COMPLETION ----- ###
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

### ----- BINDINGS ----- ###
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "\e^?" backward-kill-word

### ----- PLUGINS ----- ###
## --- AUTOSUGGESTIONS --- ##
AUTOSUGGESTIONS=/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
if [ -f "$AUTOSUGGESTIONS" ]; then
  source $AUTOSUGGESTIONS
fi

## --- SYNTAX-HIGHLIGHTING --- ##
SYNTAX_HIGHLIGHTING=/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [ -f "$SYNTAX_HIGHLIGHTING" ]; then
  source $SYNTAX_HIGHLIGHTING
fi


