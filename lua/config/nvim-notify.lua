local notify = require("notify")
notify.setup({
  stages = "fade_in_slide_out",
  background_color = "FloatShadow",
  timeout = 3000,
})
vim.notify = notify
