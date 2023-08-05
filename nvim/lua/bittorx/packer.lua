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
  use("nvim-tree/nvim-web-devicons")      -- Iconos tipo VSCode  

  use ({
    'nvim-lualine/lualine.nvim',
    requires = { 
      'kyazdani42/nvim-web-devicons',     -- Barra inferior con Powerline
      opt = true 
    }
  })

  use({
    "nvim-telescope/telescope.nvim",      -- Fuzzy Finder para busquedas
    tag = "0.1.2",
    requires = { {'nvim-lua/plenary.nvim'} }
    }
  )

  use ({ 
    "bluz71/vim-nightfly-colors",           -- Tema de colores
    as = "nightfly" 
  })

  use (
    'nvim-treesitter/nvim-treesitter',      -- Code Highlighter dinamico
    { run = ':TSUpdate' } 
  )

  use('theprimeagen/harpoon')
  
  use("mbbill/undotree")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
