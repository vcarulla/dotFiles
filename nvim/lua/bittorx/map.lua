vim.g.mapleader = " "                                 -- Asignar tecla lider (espacio)                  
local keymap = vim.keymap                             -- Para concistencia

---------------------
-- General Keymaps
---------------------
keymap.set("n", "<Leader>w", ":w<CR>")                -- Atajo guardado
keymap.set("n", "<Leader>q", ":q<CR>")                -- y salida
keymap.set("n", "<Leader>x", ":x<CR>")                -- Ambas
keymap.set("n", "<leader>ot", vim.cmd.Ex) 	      -- Abrir navegador de archivos

---------------------
-- window management 
---------------------
keymap.set("n", "<leader>sv", "<C-w>v")               -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")               -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")               -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>")           -- close current split window
keymap.set("n", "<leader>to", ":tabnew<CR>")          -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")        -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>")            -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>")            -- go to previous tab
