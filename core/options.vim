" ==============================================
" vim options
" ==============================================
" author: Oluwatobiloba Olalusi
" email: hello@tobiolalusi.com
" website: http://tobiolalusi.com
" ==============================================

scriptencoding utf-8

" TODO: fix termguicolors issue with theme
" if has('termguicolors')
set termguicolors
" endif

set clipboard+=unnamedplus " use clipboard
set noshowmode " already handled by statusline plugin
set history=500
set ignorecase smartcase

" files
set noswapfile
set fileencoding=utf-8
set confirm

" layout
set number relativenumber
set nowrap
set scrolloff=3

" tabs and spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
