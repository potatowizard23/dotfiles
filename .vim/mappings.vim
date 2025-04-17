"  _______      __                  __       __         
" |       .----|__.---.-.----.-----|  .--.--|  |_.-----.
" |.|   | |   _|  |  _  |  __|  _  |  |  |  |   _|  -__|
" `-|.  |-|__| |__|___._|____|_____|__|___  |____|_____|
"   |:  |                             |_____|           
"   |::.|                                               
"   `---'                                               
" mappings.vim | triacolyte | GNU GPL-3 (See LICENSE file)

" {{{ splits
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
" }}}

" {{{ buffers
nnoremap <Leader>r :execute 'e ' .. fnameescape(expand('%'))<CR>
nnoremap <Leader>x :close<CR>
" }}}

" {{{ vim-config
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>
" }}}

" {{{ search
nnoremap <C-n> :nohlsearch<CR>
" }}}

" {{{ tabs
nnoremap <Leader>t :tabnew<CR>
nnoremap <S-h> :tabprev<CR>
nnoremap <S-l> :tabnext<CR>
" }}}

" {{{ netrw
nnoremap <Leader>ef :Lexplore 20<CR>
" }}}

" {{{ terminal
nnoremap tt :terminal<CR>
tnoremap <C-o> <C-\><C-n>
" }}}

" {{{ vimspector
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nnoremap <Leader>dk <Plug>VimspectorRestart
nnoremap <Leader>dh <Plug>VimspectorStepOut
nnoremap <Leader>dl <Plug>VimspectorStepInto
nnoremap <Leader>dj <Plug>VimspectorStepOver
" }}}

" {{{ vim-maximizer
nnoremap mm :MaximizerToggle<CR>
nmap mM <C-w>H<C-w><C-w>mm<C-w><C-w><C-w><C-w>
" }}}

" {{{ you-complete-me
nnoremap gd :YcmCompleter GoToDefinition<CR>
nnoremap K :YcmCompleter GetDoc<CR>
nnoremap <Leader>q :YcmDiag<CR>
" }}}
