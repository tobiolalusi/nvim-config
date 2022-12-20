-- ==============================================
-- fuzzyfinder configuration
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

local keymap = vim.keymap

local builtin = require('telescope.builtin')
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})
keymap.set("n", "<leader>fr", builtin.oldfiles, {})
keymap.set("n", "<leader>ft", builtin.tags, {})
