call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-system-copy'
Plug 'junegunn/vim-slash'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'chr4/nginx.vim'
Plug 'dense-analysis/ale'
call plug#end()

set nocompatible

set shell=fish

set rtp+=/usr/local/opt/fzf

syntax off

set ttimeoutlen=1

set expandtab
set smarttab
cnoreabbrev retab set expandtab \| %retab

set tabstop=2
set softtabstop=2
set shiftwidth=2

set autoindent
set smartindent

set mouse=nicr

set incsearch

set backspace=indent,eol,start

set path^=**

set wildmenu
set wildmode=list:full
set wildignore+=**/node_modules/**

set hlsearch
nnoremap <silent> <C-N> :<C-u>nohlsearch<CR>

set incsearch

set directory=$HOME/.vim/swapfiles/

nnoremap <space> :
vnoremap <space> :

nnoremap gV `[v`]

nnoremap val ^v$

nnoremap j gj
nnoremap k gk

nnoremap <C-C> :bd<CR>

nnoremap <C-I> :edit %:h<CR>

vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

let g:netrw_banner=0

set laststatus=0

filetype plugin indent on
autocmd BufNewFile,BufRead *.tpl   set filetype=html
autocmd BufNewFile,BufRead *.vue   set filetype=vue
autocmd BufNewFile,BufRead *.jsx   set filetype=javascript.jsx

autocmd BufWritePre * :%s/\s\+$//e

autocmd BufEnter  set hidden

let javascript_enable_domhtmlcss=1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

let g:jsx_ext_required=0
let g:jsx_pragma_required = 1

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-D>'
let g:multi_cursor_prev_key='<C-X>'
let g:multi_cursor_skip_key='<C-K>'
let g:multi_cursor_quit_key='<Esc>'

let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign

cnoreabbrev F Files
nnoremap <C-P> :Files<CR>
nnoremap <C-U> :Buffers<CR>
nnoremap <C-H> :History:<CR>
nnoremap <C-S> :History/<CR>
command! -bang -nargs=+ -complete=file A call fzf#vim#ag_raw(<q-args>)

noremap <plug>(slash-after) zz

