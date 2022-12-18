local status_ok, configs = pcall(require, "lsp_lines")
if not status_ok then
	return
end

configs.setup()

vim.keymap.set(
  "",
  "<Leader><Leader>",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)

