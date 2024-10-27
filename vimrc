" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Essential Plugins
Plug 'ghifarit53/tokyonight-vim'                 " Tokyo Night theme
Plug 'preservim/nerdtree'                        " File explorer
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Powerful autocomplete
Plug 'vim-airline/vim-airline'                   " Status bar
Plug 'vim-airline/vim-airline-themes'            " Airline themes
Plug 'jiangmiao/auto-pairs'                      " Auto close brackets
Plug 'tpope/vim-fugitive'                        " Git integration
Plug 'airblade/vim-gitgutter'                    " Git changes in gutter
Plug 'dense-analysis/ale'                        " Async linting
Plug 'sheerun/vim-polyglot'                      " Language pack
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Fuzzy finder
Plug 'junegunn/fzf.vim'                              " FZF integration
Plug 'hashivim/vim-terraform'                    " Terraform support
Plug 'pearofducks/ansible-vim'                   " Ansible support
Plug 'fatih/vim-go'                              " Go support
Plug 'mattn/emmet-vim'                           " HTML/CSS expansion

call plug#end()

" General Settings
syntax enable
set termguicolors
set number
set relativenumber
set mouse=a
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set cursorline
set hidden
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set ruler
set pumheight=10
set cmdheight=2
set splitbelow
set splitright
set conceallevel=0
set showtabline=2
set updatetime=300
set timeoutlen=500
set clipboard=unnamedplus
set background=dark

" Theme Configuration
colorscheme tokyonight
let g:airline_theme='tokyonight'
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1

" NERDTree Configuration
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=0
let NERDTreeQuitOnOpen=0
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" CoC Configuration
" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" FZF Configuration
nnoremap <C-p> :Files<CR>
nnoremap <C-g> :Rg<CR>

" Custom Key Mappings
let mapleader = " "
" Save with leader + w
nnoremap <leader>w :w<CR>
" Quit with leader + q
nnoremap <leader>q :q<CR>
" Navigate between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" DevOps-specific settings
au BufNewFile,BufRead *.yaml,*.yml set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType terraform setlocal commentstring=#%s

" File type specific settings
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
