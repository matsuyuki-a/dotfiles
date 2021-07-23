set expandtab
set ts=2 sw=2 sts=0
set number
set clipboard+=unnamedplus         " yank -> clipboard
set backupdir=$HOME/.vim-backup-undo/backup
set undodir=$HOME/.vim-backup-undo/undo
set backspace=indent,eol,start

" for Ruby
" rbenvで入れたバージョンが違う場合には書き換えてください
let g:ruby_host_prog = $RBENV_ROOT.'/versions/2.7.1/bin/neovim-ruby-host'

" for Python
let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'

" for Node
" nodenvで入れたバージョンが違う場合には書き換えてください
let g:node_host_prog = $NODENV_ROOT.'/versions/12.16.3/bin/neovim-node-host'


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
"
" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  "
  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " Dein
  "# REQUIRED: Add a syntax file. YATS is the best
  call dein#add('HerringtonDarkholme/yats.vim')
  " For async completion
  call dein#add('Shougo/deoplete.nvim')
  " For Denite features
  call dein#add('Shougo/denite.nvim')
  "
  " Enable deoplete at startup
  "
  let g:deoplete#enable_at_startup = 1

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins onstartup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts------------------------

