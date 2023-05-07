set expandtab
set ts=2 sw=2 sts=0
set number
set clipboard+=unnamedplus         " yank -> clipboard
set backupdir=$HOME/.vim-backup-undo/backup
set undodir=$HOME/.vim-backup-undo/undo
set backspace=indent,eol,start

" WSL clipboard
" WSL用ヤンクをクリップボードに移動する処理
" https://www.softel.co.jp/blogs/tech/archives/7578 より引用
"if !empty($WSL_DISTRO_NAME)
"	let s:clip = '/mnt/c/Windows/System32/clip.exe'
"	if executable(s:clip)
"		augroup WSLYank
"		autocmd!
"		autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
"		augroup END
"	endif
"endif

