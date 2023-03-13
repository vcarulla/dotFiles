-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)       -- add list of plugins to install

  use("wbthomason/packer.nvim")           -- El propio packer
  use("nvim-lua/plenary.nvim")            -- Funciones utilizadas por varios plugins
  use("nvim-tree/nvim-tree.lua")          -- Arbol de directorios
  use("nvim-tree/nvim-web-devicons")      -- Iconos tipo VSCode  

  use ({
    'nvim-lualine/lualine.nvim',
    requires = { 
      'kyazdani42/nvim-web-devicons',     -- Barra inferior con Powerline
      opt = true 
    }
  })

  use({ 
    "nvim-telescope/telescope-fzf-native.nvim", -- Dependencia de fzf para un mejor redimiento
    run = "make" 
  })

  use({
    "nvim-telescope/telescope.nvim", 
    branch = "0.1.x" })                   -- Fuzzy Finder para busquedas

  use { "ellisonleao/gruvbox.nvim" }      -- Tema

  use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
  use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)


  if packer_bootstrap then
    require("packer").sync()
  end
end)
