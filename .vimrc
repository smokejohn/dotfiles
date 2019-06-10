" =================
"      Plugins
" =================

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'sainnhe/vim-color-forest-night'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()

" ========================
"      Basic Settings
" ========================

set laststatus=2
set nocompatible
set number

set autoindent
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
colorscheme default
" hi Normal ctermbg=none guibg=none
" hi NonText ctermbg=none guibg=none

" augroup bgtrans
" 	au!
" 	au ColorScheme * hi Normal ctermbg=none guibg=none
" 	au ColorScheme * hi NonText ctermbg=none guibg=none
" augroup END

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" ==================
"      Bindings
" ==================

let mapleader = "\<Space>"

inoremap kj <Esc>`^
cnoremap kj <C-C>

nnoremap <F5> :put=system('date +%F\ %T')<CR>
