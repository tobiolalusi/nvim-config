-- my custom neovim config
-- =======================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- =======================================

local core_files = {
  "globals.lua",
  "options.vim",
  "autocmds.vim",
  "keymaps.lua",
  "plugins.lua",
  "colorscheme.lua",
}

for _, name in ipairs(core_files) do
  if vim.endswith(name, "vim") then
    local core_dir = vim.fn.stdpath("config") .. "/core"
    local path = string.format("%s/%s", core_dir, name)
    local source_cmd = "source " .. path
    vim.cmd(source_cmd)
  else
    local module, _ = string.gsub(name, "%.lua", "")
    package.loaded[module] = nil
    require(module)
  end
end
