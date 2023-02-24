local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- lsp configure
  use {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    'p00f/nvim-ts-rainbow',
    run = ':TSUpdate'
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- completion
  use {
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/nvim-cmp',
    'onsails/lspkind-nvim',
    'hrsh7th/cmp-nvim-lsp-signature-help',

    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets', -- add friendly-snippets
  }

  use {
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  }

  use {
    "akinsho/toggleterm.nvim", tag = '*',
    config = function()
      require("toggleterm").setup()
    end
  }

  -- text operations
  use 'windwp/nvim-autopairs'
  use 'mg979/vim-visual-multi'
  use 'tpope/vim-surround'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'b3nj5m1n/kommentary'

  use {
    'MattesGroeger/vim-bookmarks',
    'tom-anders/telescope-vim-bookmarks.nvim'
  }
  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async'
  }
  use 'Vonr/align.nvim'


  -- prettier
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'lukas-reineke/indent-blankline.nvim'

  -- theme
  use 'sainnhe/everforest'
  use 'xiyaowong/nvim-transparent'
  use 'quminzhi/onehalf-vim'
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
