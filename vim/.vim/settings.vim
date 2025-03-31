"  _______      __                  __       __         
" |       .----|__.---.-.----.-----|  .--.--|  |_.-----.
" |.|   | |   _|  |  _  |  __|  _  |  |  |  |   _|  -__|
" `-|.  |-|__| |__|___._|____|_____|__|___  |____|_____|
"   |:  |                             |_____|           
"   |::.|                                               
"   `---'                                               
" settings.vim | triacolyte | GNU GPL-3 (See LICENSE file)

" {{{ highlighting
syntax on
filetype plugin indent on

let g:codedark_modern=1
let g:codedark_italics=1

colorscheme codedark
set termguicolors
set background=dark

set hlsearch
" }}}

" {{{ buffer-behaviour
set hidden
set autoread
" }}}

" {{{ text-formatting-options
set nowrap
set noexpandtab
set tabstop=4
set smartindent
set shiftwidth=4
" }}}

" {{{ numberline
set number
set relativenumber
set numberwidth=10
" }}}

" {{{ gvim
set guioptions-=m
set guioptions-=T
set guifont=Hack\ 14
" }}}

" {{{ remove-disruptions
set belloff=all
set shortmess+=c
" }}}

" {{{ undo-history
set undofile
set undodir=~/.vim/undodir
" }}}

" {{{ mapleader
let mapleader = ','
" }}}

" {{{ emmet-vim
let g:user_emmet_leader_key = '<C-Z>'
" }}}

" {{{ rust.vim
let g:rustfmt_autosave = 1
" }}}

" {{{ vim-slime
let g:slime_target = 'vimterminal'
" }}}

" {{{ vimspector
let g:vimspector_install_gadgets = [ 'CodeLLDB', 'vscode-cpptools' ]
" }}}

" {{{ vim-rainbow
let g:rainbow_active = 1
" }}}

" {{{ you-complete-me
let g:ycm_global_ycm_extra_conf = $HOME . '/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_enable_semantic_highlighting=1
let g:ycm_enable_inlay_hints=1

let g:ycm_language_server =
  \ [
  \   {
  \     'name': 'crystal',
  \     'cmdline': [ 'crystalline'],
  \     'project_root_files' : [ 'shard.yml' ],
  \     'filetypes': [ 'crystal' ]
  \   }
  \ ]
" }}}
