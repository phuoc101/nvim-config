local status_ok, _ = pcall(require, "hop")
if not status_ok then
	return
end
vim.keymap.set("n", "F", "<cmd>HopChar1<CR>", { desc = "Hop character" })
vim.keymap.set("v", "F", "<cmd>HopChar1<CR>", { desc = "Hop character" })
