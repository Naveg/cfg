if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'

Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'

Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neco-syntax'
Plug 'zchee/deoplete-jedi'
Plug 'w0rp/ale'

Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}
Plug 'leafgarland/typescript-vim', {'for': ['typescript', 'typescript.tsx']}
Plug 'ianks/vim-tsx', { 'for': 'typescript.tsx' }
Plug 'mhartington/nvim-typescript', { 'do': './install.sh', 'for': ['typescript', 'typescript.tsx']}

call plug#end()

set nocompatible

" Vim Options

set encoding=utf-8
set hidden
set showmode
set title

set noerrorbells
set visualbell

set fileformats=unix,dos,mac
set iskeyword+=_,$,@,%,#

set list
set showbreak=↪

set splitbelow
set splitright

set dictionary=/usr/share/dict/words

set mouse=a

set nostartofline
set vb t_vb=
set report=0

set number
set numberwidth=5
set scrolloff=5
set sidescrolloff=5
set shortmess=aOstT

set ignorecase " case insensitive by default
set infercase " case inferred by default
set smartcase " if there are caps, go case-sensitive
set nowrap " do not wrap line
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5

set foldmethod=indent
set foldlevel=99

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
            \*.jpg,*.gif,*.png
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.class                          " Java
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=bin/*
set wildignore+=build/*
set wildmode=full

" Appearance
set t_Co=256
set background=light
colorscheme solarized
syntax on

" Tabs, spaces, wrapping
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set formatoptions=tcqrn1
set colorcolumn=+1

" Backups
set nobackup
set noswapfile

" Leader
let mapleader = " "
let maplocalleader = "\\"

" System clipboard
if has("clipboard")
  set clipboard=unnamed
  if has("unnamedplus")
    set clipboard+=unnamedplus
  endif
endif

" Keep the cursor in place while joining limes
nnoremap J mzJ`z

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w
noremap <silent> <leader><space> :noh<cr>

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Searching and movement
set ignorecase
set smartcase
set showmatch
set hlsearch
set gdefault

set virtualedit+=block

set matchtime=5
nnoremap N Nzz
nnoremap n nzz

au BufNewFile,BufRead *.go setlocal noexpandtab

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#ale#enabled = 1

" FZF
map <Leader>o :FZF<CR>

" Ale
let g:ale_linters = {
  \'typescript': ['tslint'],
  \'javascript': ['eslint'],
  \'python': ['pylint']
  \}
let g:ale_fixers = {
  \'typescript': ['tslint', 'prettier'],
  \'javascript': ['eslint', 'prettier']
  \}
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

let g:jsx_ext_required = 0

let python_highlight_all = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0

let g:python3_host_prog='/bin/python'
let g:python_host_prog='/bin/python'
