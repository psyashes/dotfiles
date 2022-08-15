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
set matchtime=1
set laststatus=2
set ruler
set smarttab
set expandtab
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
let $VIMRUNTIME='/usr/share/vim/vim82'
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

" indent
set autoindent
set smartindent
set cindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0
if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd FileType rust  setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescript  setlocal sw=2 sts=2 ts=2 et
endif

" Conoline
let g:conoline_auto_enable = 1

" coc
let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-eslint8',
      \ 'coc-prettier',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-pyright',
      \ 'coc-phpls',
      \ 'coc-yaml',
      \ 'coc-json',
      \ 'coc-vimlsp',
      \ 'coc-emmet',
      \ 'coc-tag',
      \ 'coc-explorer',
      \ 'coc-rust-analyzer',
      \ 'coc-go',
      \ 'coc-clangd',
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

" conoline
let g:conoline_color_normal_dark = 'guibg=#444444'
let g:conoline_color_normal_nr_dark = 'guibg=#444444'

" seiya
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
let g:seiya_auto_enable=1
autocmd VimEnter * :SeiyaEnable

" vim-which-key
set timeoutlen=500

" vim-table-mode
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

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
Plug 'windwp/nvim-autopairs'
Plug 'cohama/lexima.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'skanehira/jumpcursor.vim'
Plug 't9md/vim-quickhl'
Plug 'phaazon/hop.nvim'
Plug 'kevinhwang91/nvim-bqf'
Plug 'akinsho/git-conflict.nvim'
Plug 'neovim/nvim-lspconfig'
"Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-spectre'
Plug 'mhinz/vim-grepper'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-scripts/YankRing.vim'
Plug 'miyakogi/seiya.vim'
Plug 'tpope/vim-surround'
Plug 'glts/vim-radical'
Plug 'glts/vim-magnum'
Plug 'tomtom/tcomment_vim'
Plug 'itchyny/vim-cursorword'
Plug 'folke/zen-mode.nvim'
Plug 'junegunn/goyo.vim'
Plug 'github/copilot.vim'
Plug 'liuchengxu/vim-which-key'
" Plug 'nvim-orgmode/orgmode'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'p00f/nvim-ts-rainbow'

" Local
Plug 'file:///Users/cohiba/dev/eva13'

" colorschemes
Plug 'doums/darcula'
Plug 'micke/vim-hybrid'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'ulwlu/elly.vim'
Plug 'benbusby/vim-earthbound-themes'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'
Plug 'yashguptaz/calvera-dark.nvim'
Plug 'shaunsingh/moonlight.nvim'
Plug 'metalelf0/jellybeans-nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'savq/melange'
Plug 'NTBBloodbath/doom-one.nvim'
Plug 'cocopon/iceberg.vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'yonlu/omni.vim'
Plug 'AhmedAbdulrahman/vim-aylin'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
call plug#end()

" themes
syntax enable
set background=dark
"colorscheme hybrid
"colorscheme ayu
"colorscheme gruvbox
"colorscheme darcula
"colorscheme elly
"colorscheme industry
"colorscheme moonside
"colorscheme earthbound-darker
"colorscheme shades_of_purple
"colorscheme purify
"colorscheme dracula
"colorscheme nord
"colorscheme tokyonight
"colorscheme calvera
"colorscheme moonlight
colorscheme jellybeans-nvim
"colorscheme iceberg
"colorscheme material
"colorscheme moonfly
"colorscheme default
"colorscheme melange
"colorscheme doom-one
"colorscheme kanagawa
"colorscheme onenord
"colorscheme omni
"colorscheme aylin
"colorscheme catppuccin
"colorscheme spaceduck
"colorscheme torte
"colorscheme darkblue
"hi Normal guibg=black
"hi LineNr guibg=black
"hi LineNr guifg=#39bae6
"hi LineNr guifg=#bd93f9
"hi LineNr guifg=#ffb454
"hi LineNr guifg=yellow

" map
inoremap <silent> jj <ESC>
nnoremap <silent> p "*p
nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim <Bar> :SeiyaEnable<cr> <Bar> :Goyo<cr> <Bar> :Goyo<cr>
"nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim <Bar> :SeiyaDisable<cr>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <leader>F <cmd>lua require('spectre').open()<CR>
"nnoremap <silent> <leader>F :Rg<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bn :bnext<CR>
nmap f :HopWord<CR>
nmap s :HopChar2<CR>
nnoremap <leader>pi :PlugInstall<CR>
vnoremap , :TComment<CR>
nnoremap <leader>z :ZenMode<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"nmap s <Plug>(easymotion-s2)
"nnoremap <leader>l :CocDiagnostics<CR>
"nnoremap <leader>l :CocList diagnostics<CR>


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

" quickhl
nmap <leader>m <Plug>(quickhl-manual-this)
xmap <leader>m <Plug>(quickhl-manual-this)
nmap <leader>M <Plug>(quickhl-manual-reset)
xmap <leader>M <Plug>(quickhl-manual-reset)

lua <<EOF
require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = true }

-- bqf
local fn = vim.fn
local cmd = vim.cmd
local api = vim.api
vim.g.grepper = {tools = {'rg', 'grep'}, searchreg = 1}
cmd(([[
    aug Grepper
        au!
        au User Grepper ++nested %s
    aug END
]]):format([[call setqflist([], 'r', {'context': {'bqf': {'pattern_hl': '\%#' . getreg('/')}}})]]))
cmd([[
    nmap gs  <plug>(GrepperOperator)
    xmap gs  <plug>(GrepperOperator)
]])
vim.g.coc_enable_locationlist = 0
cmd([[
    aug Coc
        au!
        au User CocLocationsChange lua _G.jumpToLoc()
    aug END
]])
cmd([[
    nmap <silent> gr <Plug>(coc-references)
    nnoremap <silent> <leader>q <Cmd>lua _G.diagnostic()<CR>
]])
function _G.jumpToLoc(locs)
    locs = locs or vim.g.coc_jump_locations
    fn.setloclist(0, {}, ' ', {title = 'CocLocationList', items = locs})
    local winid = fn.getloclist(0, {winid = 0}).winid
    if winid == 0 then
        cmd('abo lw')
    else
        api.nvim_set_current_win(winid)
    end
end
function _G.diagnostic()
    fn.CocActionAsync('diagnosticList', '', function(err, res)
        if err == vim.NIL then
            local items = {}
            for _, d in ipairs(res) do
                local text = ('[%s%s] %s'):format((d.source == '' and 'coc.nvim' or d.source),
                    (d.code == vim.NIL and '' or ' ' .. d.code), d.message:match('([^\n]+)\n*'))
                local item = {
                    filename = d.file,
                    lnum = d.lnum,
                    end_lnum = d.end_lnum,
                    col = d.col,
                    end_col = d.end_col,
                    text = text,
                    type = d.severity
                }
                table.insert(items, item)
            end
            fn.setqflist({}, ' ', {title = 'CocDiagnosticList', items = items})

            cmd('bo cope')
        end
    end)
end
EOF

lua << EOF
require("zen-mode").setup {
    window = {
        backdrop = 0.95,
        width = 180,
        height = 100,
    },
    plugins = {
      twilight = { enabled = false },
    }
}

-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
}

require'colorizer'.setup()
EOF

" coc float scroll
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

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
