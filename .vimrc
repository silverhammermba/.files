" consolidate backups
set backup
set backupdir=$HOME/.vim/backup
set dir=$HOME/.vim/swap

set autoread

" set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set cinwords=

" no text wrapping
set nowrap
set sidescroll=1
set listchars=extends:>,precedes:<
set sidescrolloff=20

set number
set ruler

" no audio/visual beeping
set visualbell t_vb=

" nicer searching
set hlsearch
set incsearch

" make backspace work
set backspace=indent,eol,start

set mouse=a

syntax enable
filetype plugin indent on

" custom key bindngs
" make Y behavior consistent with C and D
nnoremap Y y$

" update cwd for each buffer
autocmd BufEnter * silent! lcd %:p:h

" set textwidth for certain file types
autocmd BufReadPost,FileReadPost *.tex setlocal textwidth=80
autocmd BufReadPost,FileReadPost *.txt setlocal textwidth=80

" syntax highlighting for GLSL shaders
autocmd BufNewFile,BufRead *.glsl setlocal ft=glsl

" highlight erroneous whitespace
highlight def link whiteSpaceError Error
autocmd Syntax * syn match whiteSpaceError "\(\S\| \)\@<=\t\+" containedin=ALL
autocmd Syntax * syn match whiteSpaceError "\s\+\%#\@<!$"      containedin=ALL

colorscheme desert256
