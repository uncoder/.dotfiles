set encoding=utf-8

call plug#begin()
"Navigation plugins
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

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

"Tools
Plug 'terryma/vim-multiple-cursors'
Plug 'rking/ag.vim'
call plug#end()

"NERD tree settings
map gn :NERDTreeToggle<CR>

"FZF settings
map <C-p> :FZF<CR>
map <C-s> :GFiles?<CR>
nnoremap gb :Buffers<CR>

"Gitgutter settings
set updatetime=10

"Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = '|'

"Theme settings
set termguicolors
set background=dark
let g:airline_theme = 'wombat'
colorscheme gruvbox
highlight clear SignColumn
highlight GitGutterAdd guifg=#afb726 guibg=#282828
highlight GitGutterChange guifg=#538991 guibg=#282828
highlight GitGutterChangeDelete guifg=#538991 guibg=#282828
highlight GitGutterDelete guifg=#f34834 guibg=#282828

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

"Cusom mappings
nmap dD mzyyp`z
map <F8> :vertical wincmd f<CR>
nnoremap <F2> :set invpaste paste?<CR>
nnoremap tn :tabnew<CR>
map <A-D> <C-D>
filetype plugin indent on
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
cnoreabbrev WS mksession! ~/.vim/workspace
cnoreabbrev wl source ~/.vim/workspace
cnoreabbrev vres vertical resize
