filetype plugin on
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

let g:pydiction_menu_height = 3
map <F5> :NERDTreeMirror<CR>
map <F5> :NERDTreeToggle<CR>

syntax enable
set background=dark
colorscheme solarized
set nu


map <F2> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    exec "!python %"
endfunc

execute pathogen#infect()

let g:syntastic_python_checkers = ['flake8']

set ts=4
set expandtab
set ai!


set shiftwidth=4  
