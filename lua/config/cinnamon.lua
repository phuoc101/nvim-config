local status_ok, cinnamon = pcall(require, "cinnamon")
if not status_ok then
  return
end

cinnamon.setup({
	default_delay = 1,
	max_length = 500,
	scroll_limit = -1,
})
