nnoremap <SPACE> <Nop>
let mapleader = " "

colorscheme slate

set nocompatible " Do not make Vim behave like vi
set number " show line numbers
set relativenumber
set autoindent
set cindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
set cursorline
set autoread
set showmatch
set laststatus=2
set tildeop
set nohlsearch
set showcmd
" set equalalways " split windows always equally
" set eadirection " control which direction splits equally

hi CursorLineNr term=bold cterm=bold ctermfg=black ctermbg=Red
hi CursorLine term=none cterm=none ctermbg=Black
hi Visual ctermbg=Blue
hi clear MatchParen

map <leader>so :w<CR>:so<CR>

map <leader>rc :edit $MYVIMRC<CR>

map <leader>nrc :e! ~/.config/nvim<CR>

map <leader>zrc :e! ~/.zshrc<CR>

map <Up> <Nop>
map <Down> <Nop>
map <Right> <Nop>
map <Left> <Nop>
map <PageUp> <Nop>
map <PageDown> <Nop>
map <Home> <Nop>
map <End> <Nop>

imap <C-f> <Left>
imap <C-b> <Right>
imap <A-f> <C-Left>
imap <A-b> <C-Right>
imap <C-d> <Del>
imap <C-s> <C-d>

map <leader>j :<C-u>call append(line("."), repeat([""], v:count1))<CR>
map <leader>k :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

map <leader>x :Explore<CR>
map <leader>v :Vexplore<CR>

" highlight matches while searching but remove highlight when search is done
" either aborted or succeeded
augroup vimrc-incsearch-highlight
    autocmd!
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
augroup END
