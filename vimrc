" Custom vimrc file.
"
" Maintainer:	Wenfeng CAI

source $VIMRUNTIME/vimrc_example.vim

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'editorconfig/editorconfig-vim'
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
"imap <script><silent><nowait><expr> <F9> codeium#Accept()
" Map Alt-] to <M-]>
"imap <Esc>] <Cmd>call codeium#CycleCompletions(1)<CR>
" Map Alt-[ to <M-[>
"imap <Esc>[ <Cmd>call codeium#CycleCompletions(-1)<CR>
"set statusline=%f\ %h%w%m%r\ %3{codeium#GetStatusString()}\ %=%(%l,%c%V\ %=\ %P%)
"set laststatus=2

autocmd FileType gitcommit setlocal spell

" undo settings in example vimrc
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
