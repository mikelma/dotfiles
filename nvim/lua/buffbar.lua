local utils = require('utils')
local map = utils.map

require('bufferline').setup{
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    show_close_icon = false
}

map('n', '<C-l>', ':BufferLineCycleNext<CR>')
map('n', '<C-h>', ':BufferLineCyclePrev<CR>')
