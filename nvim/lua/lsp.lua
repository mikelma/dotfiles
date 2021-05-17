local utils = require('utils')
local map = utils.map
local g = vim.g
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()

-- ---------- --
--    LSP     --
-- ---------- --
local lsp = require 'lspconfig'
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.clangd.setup{}

-- root_dir is where the LSP server will start: here at the project root otherwise in current folder
lsp.pyls.setup {root_dir = lsp.util.root_pattern('.git', fn.getcwd())}

-- lsp keybindings
map('n', '<space>p', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<space>n', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
-- map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<space>d', '<cmd>LspTroubleToggle<CR>')
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<space>r', '<cmd>lua vim.lsp.buf.rename()<CR>')
--map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

-- vs-code like icons
require('lspkind').init({})

-- ---------- --
--    Compe   --
-- ---------- --
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
  };
}

-- ------------- --
--  LSP Trouble  --
-- ------------- --
require('trouble').setup {
    -- auto_preview = false,
    mode = "document",
    auto_close = false
}

require('lsp-colors').setup {}
