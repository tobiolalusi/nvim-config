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
