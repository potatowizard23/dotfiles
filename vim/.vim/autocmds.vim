"  _______      __                  __       __         
" |       .----|__.---.-.----.-----|  .--.--|  |_.-----.
" |.|   | |   _|  |  _  |  __|  _  |  |  |  |   _|  -__|
" `-|.  |-|__| |__|___._|____|_____|__|___  |____|_____|
"   |:  |                             |_____|           
"   |::.|                                               
"   `---'                                               
" autocmds.vim | Triacolyte | GNU GPL-3 (see LICENSE file)

" {{{ cpp
augroup lang_cpp
    autocmd!
    autocmd FileType c,cpp nnoremap <buffer> <Leader>cc :C2H<CR>
    autocmd FileType c.cpp nnoremap <buffer> <Leader>ed :Termdebug<CR>
    autocmd FileType c,cpp setlocal cindent
    autocmd FileType c,cpp setlocal foldmethod=syntax
	autocmd BufEnter *.c,*.cpp,*.h,*.hpp silent FocusDispatch 'make'
	autocmd FileType c,cpp let b:start='./run.sh'
	autocmd FileType c,cpp nnoremap <buffer> <Leader>, :Dispatch<CR>
	autocmd FileType c,cpp nnoremap <buffer> <Leader>. :Start<CR>
	autocmd BufWritePost *.c,*.cpp,*.h,*.hpp silent execute '!clang-format -i ' . shellescape(expand('%'))
augroup END
" }}}

" {{{ rust
augroup lang_rust
    autocmd!
    autocmd FileType rust let b:dispatch = 'cargo run'
	autocmd BufNewFile,BufRead *.wgsl setlocal filetype=rust 
augroup END
" }}}

" {{{ vim
augroup lang_vim
	autocmd!
	autocmd FileType vim nnoremap <buffer> <Leader>, :PlugInstall<CR>
	autocmd FileType vim nnoremap <buffer> <Leader>. :PlugClean<CR>
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" {{{ golang
augroup lang_go
    autocmd!
    autocmd FileType go let b:start = 'go run ' .. shellescape(expand('%'))
augroup END
" }}}

" {{{ xml
augroup lang_xml
	autocmd!
	autocmd FileType xml iabbrev Cm <!-- -->
	autocmd FileType xml nnoremap <Leader>, :RainbowToggle<CR>
augroup END
" }}}

" {{{ shell
augroup lang_sh
	autocmd!
	autocmd BufEnter *.sh silent :execute 'FocusDispatch ./' .. shellescape(expand('%'))
	autocmd FileType sh nnoremap <buffer> <Leader>, :Dispatch<CR>
augroup END
" }}}

" {{{ python
augroup lang_py
	autocmd!
	autocmd BufEnter *.py silent :execute 'FocusDispatch python3 ./' .. shellescape(expand('%'))
	autocmd FileType python nnoremap <buffer> <Leader>, :Dispatch<CR>
augroup END
" }}}
