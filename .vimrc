" must be first line
set nocompatible

" first three lines suggested by pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" sensible defaults
runtime! plugin/sensible.vim

" more useful mapleader
let mapleader = ","

" allow unsaved buffers in the background
set hidden

" more useful jump is brought closer (jump to line AND column)
nnoremap ' `
nnoremap ` '

" longer command history
set history=1000
set undolevels=1000

" TAB completion up to point of ambiguity
set wildmode=list:longest

" Make searches case sensitive only when there is upper case in them:
set ignorecase 
set smartcase

" Make title visible in vim
set title

" Show 2 more lines on scroll edges
set scrolloff=3

" Put all backup files in a single spot
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory^=$HOME/.vim-other/swap//

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

" turn off highlighting when it's annoying
nmap <silent> <leader>/ :silent :nohlsearch<CR>

" show whitespace when you need to
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>ws :set nolist!<CR>

" make it easier to edit .vimrc and apply
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" clean up prompt mess?
set shortmess=atI

" no audio bell
" set visualbell  " annoying
set noerrorbells
set visualbell  " somehow this turns off the audio bell-- no idea why

colorscheme vividchalk
"set guifont="BitStream Vera Sans Mono 11"
set guifont=Monaco:h13.00

set nowrap        " don't wrap lines
set tabstop=2    " a tab is two spaces
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
" set number        " always show line numbers  "not really that useful
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch    " set show matching parenthesis
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set expandtab

set wildignore=*.swp,*.bak,*.pyc,*.class

"source $VIMRUNTIME/gvimrc_example.vim
"set tabstop=2
set clipboard=unnamed "uses system clipboard
set nobackup
set writebackup

"" set backupdir=$HOME/.vim

autocmd filetype python set shiftwidth=4
autocmd filetype python set tabstop=4
" giving up on python line length so commenting this out for now
"autocmd filetype python set textwidth=99


au! BufRead,BufNewFile *.js setfiletype javascript
autocmd filetype javascript set shiftwidth=2
autocmd filetype javascript set tabstop=2
"au BufRead,BufNewFile *.config set filetype=xml
"au! BufRead,BufNewFile *.ftl setfiletype ftl
"au! BufRead,BufNewFile *.json setfiletype json 
"au! BufRead,BufNewFile http://vimperator-wiki.hubspotcentral.com.tmp setfiletype confluencewiki 
au! BufRead,BufNewFile *.djml setfiletype htmldjango
autocmd filetype htmldjango set shiftwidth=2
autocmd filetype htmldjango set tabstop=2

au! BufRead,BufNewFile .vee setfiletype yaml

" make it easier to do command line stuff
nnoremap ; :

" allow sudo write after you've already opened a file
cmap w!! w !sudo tee % >/dev/null

" move yankring director to vim-other directory
let g:yankring_history_dir='$HOME/.vim-other/yankring'

" make paging work like browsers -- space goes down, shift-space goes up
map <Space> 
map <S-Space> 


" doesn't work in Lion apparently?
" map <SwipeLeft> :bprev
" map <SwipeRight> :bnext
