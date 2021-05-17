-- This config is based in the blog post: https://oroques.dev/notes/neovim-init


require('packages')
require('bar')
--require('buffbar')
require('tree')
require('lsp') -- LSP and completion settings

local utils = require('utils')
local map = utils.map
local opt = utils.opt
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables

-- -------- --
-- Settings --
-- -------- --

local indent = 4
opt('b', 'expandtab', true)                           -- Use spaces instead of tabs
opt('b', 'shiftwidth', indent)                        -- Size of an indent
opt('b', 'smartindent', true)                         -- Insert indents automatically
opt('b', 'tabstop', indent)                           -- Number of spaces tabs count for
--opt('o', 'completeopt', 'menuone,noinsert,noselect')  -- Completion options (for deoplete)
opt('o', 'completeopt', 'menuone,noselect')           -- Completion options
opt('o', 'hidden', true)                              -- Enable modified buffers in background
opt('o', 'ignorecase', true)                          -- Ignore case
opt('o', 'joinspaces', false)                         -- No double spaces with join after a dot
opt('o', 'scrolloff', 4 )                             -- Lines of context
opt('o', 'shiftround', true)                          -- Round indent
opt('o', 'sidescrolloff', 8 )                         -- Columns of context
opt('o', 'smartcase', true)                           -- Don't ignore case with capitals
opt('o', 'splitbelow', true)                          -- Put new windows below current
opt('o', 'splitright', true)                          -- Put new windows right of current
opt('o', 'termguicolors', true)                       -- True color support
opt('o', 'wildmode', 'list:longest')                  -- Command-line completion mode
-- opt('w', 'list', true)                             -- Show some invisible characters (tabs...)
-- opt('w', 'number', true)                           -- Print line number
-- opt('w', 'relativenumber', false)                  -- Relative line numbers
-- opt('w', 'wrap', false)				              -- Disable line wrap

-- Colors
-- cmd 'colorscheme nvcode'
-- cmd 'colorscheme blue-moon'
-- cmd 'colorscheme doom-one'
-- cmd 'colorscheme tokyonight'
-- cmd 'colorscheme material-nvim'
cmd 'colorscheme tokyonight'
g.tokyonight_style = "storm"


-- -------- --
-- Mappings --
-- -------- --

map('n', '<C-d>', ':tabe term://fish<CR>:startinsert<CR>')
map('t', '<Esc>', '<C-\\><C-n>')

-- Move through tabs with ctrl-l and ctrl-h
map('n', '<C-h>', ':tabprevious<CR>')
map('n', '<C-l>', ':tabnext<CR>')

-- map('', '<leader>c', '"+y')       -- Copy to clipboard in normal, visual, select and operator modes
-- map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
-- map('i', '<C-w>', '<C-g>u<C-w>')  -- Make <C-w> undo-friendly

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

map('n', '<C-c>', '<cmd>noh<CR>')    -- Clear highlights
map('n', '<leader>o', 'm`o<Esc>``')  -- Insert a newline in normal mode

-- ---------- --
-- Treesitter --
-- ---------- --
local ts = require 'nvim-treesitter.configs'
ts.setup {
    ---ensure_installed = 'maintained', 
    highlight = {enable = true}
}

-- ---------- --
-- Telescope  --
----------------
map('n', 'ff', ':Telescope find_files<cr>')
map('n', 'fo', ':Telescope oldfiles<cr>')
map('n', 'fg', ':Telescope live_grep<cr>')
map('n', 'fd', ':Telescope lsp_document_diagnostics<cr>')
map('n', 'fs', ':Telescope git_staus<cr>')
map('n', 'fm', ':Telescope man_pages<cr>')

-- --------- --
-- DashBoard --
-- --------- --
g['dashboard_default_executive'] = 'telescope'
g['dashboard_preview_pipeline'] = 'lolcat'
cmd 'runtime! dashboard.vim'

