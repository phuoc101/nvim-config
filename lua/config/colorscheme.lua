local plugin = "colorscheme"
local colorscheme = "vscode"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme didn't load properly", "error", {
    title = plugin
  })
  return
end
