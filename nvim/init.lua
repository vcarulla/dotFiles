-- //BEGIN IMPORTS//
require("plugins-setup")
require("colorscheme")
require("plugins.lualine")
require("sets")
require("maps")

-- //END IMPORTS//

vim.api.nvim_command('filetype plugin indent on')  -- Reactiva el filetype antes desactivado

NERDTreeQuitOnOpen = 1  -- Cerrar nerdtree una vez abierto el archivo
