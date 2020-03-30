#!/bin/sh

## 使用の前に
## anyenv, nodenv, neovim, vscode のセットアップを完了させてください

# GOPATH の作成
mkdir -p ~/go

# NeoVim のバックアップ・UNDOディレクトリの作成
DIR="$HOME/.vim-backup-undo"
BACKUP_DIR="backup"
UNDO_DIR="undo"

mkdir -p $DIR"/"$BACKUP_DIR
mkdir -p $DIR"/"$UNDO_DIR

# nodenv で node をインストールした時に初期でグローバルインストールされるnpmパッケージの設定
cp ./nodenv/default-packages $(nodenv root)

# NeoVim の設定ファイル 
mkdir -p ~/.config/nvim
cp ./nvim/init.vim ~/.config/nvim

# VSCode の設定ファイルのコピー
if [ "$(uname)" = "Darwin" ]; then
  CONFIG_PATH="$HOME/Library/Application\ Support/Code/User"
else 
  CONFIG_PATH="$HOME/.config/Code/User"
fi
cp "$CONFIG_PATH/keybindings.json" "$CONFIG_PATH/keybindings.old.json"
cp "$CONFIG_PATH/settings.json" "$CONFIG_PATH/settings.old.json"
cp "./vscode/keybindings.json" "$CONFIG_PATH"
cp "./vscode/settings.json" "$CONFIG_PATH"
