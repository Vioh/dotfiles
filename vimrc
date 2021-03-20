"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Good links:
" (*) https://vim.fandom.com/wiki/Vim_Tips_Wiki
" (*) https://github.com/technicalpickles/pickled-vim
"
" TODO:
" (*) How to search and replace (also with regex)?
" (*) How to do multiline editing?
" (*) How to toggle comments?
" (*) Create shortcuts for entering highlight/visual mode, visual-line mode, and visual-block mode.
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ctrl-S to save a file
" Remember to add the following to your bashrc file to free up Ctrl+S and Ctrl+Q:
"    stty stop ''
"    stty start ''
"    stty -ixon
"    stty -ixoff
noremap <C-S> :w<CR>
inoremap <C-S> <C-O>:w<CR>

" Ctrl-K to remove a line
noremap <C-K> dd
inoremap <C-K> <C-O>dd

" Ctrl-U and Ctrl-Y to undo and redo
noremap <C-U> u
noremap <C-Y> <C-R>
inoremap <C-U> <C-O>u
inoremap <C-Y> <C-O><C-R>

" Ctrl-A to highlight the entire file
noremap <C-A> ggVG
inoremap <C-A> <Esc>ggVG

" Ctrl-L to toggle line numbers (numbers will be shown by default)
noremap <C-L> :set invnumber<CR>
inoremap <C-L> <C-O>:set invnumber<CR>
set number

" Ctrl-Shift-Up/Down to move line(s) up and down in different modes
nnoremap <C-S-Down> :m .+1<CR>==
nnoremap <C-S-Up> :m .-2<CR>==
inoremap <C-S-Down> <Esc>:m .+1<CR>==gi
inoremap <C-S-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-S-Down> :m '>+1<CR>gv=gv
vnoremap <C-S-Up> :m '<-2<CR>gv=gv

" Tab and Shift-Tab to fix lines indentations
noremap <Tab> :><CR>
noremap <S-Tab> :<<CR>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Use 4 spaces instead of tabs
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" Incremental search to search faster
" Use '/' in normal mode to search, then 'n' and 'shift-n' to find next/previous
set incsearch
