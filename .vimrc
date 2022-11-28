" setting
set shiftwidth=2
set background=dark
set tabstop=2
set number

let g:netrw_liststyle=3

noremap <C-j> <esc>
noremap! <C-j> <esc>

" colorscheme
syntax on
colorscheme hybrid "~/.vim/colors
set t_Co=256

" hilight color of '{}' and '()'
hi MatchParen cterm=none ctermbg=none ctermfg=darkblue

" plugin manager
if &compatible
  set nocompatible 
endif

set runtimepath+=$HOME/.vim/bundles/repos/github.com/Shougo/dein.vim
call dein#begin("$HOME/.vim/bundlers")
call dein#add("$HOME/.vim/bundlers")

" add new plugin just bellow, and :dein#install()
call dein#add('prabirshrestha/vim-lsp')
call dein#add('mattn/vim-lsp-settings')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('vim-airline/vim-airline')

call dein#end()

" plugin settings 
"" vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1 
let g:airline_theme = 'angr'

