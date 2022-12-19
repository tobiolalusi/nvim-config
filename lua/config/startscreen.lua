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

dashboard.custom_header = {
  "                                                                                ",
  "                                                                                ",
  "                                                                                ",
  "                                                                                ",
  "                                                                                ",
  "                                                                                ",
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
  "                                                                                ",
  "                                                                                ",
  "                                                                                ",
}

dashboard.custom_center = {
  {
    icon = "🔍  ",
    desc = "Find file                                     ",
    action = "Leaderf file --popup",
    shortcut = "<Leader> f f",
  },
  {
    icon = "📜  ",
    desc = "Recently opened files                         ",
    action = "Leaderf mru --popup",
    shortcut = "<Leader> f r",
  },
  {
    icon = "🖊️  ",
    desc = "New file                                      ",
    action = "enew",
    shortcut = "           e",
  },
  {
    icon = "🔐  ",
    desc = "Open nvim config                              ",
    action = "tabnew $MYVIMRC | tcd %:p:h",
    shortcut = "<Leader> e v",
  },
  {
    icon = "❌  ",
    desc = "Quit nvim                                     ",
    action = "qa",
    shortcut = "           q",
  },
}

api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  group = api.nvim_create_augroup("dashboard_enter", { clear = true }),
  callback = function()
    keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
    keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
  end
})
