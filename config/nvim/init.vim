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
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('clojure-vim/acid.nvim')
  call dein#add('clojure-vim/async-clj-omni')
  call dein#add('Olical/conjure')
  call dein#add('eraserhd/parinfer-rust')
  call dein#add('kien/rainbow_parentheses.vim')
  call dein#add('snoe/clj-refactor.nvim')
  call dein#add('scrooloose/nerdtree')

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

let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.clojure = '[\w!$%&*+/:<=>?@\^_~\-\.#]*'

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
nnoremap <Space>w/ :vsp<CR>
nnoremap <Space>w- :sp<CR>

" Files
nnoremap <Space>ff :e .<CR>

" Tabs
nnoremap <Space>tc :tabnew<CR>
nnoremap <Space>tn :tabnext<CR>
nnoremap <Space>tp :tabprev<CR>
nnoremap <Space>tq :tabclose<CR>
