set nocompatible
set hidden
set encoding=utf-8
execute pathogen#infect()
syntax on
filetype plugin indent on
let g:airline#extensions#tabline#enabled = 1
let g:molokai_original = 1
let g:rehash256 = 0
set breakindent
let g:airline#extensions#tabline#formatter = 'unique_tail'
set t_Co=256
set background=light
colorscheme PaperColor
autocmd BufEnter * silent! lcd %:p:h

vmap <C-C> y:new ~/.vim/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vim/.vimbuffer \| clip.exe <CR><CR>
map <C-V> :r ~/.vim/.vimbuffer<CR>
