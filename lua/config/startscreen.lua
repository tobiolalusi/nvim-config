-- ==============================================
-- startscreen configuration
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

local api = vim.api
local keymap = vim.keymap

local dashboard = require('dashboard')

local custom_header = {
  "                                                                                ",
  "                                                                             👀 ",
  "                                                                                ",
  " ▄▄▄█████▓ ▒█████   ▄▄▄▄    ██▓ ▒█████   ██▓    ▄▄▄       █    ██   ██████  ██▓ ",
  " ▓  ██▒ ▓▒▒██▒  ██▒▓█████▄ ▓██▒▒██▒  ██▒▓██▒   ▒████▄     ██  ▓██▒▒██    ▒ ▓██▒ ",
  " ▒ ▓██░ ▒░▒██░  ██▒▒██▒ ▄██▒██▒▒██░  ██▒▒██░   ▒██  ▀█▄  ▓██  ▒██░░ ▓██▄   ▒██▒ ",
  " ░ ▓██▓ ░ ▒██   ██░▒██░█▀  ░██░▒██   ██░▒██░   ░██▄▄▄▄██ ▓▓█  ░██░  ▒   ██▒░██░ ",
  "   ▒██▒ ░ ░ ████▓▒░░▓█  ▀█▓░██░░ ████▓▒░░██████▒▓█   ▓██▒▒▒█████▓ ▒██████▒▒░██░ ",
  "   ▒ ░░   ░ ▒░▒░▒░ ░▒▓███▀▒░▓  ░ ▒░▒░▒░ ░ ▒░▓  ░▒▒   ▓▒█░░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░░▓   ",
  "     ░      ░ ▒ ▒░ ▒░▒   ░  ▒ ░  ░ ▒ ▒░ ░ ░ ▒  ░ ▒   ▒▒ ░░░▒░ ░ ░ ░ ░▒  ░ ░ ▒ ░ ",
  "   ░      ░ ░ ░ ▒   ░    ░  ▒ ░░ ░ ░ ▒    ░ ░    ░   ▒    ░░░ ░ ░ ░  ░  ░   ▒ ░ ",
  "              ░ ░   ░       ░      ░ ░      ░  ░     ░  ░   ░           ░   ░   ",
  "                         ░                                                      ",
  "                                                                                ",
}

local custom_footer = {
  "                ",
  "🚀 [tobiolalusi]",
}

dashboard.setup {
  theme = "hyper",
  config = {
    header = custom_header,
    shortcut = {
      { desc = '🆕 New file', group = 'Blue', key = 'n', action = ':enew' },
      { desc = '❌ Quit', group = 'Red', key = 'qq', action = ':qa'},
    },
    project = {
      enable = true,
      limit = 4,
      action = 'Telescope find_files cwd='
    },
    mru = {
      limit = 6,
    },
    footer = custom_footer,
  },
  hide = {
    statusline = false
  }
}
