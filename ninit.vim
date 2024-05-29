" Custom neovim init file.
"
" Maintainer:	Wenfeng CAI

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }

"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'guns/vim-sexp',    {'for': 'clojure'}
"Plug 'liquidz/vim-iced', {'for': 'clojure'}

"Plug 'Exafunction/codeium.vim', {'branch': 'main'}

" Call plug#end to update &runtimepath and initialize the plugin system.
" - It automatically executes `filetype plugin indent on` and `syntax enable`
call plug#end()

source $HOME/xvim/coc-config.vim

" Enable vim-iced's default key mapping
" This is recommended for newbies
let g:iced_enable_default_key_mappings = v:true

" Fix for codeium
let g:codeium_no_map_tab = 1
"imap <script><silent><nowait><expr> <F12> codeium#Accept()
"imap <F11> <Cmd>call codeium#CycleCompletions(1)<CR>
"imap <F10> <Cmd>call codeium#CycleCompletions(-1)<CR>
"set rulerformat=%21(%3{codeium#GetStatusString()}\ %l,%c%V\ %P%)

set backspace=indent,eol,start
set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line
" Show @@@ in the last line if it is truncated.
set display=truncate
" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal
" Don't use Ex mode, use Q for formatting.
" Revert with ":unmap Q".
map Q gq

set nocompatible
set nobackup
set noundofile
set mouse=
set background=dark
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set fo+=nmB
:map <Up> gk
:map <Down> gj
:map <Home> g^
:map <End> g$
set fileencodings=utf-8,prc,big5,unicode
set go-=r
set go+=l
:colo torte
set termguicolors
