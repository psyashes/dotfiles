" setting
set encoding=UTF-8
set hidden
set nobackup
set noswapfile
set nowritebackup
set shortmess+=c
set autoread
set number
set showmatch
set laststatus=2
set ruler
set autoindent
" set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrap
set hid
set clipboard+=unnamedplus
set lazyredraw
set showmatch
set conceallevel=0
set updatetime=250
set termguicolors
set background=dark
set t_Co=256
let mapleader = " "
let g:auto_save = 1
let $LANG='en_US.UTF-8'
let $FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
let ayucolor="mirage"

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '| '
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=0
let g:airline_section_a = ''
let g:airline_section_b = ''
let g:airline_section_y = ''
let g:airline_section_z = '%3l/%L'
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-endwise'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'romgrk/barbar.nvim'
Plug 'tpope/vim-rails'

" colorschemes
Plug 'chriskempson/base16-vim'
Plug 'doums/darcula'
Plug 'micke/vim-hybrid'
Plug 'ayu-theme/ayu-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'ulwlu/elly.vim'
Plug 'pechorin/any-jump.vim'
Plug 'habamax/vim-habanight'
call plug#end()


" themes
syntax enable
let base16colorspace=256
" hi Normal ctermbg=NONE guibg=NONE
" colorscheme default
" colorscheme hybrid
" colorscheme ayu
" colorscheme gruvbox
" colorscheme darcula
" colorscheme jellybeans
" colorscheme elly
" colorscheme base16-tomorrow-night
colorscheme base16-black-metal-bathory
" colorscheme base16-default-dark
" colorscheme base16-synth-midnight-dark
" colorscheme habanight

" map
inoremap <silent> jj <ESC>
nnoremap <silent> p "*p
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>F :Rg<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bn :bnext<CR>

" coc map
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" alternative yank
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

" treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "ruby" },  -- list of language that will be disabled
  },
}
EOF
