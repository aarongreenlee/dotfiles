-- configure the color scheme plugin
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("Colorscheme not found!")
  return
end

vim.g.nightflyTransparent = true
