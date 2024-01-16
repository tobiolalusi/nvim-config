-- ==============================================
-- packer installation and plugins
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

local api = vim.api
local fn = vim.fn

vim.g.plugin_home = fn.stdpath('data') .. "/site/pack/packer"

local ensure_packer = function()
  local install_path = vim.g.plugin_home .. "/opt/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    api.nvim_echo({ { "Installing packer.nvim" } }, true, {})
    local packer_repo = "https://github.com/wbthomason/packer.nvim"
    fn.system({ "git", "clone", "--depth", "1", packer_repo, install_path })
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

local packer = require('packer')
local packer_util = require('packer.util')

packer.startup{
  function(use)
    -- packer itself
    -- https://github.com/wbthomason/packer.nvim
    use { "wbthomason/packer.nvim", opt = true }

    -- colorscheme: gruvbox-material
    -- https://github.com/sainnhe/gruvbox-material
    use { "sainnhe/gruvbox-material" }

    -- syntax tree: nvim-treesitter
    -- https://github.com/nvim-treesitter/nvim-treesitter
    use {
      "nvim-treesitter/nvim-treesitter",
      config = [[require('config.treesitter')]]
    }

    -- statusline
    -- https://github.com/nvim-lualine/lualine.nvim
    use {
      "nvim-lualine/lualine.nvim",
      event = "VimEnter",
      requires = "nvim-tree/nvim-web-devicons",
      config = [[require('config.statusline')]]
    }

    -- notification
    -- https://github.com/rcarriga/nvim-notify
    use {
      "rcarriga/nvim-notify",
      event = "BufEnter",
      config = [[require('config.notifications')]]
    }

    -- startscreen
    -- https://github.com/glepnir/dashboard-nvim
    use {
      "glepnir/dashboard-nvim",
      event = "VimEnter",
      requires = "nvim-tree/nvim-web-devicons",
      config = [[require('config.startscreen')]]
    }

    -- fuzzy finder
    -- https://github.com/nvim-telescope/telescope.nvim
    use {
      "nvim-telescope/telescope.nvim",
      event = "VimEnter",
      requires = "nvim-lua/plenary.nvim",
      config = [[require('config.fuzzyfinder')]]
    }

    -- file explorer
    -- https://github.com/nvim-tree/nvim-tree.lua
    use {
      "nvim-tree/nvim-tree.lua",
      requires = "nvim-tree/nvim-web-devicons",
      config = [[require('config.explorer')]]
    }

    -- comments
    -- https://github.com/numToStr/Comment.nvim
    use {
      "numToStr/Comment.nvim",
      config = [[require('config.comments')]]
    }

    -- git
    -- https://github.com/tpope/vim-fugitive
    -- https://github.com/airblade/vim-gitgutter
    use { "tpope/vim-fugitive" }
    use { "airblade/vim-gitgutter" }

    if packer_bootstrap then
      packer.sync()
    end

  end,
  config = {
    max_jobs = 16,
  },
}

-- automatic packer compile on plugins.lua update
api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*/nvim/lua/plugins.lua",
  group = api.nvim_create_augroup("packer_user_config", { clear = true }),
  callback = function(ctx)
    local cmd = "source " .. ctx.file
    vim.cmd(cmd)
    vim.cmd [[PackerCompile]]
    vim.notify("PackerCompile complete!", vim.log.levels.INFO, { title = "nvim-config" })
  end,
})
