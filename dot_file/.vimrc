set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'LargeFile'

" Nerdcommenter from https://github.com/scrooloose/nerdcommenter
" hot key for comments lines
Plugin 'scrooloose/nerdcommenter'

" Add Colorscheme to vim 
Plugin 'flazz/vim-colorschemes'

" YouCompleteMe[YCM]:Auto complete tools
Plugin 'Valloric/YouCompleteMe'

" syntastic: syntax checking for vim
Plugin 'scrooloose/syntastic'

" vim-airline: 
Plugin 'bling/vim-airline'

" Most Recently Used
Plugin 'mru.vim'


Plugin 'SirVer/ultisnips' 

Plugin 'elzr/vim-json'

Plugin 'honza/vim-snippets'

Plugin 'justinmk/vim-sneak'

Plugin 'kien/ctrlp.vim'

Plugin 'ludovicchabant/vim-lawrencium'

Plugin 'majutsushi/tagbar'

Plugin 'mhinz/vim-signify'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'sjl/gundo.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-sleuth'

Plugin 'tpope/vim-surround'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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
"


" ============= Common Settings =================
" To enable the line number(comment to disable)
set number

" To set the color scheme
colorscheme torte

" Highlight the matches while typing the pattern
set incsearch

" highlight the search results
set hlsearch

" set the key for <leader>
let mapleader=","

" ===============================================

" ============== settings for LargeFile ============
" Set the minimum size of file needed for being considered as large file
let g:LargeFile = 100 

"===================================
" recommended settings for [syntastic]
" Haven't dive into the meaning of settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
"===================================


"===================================
" Settings for [vim-markdown]

"whether to disable the folding configuration
" let g:vim_markdown_folding_disabled = 1
"====================================



"====================================
" Settings for [NerdCommenter]
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"===================================
"
"===================================
" Settings for YouCompleteMe
" Set the ycm python intepreter
let g:ycm_server_python_interpreter = '/home/jay/miniconda2/bin/python'
