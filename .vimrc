set encoding=utf-8

call plug#begin()
"Navigation plugins
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'

"Git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"UI plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

"Languages
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rails'
Plug 'plasticboy/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'elzr/vim-json'
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-surround'

"Tools
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
call plug#end()

"NERD tree settings
map gn :NERDTreeToggle<CR>

"FZF settings
map <C-p> :FZF<CR>
map <C-s> :GFiles?<CR>
nnoremap gb :Buffers<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"Gitgutter settings
set updatetime=10

"Linters
let g:ale_linters = { 'ruby': ['rubocop'] }
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 0

"Theme settings
if has("gui_running")
  set guifont=Roboto\ Mono\ for\ Powerline
endif

set background=dark
colorscheme gruvbox
highlight clear SignColumn
highlight GitGutterAdd guifg=#afb726 guibg=#282828
highlight GitGutterChange guifg=#538991 guibg=#282828
highlight GitGutterChangeDelete guifg=#538991 guibg=#282828
highlight GitGutterDelete guifg=#f34834 guibg=#282828
highlight ALEWarningSign guibg=#282828

"Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'

"MacVim specific stuff
"Hide scrollbars
set guioptions=

"Vim settings
set number relativenumber
set cursorline
set cursorcolumn
set mouse=a
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nopaste
set nowrap
set foldmethod=syntax
set foldlevel=99
set timeoutlen=1000 ttimeoutlen=0
set clipboard=unnamed
set pastetoggle=<F2>
set showmode
set lazyredraw
set nohlsearch
set autoindent
set so=5
set ignorecase
set smartcase

"Cusom settings
nmap dD mzyyp`z
map <F8> :%!python -m json.tool<CR>
map <F7> :!ruby %<CR>
nnoremap <F2> :set invpaste paste?<CR>
nnoremap tn :tabnew<CR>
map <A-D> <C-D>
filetype plugin indent on
cnoreabbrev WS mksession! ~/.vim/workspace
cnoreabbrev wl source ~/.vim/workspace
cnoreabbrev vres vertical resize
command BD bp|bd

"Autocmd
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd BufWritePre * :%s/\s\+$//e
