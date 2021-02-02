set nocompatible
syntax on
set ttyfast
set matchpairs+=<:>
set hidden
set encoding=utf-8

set laststatus=2

execute pathogen#infect()
syntax on
filetype plugin indent on
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 1
let g:molokai_original = 1
let g:rehash256 = 0
set background=dark 
colorscheme PaperColor
set breakindent
autocmd BufEnter * silent! lcd %:p:h
vmap <C-C> y:new ~/.vim/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vim/.vimbuffer \| clip.exe <CR><CR>
map <C-V> :r ~/.vim/.vimbuffer<CR>

function! LinterStatus() abort
	let l:counts = ale#statusline#Count(bufnr(''))
	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors
	return l:counts.total == 0 ? '' : printf(
	\ 'W:%d E:%d',
	\ l:all_non_errors,
	\ l:all_errors
	\)
endfunction

set laststatus=2
set statusline=
set statusline+=%2*\ %l
set statusline+=\ %*
set statusline+=%1*\ ‹‹
set statusline+=%1*\ %f\ %*
set statusline+=%1*\ ››
set statusline+=%1*\ %m
set statusline+=%3*\ %F
set statusline+=%=
set statusline+=%3*\ %{LinterStatus()}
set statusline+=%3*\ ‹‹
set statusline+=%3*\ %{strftime('%R',getftime(expand('%')))}
set statusline+=%3*\ ::
set statusline+=%3*\ %n
set statusline+=%3*\ ››\ %*

hi User1 guifg=#FFFFFF guibg=#191f26 gui=BOLD
hi User2 guifg=#000000 guibg=#959ca6
hi User3 guifg=#000000 guibg=#4cbf99
