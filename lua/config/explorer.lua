-- ==============================================
-- file explorer configuration
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local keymap = vim.keymap

local explorer = require('nvim-tree')

explorer.setup {
  view = {
    width = 30
  }
}

keymap.set("n", "<leader>ee", "<CMD>NvimTreeToggle<CR>", {
  desc = "Open file explorer",
})
