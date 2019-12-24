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
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'chr4/nginx.vim'
Plug 'elzr/vim-json'
Plug 'stephpy/vim-yaml'
Plug 'cespare/vim-toml'
Plug 'vhdirk/vim-cmake'
Plug 'vim-scripts/valgrind.vim'
Plug 'blueshirts/darcula'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'skywind3000/asyncrun.vim'
Plug 'soramugi/auto-ctags.vim'
call plug#end()

"Enable 'Darcula' theme.
syntax enable
colorscheme darcula

"Always show NertTree. Switch to file.
autocmd VimEnter * NERDTree | wincmd p

"Format *.rs on save.
let g:rustfmt_autosave = 1

"Show hidden files.
let NERDTreeShowHidden=1

let g:NERDTreeShowIgnoredStatus = 1

"Create tags when file is written.
let g:auto_ctags = 1

"Create tags file in one of these directories (priority ->).
let g:auto_ctags_directory_list = ['.git', '.svn', '.']

"Set valgrind arguments.
let g:valgrind_arguments = '--num-callers=500'
