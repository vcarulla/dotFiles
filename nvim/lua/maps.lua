vim.g.mapleader = " "                           -- Asignar tecla lider (espacio)                  

local keymap = vim.keymap 

keymap.set("n", "<Leader>nt", ":NERDTreeFind<CR>")   -- Abre NerdTree
keymap.set("n", "<Leader>fl", ":Files<CR>")          -- Abre FzF
-- keymap.set("n", "]c", "<Plug>GitGutterNextHunk")
-- keymap.set("n", "[c", "<Plug>GitGutterPrevHunk")
-- keymap.set("n", "<Leader>hs", "<Plug>GitGutterStageHunk")
-- keymap.set("n", "<Leader>hu", "<Plug>GitGutterUndoHunk")
-- Mapeos para gitgutter
keymap.set("n", "<Leader>w", ":w<CR>")               -- Atajo guardado
keymap.set("n", "<Leader>q", ":q<CR>")               -- y salida
keymap.set("n", "<Leader>x", ":x<CR>")               -- Ambas
-- Easymotion crear atajo para Normal Mode (dos caracteres -s2)
keymap.set("n", "<Leader>ss", "<Plug>(easymotion-s2)")