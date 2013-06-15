" color scheme
colo molokai

" copy text nicely, use icon
set guioptions=ai

" set screen size
set co=84
set lines=50

" more visible cursor in current buffer
augroup CursorLine
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
  autocmd WinLeave * setlocal nocursorline nocursorcolumn
augroup END

" needs to be reset for GUI
set visualbell t_vb=
