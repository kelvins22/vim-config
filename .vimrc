" no compatible with vi
set nocompatible

" solarized-color-scheme
syntax enable
set background=dark                 " use dark background for terminal
colorscheme solarized

" basic settings
set autoread                        " reload files when changed on disk
set autoindent                      " auto indent
set backspace=2                     " fix broken backspace in some setups
set encoding=utf-8
set expandtab                       " expand tabs to spaces
set ignorecase                      " case-insensitive search
set incsearch                       " search as you type
" set laststatus=2                  " always show status line
" set list                          " show trailing white space
set number                          " show line number
set shiftwidth=4                    " number of spaces to use for each step of (auto)indent
set ruler                           " show current position
set showcmd                         " show (partial) command in status line
set tabstop=4                       " number of spaces that a <Tab> in the file counts for
set hlsearch                        " highlight all matches with previous pattern

" pathogen to manage plugins
execute pathogen#infect()

" tag-list
let Tlist_Ctags_Cmd='/usr/bin/ctags'

" enhanced version of ack -- ag
if executable('ag')
    let g:agprg='/usr/bin/ag --nogroup --nocolor --column'
    set grepprg=/usr/bin/ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command='/usr/bin/ag %s -l --nocolor -g ""'
endif

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp
let g:ctrlp_match_window='bottom,order:btt,min:1,max:10,result:10'
map <C-p> :CtrlP

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDSpaceDelims=1

" keyboard shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <F8> :TagbarToggle<CR>

"md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown

" set Android source code tags
set tags+=$ANDROID_HOME/sources/android-19/tags

