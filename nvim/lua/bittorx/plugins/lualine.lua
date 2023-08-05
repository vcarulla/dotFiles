-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end


-- Now don't forget to initialize lualine
lualine.setup(config)
