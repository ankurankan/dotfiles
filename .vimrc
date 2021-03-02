call plug#begin('~/.vim/plugged')


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tmhedberg/SimpylFold'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'xolox/vim-misc'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'jalvesaq/Nvim-R'

" All of your Plugins must be added before the following line

call plug#end()     "required
filetype plugin indent on "required


"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


" Enable folding
set foldmethod=indent
set foldlevel=1

" Enable folding with the spacebar
nnoremap <space> za

" Preview of docstring of folded code
let g:SimpylFold_docstring_preview=1

" PEP8
" au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" Flag unnecessary white space
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhiteSpace /\s\+$/

" UTF-8 support
set encoding=utf-8

" Pretty code
let python_highlight_all=1
syntax on

" Color schemes
" if has('gui_running')
"   set background=dark
"   colorscheme solarized
" else
"   colorscheme zenburn
" endif
set background=dark
colorscheme zenburn
call togglebg#map("<F5>")

" Hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Line numbering
" set nonu
set relativenumber
set nu rnu

" Clipboard
set clipboard=unnamed

" Highlight current variable
" autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Set filepath for file searches
set path+=**

" Remap gj and gk to j and k respectively for going up and down one line in
" lines spanning multiple lines.
noremap j gj
noremap k gk

" Map jk and kj to Esc
imap jk <Esc>
imap kj <Esc>

