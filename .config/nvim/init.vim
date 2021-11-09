" ----------------------------------------------------------------------------
"  Vim package manager 
" ----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'scrooloose/nerdtree'

Plug 'majutsushi/tagbar'

Plug 'vimwiki/vimwiki' 

Plug 'PotatoesMaster/i3-vim-syntax'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'PeterRincker/vim-argumentative'

Plug 'nvie/vim-flake8'

Plug 'tmhedberg/SimpylFold'

" Latex
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
" ----------------------------------------------------------------------------

call plug#end()

syntax on

set number
set relativenumber

set scrolloff=3

set linebreak

set showbreak=>>\ \ 
" ----------------------------------------------------------------------------
"  Tabs and indenting 
" ----------------------------------------------------------------------------
set tabstop=4             " tab = 4 spaces
set shiftwidth=4          " autoindent indents 4 spaces
set smarttab              " <TAB> in front of line inserts 'shiftwidth' blanks
set softtabstop=4
set shiftround            " round to 'shiftwidth' for "<<" and ">>"
set expandtab


" ----------------------------------------------------------------------------
"  Syntax, highlighting and spelling
" ----------------------------------------------------------------------------

let g:solarized_termcolors=256 "Not necessary if terminal colors set to
                               "solarized
set background=dark
colorscheme solarized
hi Normal ctermbg=none|        "Terminal transparent

if exists('+colorcolumn')
  set colorcolumn=80           " display a line in column 80 to show you
                               " where to line break.
endif

" ----------------------------------------------------------------------------
"  Messages and info
" ----------------------------------------------------------------------------
set ruler

" ----------------------------------------------------------------------------
"  Multiple Windows
" ----------------------------------------------------------------------------

set hidden
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" ----------------------------------------------------------------------------
"  Command line editing 
" ----------------------------------------------------------------------------
set wildmode=list:longest,full
set wildmenu

" ignore binary files
set wildignore+=*.exe,*.png,*.jpg,*.gif,*.doc,*.mov,*.xls,*.msi
" Vim files
set wildignore+=*.sw?,*.bak,tags

set wildmenu

" ----------------------------------------------------------------------------
"  Command line editing 
" ----------------------------------------------------------------------------
command Bd bp\|bd \#

" ----------------------------------------------------------------------------
"  Mappings
" ----------------------------------------------------------------------------

" Change to caps
imap <Leader>u <Esc>v`[U<Esc>A
" No highlight
nnoremap <CR> :noh<CR>

" Python
map <Leader>p oimport ipdb; ipdb.set_trace()<ESC>
" ----------------------------------------------------------------------------

" Nastran
augroup nastran
    autocmd!
    autocmd BufNewFile,BufRead *.bdf set filetype=nastran
augroup END
" ----------------------------------------------------------------------------
