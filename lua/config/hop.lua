local status_ok, hop = pcall(require, "hop")
if not status_ok then
	return
end

hop.config = function()
	require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
end

vim.keymap.set("n", "F", "<cmd>HopChar1<CR>", { desc = "Hop character" })
vim.keymap.set("v", "F", "<cmd>HopChar1<CR>", { desc = "Hop character" })
