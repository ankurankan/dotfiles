set nocompatible     "required
filetype off         "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'python/black'
Plugin 'christoomey/vim-tmux-navigator'


" All of your Plugins must be added before the following line

call vundle#end()     "required
filetype plugin indent on "required


set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

" Auto-complete settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

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

" Faster Easytags
let g:easytags_async=1
let g:easytags_auto_highlight=0

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

" Config for gundo
nnoremap <F5> :GundoToggle<CR>

" Config for increasing and decreasing number
nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>
