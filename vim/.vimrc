" consolidate backups
set backup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap//

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

" change default split windows
set splitbelow
set splitright

" no double space after periods
set nojoinspaces

syntax enable
filetype plugin indent on

" custom key bindngs
" make Y behavior consistent with C and D
nnoremap Y y$

" faster window switching
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" update cwd for each buffer
autocmd BufEnter * silent! lcd %:p:h

" set textwidth for certain file types
autocmd Filetype tex      setlocal textwidth=80
autocmd FileType text     setlocal textwidth=80
autocmd FileType markdown setlocal textwidth=80 expandtab

" ruby indentation style
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 expandtab

" haskell indentation style
autocmd FileType ruby setlocal expandtab

" syntax highlighting for GLSL shaders
autocmd BufNewFile,BufRead *.glsl setlocal ft=glsl

" highlight erroneous whitespace
highlight def link whiteSpaceError Error
autocmd Syntax * syn match whiteSpaceError "\(\S\| \)\@<=\t\+" containedin=ALL
autocmd Syntax * syn match whiteSpaceError "\s\+\%#\@<!$"      containedin=ALL

" fix background clearing in 256-color terminals
if &term =~ '256color'
  set t_ut=
endif

colorscheme desert256
