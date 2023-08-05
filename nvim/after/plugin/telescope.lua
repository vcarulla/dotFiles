local builtin = require('telescope.builtin')                  -- Para poder usar las funciones de telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})     -- Buscar archivos
vim.keymap.set('n', '<C-p>', builtin.git_files, {})           -- Buscar archivos en repositorio git
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})      -- Buscar en la documentación
vim.keymap.set('n', '<leader>fg', function()                  -- Buscar en el código
  builtin.grep_string({ search = vim.fn.input("Grep > ") })   -- need install ripgrep (brew install ripgrep)
end)