-- This font may need to be downloaded
-- ref: https://www.nerdfonts.com/font-downloads
vim.opt.guifont = "JetBrainsMono Nerd Font:h16"

-- Helper function for transparency formatting
local alpha = function()
  return string.format("%x", math.floor(255 * 0.98))
end

-- ref: https://neovide.dev/configuration.html
if vim.g.neovide then
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.95
  vim.g.neovide_background_color = "#0f1117" .. alpha() -- "rgba(0, 30, 49, 0.8)"
  vim.g.neovide_floating_blur = true
  vim.g.neovide_floating_blur_amount_x = 10.0
  vim.g.neovide_floating_blur_amount_y = 10.0
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_scale_factor = 1.0
end


