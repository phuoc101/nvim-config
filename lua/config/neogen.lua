local status_ok, _ = pcall(require, "neogen")
if not status_ok then
  vim.notify("Neogen not loaded properly", "error")
	return
end
require("neogen").setup({snippet_engine = "luasnip"})
