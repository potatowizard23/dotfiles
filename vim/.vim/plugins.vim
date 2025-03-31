"  _______      __                  __       __         
" |       .----|__.---.-.----.-----|  .--.--|  |_.-----.
" |.|   | |   _|  |  _  |  __|  _  |  |  |  |   _|  -__|
" `-|.  |-|__| |__|___._|____|_____|__|___  |____|_____|
"   |:  |                             |_____|           
"   |::.|                                               
"   `---'                                               
" plugins.vim | Triacolyte | GNU GPL-3 (see LICENSE file)

" {{{ bootstrap-plug.vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

call plug#begin()

" {{{ text-manipulation
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
" }}}

" {{{ file-navigation
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-vinegar'
" }}}

" {{{ aesthetics
Plug 'luochen1990/rainbow'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
" }}}

" {{{ git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" }}}

" {{{ maximize-windows
Plug 'szw/vim-maximizer'
" }}} 

" {{{ syntax-highlighting
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'ziglang/zig.vim'
Plug 'neoclide/jsonc.vim'
Plug 'leafgarland/typescript-vim'
Plug 'thetek42/vim-blueprint-syntax'
" }}}

" {{{ repl
Plug 'jpalardy/vim-slime'
" }}}

" {{{ debugging
Plug 'tpope/vim-dispatch'
Plug 'puremourning/vimspector'
Plug 'epheien/termdbg'
" }}}

" {{{ lsp
Plug 'ycm-core/YouCompleteMe'
" }}}

" {{{ C/C++-development
Plug 'linluk/vim-c2h'
" }}}

call plug#end()
