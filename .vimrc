"" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim' "required
Plugin 'tpope/vim-surround'
call vundle#end()           
filetype plugin indent on   
filetype plugin on


"" Highlighting
syntax on
set background=dark
colorscheme solarized


"" bash-like command mode 
set wildmode=list:longest
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc><BS> <C-W>
cnoremap <C-k> <C-\>eMyKillcmd()<CR>
function! MyKillcmd()
	let cmd = getcmdline()
	let pos = getcmdpos()
	if pos == 0
		return ''
	else
		return strpart(cmd, 0, pos-1)
	endif
endfunction
cnoremap <Esc>d <C-\>eMyKillWordcmd()<CR>
function! MyKillWordcmd()
	let cmd = getcmdline()
	let pos = getcmdpos()
	let idx = stridx(cmd, ' ', pos)
	if (idx == -1)
		return cmd
	else
		return strpart(cmd, 0, pos-1) . strpart(cmd, idx)
	endif
endfunction

"" indents
set ci
set si
set ts=4
set sw=4
"set expandtab

"" search
set hlsearch
set incsearch

"" layouts
set nu
set relativenumber

"" tags
set tags+=/Users/parkdaeyoung/Playground/Compiler/2.Parsing/snuplc/tags
