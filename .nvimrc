" =================
"      Plugins
" =================

call plug#begin('~/.vim/plugged')

" Usability
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'machakann/vim-highlightedyank'

" Themes
Plug 'morhetz/gruvbox'
Plug 'ajmwagar/vim-deus'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'KeitaNakamura/neodark.vim'

" IDE plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'
Plug 'bfrg/vim-cpp-modern'

" Language plugins
Plug 'tikhomirov/vim-glsl'
Plug 'kevinoid/vim-jsonc'
Plug 'dart-lang/dart-vim-plugin'
Plug 'peterhoeg/vim-qml'
"Plug 'mesonbuild/meson', {'rtp': 'data/syntax-highlighting/vim'}
Plug 'smokejohn/vim_meson_syntax'

" Misc
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()

" =========================
"      Plugin Settings
" =========================

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" C++
let g:clang_format#style_options = {
            \ "ColumnLimit" : 120}

" Dart
let g:dart_style_guide = 2
let g:dart_format_on_save = 1
let g:dartfmt_options = ['--line-length' , '120']


" ========================
"      Basic Settings
" ========================

set laststatus=2
set nocompatible
set number

set incsearch
set hlsearch
set showcmd
set virtualedit=block

syntax enable
filetype plugin on
filetype plugin indent on

set wildmenu
set hidden

set termguicolors
set background=dark

" let g:neodark#background = '#202020'
" let g:neodark#terminal_transparent = 1 " default: 0
colorscheme gruvbox

set matchpairs+=<:>

" Tab settings
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set autoindent
set smartindent
set cindent

set foldmethod=syntax
set foldlevelstart=10
set foldnestmax=4
" set foldignore=

" ==================
"      Commands
" ==================

augroup Markdown
    autocmd!
    autocmd FileType markdown set wrap
augroup END

" XML
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" ==================
"      Bindings
" ==================

let mapleader = "\<Space>"

" inoremap kj <Esc>`^
" cnoremap kj <C-C>
" inoremap KJ <Esc>`^
" cnoremap KJ <C-C>
tnoremap <Esc> <C-\><C-n>

nnoremap <F5> :put=system('date +%F\ %T')<CR>
nnoremap <leader>x :bp\|bd #<CR>
nnoremap <F2> :Fern . -drawer -reveal=% -width=35<CR>

" =======================
"      Abbreviations
" =======================

abbr _sh #!/bin/bash
