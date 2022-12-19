-- my custom neovim config
-- =======================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- =======================================

local api = vim.api

local core_files = {
  "globals.lua",
  "options.vim",
  "autocmds.lua",
  "keymaps.lua",
  "plugins.lua",
  "colorscheme.lua",
}

for _, name in ipairs(core_files) do
  local path = string.format("%s/core/%s", vim.fn.stdpath("config"), name)
  local source_cmd = "source " .. path
  vim.cmd(source_cmd)
end
