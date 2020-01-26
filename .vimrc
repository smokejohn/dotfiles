" =================
"      Plugins
" =================

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'sonph/onehalf', {'rtp': 'vim/'}

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
colorscheme gruvbox
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
