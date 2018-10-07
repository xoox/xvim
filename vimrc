" Custom vimrc file.
"
" Maintainer:	Wenfeng CAI

source $VIMRUNTIME/vimrc_example.vim

" undo settings in example vimrc
set nobackup
set noundofile
set mouse=

" ============================================================================
" VIM-PLUG BLOCK {{{
" ============================================================================
" Specify a directory for plugins
" silent! if plug#begin('$HOME/.vim/plugged')
if plug#begin('$HOME/.vim/plugged')
" For Windows
" call plug#begin('$VIM/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/*/*
" To use Doxygen style, edit c-support/c-support/templates/Templates with
" SetStyle( 'Doxygen' ) and IncludeFile( 'doxygen.template' )
Plug 'WolfgangMehner/c-support', {'for': ['c', 'cpp']}
Plug 'rhysd/vim-clang-format', {'for': ['c', 'cpp']}
" Python format
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }

Plug 'Valloric/YouCompleteMe'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'

" Initialize plugin system
call plug#end()
endif
" }}}

let g:UltiSnipsListSnippets = "<C-S-Tab>" " Use this trick to disable it?
let g:UltiSnipsExpandTrigger = "<c-tab>" " Can't be used in console Vim
let g:pandoc#formatting#mode = "h"
let g:pandoc#formatting#textwidth = 72
let g:pandoc#folding#level = 10
let g:pandoc#modules#disabled = ["formatting"]

autocmd FileType gitcommit setlocal spell

set textwidth=72
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
