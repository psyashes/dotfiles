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
set updatetime=250
set mouse=a
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256
let $VIMRUNTIME='/usr/share/vim/vim90'
let loaded_matchparen = 1
let mapleader = " "
let g:auto_save = 1
let $LANG='en_US.UTF-8'
let $FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--preview 'bat  --color=always --style=header,grid {}' --ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
let ayucolor="mirage"

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
      \ 'coc-go',
      \ 'coc-clangd',
      \ 'coc-lua',
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
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-endwise'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'hashivim/vim-terraform'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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
"Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'windwp/nvim-spectre'
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
Plug 'p00f/nvim-ts-rainbow'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'tpope/vim-fugitive'
Plug 'akinsho/git-conflict.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'zbirenbaum/copilot.lua'
Plug 'dhruvasagar/vim-zoom'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tom-anders/telescope-vim-bookmarks.nvim'
Plug 'fannheyward/telescope-coc.nvim'
" Plug 'smjonas/live-command.nvim'

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
Plug 'EdenEast/nightfox.nvim'
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
"colorscheme jellybeans-nvim
"colorscheme iceberg
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
colorscheme nightfox
hi Normal guibg=black
hi LineNr guibg=black
"hi LineNr guifg=#39bae6
"hi LineNr guifg=#bd93f9
"hi LineNr guifg=#ffb454
"hi LineNr guifg=yellow

" map
inoremap <silent> jj <ESC>
nnoremap <silent> p "*p
"nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim <Bar> :SeiyaEnable<cr> <Bar> :Goyo<cr> <Bar> :Goyo<cr>
nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim<CR>
" nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>ff <cmd>Telescope find_files hidden=true<CR>
" nnoremap <leader>F <cmd>lua require('spectre').open()<CR>
nnoremap <leader>fl <cmd>Telescope live_grep<CR>
nnoremap <leader>ma <cmd>Telescope vim_bookmarks all<CR>
"nnoremap <silent> <leader>F :Rg<CR>
nnoremap <silent> <leader>fr :History<CR>
nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bn :bnext<CR>
nmap f :HopWord<CR>
nmap s :HopChar2<CR>
nnoremap <leader>pi :PlugInstall<CR>
vnoremap , :TComment<CR>
nnoremap <leader>z :ZenMode<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"nnoremap <leader>l :CocDiagnostics<CR>
"nnoremap <leader>l :CocList diagnostics<CR>
nnoremap <leader>ca  <Plug>(coc-codeaction-selected)
nnoremap <leader>qf <cmd>lua require("telescope.builtin").quickfix()<CR>
" nnoremap <leader>M <cmd>lua require("telescope.builtin").marks()<CR>

" coc map
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh :call CocAction('doHover')<CR>
nmap <silent> gf :call CocAction('format')<CR>
 " Need to install pynvim
" nmap <silent> <leader>s :CocFzfList symbols<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

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

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
inoremap <silent> <c-]> <Plug>(copilot-next)
inoremap <silent> <c-[> <Plug>(copilot-previous)

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
    nnoremap <silent> <leader>qd <Cmd>lua _G.diagnostic()<CR>
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

require('nightfox').setup({
  -- Use black background color in deactivate window
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  },
  specs = {
    all = {
      inactive = "#000000",
    },
    duskfox = {
      inactive = "#000000",
    },
    nordfox = {
      inactive = "#000000",
    },
  },
  groups = {
    all = {
      NormalNC = { fg = "fg1", bg = "inactive" },
    },
  },
})

require("nvim-treesitter.configs").setup {
  highlight = {
      -- ...
  },
  -- ...
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}

require('git-conflict').setup()

require('telescope').setup{
  defaults = {
    selection_caret = "❯ ",
    path_display = { "truncate" },
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_ignore_patterns = {
      "node_modules",
      ".git",
    },
    extensions = {
      coc = {
          theme = 'ivy',
          prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
      }
    },
  }
}
vim.api.nvim_set_hl(0, "TelescopeNormal", {bg="#000000"})
require('telescope').load_extension('coc')
require('telescope').load_extension('vim_bookmarks')

require("tokyonight").setup({
  style = "night",
  transparent = true,
  dim_inactive = true,
  styles = {
    sidebars = "dark",
    background = "dark",
  },
})
EOF

lua << EOF
require('copilot').setup({
  panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<M-l>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 16.x
  server_opts_overrides = {},
})
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
