"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/dan/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/dan/.cache/dein')
  call dein#begin('/home/dan/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/dan/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:

  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  "call dein#add('Shougo/deoplete.nvim')
  "let g:deoplete#enable_at_startup = 1

  "call dein#add('clojure-vim/acid.nvim')
  call dein#add('clojure-vim/async-clj-omni')
  "call dein#add('Olical/conjure')
  call dein#add('liuchengxu/vim-clap')
  call dein#add('guns/vim-sexp', {'on_ft': 'clojure'}) 
  call dein#add('liquidz/vim-iced', {'on_ft': 'clojure', 'rev': 'dev'})  
  call dein#add('tpope/vim-salve')
  call dein#add('tpope/vim-projectionist')
  call dein#add('tpope/vim-dispatch')
  call dein#add('tpope/vim-fireplace')
  call dein#add('eraserhd/parinfer-rust')
  call dein#add('kien/rainbow_parentheses.vim')
  call dein#add('snoe/clj-refactor.nvim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('troydm/zoomwintab.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
if !exists("g:syntax_on")
    syntax enable
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

" Fundamental settings
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
set mouse=a
filetype on
filetype plugin on
filetype plugin indent on
:set t_Co=256
let g:solarized_termtrans = 1
hi Normal ctermbg=none
colorscheme flattened_dark

" Some useful settings
set smartindent
set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent
set foldenable
set foldmethod=indent "folding by indent
set foldlevel=99
set ignorecase        "ignore the case when search texts
set smartcase         "if searching text contains uppercase case will not be ignored

" Lookings
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
set nowrap           "no line wrapping

let g:deoplete#enable_at_startup = 1

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set hidden
let g:iced_enable_default_key_mappings = v:true

let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

let g:conjure_log_blacklist = ["up", "eval", "ret", "load-file"]

" Navigation
set splitbelow
set splitright
nnoremap <C-e> <C-W><C-J>
nnoremap <C-u> <C-W><C-K>
nnoremap <C-i> <C-W><C-L>
nnoremap <C-n> <C-W><C-H>
noremap <C-Up> 10<Up>
noremap <C-Down> 10<Down>

" Spacemacs'y keys """"""""""""

" Splits
nnoremap <silent> <Space>w/ :vsp<CR>
nnoremap <silent> <Space>w- :sp<CR>
nnoremap <silent> <Space>wx :q<CR>

" Files
nnoremap <silent> <Space>ff :e .<CR>
nnoremap <silent> <Space>fw :NERDTreeToggle<CR>
nnoremap <Space>fs :w<CR>

" Tabs
nnoremap <silent> <Space>tc :tabnew<CR>
nnoremap <silent> <Space>tn :tabnext<CR>
nnoremap <silent> <Space>tp :tabprev<CR>
nnoremap <silent> <Space>tq :tabclose<CR>
nnoremap <silent> <Space>1 1gt
nnoremap <silent> <Space>2 2gt
nnoremap <silent> <Space>3 3gt
nnoremap <silent> <Space>4 4gt
nnoremap <silent> <Space>5 5gt

" Search
nnoremap <silent> <Space>sc :nohl<CR>

" Other
nnoremap <Space>cc "+
nnoremap <Space>px :set nopaste<CR>
" Persistent undo
set undodir=$HOME/.cache/vim/undo
set undolevels=1000
set undoreload=10000
set undofile

" Clojure
nnoremap <silent> <Space>nn :IcedSlurp<CR>
nnoremap <silent> <Space>nh :IcedBarf<CR>
nnoremap <silent> <Space>nl :IcedTestUnderCursor<CR>
nnoremap <silent> <Space>nj :IcedTestNs<CR>
nnoremap <silent> <Space>ny :IcedTestRerunLast<CR>
nnoremap <silent> <Space>no :IcedTestSpecCheck<CR>
nnoremap <silent> <Space>n' :IcedToggleTraceNs<CR>
nnoremap <silent> <Space>nt :IcedDefJump<CR>
nnoremap <silent> <Space>ns :IcedDefBack<CR>
