" =================
"      Plugins
" =================

call plug#begin('~/.vim/plugged')

" Usability
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'machakann/vim-highlightedyank'
" IDE plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
" Language plugins
Plug 'tikhomirov/vim-glsl'
Plug 'kevinoid/vim-jsonc'
Plug 'dart-lang/dart-vim-plugin'
Plug 'peterhoeg/vim-qml'
" Misc
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'yamahigashi/sendtomaya.vim'

call plug#end()

" =========================
"      Plugin Settings
" =========================

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-l>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" C++
let g:clang_format#style_options = {
            \ "ColumnLimit" : 120}

" Dart
let g:dart_style_guide = 2
let g:dart_format_on_save = 1
let g:dartfmt_options = ['--line-length' , '120']

" SendToMaya
let g:send_to_maya_host="localhost"
let g:send_to_maya_port=23456
nnoremap <F6> :SendToMayaPy<CR>

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
colorscheme gruvbox

" Tab settings
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set autoindent
set smartindent
set cindent

set foldmethod=indent
set foldlevelstart=10
set foldnestmax=1
set foldignore=

" ==================
"      Commands
" ==================

augroup Markdown
    autocmd!
    autocmd FileType markdown set wrap
augroup END

" ==================
"      Bindings
" ==================

let mapleader = "\<Space>"

inoremap kj <Esc>`^
cnoremap kj <C-C>
inoremap KJ <Esc>`^
cnoremap KJ <C-C>
tnoremap <Esc> <C-\><C-n>

nnoremap <F5> :put=system('date +%F\ %T')<CR>
nnoremap <leader>x :bp\|bd #<CR>


" =======================
"      Abbreviations
" =======================

abbr _sh #!/bin/bash
