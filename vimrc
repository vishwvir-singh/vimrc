"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                              "
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
set nocompatible              " be iMproved, required

filetype on
filetype plugin on
filetype plugin indent on    " required Allow auto-indenting depending on file type

"=====================================================
"" General settings
"=====================================================
set encoding=utf8
syntax enable                               " syntax highlight
" set syntax=on
set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
" set mouse=a                                 " Allow to use the mouse in the editor
set title                                   " Show file title
set wildmenu                                " Show a more advance menu
set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}
set enc=utf-8	                            " utf-8 by default
set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files
set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?
set scrolloff=10                            " let 10 lines before/after cursor during scroll
set clipboard=unnamed                       " use system clipboard
set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...
set hidden " Hide unused buffers
let mapleader = ","

" Additional mappings for Esc (useful for MacBook with touch bar)
inoremap jj <Esc>


"=====================================================
" Vundle settings
"=====================================================
" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"-------------------=== Code/Project navigation/manage ===-------------
Plugin 'scrooloose/nerdtree'                " Project and file navigation
Plugin 'majutsushi/tagbar'                  " Class/module browser
Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files
Plugin 'tpope/vim-fugitive'                 " Git Integration
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " adds syntax for nerdtree on most common file extensions

"-------------------=== Other ===-------------------------------
" Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline'                  " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
Plugin 'rosenfeld/conque-term'              " Consoles as buffers
Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
Plugin 'flazz/vim-colorschemes'             " Colorschemes

"-------------------=== Languages support ===-------------------
Plugin 'tpope/vim-commentary'               " Comment stuff out
Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin
" Plugin 'ycm-core/YouCompleteMe'             " Autocomplete plugin
Plugin 'davidhalter/jedi-vim'               " Autocomplete plugin

"-------------------=== Python  ===-----------------------------
Plugin 'nvie/vim-flake8'
" Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
Plugin 'dense-analysis/ale'         	    " Syntax checking/lint
" Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim
Plugin 'vim-scripts/indentpython.vim'       " Auto-Indentation

" All of your Plugins must be added before the following line
call vundle#end()            " required


"=====================================================
" split navigations
"=====================================================

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"=====================================================
"" Tabs / Buffers settings
"=====================================================
" tab sball
" set switchbuf=useopen
" set laststatus=2
nmap <F8> :bprev<CR>
nmap <F9> :bnext<CR>
nmap <F10> :bdelete<CR>
"nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>


"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
nmap ' :TagbarToggle<CR>

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>

"=====================================================
"" Riv.vim settings
"=====================================================
let g:riv_disable_folding=1

"=====================================================
"" Python settings
"=====================================================

" python executables for different plugins
let g:pymode_python='python3'
let g:syntastic_python_python_exec='python3'

" " rope
" let g:pymode_rope=0
" let g:pymode_rope_completion=0
" let g:pymode_rope_complete_on_dot=0
" let g:pymode_rope_auto_project=0
" let g:pymode_rope_enable_autoimport=0
" let g:pymode_rope_autoimport_generate=0
" let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" syntax highlight
" let python_highlight_all = 0
" let g:pymode_syntax=1
" let g:pymode_syntax_slow_sync=1
" let g:pymode_syntax_all=1
" let python_space_error_highlight = 1
" let g:pymode_syntax_print_as_function=1
" let g:pymode_syntax_highlight_async_await=1
" let g:pymode_syntax_highlight_equal_operator=1
" let g:pymode_syntax_highlight_stars_operator=1
" let g:pymode_syntax_highlight_self=1
" let g:pymode_syntax_indent_errors=1
" let g:pymode_syntax_string_formatting=1
" let g:pymode_syntax_space_errors=1
" let g:pymode_syntax_string_format=1
" let g:pymode_syntax_string_templates=1
" let g:pymode_syntax_doctests=1
" let g:pymode_syntax_builtin_objs=1
" let g:pymode_syntax_builtin_types=1
" let g:pymode_syntax_highlight_exceptions=1
" let g:pymode_syntax_docstrings=1

" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%108v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=108
augroup END

" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<F5>'

" syntastic
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_enable_signs=1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq=0
" let g:syntastic_aggregate_errors=1
" let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python3']

" YouCompleteMe
" set completeopt-=preview
" set completeopt=noinsert,menuone,noselect
" let g:ycm_python_binary_path = 'python'
" let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
" let g:ycm_confirm_extra_conf=0
" nmap <leader>g :YcmCompleter GoTo<CR>
" nmap <leader>d :YcmCompleter GoToDefinition<CR>


"Jedi-Vim
let g:jedi#popup_select_first = 0
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#rename_command_keep_name = "<leader>R"
let g:jedi#environment_path = "/Users/vishwvsi/Softwares/pyvenv/orcl_ai_v3/bin/python3"


" ALE
let g:ale_set_highlights = 1

" Pyflake
let g:pyflakes_use_quickfix = 0
let g:pyflakes_prefer_python_version = 3
autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
