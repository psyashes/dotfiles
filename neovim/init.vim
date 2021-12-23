" setting
set encoding=UTF-8
set hidden
set nobackup
set noswapfile
set nowritebackup
set shortmess+=c
set autoread
set number
"set showmatch
set laststatus=2
set ruler
set autoindent
"set smartindent
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
set conceallevel=0
set updatetime=250
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256
let $VIMRUNTIME='/usr/local/share/vim/vim82'
let loaded_matchparen = 1
let mapleader = " "
let g:auto_save = 1
let $LANG='en_US.UTF-8'
let $FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
let ayucolor="mirage"
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

" Conoline
let g:conoline_auto_enable = 1

" Rust
" let g:rustfmt_autosave = 1

" coc
let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-python',
      \ 'coc-phpls',
      \ 'coc-yaml',
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-emmet',
      \ 'coc-tag',
      \ 'coc-explorer',
      \ 'coc-rust-analyzer',
      \ 'coc-rls',
      \ 'coc-go',
      \ 'coc-fzf-preview',
      \ ]

" airline
let g:airline#extensions#tabline#enabled = 0
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
let g:airline_theme='dracula'

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-endwise'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'hashivim/vim-terraform'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'easymotion/vim-easymotion'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'miyakogi/conoline.vim'
Plug 'rust-lang/rust.vim'
Plug 'windwp/nvim-autopairs'
Plug 'cohama/lexima.vim'

" colorschemes
Plug 'doums/darcula'
Plug 'micke/vim-hybrid'
Plug 'ayu-theme/ayu-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'ulwlu/elly.vim'
Plug 'jaredgorski/spacecamp'
Plug 'benbusby/vim-earthbound-themes'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'skanehira/preview-markdown.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'
Plug 'yashguptaz/calvera-dark.nvim'
Plug 'shaunsingh/moonlight.nvim'
Plug 'metalelf0/jellybeans-nvim'
Plug 'marko-cerovac/material.nvim'
call plug#end()


" themes
syntax enable
set background=dark
"color default
"colorscheme hybrid
"colorscheme ayu
"colorscheme gruvbox
"colorscheme darcula
"colorscheme jellybeans
"colorscheme elly
"colorscheme industry
"colorscheme moonside
"colorscheme earthbound-darker
"colorscheme shades_of_purple
"colorscheme purify
"colorscheme dracula
"colorscheme nord
"colorscheme tokyonight
colorscheme calvera
"colorscheme moonlight
"colorscheme jellybeans-nvim
"colorscheme material
hi Normal guibg=black
hi LineNr guibg=black
"hi LineNr guifg=#39bae6
hi LineNr guifg=#bd93f9
"hi LineNr guifg=yellow

" map
inoremap <silent> jj <ESC>
nnoremap <silent> p "*p
nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim<cr>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>F :Rg<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>m :PreviewMarkdown<CR>
nmap s <Plug>(easymotion-s2)

" fzf and fzf-preview
" nmap <Leader>f [fzf-p]
" xmap <Leader>f [fzf-p]
" nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
" nnoremap <silent> [fzf-p]P     :<C-u>CocCommand fzf-preview.DirectoryFiles<CR>


" coc map
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh :call CocAction('doHover')<CR>
nmap <silent> gf :call CocAction('format')<CR>

" tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
--    disable = { "ruby" },  -- list of language that will be disabled
  },
}
EOF

" alternative yank
"function! ClipboardYank()
"  call system('xclip -i -selection clipboard', @@)
"endfunction
"function! ClipboardPaste()
"  let @@ = system('xclip -o -selection clipboard')
"endfunction
"
"vnoremap <silent> y y:call ClipboardYank()<cr>
"vnoremap <silent> d d:call ClipboardYank()<cr>
"nnoremap <silent> p :call ClipboardPaste()<cr>
