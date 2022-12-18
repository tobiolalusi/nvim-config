-- ==============================================
-- packer installation and plugins
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

local api = vim.api
local fn = vim.fn

local ensure_packer = function()
  local install_path = fn.stdpath('data') .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    api.nvim_echo({ { "Installing packer.nvim" } }, true, {})
    local packer_repo = "https://github.com/wbthomason/packer.nvim"
    fn.system({"git", "clone", "--depth", "1", packer_repo, install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
local packer = require('packer')

packer.startup(function(use)
  -- packer itself
  -- https://github.com/wbthomason/packer.nvim
  use { "wbthomason/packer.nvim", opt = true }

  -- colorscheme: gruvbox-material
  -- https://github.com/sainnhe/gruvbox-material
  use 'sainnhe/gruvbox-material'

  -- icons
  use { "kyazdani42/nvim-web-devicons", event = "VimEnter" }

  -- statusline: lualine
  -- https://github.com/nvim-lualine/lualine.nvim
  use {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    requires = "kyazdani42/nvim-web-devicons",
    config = [[require("config.statusline")]],
  }

  if packer_bootstrap then
    packer.sync()
  end
end)

-- automatic packer compile on plugins.lua update
api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*/nvim/lua/plugins.lua",
  group = api.nvim_create_augroup("packer_user_config", { clear = true }),
  callback = function(ctx)
    local cmd = "source " .. ctx.file
    vim.cmd(cmd)
    vim.cmd("PackerCompile")
    vim.notify("PackerCompile complete!", vim.log.levels.INFO, { title = "nvim-config" })
  end,
})
