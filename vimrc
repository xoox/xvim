" Custom vimrc file.
"
" Maintainer:	Wenfeng CAI

source $VIMRUNTIME/vimrc_example.vim

" undo settings in example vimrc
set nobackup
set noundofile
set mouse=

" Specify a directory for plugins
call plug#begin('$HOME/.vim/plugged')
" For Windows
" call plug#begin('$VIM/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/*/*
" To use Doxygen style, edit c-support/c-support/templates/Templates with
" SetStyle( 'Doxygen' ) and IncludeFile( 'doxygen.template' )
Plug 'WolfgangMehner/c-support', {'for': ['c', 'cpp']}
Plug 'rhysd/vim-clang-format', {'for': ['c', 'cpp']}
Plug 'Valloric/YouCompleteMe', {'for': ['c', 'cpp']}

Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'

" Initialize plugin system
call plug#end()

set background=dark
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set fo+=mB
:map <Up> gk
:map <Down> gj
:map <Home> g^
:map <End> g$
set fileencodings=utf-8,prc,big5,unicode
set go-=r
set go+=l
