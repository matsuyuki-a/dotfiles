syntax on
set expandtab
set ts=2 sw=2 sts=0
set number
set clipboard+=autoselect      " visual selection -> clipboard
set clipboard+=unnamed         " yank -> clipboard
set backupdir=$HOME/.vim-backup-undo/backup
set undodir=$HOME/.vim-backup-undo/undo
set backspace=indent,eol,start

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif
  "
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
"
" Required:
call neobundle#begin(expand('~/.vim/bundle'))
"
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
"
"            " Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
"
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
"
NeoBundle 'https://github.com/leafgarland/typescript-vim.git'
NeoBundle 'https://github.com/clausreinke/typescript-tools.vim'
autocmd BufRead,BufNewFile *.ts set filetype=typescript

NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'fholgado/minibufexpl.vim'
"
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'python_fold'

" Required:
call neobundle#end()
"
" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
"
