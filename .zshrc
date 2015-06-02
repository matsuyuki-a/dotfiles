autoload -U colors
colors

PROMPT="%{$bg[blue]$fg[white]%}[%n]%{$reset_color%} %{${fg[cyan]}%}%~%{${reset_color}%} %% "
autoload -U compinit
compinit

export LSCOLORS=ExFxCxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# zstyle ':completion:*' list-colors 'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34';;

# export LANG=ja_jp.UTF-8
# export XMODIFIRES=@im=uim
# export GTK_IM_MODULE=uim
# export CATALINA_HOME=/usr/local/apache-tomcat-8.0.15
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home

alias l="ls -G"
alias ls="ls -G"
alias la="ls -aG"
alias ll="ls -lG | less"
alias lal="ls -laG | less"
alias lla="ls -laG | less"
alias gls="gls --color"
alias xbb="extractbb"
alias ebb="extractbb"
alias latexmk="latexmk -pdfdvi"
alias lmk="latexmk -pdfdvi"
alias lmkc="latexmk -c"
alias lmkC="latexmk -C"
alias clang++11="clang++ -std=c++11"
alias clean="rm *~;echo \"directory cleaned.\""
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

export LANG='ja_JP.UTF-8'

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
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

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install


