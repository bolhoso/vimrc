" Basicd {
set nocompatible " get out of horrible vi-compatible mode
set background=dark " we are using a dark background
syntax on " syntax highlighting on
" }

" General {
set history=10000 " How many lines of history to remember
set clipboard+=unnamed " turns out I do like is sharing windows clipboard
set fileformats=unix,dos " support all three, in this order
set viminfo+=! " make sure it can save viminfo
set iskeyword+=_,$,@,%,# " none of these should be word dividers, so make them not be
set nostartofline " leave my cursor where it was
" }

" Vim UI {
set popt+=syntax:y " Syntax when printing
set showcmd " show the command being typed
set linespace=0 " space it out a little more (easier to read)
set wildmenu " turn on wild menu
set wildmode=list:longest " turn on wild menu in special format (long format)
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.swp,*.jpg,*.gif,*.png " ignore some formats
set ruler " Always show current positions along the bottom
set cmdheight=1 " the command bar is 1 high
set number " turn on line numbers
set lazyredraw " do not redraw while running macros (much faster) (LazyRedraw)
set hidden " you can change buffer without saving
set backspace=2 " make backspace work normal
set whichwrap+=<,>,[,],h,l  " backspace and cursor keys wrap to
set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt
set report=0 " tell us when anything is changed via :...
set noerrorbells " don't make noise
"set list " we do what to show tabs, to ensure we get them out of my files
"set listchars=tab:>-,trail:- " show tabs and trailing whitespace
" }

" Visual Cues {
set showmatch " show matching brackets
set matchtime=5 " how many tenths of a second to blink matching brackets for
set hlsearch " do not highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
set sidescrolloff=5 " Keep 5 lines at the size
set novisualbell " don't blink
" statusline demo: ~\myfile[+] [FORMAT=format] [TYPE=type] [ASCII=000] [HEX=00] [POS=0000,0000][00%] [LEN=000]
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2 " always show the status line
" }

" Indent Related {
set nosmartindent " smartindent (filetype indenting instead)
set autoindent " autoindent (should be overwrote by cindent or filetype indent)
set cindent " do c-style indenting
set softtabstop=2 " unify
set shiftwidth=2 " unify
set tabstop=2 " real tabs should be 4, but they will show with set list on
filetype plugin indent on " load filetype plugins and indent settings
" }

" Text Formatting/Layout {
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set noexpandtab " no real tabs please!
set nowrap " do not wrap line
set preserveindent " but above all -- follow the conventions laid before us
set ignorecase " case insensitive by default
set smartcase " if there are caps, go case-sensitive
set completeopt=menu,longest,preview " improve the way autocomplete works
" }

" Folding {
set foldenable " Turn on folding
set foldmarker={,} " Fold C style code (only use this as default if you use a high foldlevel)
set foldcolumn=0 " Give 0 column for fold markers
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen+=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff
function MyFoldText()
    return getline(v:foldstart).' '
endfunction
set foldtext=MyFoldText() " Custom fold text
" }

" Plugin Settings {
let perl_extended_vars=1 " highlight advanced perl vars inside strings
" }

" Mappings {
map <C-a> :NERDTree<cr> " Write
map <C-q> :NERDTreeClose<cr> " Write
map <C-w><C-w> <esc>:w<CR> " Write
map <C-N> :bn<CR> " Próximo buffer
map <C-P> :bp<CR> " Previous buffer
map <C-X> :bd<CR> " Close current buffer
map <C-W>w :w<CR> " Escreve no arquivo
map cl ddO        " Change line
map <TAB> >> 
map <s-TAB> << 
map ,n :call SwitchLineNumbers()<cr>

map <C-\> /ldkasjflkdasjfkldaskfl<CR>
" Navegação horizontal agilizada
map <C-H> 3zh 
map <C-L> 3zl 

map ,m :make<cr>
" }

set nowrap
set hlsearch
set ai
set incsearch
syntax on
set number

set ignorecase " case insensitive by default

set fdm=indent

" Tabs
nmap <C-U> :tabnew<cr> " Open new tab 
nmap <C-i> :tabprevious<cr> " Go to previous
nmap <C-o> :tabnext<cr> " Go to next tab 
nmap <C-y> :tabclose<cr> " Close current tab 

" Highlight the current word
:nnoremap & :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
"
" Movimentos
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j
nmap <C-h> <C-w>h

set fileencodings=utf-8,latin1
