filetype plugin on

let g:pydiction_menu_height = 3
map <F5> :NERDTreeMirror<CR>
map <F5> :NERDTreeToggle<CR>

syntax enable
set t_Co=256
colorscheme zenburn
set background=dark

syntax enable

set foldmethod=indent
set foldlevel=99
" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and () set showmatch " enable all Python syntax highlighting features let python_highlight_all = 1
set relativenumber


set hlsearch
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-dispatch'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
"Plugin 'https://github.com/vim-syntastic/syntastic.git'
"auto import
"Plugin 'python-rope/ropevim'
"查找功能
Plugin 'justinmk/vim-sneak'
"代码片展开
"Plugin 'honza/vim-snippets'
"gc注释
Plugin 'tomtom/tcomment_vim.git'
"自动补全引号括号等
Plugin 'romainl/flattened'
Plugin 'mhinz/vim-hugefile'
Plugin 'Raimondi/delimitMate'
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'https://github.com/suan/vim-instant-markdown.git'
Plugin 'https://github.com/jnurmine/Zenburn.git'
Plugin 'https://github.com/davidhalter/jedi-vim.git'
call vundle#end()

let g:UltiSnipsExpandTrigger = "<tab>"
"ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$' 

let g:syntastic_check_on_open = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_always_populate_loc_list = 1
"
"markdown

"ctag config
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

"js format
map  :call JsBeautify()
" or
autocmd FileType javascript noremap    :call JsBeautify()
" for html
autocmd FileType html noremap   :call HtmlBeautify()
" for css or scss
autocmd FileType css noremap   :call CSSBeautify()

"jedi
let g:jedi#completions_enabled = 0
