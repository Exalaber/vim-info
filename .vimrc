set nocompatible	
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle manage vundle, 	required
Plugin 'gmarik/Vundle.vim'

"add plugins here

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog.powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'jnurmine/Zenburn'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Bundle 'joonty/vim-sauce.git'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nightsense/seabird'
Plugin 'SirVer/ultisnips'


"all plugins before this
call vundle#end()
filetype plugin indent on


"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"Set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix


"Set encoding
"encoding=utf-8


"Python V Env
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ["VIRTUAL_ENV"]
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__ = activate_this))
EOF


"Enable folding
set foldmethod=syntax
set foldlevel=99


"Enable folding with the spacebar
nnoremap <space> za


"Enable line numbering
set nu


"Enable system clipboard
set clipboard=unnamed


"Enable petrel color scheme
colo petrel


"Enabel syntax highlighting
syntax on


"Fix background bug
hi Normal ctermbg=black


"Attempts at fixing UltiSnips (Failed)
"let g:UltiSnipsExpandTrigger='<c-e>'
let g:UltiSnipsSnippetDirectories = ['~/.vim/bundle/ultisnips', 'ultisnips']
let g:UltiSnipsListSnippets='<c-l>'
inoremap <Tab> <c-r>=UltiSnips#ExpandSnippet()<cr>


"YCM error in .cpp fix?
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
