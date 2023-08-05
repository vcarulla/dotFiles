local ensure_packer = function() -- auto install packer if not installed
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

-- The magic begins here
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'                      -- Packer can manage itself

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2', -- Buscdor de archivos
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ( 'nvim-tree/nvim-web-devicons' )             -- Iconos tipo VSCode 
  
  use ({
	  'nvim-lualine/lualine.nvim',
	  requires = { 
		  'kyazdani42/nvim-web-devicons',               -- Barra inferior con Powerline
		  opt = true 
	  }
  })
  
  use { 
	  "bluz71/vim-nightfly-colors",                   -- El color
	  as = "nightfly" 
  } 

  use ( 'nvim-treesitter/nvim-treesitter', 
  	{run = ':TSUpdate'})                            -- Sintax Highlighter dinamico 
  
  use ( 'theprimeagen/harpoon' )                    -- No funciona de momento
  
  use ( 'mbbill/undotree' )                         -- Arbol de cambios
  
  use ('tpope/vim-fugitive')                        -- Plugin para manejar Git

  if packer_bootstrap then
    require("packer").sync()
  end
end)
