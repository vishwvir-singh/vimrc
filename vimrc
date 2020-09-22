"AUTHOR : vishwvir

"Basic commands

""syntax enable
syntax on
set noshowmode
set tabstop=4
set shiftwidth=4
set expandtab
filetype indent on
set autoindent
set nu
set hlsearch
set foldmethod=indent
set foldlevel=99
set ignorecase
let mapleader = ' '
"################################

"Vundle
set nocompatible
filetype on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'preservim/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'itchyny/lightline.vim'
Plugin 'tmhedberg/simpylfold'
Plugin 'vim-syntastic/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

"###############################

" jedi-vim
if has('python3')
    let g:loaded_youcompleteme = 1
    let g:jedi#force_py_version = 3
    let g:pymode_python = 'python3'
    autocmd FileType python setlocal completeopt-=preview
    let g:jedi#show_call_signatures = 0
    let g:jedi#show_call_signatures_delay = 0
    let g:jedi#popup_select_first = 0
    "let g:jedi#use_splits_not_buffers = "right"
    let g:jedi#completions_enabled = 1
    let g:jedi#auto_vim_configuration = 1
    let g:jedi#use_tabs_not_buffers = 1
    let g:jedi#goto_assignments_command = "<leader>g"
    let g:jedi#goto_definitions_command = "<leader>d"
    let g:jedi#completions_command = "<C-Space>"
endif

"###############################

" nerdtree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

"###############################
" Close current buffer
map <leader>bd :Bclose<cr>

" Close all buffers
map <leader>ba :1,1000 bd!<cr>
" Open bufexplorer to see and manage the current buffers
map <leader>bo :BufExplorer<cr>

"###############################
" Tab/window operation
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tn :tabNext<cr>

" " Opens a new tab with the current buffer's path
" " Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

"###############################
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr> 

"###############################

" syntastic
let python_highlight_all=1

"##############################

" Fold/SimpleFold
nmap <C-m> :TagbarToggle<CR> 
let g:tagbar_autoclose =1 
let g:tagbar_autofocus = 1
let g:SimpylFold_docstring_preview = 1
let b:SimpylFold_fold_import = 1
map <leader>fo :foldopen<cr>
map <leader>fc :foldclose<cr>
"###############################
" split navigations 

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"##############################
