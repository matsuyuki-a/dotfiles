#!/bin/sh

if [ "$(uname)" = "Darwin" ]; then
  CONFIG_PATH=$HOME/Library/Application\ Support/Code/User
else 
  CONFIG_PATH=$HOME/.config/Code/User
fi

if [ -e $CONFIG_PATH ]; then
  echo "ERROR: VSCodeの設定ファイルのインストールディレクトリ" $CONFIG_PATH "が見つかりません." > /dev/stderr
  echo "Visual Studio Code をインストールしてから再度実行してください: https://code.visualstudio.com/" > /dev/stderr
  exit 1
fi

echo "Visual Studio Codeの設定ファイルを書き換えます! ダメなら Ctrl + C で抜けてください."
echo "Enterキーで先に進みます: "
read HOGE
if [ -e "$CONFIG_PATH/keybindings.json" ]; then
  cp "$CONFIG_PATH/keybindings.json" "$CONFIG_PATH/keybindings.old.json"
fi
if [ -e "$CONFIG_PATH/settings.json" ]; then
  cp "$CONFIG_PATH/settings.json" "$CONFIG_PATH/settings.old.json"
fi
cp "./vscode/keybindings.json" "$CONFIG_PATH"
cp "./vscode/settings.json" "$CONFIG_PATH"

