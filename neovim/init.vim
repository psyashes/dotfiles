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
" let $VIMRUNTIME='/usr/share/vim/vim90'
let loaded_matchparen = 1
let mapleader = " "
let g:auto_save = 1
let $LANG='en_US.UTF-8'
let $FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--preview 'bat  --color=always --style=header,grid {}' --ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
let ayucolor="mirage"
set conceallevel=0
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
  autocmd FileType markdown setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
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

" goyo
let g:goyo_width = 140
let g:goyo_height = 90
let g:goyo_liner = 1

" vim-plug
call plug#begin()
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
Plug 'phaazon/hop.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-surround' " b:(, B:{, r:[, a:<
" Plug 'tomtom/tcomment_vim'
Plug 'itchyny/vim-cursorword'
Plug 'folke/zen-mode.nvim'
Plug 'github/copilot.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'nvim-orgmode/orgmode'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'akinsho/git-conflict.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'zbirenbaum/copilot.lua'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tom-anders/telescope-vim-bookmarks.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'nvim-telescope/telescope-live-grep-args.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'godlygeek/tabular'
Plug 'ziontee113/neo-minimap'
Plug 'gennaro-tedesco/nvim-peekup'
Plug 'akinsho/org-bullets.nvim'
Plug 'dkarter/bullets.vim'
Plug 'APZelos/blamer.nvim'
Plug 'vim-scripts/argtextobj.vim'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-commentary'
Plug 'Rasukarusan/nvim-block-paste'
Plug 'nyngwang/NeoZoom.lua'
Plug 'ellisonleao/glow.nvim'
Plug 'xiyaowong/transparent.nvim'
Plug 'shellRaining/hlchunk.nvim'
Plug 'HiPhish/rainbow-delimiters.nvim'
Plug 'atusy/tsnode-marker.nvim'
Plug 'nvim-treesitter/playground'
Plug 'sindrets/diffview.nvim'
Plug 'tpope/vim-fugitive'
Plug 'dhruvasagar/vim-zoom'
Plug 'junegunn/goyo.vim'
Plug 'Pocco81/true-zen.nvim'
Plug 'mrcjkb/rustaceanvim'
Plug 'Exafunction/codeium.vim'
Plug 'eandrju/cellular-automaton.nvim'
Plug 'MeanderingProgrammer/markdown.nvim'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'chrisgrieser/nvim-various-textobjs'
Plug 'isak102/telescope-git-file-history.nvim'
" Plug 'lukas-reineke/headlines.nvim'
" Plug 'preservim/vim-markdown'
" Plug 'smjonas/live-command.nvim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 't9md/vim-quickhl'
" Plug 'kevinhwang91/nvim-bqf'
" Plug 'windwp/nvim-spectre'

" Local
Plug'file:///Users/cohiba/dev/eva13'
 
" colorschemes
Plug 'doums/darcula'
Plug 'micke/vim-hybrid'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
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
Plug 'yonlu/omni.vim'
Plug 'AhmedAbdulrahman/vim-aylin'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'nobbmaestro/nvim-andromeda'
call plug#end()

" map
inoremap <silent> jj <ESC>
nnoremap <silent> p "*p
xnoremap y y`>
nnoremap Y y$
nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim<CR>
" nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>ff <cmd>Telescope find_files hidden=true<CR>
" nnoremap <leader>F <cmd>lua require('spectre').open()<CR>
nnoremap <leader>fl <cmd>lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>
" NOTE: Search inside specific path
" "text" -g path_name/**
nnoremap <silent> <leader>fg <cmd>Telescope git_status<CR>
nnoremap <leader>tr <cmd>Telescope resume<CR>
nnoremap <leader>ma <cmd>Telescope vim_bookmarks all<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
"nnoremap <silent> <leader>F :Rg<CR>
nnoremap <silent> <leader>fr :History<CR>
nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>ng :Neotree float git_status<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bn :bnext<CR>
nmap f :HopWord<CR>
nmap F :HopChar1CurrentLine<CR>
" nmap f <Plug>Sneak_s
" nmap F <Plug>Sneak_S
nnoremap <leader>pi :PlugInstall<CR>
vnoremap , :TComment<CR>
" nnoremap <leader>z :ZenMode<CR>
" nnoremap <silent> <leader>z <cmd>NeoZoomToggle<CR>
nnoremap <silent> <leader>z <cmd>Goyo<CR>
" nnoremap <silent> <leader>z <cmd>TZAtaraxis<CR>
" nnoremap <silent> <leader>z <cmd>Goyo<CR>
nnoremap <silent> <leader>tz :tab split<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"nnoremap <leader>l :CocDiagnostics<CR>
"nnoremap <leader>l :CocList diagnostics<CR>
nnoremap <leader>ca  <Plug>(coc-codeaction-selected)
nnoremap <leader>cr  <Plug>(coc-rename)
" nnoremap <leader>M <cmd>lua require("telescope.builtin").marks()<CR>
nmap <leader>P <Plug>PeekupOpen
nnoremap <leader>gl :Glow<CR>
vmap , gc
nnoremap + <C-a>
nnoremap - <C-x>

" command line
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

" Wrap Option
nnoremap <leader>wo ciwOption<<ESC>pa><ESC>
" Wrap Some
nnoremap <leader>ws ciwSome(<ESC>pa)<ESC>

" Move visual block
vnoremap <C-p> "zx<Up>"zP`[V`]
vnoremap <C-n> "zx"zp`[V`]

" coc map
nmap <silent> gd :Telescope coc definitions<CR>
nmap <silent> gy :Telescope coc type_definitions<CR>
nmap <silent> gi :Telescope coc implementations<CR>
nmap <silent> gr :Telescope coc references<CR>
nmap <silent> gq :Telescope coc workspace_diagnostics<CR>
nmap <silent> gs :Telescope coc workspace_symbols<CR>
nmap <silent> gh :call CocAction('doHover')<CR>
nmap <silent> gf :call CocAction('format')<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
 " Need to install pynvim
" nmap <silent> <leader>s :CocFzfList symbols<CR>

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
imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
let b:copilot_enabled = 1
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
        treesitter = true,
        which_key = true,
        beacon = true,
        hop = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
    highlight_overrides = {
        all = function(colors)
            return {
                NvimTreeNormal = { fg = colors.none },
                CmpBorder = { fg = "#3e4145" },
                -- LineNr = { fg = macchiato.overlay1 },
            }
        end,
        mocha = function(mocha)
            return {
                Comment = { fg = mocha.flamingo, style = { "italic" } },
                CocInlayHint = { fg = "#bd93f9" },
            }
        end,
    },
})

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
      "vendor",
      ".sqlx",
    },
    extensions = {
      coc = {
          theme = 'ivy',
          prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
      }
    },
  },
}
vim.api.nvim_set_hl(0, "TelescopeNormal", {bg="#000000"})
require('telescope').load_extension('coc')
require('telescope').load_extension('vim_bookmarks')
require('telescope').load_extension('live_grep_args')
require("telescope").load_extension("git_file_history")

require("tokyonight").setup({
  style = "night",
  transparent = true,
  dim_inactive = true,
  styles = {
    sidebars = "dark",
    background = "dark",
  },
})

require('neo-zoom').setup {
  popup = { enabled = true },
  exclude_buftypes = { 'terminal' },
  winopts = {
    offset = {
      width = 150,
      height = 0.90,
    },
    border = 'thicc',
  },
  presets = {
    {
      filetypes = { 'dapui_.*', 'dap-repl' },
      winopts = {
        offset = { top = 0.01, left = 0.26, width = 0.74, height = 0.25 },
      },
    },
    {
      filetypes = { 'markdown' },
      callbacks = {
        function () vim.wo.wrap = true end,
      },
    },
  },
}

require('glow').setup()

-- transparent
vim.g.transparent_enabled = true

-- hlchunk
require("hlchunk").setup({
    indent = {
        enable = false,
    },
    blank = {
        enable = false,
    }
})

-- rainbow-delimiters
local rainbow_delimiters = require 'rainbow-delimiters'
vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    priority = {
        [''] = 110,
        lua = 210,
    },
    highlight = {
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
        'RainbowDelimiterRed',
    },
}

-- true-zen
require("true-zen").setup {
  modes = {
    ataraxis = {
      options = {
        number = true,
        numberwidth = 1,
      }
    }
  }
}

require('render-markdown').setup({
    -- Configure whether Markdown should be rendered by default or not
    start_enabled = true,
    -- Maximum file size (in MB) that this plugin will attempt to render
    -- Any file larger than this will effectively be ignored
    max_file_size = 1.5,
    -- Capture groups that get pulled from markdown
    markdown_query = [[
        (atx_heading [
            (atx_h1_marker)
            (atx_h2_marker)
            (atx_h3_marker)
            (atx_h4_marker)
            (atx_h5_marker)
            (atx_h6_marker)
        ] @heading)

        (thematic_break) @dash

        (fenced_code_block) @code

        [
            (list_marker_plus)
            (list_marker_minus)
            (list_marker_star)
        ] @list_marker

        (task_list_marker_unchecked) @checkbox_unchecked
        (task_list_marker_checked) @checkbox_checked

        (block_quote (block_quote_marker) @quote_marker)
        (block_quote (paragraph (inline (block_continuation) @quote_marker)))

        (pipe_table) @table
        (pipe_table_header) @table_head
        (pipe_table_delimiter_row) @table_delim
        (pipe_table_row) @table_row
    ]],
    -- Capture groups that get pulled from inline markdown
    inline_query = [[
        (code_span) @code
    ]],
    -- The level of logs to write to file: vim.fn.stdpath('state') .. '/render-markdown.log'
    -- Only intended to be used for plugin development / debugging
    log_level = 'error',
    -- Filetypes this plugin will run on
    file_types = { 'markdown' },
    -- Vim modes that will show a rendered view of the markdown file
    -- All other modes will be uneffected by this plugin
    render_modes = { 'n', 'c' },
    -- Characters that will replace the # at the start of headings
    headings = { '# ', '## ', '### ', '#### ', '##### ', '####### ' },
    -- Character to use for the horizontal break
    dash = '—',
    -- Character to use for the bullet points in lists
    bullets = { '●', '◉', '✿', '◆', '◇' },
    checkbox = {
        -- Character that will replace the [ ] in unchecked checkboxes
        unchecked = '󰄱 ',
        -- Character that will replace the [x] in checked checkboxes
        checked = ' ',
    },
    -- Character that will replace the > at the start of block quotes
    quote = '┃',
    -- See :h 'conceallevel' for more information about meaning of values
    conceal = {
        -- conceallevel used for buffer when not being rendered, get user setting
        default = vim.opt.conceallevel:get(),
        -- conceallevel used for buffer when being rendered
        rendered = 3,
    },
    -- Determines how tables are rendered
    --  full: adds a line above and below tables + normal behavior
    --  normal: renders the rows of tables
    --  none: disables rendering, use this if you prefer having cell highlights
    table_style = 'full',
    -- Define the highlight groups to use when rendering various components
    highlights = {
        heading = {
            -- Background of heading line
            backgrounds = { 'DiffAdd', 'DiffChange', 'DiffDelete' },
            -- Foreground of heading character only
            foregrounds = {
                'markdownH1',
                'markdownH2',
                'markdownH3',
                'markdownH4',
                'markdownH5',
                'markdownH6',
            },
        },
        -- Horizontal break
        dash = 'LineNr',
        -- Code blocks
        code = 'ColorColumn',
        -- Bullet points in list
        bullet = 'Normal',
        checkbox = {
            -- Unchecked checkboxes
            unchecked = '@markup.list.unchecked',
            -- Checked checkboxes
            checked = '@markup.heading',
        },
        table = {
            -- Header of a markdown table
            head = '@markup.heading',
            -- Non header rows in a markdown table
            row = 'Normal',
        },
        -- LaTeX blocks
        latex = '@markup.math',
        -- Quote character in a block quote
        quote = '@markup.quote',
    },
})

require'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        -- You can optionally set descriptions to the mappings (used in the desc parameter of
        -- nvim_buf_set_keymap) which plugins like which-key display
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        -- You can also use captures from other query groups like `locals.scm`
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
      },
      -- You can choose the select mode (default is charwise 'v')
      --
      -- Can also be a function which gets passed a table with the keys
      -- * query_string: eg '@function.inner'
      -- * method: eg 'v' or 'o'
      -- and should return the mode ('v', 'V', or '<c-v>') or a table
      -- mapping query_strings to modes.
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V', -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      -- If you set this to `true` (default is `false`) then any textobject is
      -- extended to include preceding or succeeding whitespace. Succeeding
      -- whitespace has priority in order to act similarly to eg the built-in
      -- `ap`.
      --
      -- Can also be a function which gets passed a table with the keys
      -- * query_string: eg '@function.inner'
      -- * selection_mode: eg 'v'
      -- and should return true or false
      include_surrounding_whitespace = true,
    },
  },
}

require("various-textobjs").setup {
	-- set to 0 to only look in the current line
	lookForwardSmall = 5,
	lookForwardBig = 15,

	-- use suggested keymaps (see overview table in README)
	useDefaultKeymaps = true,

	-- disable only some default keymaps, e.g. { "ai", "ii" }
	disabledKeymaps = {},

	-- display notifications if a text object is not found
	notifyNotFound = true,
}
vim.keymap.set({ "o", "x" }, "as", '<cmd>lua require("various-textobjs").subword("outer")<CR>')
vim.keymap.set({ "o", "x" }, "is", '<cmd>lua require("various-textobjs").subword("inner")<CR>')


EOF

" codeium
let g:codeium_enabled = v:false

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
