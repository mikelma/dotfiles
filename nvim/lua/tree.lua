local utils = require('utils')
local map = utils.map

map('n', '<C-n>', ':NvimTreeToggle<cr>')

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_root_folder_modifier = ':~' -- This is the default. See :help filename-modifiers for more options
vim.g.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard' } -- empty by default, don't auto open tree on specific filetypes.
vim.g.nvim_tree_lsp_diagnostics = 1 -- 0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
vim.g.nvim_tree_show_icons = {['git'] = 1, ['folders'] = 1, ['files'] = 1 }

vim.g.nvim_tree_bindings = {
    -- ["<CR>"] = ":YourVimFunction()<cr>",
    -- ["u"] = ":lua require'some_module'.some_function()<cr>",

    -- default mappings
    ["<CR>"]           = tree_cb("edit"),
    ["o"]              = tree_cb("edit"),
    ["l"]              = tree_cb("edit"),
    -- ["<2-LeftMouse>"]  = tree_cb("edit"),
    -- ["<2-RightMouse>"] = tree_cb("cd"),
    ["<C-]>"]          = tree_cb("cd"),
    ["v"]              = tree_cb("vsplit"),
    ["<C-x>"]          = tree_cb("split"),
    ["t"]              = tree_cb("tabnew"),
    ["<"]              = tree_cb("prev_sibling"),
    [">"]              = tree_cb("next_sibling"),
    ["<BS>"]           = tree_cb("close_node"),
    ["h"]              = tree_cb("close_node"),
    ["<S-CR>"]         = tree_cb("close_node"),
    ["<Tab>"]          = tree_cb("preview"),
    ["I"]              = tree_cb("toggle_ignored"),
    ["H"]              = tree_cb("toggle_dotfiles"),
    ["R"]              = tree_cb("refresh"),
    ["a"]              = tree_cb("create"),
    ["d"]              = tree_cb("remove"),
    ["r"]              = tree_cb("rename"),
    ["<C-r>"]          = tree_cb("full_rename"),
    ["x"]              = tree_cb("cut"),
    ["c"]              = tree_cb("copy"),
    ["p"]              = tree_cb("paste"),
    ["[c"]             = tree_cb("prev_git_item"),
    ["]c"]             = tree_cb("next_git_item"),
    ["-"]              = tree_cb("dir_up"),
    ["-"]              = tree_cb("dir_up"),
    ["q"]              = tree_cb("close"),
}

-- -------------------- --
--  Fern (file man.)    --
-- -------------------- --
-- map('n', '<C-n>', ':Fern . -reveal=% -drawer -toggle<cr>')
-- g['fern#renderer'] = "nerdfont"
-- 
-- local autocmds = {
--     icon_colors = {
--         {"FileType", "fern", "call glyph_palette#apply()"};
--         {"FileType", "nerdtree,startify", "call glyph_palette#apply()"};
--     };
-- }
-- utils.nvim_create_augroups(autocmds)
