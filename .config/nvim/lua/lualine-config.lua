local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	print('lualine-config.lua require lualine error: line 3')
  return
end

lualine.setup {
	options = { theme = 'dracula' },
	extensions = { 'nvim-tree', 'fugitive'}
}
