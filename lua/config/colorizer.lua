local status_ok, colorizer = pcall(vim.cmd, "colorizer")
if not status_ok then
	vim.notify("Colorizer didn't load properly", "error")
end

colorizer.setup()
