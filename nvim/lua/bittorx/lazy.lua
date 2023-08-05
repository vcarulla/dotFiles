return {
  -- the colorscheme should be available when starting Neovim
  {
    "bluz71/vim-nightfly-colors",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme nightfly]])
    end,
  },

  -- if some code requires a module from an unloaded plugin, it will be automatically loaded.
  -- So for api plugins like devicons, we can always set lazy=true
  { "nvim-tree/nvim-web-devicons",  -- Iconos tipo VSCode 
  lazy = true 
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    requires = { 
      'kyazdani42/nvim-web-devicons',               -- Barra inferior con Powerline
      opt = true 
    },
    opts = function()
      return {
        --[[add your custom lualine config here]]
      }
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    -- event = "veryLazy",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-lua/popup.nvim" },
      { "nvim-telescope/telescope-fzy-native.nvim" },
      { "nvim-telescope/telescope-file-browser.nvim" },
      { "nvim-telescope/telescope-ui-select.nvim" },
    },
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>ff",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fg",
        function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end,
        desc = "Find Files using grep", -- need install ripgrep (brew install ripgrep)
      },
      {
        "<C-p>",
        function() require("telescope.builtin").git_files({}) end,
        desc = "Find git files",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
       sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      }
    },
  },
}
