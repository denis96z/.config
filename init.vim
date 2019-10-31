"~/.config/nvim/init.vim

"Show line numbers.
set number
set relativenumber

"Disable backward compatibility with vi.
set nocompatible

"Enable project config.
set exrc
set secure

"Highlight search result.
set hlsearch
set showmatch

call plug#begin()
Plug 'blueshirts/darcula'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jewes/Conque-Shell'
call plug#end()

"Enable 'Darcula' theme.
syntax enable
colorscheme darcula

"Always show NertTree. Switch to file.
autocmd VimEnter * NERDTree | wincmd p

let g:NERDTreeShowIgnoredStatus = 1
