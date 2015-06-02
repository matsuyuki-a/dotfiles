set expandtab
set ts=2 sw=2 sts=0
set number
set clipboard+=autoselect      " visual selection -> clipboard
set clipboard+=unnamed         " yank -> clipboard
set backupdir=$HOME/.vim-backup-undo/backup
set undodir=$HOME/.vim-backup-undo/undo

" vundle
" http://tell-k.hatenablog.com/entry/2012/01/26/231425
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle.vim
call vundle#rc()
" let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'
" " My Bundles here:
""" TypeScript
Bundle 'typescript-vim'
autocmd BufRead,BufNewFile *.ts set filetype=typescript

" " githubの特定のリポジトリからインストール
Bundle 'tell-k/vim-browsereload-mac'
Bundle 'fholgado/minibufexpl.vim'
"
" " github の "vim-scripts" のアカウントが持ってるリポジトリ
" " からインストール(https://github.com/vim-scripts/)
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'python_fold'
"
filetype plugin indent on     " required! 



