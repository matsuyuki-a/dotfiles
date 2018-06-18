################  ENV ZONE ###################################
export LSCOLORS=ExFxCxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# JAVA_HOME: 環境に合わせて変更してください。
# export JAVA_HOME="/opt/java/jdk1.8.0_121"


#################  PATH ZONE ##################################
## Oracle JDK: 使用する場合はコメントを解除してください。
# export PATH="$JAVA_HOME/bin:$PATH"

## anyenv: 使用する場合はコメントを解除してください。
# export PATH="$HOME/.anyenv/bin:$PATH"

## macvim: macでmacvimを使用する場合はコメントを解除してください。
# パスが違う場合は適宜修正してください。
if [ "$(uname)" = "Darwin" ]; then
#  export PATH="/Applications/MacVim.app/Contents/bin:$PATH"
fi

## go: GOPATHを使用する場合はコメントを解除してください。
# export GOPATH="$HOME/go"

################  ALIAS ZONE ##################################
if [ "$(uname)" = "Darwin" ]; then
  alias ls="ls -G"
  alias ll="ls -lG"
  alias la="ls -aG"
else 
  alias ls="ls --color"
  alias ll="ls -l --color"
  alias la="ls -a --color"
fi
alias gls="gls --color"
alias xbb="extractbb"
alias ebb="extractbb"
alias latexmk="latexmk -pdfdvi"
alias lmk="latexmk -pdfdvi"
alias lmkc="latexmk -c"
alias lmkC="latexmk -C"
alias g++11="g++ -std=c++11"
alias clang++11="clang++ -std=c++11"
alias clean="rm *~;echo \"directory cleaned.\""
alias tmux="tmux -2"
## Visual Studio Code (macOS Only)
if [ "$(uname)" = "Darwin" ]; then
  alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
fi

################  ANYENV ZONE     ##################################
# eval "$(anyenv init -)"


################  zsh-syntax-highlighting     ##################################
# zsh-syntax-highlighting のインストール先に合わせて変更してください。
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

####################################################################
#
#
autoload -U colors
colors

# gitブランチ表示
# 参考にしました: http://mollifier.hatenablog.com/entry/20090814/p1
zstyle ':vcs_info:*' formats "%s:%b"
zstyle ':vcs_info:*' actionformats "%s<%a>:%b"
precmd () {
  psvar=()
  LANG=ja_JP.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"

PROMPT="%{$bg[blue]$fg[white]%}[%n]%{$reset_color%} %{${fg[cyan]}%}%~%{${reset_color}%} %% "
autoload -U compinit
autoload -Uz vcs_info

compinit

# zstyle ':completion:*' list-colors 'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34';;

# export LANG=ja_jp.UTF-8
# export XMODIFIRES=@im=uim
# export GTK_IM_MODULE=uim
# export CATALINA_HOME=/usr/local/apache-tomcat-8.0.15
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home


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



