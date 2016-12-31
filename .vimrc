syntax enable

set nocompatible
set hidden

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" set relativenumber
set number

set showcmd
set cursorline

filetype indent on

set wildmenu

set lazyredraw

set showmatch

set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

set foldenable
set foldlevelstart=10

set ignorecase
set ruler

hi Normal ctermbg=none
hi NonText ctermbg=none

" Tabs for makefiles
autocmd FileType make setlocal noexpandtab

" Clear With <CR> highlight search
nnoremap <CR> :noh<CR><CR>
