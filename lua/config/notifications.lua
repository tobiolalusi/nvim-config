-- ==============================================
-- notifications configuration
-- ==============================================
-- author: Oluwatobiloba Olalusi
-- email: hello@tobiolalusi.com
-- website: http://tobiolalusi.com
-- ==============================================

local nvim_notify = require('notify')

nvim_notify.setup {
  stages = "fade_in_slide_out",
  timeout = 8000,
}

vim.notify = nvim_notify
