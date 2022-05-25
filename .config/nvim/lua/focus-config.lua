local status_ok, focus = pcall(require, "focus")
if not status_ok then
	print("focus-config.lua require focus error: line 3")
  return
end

focus.setup()
