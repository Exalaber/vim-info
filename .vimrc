"Start Plug
call plug#begin('~/.vim/plugged')

Plug 'nightsense/seabird'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/Ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/seoul256.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'vimwiki/vimwiki'

Plug 'LucHermitte/vim-refactor'
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/lh-tags'
Plug 'LucHermitte/lh-dev'
Plug 'LucHermitte/lh-style'
Plug 'LucHermitte/lh-brackets'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

imap <C-J>b      <Plug>MarkersJumpF
 map <C-J>b      <Plug>MarkersJumpF
imap <C-K>b      <Plug>MarkersJumpB
 map <C-K>b      <Plug>MarkersJumpB
imap <C-<>b      <Plug>MarkersMark
nmap <C-<>b      <Plug>MarkersMark
xmap <C-<>b      <Plug>MarkersMark
imap <C-$>b      <Plug>MarkersCloseAllAndJumpToLast
nmap <C-$>b      <Plug>MarkersCloseAllAndJumpToLast
vmap <C-$>b      <Plug>MarkersCloseAllAndJumpToLast
imap <C-)>b      <Plug>MarkersJumpOutside
nmap <C-)>b      <Plug>MarkersJumpOutside
vmap <C-)>b      <Plug>MarkersJumpOutside

" Vimwiki dependancies
set nocompatible
syntax on

" let YCM work on vimwiki
let g:ycm_filetype_blacklist={'notes': 1, 'markdown': 1, 'unite': 1, 'tagbar': 1, 'pandoc': 1, 'qf': 1, 'infolog': 1, 'mail': 1}

" fix vimwiki and ultisnips so that they don't both use tab
let g:vimwiki_table_mappings = 0

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

set mouse=a

" Use Unix as the standard file type
set ffs=unix,dos,mac


" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Turn backup off, since most stuff is in VCS
set nobackup
set nowb
set noswapfile

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"set colorsceme
"let g:stormpetrel_background = 233
" colorscheme seoul256
" set colorcolumn=81

set t_Co=256
set background=dark
colorscheme stormpetrel
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE




"Set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkeys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file. Use "," instead of "\" as the leader
" key.
let mapleader = "'"
let g:mapleader = "'"

" :W sudo saves the file
" (useful for handling the permission-denied error)
"command W w !sudo tee % > /dev/null

" Disable highlight when <leader>h is pressed
map <silent> <leader>h :noh<cr>

"Folding
set foldmethod=syntax
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:UltiSnipsExpandTrigger="<leader>t"
let g:UltiSnipsJumpForwardTrigger="<leader>l"
let g:UltiSnipsJumpBackwardTrigger="<leader>h"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on the WiLd menu for filename completion. Work like bash
set wildmode=longest:full,full
set wildmenu

" Height of the command bar
set cmdheight=1

" No word wrap
set nowrap

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
set foldcolumn=1

" Set line numbers
set number

" Allow positioning cursor after end of line (where a character does not
" exist). Makes it easier to, say, delete from the end of a line to a previous
" mark (etc). Displaying trailing whitespace practically a necessity.
set virtualedit=onemore


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Remember info about open buffers on close
set viminfo^=%

" Indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236 ctermfg=245
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=240 ctermfg=245


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Symbols for airline
let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => On save actions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  if &ft =~ 'markdown\|modula2'
    exe "normal 'z"
    return
  endif
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite * :call DeleteTrailingWS()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_check_in_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_c_check_header = 1
let g:syntastic_c_include_dirs = ['./lib', '/www/docs/classes/332/t1/pthreads']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'

