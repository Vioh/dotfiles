"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Dependencies that need to be installed:
" (*) vim (version 8.1 or above)
" (*) vim-gtk (to make vim work with system clipboard for copying)
"
" Plugins that need to be installed (clone these repos to ~/.vim/pack/<some-name>/start/):
" (*) https://github.com/preservim/nerdcommenter
"
" Good general links:
" (*) https://vim.fandom.com/wiki/Vim_Tips_Wiki
" (*) https://github.com/technicalpickles/pickled-vim
"
" Search and replace:
" (*) Introduction video: https://www.youtube.com/watch?v=9Sodnanx_yI
" (*) Comprehensive guide: https://vim.fandom.com/wiki/Search_and_replace
"
" Copy and paste:
" (*) Introduction video: https://www.youtube.com/watch?v=5RXLRzo0Skg
" (*) Comprehensive guide: https://vim.fandom.com/wiki/Copy,_cut_and_paste
" (*) In normal mode:
"     - To cut a line, use 'dd'
"     - To copy a line, use 'yy'
"     - To paste a line after the cursor, use 'p'
"     - To paste a line before the cursor, use 'shift-p'
" (*) In visual mode:
"     - To cut the selection, use 'd'
"     - To copy the selection, use 'y'
"     - To paste the selection after the cursor, use 'p'
"     - To paste the selection before the cursor, use 'shift-p'
"
" TODO:
" (*) Jump: https://vi.stackexchange.com/questions/3052/how-to-jump-only-in-currently-open-file
" (*) How to set a bookmark and return to it later?
" (*) Code navigation for common languages (C++/Java/Python)?
" (*) Research fuzzy search: https://github.com/junegunn/fzf.vim
" (*) Display filetree with NERDTree? Also how to browse/search through some files from within Vim?
" (*) Best and easiest way to do multiline editing (both inserting and deleting)?
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Press F4 to quit (ignoring all unsaved changes)
noremap <F4> :q!<CR>
inoremap <F4> <Esc>:q!<CR>

" Press F5 to reload this configuration file
noremap <F5> :source ~/.vimrc<CR>
inoremap <F5> <C-O>:source ~/.vimrc<CR>

" Use Ctrl+E to enter visual mode
noremap <C-E> :normal! v<CR>
inoremap <C-E> <Esc>`^:normal! v<CR>

" Save a file with Ctrl-S
" Remember to add the following to your bashrc file to free up Ctrl+S and Ctrl+Q:
"    stty stop ''
"    stty start ''
"    stty -ixon
"    stty -ixoff
noremap <C-S> :w<CR>
inoremap <C-S> <C-O>:w<CR>

" Remove a line with Ctrl-K (use black-hole register "_ to avoid copying to system clipboard)
noremap <C-K> "_dd
inoremap <C-K> <C-O>"_dd

" Undo and Redo with Ctrl-U and Ctrl-Y
noremap <C-U> u
noremap <C-Y> <C-R>
inoremap <C-U> <C-O>u
inoremap <C-Y> <C-O><C-R>

" Highlight the entire file with Ctrl-A
noremap <C-A> ggVG
inoremap <C-A> <Esc>ggVG

" Toggle line numbers with Ctrl-L (numbers will be shown by default)
noremap <C-L> :set invnumber<CR>
inoremap <C-L> <C-O>:set invnumber<CR>
set number

" Move line(s) up and down with Ctrl-Shift-Up/Down
nnoremap <C-S-Down> :m .+1<CR>
nnoremap <C-S-Up> :m .-2<CR>
inoremap <C-S-Down> <Esc>:m .+1<CR>gi
inoremap <C-S-Up> <Esc>:m .-2<CR>gi
vnoremap <C-S-Down> :m '>+1<CR>gv
vnoremap <C-S-Up> :m '<-2<CR>gv

" Use '<' and '>' to respectively indent and shift-indent (in normal/visual mode only)
nnoremap > :<<CR>
nnoremap < :><CR>
vnoremap > <gv
vnoremap < >gv

" Jump back and forth with Ctrl-Shift-Left/Right
noremap <C-S-Left> <C-O>
noremap <C-S-Right> <C-I>
inoremap <C-S-Left> <Esc><C-O>
inoremap <C-S-Right> <Esc><C-I>

" Use Ctrl-H toggle highlighting on/off on search results
noremap <C-H> :set hlsearch! hlsearch?<CR>
inoremap <C-H> <C-O>:set hlsearch! hlsearch?<CR>

" Automatically highlight all unwanted spaces
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" Toggle comments with Ctrl-R (remember to install NERDCommenter plugin)
noremap <C-R> :call NERDComment(0, "toggle")<CR>
inoremap <C-R> <C-O>:call NERDComment(0, "toggle")<CR>
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = "left"
let g:NERDToggleCheckAllLines = 1

" Use 4 spaces instead of tabs and setup autoindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set autoindent

" Incremental search to search faster
" Use '/' in normal mode to search, then 'n' and 'shift-n' to find next/previous
set incsearch

" Show number of hits when searching
set shortmess-=S

" Allow to copy straight to the clipboard (only available if 'vim-gtk' is installed)
" To copy and paste a highlighted text in visual mode, use 'y' to yank, and 'p' to paste
set clipboard=unnamedplus

" Remove delay when using Esc key
set ttimeoutlen=0

" Choose color scheme (see /usr/share/vim/vim*/colors for available ones)
" Best preinstalled schemes for Ubuntu terminal: ron, delek, slate, elflord, desert, koehler
colorscheme ron

" Allow search within highlighted region in visual mode
function! RangeSearch(direction)
  call inputsave()
  let g:srchstr = input(a:direction)
  call inputrestore()
  if strlen(g:srchstr) > 0
    let g:srchstr = g:srchstr.
          \ '\%>'.(line("'<")-1).'l'.
          \ '\%<'.(line("'>")+1).'l'
  else
    let g:srchstr = ''
  endif
endfunction
vnoremap <silent> / :<C-U>call RangeSearch('/')<CR>:if strlen(g:srchstr) > 0\|exec '/'.g:srchstr\|endif<CR>
vnoremap <silent> ? :<C-U>call RangeSearch('?')<CR>:if strlen(g:srchstr) > 0\|exec '?'.g:srchstr\|endif<CR>
