-- ==============================================
-- treesitter configuration
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

local api = vim.api
local opt = vim.opt

local treesitter_install = require("nvim-treesitter.install")

treesitter_install.compilers = { "zig" }

treesitter_install.update({ with_sync = true })()

api.nvim_create_autocmd({ "BufEnter", "BufAdd", "BufNew", "BufNewFile", "BufWinEnter" }, {
  group = api.nvim_create_augroup("TS_FOLD_WORKAROUND", {}),
  callback = function()
    opt.foldmethod = "expr"
    opt.foldexpr   = "nvim_treesitter#foldexpr()"
    opt.foldenable = false
  end
})

local treesitter = require("nvim-treesitter.configs")

treesitter.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = { "bash", "c", "cpp", "diff", "lua", "python", "vim", "yaml" }
}
