-- ==============================================
-- Keymap configuration
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

local keymap = vim.keymap

-- ==============================================
-- nvim config
-- ==============================================

-- open vim config
keymap.set("n", "<leader>ev", "<CMD>tabnew $MYVIMRC <BAR> tcd %:h<CR>", {
  silent = true,
  desc = "Open nvim config",
})

-- reload nvim config
keymap.set("n", "<leader>sv", function ()
  vim.cmd([[
      update $MYVIMRC
      source $MYVIMRC
   ]])
  vim.notify("nvim config reloaded", vim.log.levels.INFO, { title = "nvim config" })
end, {
  silent = true,
  desc = "Reload nvim config",
})

-- ==============================================
-- Fuzzy finder
-- ==============================================
local telescope_builtin = require('telescope.builtin')
keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
keymap.set("n", "<leader>fr", telescope_builtin.oldfiles, {})
keymap.set("n", "<leader>ft", telescope_builtin.tags, {})
