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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'editorconfig/editorconfig-vim'

" Initialize plugin system
call plug#end()
endif
" }}}

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
:colo torte
set termguicolors
