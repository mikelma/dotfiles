vim.cmd 'packadd paq-nvim' -- load the package manager

local paq = require('paq-nvim').paq  -- a convenient alias

paq {'savq/paq-nvim', opt = true} -- paq-nvim manages itself

-- General
paq {'nvim-treesitter/nvim-treesitter'} -- code highlighting and more
paq {'kyazdani42/nvim-web-devicons'}
paq {'lambdalisue/nerdfont.vim'}
paq {'lambdalisue/glyph-palette.vim'} -- better coloring of icons
paq {'glepnir/dashboard-nvim'} -- initial screen when opening neovim 
-- paq {'akinsho/nvim-bufferline.lua'} -- A snazzy buffer line for Neovim built using lua

-- File manager
paq {'kyazdani42/nvim-tree.lua'}
-- paq {'antoinemadec/FixCursorHold.nvim'} -- fern's dependency
-- paq {'lambdalisue/fern.vim'}            -- file manager (written in vimscript)
-- paq {'lambdalisue/fern-git-status.vim'} -- show git info inside fern
-- paq {'lambdalisue/fern-renderer-nerdfont.vim'} -- fern plugin to use file icons


-- Completion and LSP
paq {'hrsh7th/nvim-compe'}     -- autocompletion
paq {'neovim/nvim-lspconfig'}  -- neovim's lsp configuration (see lua/lsp.lua)
paq {'onsails/lspkind-nvim'}   -- vs-code like icons in completion suggestions
paq {'folke/lsp-trouble.nvim'} -- Diagnostics window
paq {'folke/lsp-colors.nvim'} -- Diagnostics highlighting

-- Colors
paq {'folke/tokyonight.nvim'}
-- paq {'christianchiarulli/nvcode-color-schemes.vim'}
-- paq {'kyazdani42/blue-moon'}
-- paq {'romgrk/doom-one.vim'}
-- paq {'shaunsingh/material.nvim'}
-- paq {'shaunsingh/moonlight.nvim'}
-- paq {'navarasu/onedark.nvim'}

-- telescope
paq {'nvim-lua/popup.nvim'}           -- telescope's dependency
paq {'nvim-lua/plenary.nvim'}         -- telescope's dependency
paq {'nvim-telescope/telescope.nvim'} -- fuzzy finder (and much more!)

-- bar
-- paq {'glepnir/galaxyline.nvim' , branch = 'main'}
paq {'hoob3rt/lualine.nvim'}
