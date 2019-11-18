"VIM-PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/mxw/vim-jsx.git' "JSX SYNTAX
Plug 'https://github.com/pangloss/vim-javascript.git' "JAVASCRIPT SYNTAX
Plug 'https://github.com/tpope/vim-fugitive.git' "GIT WRAPPER
Plug 'lervag/vimtex' "LATEX
Plug 'tpope/vim-surround' "SURROUND
Plug 'altercation/vim-colors-solarized' "COLORS
call plug#end()


" BASIC STUFF
let mapleader = ","
filetype indent on "loads filetype-specific indentation file from /indent
set number relativenumber
syntax on
" indentation
set softtabstop=4
set shiftwidth=4
set expandtab
set cursorline "highlight current line
set wildmenu "shows files and folders when :e (some Path here) <TAB>
set showmatch "highlight matchin [{()}]
set matchtime=5 "for how long the highlight appears
set splitbelow splitright "splits open at the bottom&right 

" COLOR SCHEME
set background=dark
let g:solarized_termcolors=256
colorscheme solarized


"INSERT MODE MAPS================================================
inoremap jj <Esc>
inoremap <leader>o o<Esc>
inoremap <leader>O O<Esc>
inoremap <C>h <left>
"NORMAL MODE MAPS================================================
"easier navigation
noremap K {
noremap J }
noremap H ^
noremap L $

"
"Inserting Tabs
nnoremap <Tab> >>
nnoremap <S-Tab> <<
"after searching for words, press space to remove hilighting of words
nnoremap <Space> :nohlsearch <return>
" consistency for Y, yank to end of line
nnoremap Y y$
" vim-fugitive git shortcuts. gdh get from left (target), gdh get from right (feature)
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR> :diffupdate<CR>
nnoremap gdl :diffget //3<CR> :diffupdate<CR>


" VISUAL MODE========================================================
" Tabbing with tab, keeping selection 
vnoremap <Tab> >><ESC>gv
vnoremap <S-Tab> <<<Esc>gv


" LATEX STUFF========================================================
let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'




"FIND OPTIONS (with when searching with /)
set incsearch "now it searches when you start typing the word you search for. before, it only started searching after hitting enter
set hlsearch " highlights matches

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
