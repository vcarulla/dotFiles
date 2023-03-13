-- //BEGIN IMPORTS//
require("plugins-setup")
require("sets")
require("maps")
require("plugins.lualine")
-- //END IMPORTS//

vim.api.nvim_command('filetype plugin indent on')  -- Reactiva el filetype antes desactivado

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Cerrar nerdtree una vez abierto el archivo
NERDTreeQuitOnOpen = 1
-- Airline theme
vim.o.airline_powerline_fonts = 1

--[[ -- Syntastic Config
vim.o.statusline=%#warningmsg#
vim.o.statusline=%{SyntasticStatuslineFlag()}
vim.o.statusline=%*

vim.o.syntastic_always_populate_loc_list = 1
vim.o.syntastic_auto_loc_list = 1
vim.o.syntastic_check_on_open = 1
vim.o.syntastic_check_on_wq = 0  ]]
