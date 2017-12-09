""""""""""
" Vundle "
""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on    " required

" YouCompleteMe - settings
let g:ycm_python_binary_path = '/usr/bin/python3'

" vim-autoformat - settings
let g:formatter_yapf_style = 'google'

""""""""""""""
" End Vundle "
""""""""""""""

" Use jj to exit insert mode
inoremap jj <Esc>

" Map the leader to ,
let mapleader=','

set viminfo='10,\"100,:20,n~/.viminfo
"           |   |     |   |- path to viminfo
"           |   |     |- # command line commands to save
"           |   |- # lines to save per register
"           |- marks saved for # files

" Automatically change the working path to the path of the current file
autocmd BufNewFile,BufEnter * silent! lcd %:p:h

au BufNewFile,BufRead *.md setlocal tw=80 fo+=t colorcolumn=80

" Show line numbers
set number

" use » to mark Tabs and ° to mark trailing whitespace. This is a
" non-obtrusive way to mark these special characters.
set list listchars=tab:»\ ,trail:°

" Highlight the search term when you search for it.
set hlsearch
set incsearch

" No swap files
set nobackup
set noswapfile

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=syntax

" Scroll Offset
set scrolloff=20 " # lines above/below while scrowling

" Spaces instead of tabs
set expandtab

" Always show status
set laststatus=2
