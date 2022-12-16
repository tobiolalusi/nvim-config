-- vim-plug installation and configuration
-- =======================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- =======================================

local api = vim.api
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- colorscheme: gruvbox-material
-- https://github.com/sainnhe/gruvbox-material
Plug 'sainnhe/gruvbox-material'

-- statusline: lualine
-- https://github.com/nvim-lualine/lualine.nvim
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons' -- with icons

vim.call('plug#end')
