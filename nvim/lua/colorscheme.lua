-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme nightfly")

-- vim.o.background = "dark" -- or "light" for light mode
-- vim.g.nightflyItalics = false
-- vim.g.nightflyCursorColor = true

if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end
