
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Plugin auto completion fix using autopep8
Plug 'tell-k/vim-autopep8'

" Plugin tagbar
Plug 'majutsushi/tagbar'

" Nice statusline mode for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"
" Plugin for support latex
Plug 'lervag/vimtex'
Plug 'vim-latex/vim-latex'

Plug 'nvie/vim-flake8'
Plug 'universal-ctags/ctags'

Plug 'ctrlpvim/ctrlp.vim'

"NERDTree
Plug 'preservim/nerdtree'

"Commentary
Plug 'tpope/vim-commentary'

"auto-pair (auto close tags)
Plug 'jiangmiao/auto-pairs'

" Emmet
Plug 'mattn/emmet-vim'

" Repeat
Plug 'tpope/vim-repeat'

Plug 'morhetz/gruvbox'

" indentLine
Plug 'Yggdroot/indentLine'

Plug 'Shougo/deoplete.nvim'   
Plug 'roxma/nvim-yarp'   
Plug 'roxma/vim-hug-neovim-rpc'  

Plug 'dhruvasagar/vim-table-mode'

" Initialize plugin system
call plug#end()

colorscheme gruvbox
set background=dark
set number
set nobackup
set ignorecase
set smartcase
set hlsearch                " highlight matches
set incsearch               
set lazyredraw              " redraw only when we need to
set magic
set backspace=indent,eol,start
set encoding=UTF-8
" sets how many lines of history VIM has to remember
set history=500

" use many muchos levels of undo
set undolevels=500

" set to auto read when a file is changed from the outside
set autoread

let mapleader=","

" Fast saving
nmap <leader>w :w!<cr>

" use spaces instead of tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
set ruler rulerformat=%=%l/%L
set laststatus=2

" When lines are cropped at the screen bottom, show as much as possible
set display=lastline

" Enable cursor line position tracking:
" set cursorline

" nmap <C-h> <C-w><C-h>
" nmap <C-j> <C-w><C-j>
" nmap <C-k> <C-w><C-k>
" nmap <C-l> <C-w><C-l>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
" Setting for ESC
imap jj <esc>

" setting repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" use deoplete
let g:deoplete#enable_at_startup = 1

"----------------------
" Tagbar remap
nmap <F8> :TagbarToggle<CR>

" Setting emmet
let g:user_emmet_mode='a' " enable all function in all mode
let g:user_emmet_install_global = 0 " Enable just for html/css
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>' "redefine trigger key 

" ---------------------
" Airline Themes
" ---------------------

let g:airline_detect_crypt = 1
let g:airline_detect_spell = 1
let g:airline_detect_iminsert = 0
let g:airline_inactive_collapse = 1
let g:airline_theme = 'gruvbox'
" let g:airline_theme = 'jet'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#vcs_priority = "git"
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#ctrlp#sho_adjacent_modes = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#promptline#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#show_buffers = 1

" Tambahan
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
set guifont=DroidSansMono\ Nerd\ Font:h11
" ---------------------
" Vimtex
" ---------------------
let g:vimtex_compiler_latexmk = {'callback' : 0}

" ---------------------
" Setting for autopep8
autocmd FileType python set equalprg=autopep8\ -
autocmd FileType python noremap <buffer> <F6> :call Autopep8()<CR>

" Setting comentary
autocmd FileType apache setlocal commentstring=#\ %s

"setting vim easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" To Open/reload the vimrc file
nmap <Leader>ev :e $MYVIMRC <cr>
nmap <Leader>es :source $MYVIMRC <cr>

" NERDTree Config
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"Smart way to move between windows

" Setting indentLine
let g:indentLine_color_setColors = 0
let g:indentLine_color_term = 239
" let g:indentLine_char = '?'

" Disable highlight when <leader><cr> :noh<cr>
map <silent> <leader><cr> :noh<cr>

" Map <Space> to / (search) and Ctrl-<Space> to ? (Backwards search)
map <space> /
map <c-space> ?

" Insert blank lines without going into insert mode
nmap go o<esc>
nmap gO O<esc>

" turn off search highlight
nnoremap <Leader><space> :nohlsearch<CR>

" move to beginning/end of line
nnoremap B ^
noremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" copy paste form clipboard
" map <c-c> "+y
" map <c-p> "+p

" reformat whole file
nnoremap <leader>= ggVG=

" Berpindah antar buffer
nmap <Leader>f :bn<Cr>
nmap <Leader>d :bp<Cr>
nmap <Leader>c :bd<Cr>

" reindent the entire file
map <Leader>I gg=G``<cr>

" close all other windows (in the current tab)
nmap gW :only<cr>

" buffer resizing mappings (shift + arrow key)
nnoremap <S-Up> <c-w>+
nnoremap <S-Down> <c-w>-
nnoremap <S-Left> <c-w><
nnoremap <S-Right> <c-w>>

" change directory to current openfile
nnoremap <leader>cd :cd %:p:h<CR>

" Disable arrow key
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Golang
augroup go

  au!
  au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

  au FileType go nmap <Leader>dd <Plug>(go-def-vertical)
  au FileType go nmap <Leader>dv <Plug>(go-doc-vertical)
  au FileType go nmap <Leader>db <Plug>(go-doc-browser)

  au FileType go nmap <leader>r  <Plug>(go-run)
  au FileType go nmap <leader>t  <Plug>(go-test)
  au FileType go nmap <Leader>gt <Plug>(go-coverage-toggle)
  au FileType go nmap <Leader>i <Plug>(go-info)
  au FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)
  au FileType go nmap <C-g> :GoDecls<cr>
  au FileType go nmap <leader>dr :GoDeclsDir<cr>
  au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
  au FileType go imap <leader>dr <esc>:<C-u>GoDeclsDir<cr>
  au FileType go nmap <leader>rb :<C-u>call <SID>build_go_files()<CR>

augroup END

augroup FileTypeSpecificAutocommands
  autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType php setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

let g:tex_flavor = 'latex'

