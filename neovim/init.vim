" setting
set encoding=UTF-8
set fileencoding=UTF-8
set hidden
set nobackup
set noswapfile
set nowritebackup
set autoread
set number
set laststatus=2
set cmdheight=2
set ruler
set cursorline
set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrap
set hid
set lazyredraw
set clipboard+=unnamedplus
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
set conceallevel=2
set concealcursor=nc

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
  autocmd FileType org setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
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
      \ 'coc-rust-analyzer',
      \ ]
let g:coc_user_config = {
    \   'explorer': {
    \     'file': {
    \       'showHiddenFiles': 1
    \     }
    \   }
    \ }

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

" vim-which-key
set timeoutlen=500

" vim-table-mode
autocmd VimEnter * TableModeEnable
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

" blamer
let g:blamer_enabled = 1

" vim-jetpack
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1}
Jetpack 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Jetpack 'junegunn/fzf.vim'
Jetpack 'antoinemadec/coc-fzf', {'branch': 'release'}
Jetpack 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/rpc' }
Jetpack 'airblade/vim-gitgutter'
Jetpack 'christoomey/vim-tmux-navigator'
Jetpack '907th/vim-auto-save'
Jetpack 'tpope/vim-endwise'
Jetpack 'neoclide/coc.nvim', {'branch': 'release'}
Jetpack 'vim-airline/vim-airline'
Jetpack 'hashivim/vim-terraform'
Jetpack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Jetpack 'norcalli/nvim-colorizer.lua'
Jetpack 'miyakogi/conoline.vim'
Jetpack 'windwp/nvim-autopairs'
Jetpack 'cohama/lexima.vim'
Jetpack 'phaazon/hop.nvim'
Jetpack 'nvim-lua/plenary.nvim'
Jetpack 'dhruvasagar/vim-table-mode'
Jetpack 'vim-scripts/YankRing.vim'
Jetpack 'miyakogi/seiya.vim'
Jetpack 'tpope/vim-surround' " b:(, B:{, r:[, a:<
Jetpack 'tomtom/tcomment_vim'
Jetpack 'itchyny/vim-cursorword'
Jetpack 'folke/zen-mode.nvim'
Jetpack 'junegunn/goyo.vim'
Jetpack 'github/copilot.vim'
Jetpack 'liuchengxu/vim-which-key'
Jetpack 'nvim-orgmode/orgmode'
Jetpack 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Jetpack 'akinsho/git-conflict.nvim'
Jetpack 'lukas-reineke/indent-blankline.nvim'
Jetpack 'zbirenbaum/copilot.lua'
Jetpack 'dhruvasagar/vim-zoom'
Jetpack 'MattesGroeger/vim-bookmarks'
Jetpack 'tom-anders/telescope-vim-bookmarks.nvim'
Jetpack 'fannheyward/telescope-coc.nvim'
Jetpack 'terryma/vim-multiple-cursors'
Jetpack 'nvim-telescope/telescope-live-grep-args.nvim'
Jetpack 'MunifTanjim/nui.nvim'
Jetpack 'nvim-tree/nvim-web-devicons'
Jetpack 'nvim-neo-tree/neo-tree.nvim'
Jetpack 'godlygeek/tabular'
Jetpack 'ziontee113/neo-minimap'
Jetpack 'gennaro-tedesco/nvim-peekup'
Jetpack 'akinsho/org-bullets.nvim'
Jetpack 'dkarter/bullets.vim'
Jetpack 'APZelos/blamer.nvim'
" Jetpack 'lukas-reineke/headlines.nvim'
" Jetpack 'preservim/vim-markdown'
" Jetpack 'smjonas/live-command.nvim'
" Jetpack 'peitalin/vim-jsx-typescript'
" Jetpack 'styled-components/vim-styled-components', { 'branch': 'main' }
" Jetpack 't9md/vim-quickhl'
" Jetpack 'kevinhwang91/nvim-bqf'
" Jetpack 'windwp/nvim-spectre'

" Local
Jetpack'file:///Users/cohiba/dev/eva13'
 
" colorschemes
Jetpack 'doums/darcula'
Jetpack 'micke/vim-hybrid'
Jetpack 'ayu-theme/ayu-vim'
Jetpack 'morhetz/gruvbox'
Jetpack 'benbusby/vim-earthbound-themes'
Jetpack 'Rigellute/shades-of-purple.vim'
Jetpack 'kyoz/purify', { 'rtp': 'vim' }
Jetpack 'dracula/vim', { 'as': 'dracula' }
Jetpack 'briones-gabriel/darcula-solid.nvim'
Jetpack 'rktjmp/lush.nvim'
Jetpack 'arcticicestudio/nord-vim'
Jetpack 'folke/tokyonight.nvim'
Jetpack 'yashguptaz/calvera-dark.nvim'
Jetpack 'shaunsingh/moonlight.nvim'
Jetpack 'metalelf0/jellybeans-nvim'
Jetpack 'bluz71/vim-moonfly-colors'
Jetpack 'savq/melange'
Jetpack 'NTBBloodbath/doom-one.nvim'
Jetpack 'cocopon/iceberg.vim'
Jetpack 'rebelot/kanagawa.nvim'
Jetpack 'yonlu/omni.vim'
Jetpack 'AhmedAbdulrahman/vim-aylin'
Jetpack 'catppuccin/nvim', {'as': 'catppuccin'}
Jetpack 'pineapplegiant/spaceduck', { 'branch': 'main' }
Jetpack 'EdenEast/nightfox.nvim'
Jetpack 'marko-cerovac/material.nvim'
Jetpack 'nyoom-engineering/oxocarbon.nvim'
Jetpack 'nobbmaestro/nvim-andromeda'
call jetpack#end()

" map
inoremap <silent> jj <ESC>
nnoremap <silent> p "*p
xnoremap y y`>
" nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim <Bar> :SeiyaEnable<cr> <Bar> :Goyo<cr> <Bar> :Goyo<cr>
nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim<CR>
" nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>ff <cmd>Telescope find_files hidden=true<CR>
" nnoremap <leader>F <cmd>lua require('spectre').open()<CR>
nnoremap <leader>fl <cmd>lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>
nnoremap <leader>fr <cmd>Telescope resume<CR>
nnoremap <leader>ma <cmd>Telescope vim_bookmarks all<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
"nnoremap <silent> <leader>F :Rg<CR>
" nnoremap <silent> <leader>fr :History<CR>
nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>ng :Neotree float git_status<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bn :bnext<CR>
nmap f :HopWord<CR>
" nmap s :HopChar2<CR>
" nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>js :JetpackSync<CR>
vnoremap , :TComment<CR>
nnoremap <leader>z :ZenMode<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"nnoremap <leader>l :CocDiagnostics<CR>
"nnoremap <leader>l :CocList diagnostics<CR>
nnoremap <leader>ca  <Plug>(coc-codeaction-selected)
nnoremap <leader>qf <cmd>lua require("telescope.builtin").quickfix()<CR>
" nnoremap <leader>M <cmd>lua require("telescope.builtin").marks()<CR>
nmap <leader>P <Plug>PeekupOpen

" coc map
nmap <silent> gd :Telescope coc definitions<CR>
nmap <silent> gy :Telescope coc type_definitions<CR>
nmap <silent> gi :Telescope coc implementations<CR>
nmap <silent> gr :Telescope coc references<CR>
nmap <silent> gq :Telescope coc workspace_diagnostics<CR>
nmap <silent> gs :Telescope coc workspace_symbols<CR>
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


" orgmode
nnoremap tt ciwTODO<ESC>
nnoremap td ciwDONE<ESC>
autocmd BufEnter *.org normal zR
autocmd ColorScheme * call s:setup_org_colors()
function! s:setup_org_colors() abort
  hi link OrgTSHeadlineLevel3 Statement " default Identifier
  " hi link OrgTSHeadlineLevel4 Identifier
  hi link OrgTSHeadlineLevel4 Title " default Statement
endfunction

" copilot
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
inoremap <silent> <c-]> <Plug>(copilot-next)
inoremap <silent> <c-[> <Plug>(copilot-previous)

lua <<EOF
require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = true }
vim.api.nvim_set_keymap('v', 'f', "<cmd>lua require'hop'.hint_lines()<cr>", {})

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
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {'org'},
  },
  -- ensure_installed = 'maintained',
  auto_install = true,
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    query = 'rainbow-parens',
  }
}

require'colorizer'.setup()

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "mocha",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        telescope = true,
        hop = true,
        coc_nvim = true,
        markdown = true,
        ts_rainbow2 = true,
        which_key = true,
        gitgutter = true,
        neotree = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
    highlight_overrides = {
        all = function(colors)
            return {
                NvimTreeNormal = { fg = colors.none },
                CmpBorder = { fg = "#3e4145" },
                LineNr = { fg = macchiato.overlay1 },
            }
        end,
        mocha = function(mocha)
            return {
                Comment = { fg = mocha.flamingo },
                CocInlayHint = { fg = "#bd93f9" },
            }
        end,
    },
})
-- vim.cmd[[colorscheme catppuccin]]

-- orgmode
require('orgmode').setup_ts_grammar()
require('orgmode').setup({
  org_todo_keyword_faces = {
    -- TODO = ':background #000000 :foreground #89b4fa',
    TODO = ':background #000000 :foreground yellow',
  }
})
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'main',
    files = { 'src/parser.c', 'src/scanner.c' },
  },
  filetype = 'org',
}
require('org-bullets').setup()

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
require('telescope').load_extension('live_grep_args')

require("tokyonight").setup({
  style = "night",
  transparent = true,
  dim_inactive = true,
  styles = {
    sidebars = "dark",
    background = "dark",
  },
})

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
    org = false,
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

" themes
syntax enable
"colorscheme hybrid
"colorscheme ayu
"colorscheme gruvbox
"colorscheme darcula
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
"colorscheme material
"colorscheme oxocarbon
"colorscheme kanagawa
"colorscheme omni
"colorscheme aylin
colorscheme catppuccin
"colorscheme andromeda
"colorscheme spaceduck
"colorscheme torte
"colorscheme darkblue
"colorscheme nightfox

set background=dark
hi Normal guibg=black
hi LineNr guibg=black

"hi LineNr guifg=#39bae6
"hi LineNr guifg=#bd93f9
"hi LineNr guifg=#ffb454
"hi LineNr guifg=yellow

" NOTE: Execute seiya in the end of vimrc for in order not to interfere with colorscheme.
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
let g:seiya_auto_enable=1
" autocmd VimEnter * :SeiyaEnable
" autocmd VimEnter * :Goyo
" autocmd VimEnter * :Goyo

