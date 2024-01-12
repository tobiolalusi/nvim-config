-- ==============================================
-- Global variables configuration
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

local api = vim.api
local fn = vim.fn

-- default language
vim.cmd [[language en_US.UTF-8]]

-- with python3
vim.g.python3_host_prog = fn.exepath("python3")

-- Leader map
vim.g.mapleader = ","
