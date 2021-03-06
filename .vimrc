" TODOs:
"   - configure automatic retabing on file save
"   - trailing whitespae highlighting (*automatic removal)
"   - read Vagrantfile as ruby
"
execute pathogen#infect()

set encoding=utf8 "Terminal output encoding
set fileencodings=utf8 "File output encoding on write
set autoindent "Copy the indentation from the previous line
set tabstop=2 "Number of spaces that correspond to a tab
set shiftwidth=2 "Number of space characters inserted for indentation
set expandtab "Convert tabs to spaces
set hlsearch "Highlighting search matches
set noswapfile "Don't use a swapfile for the buffer
set relativenumber "Display line number relative to cursor
set number "Display line number
set tw=120 "Automatic word wrapping

match ErrorMsg '\%>120v.\+' "Highlight long lines

syntax enable
filetype plugin indent on
au BufRead,BufNewFile *.mrb setfiletype ruby

set background=light
set t_Co=256                    " Force vim to use 256 colors
let g:solarized_termcolors=256  " Use solarized 256 fallback
colorscheme solarized

call pathogen#helptags()

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
